#!/usr/bin/env bats

# =======================================================================
#
# Testing the project
#
# @see https://github.com/sstephenson/bats
# @see https://blog.engineyard.com/2014/bats-test-command-line-tools
#
# =======================================================================

# Test terraform version
@test "Terraform version is ${TERRAFORM_VERSION}" {
	result="$(docker run ${DOCKER_IMAGE_NAME} version)"
	[[ "$result" == *"Terraform v${TERRAFORM_VERSION}"* ]]
	echo "-$result-"
}
