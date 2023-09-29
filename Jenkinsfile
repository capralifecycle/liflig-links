#!/usr/bin/env groovy

// See https://github.com/capralifecycle/jenkins-pipeline-library
@Library("cals") _

import no.capraconsulting.buildtools.cdk.EcrPublish

def ecrPublish = new EcrPublish()

def buildArtifactsBucketName = "incub-common-build-artifacts-001112238813-eu-west-1"
def buildArtifactsRoleArn = "arn:aws:iam::001112238813:role/incub-common-build-artifacts-liflig-jenkins"

def publishConfig = ecrPublish.config {
  repositoryUri = "001112238813.dkr.ecr.eu-west-1.amazonaws.com/incub-common-builds"
  applicationName = "liflig-io"
  roleArn = buildArtifactsRoleArn
}

buildConfig([
  jobProperties: [
    parameters([
      booleanParam(
        defaultValue: false,
        description: 'Force deploy even when having cache',
        name: 'forceDeploy'
      ),
      booleanParam(
        defaultValue: false,
        description: 'Allow this build to override branch check and deploy',
        name: 'overrideBranchCheck'
      ),
      ecrPublish.dockerSkipCacheParam(),
    ]),
  ],
  slack: [
    channel: "#cals-dev-info",
    teamDomain: "cals-capra",
  ],
]) {
  def tagName

  dockerNode {
    ecrPublish.withEcrLogin(publishConfig) {
      stage("Checkout source") {
        checkout scm
      }

      def (img, isSameImageAsLast) = ecrPublish.buildImage(publishConfig)

      stage("Test build") {
        docker.image("docker").inside {
          sh "./test-image.sh ${img.id}"
        }
      }

      if (!isSameImageAsLast || params.forceDeploy) {
        tagName = ecrPublish.generateLongTag(publishConfig)
        stage("Push Docker image") {
          img.push(tagName)
        }
      }
    }
  }

  def allowDeploy = env.BRANCH_NAME == "master" || params.overrideBranchCheck
  if (allowDeploy && tagName) {
    stage("Trigger deploy pipeline") {
        pipelines.configureVariablesAndTrigger(
          artifactsRoleArn: buildArtifactsRoleArn,
          artifactsBucketName: buildArtifactsBucketName,
          pipelineName: "incub-common",
          variables: [
            "lifligIoEcrTag": tagName,
          ],
          variablesNamespace: "incub-liflig-io",
          variablesVersion: "v2",
          region: "eu-west-1",
        )
    }

    slackNotify message: "Deployed new version of https://liflig.io ($tagName)"
  }
}
