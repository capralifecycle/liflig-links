#!/usr/bin/env groovy

// See https://github.com/capralifecycle/jenkins-pipeline-library
@Library("cals@hst") _

import no.capraconsulting.buildtools.cdk.EcrPublish
// import no.capraconsulting.buildtools.cdk.EcsUpdateImage

def ecrPublish = new EcrPublish()
def publishConfig = ecrPublish.config {
  repositoryUri = "001112238813.dkr.ecr.eu-west-1.amazonaws.com/incub-common-builds"
  applicationName = "liflig-io"
  roleArn = "arn:aws:iam::001112238813:role/incub-common-build-artifacts-ci"
}

/*
def ecsUpdateImage = new EcsUpdateImage()
def deployConfig = ecsUpdateImage.config {
  deployRoleArn = "arn:aws:iam::001112238813:role/incub-liflig-io-ecs-update-image"
  deployFunctionArn = "arn:aws:lambda:eu-west-1:001112238813:function:incub-liflig-io-ecs-update-image"
}
*/

buildConfig([
  jobProperties: [
    pipelineTriggers([
      // Build a new version every night so we keep up to date with upstream changes
      cron("H H(2-6) * * *"),
    ]),
  ],
  slack: [
    channel: "#cals-dev-info",
    teamDomain: "cals-capra",
  ],
]) {
  dockerNode {
    def tagName

    ecrPublish.withEcrLogin(publishConfig) {
      stage("Checkout source") {
        checkout scm
      }

      def img
      def lastImageId = ecrPublish.pullCache(publishConfig)

      stage("Build Docker image") {
        img = docker.build(dockerImageName, "--cache-from $lastImageId --pull .")
      }

      stage("Test build") {
        docker.image("docker").inside {
          sh "./test-image.sh ${img.id}"
        }
      }

      def isSameImage = ecrPublish.pushCache(publishConfig, img, lastImageId)
      if (!isSameImage) {
        tagName = ecrPublish.generateLongTag(publishConfig)
        stage("Push Docker image") {
          img.push(tagName)
        }
      }
    }
  }

  if (env.BRANCH_NAME == "master" && tagName) {
    echo "TODO: Deploy new image"
    // slackNotify message: "Deployed new version of https://capra.tv"
  }
}
