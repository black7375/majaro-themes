#!/bin/bash

function getSourceURL() {
  local projectName=$1
  source "${projectName}/PKGBUILD"
  echo "${url}"
}

function getHostURL() {
  local originUrl=${1:-$(</dev/stdin)}
  local hostURL=$(echo "${originUrl}" |  sed -e 's|^[^/]*//||' -e 's|/.*$||')
  echo "https://${hostURL}"
}

function getSourceLastCommitID() {
  local projectName=$1

  local sourceID=$(cat "${projectName}/ID/source")
  local sourceHOST=$(getSourceURL "${projectName}" |  getHostURL)
  local sourceAPI="${sourceHOST}/api/v4/projects/${sourceID}/repository/commits"

  local latestCommitID=$(curl   -sL  "${sourceAPI}" | jq -r ".[0].id")
  echo "${latestCommitID}"
}

function getSourceLastSHA() {
  local projectName=$1
  local souceLastCommitID=$2

  local sourceOriginURL="$(getSourceURL ${projectName})"
  local sourceURL="${sourceOriginURL}/-/archive/${souceLastCommitID}/${souceLastCommitID}.tar.gz"

  curl -sL  "${sourceURL}" | sha256sum |cut -f 1 -d " "
}

function replaceSource() {
  local projectName=$1
  local tartgetString=$2
  local replaceString=$3

  sed -i "s/^${tartgetString}.*/${tartgetString}${replaceString}/g" "${projectName}/PKGBUILD"
}

function updateSource() {
  source ./packages.sh

  for projectName in "${targetpkgs[@]}"; do
    echo "== Update ${projectName} ===================="
    source "${projectName}/PKGBUILD"

    echo "-> Get commit id..."
    local latestCommitID=$(getSourceLastCommitID "${projectName}")
    echo "-> ${_commit} to ${latestCommitID}"
    replaceSource "${projectName}" "_commit=" "${latestCommitID}"

    echo "-> Get sha256..."
    local latestSHA=$(getSourceLastSHA "${projectName}" "${latestCommitID}")
    echo "-> ${sha256sums} to ${latestSHA}"
    replaceSource "${projectName}" "sha256sums=" "(\"${latestSHA}\")"
  done
}

updateSource
