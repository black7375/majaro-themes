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

  local lastestCommitID=$(curl   -sL  "${sourceAPI}" | jq -r ".[0].id")
  echo "${lastestCommitID}"
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
    local lastestCommitID=$(getSourceLastCommitID "${projectName}")
    echo "-> ${_commit} to ${lastestCommitID}"
    replaceSource "${projectName}" "_commit=" "${lastestCommitID}"

    echo "-> Get sha256..."
    local lastestSHA=$(getSourceLastSHA "${projectName}" "${lastestCommitID}")
    echo "-> ${sha256sums} to ${lastestSHA}"
    replaceSource "${projectName}" "sha256sums=" "(\"${lastestSHA}\")"
  done
}

updateSource
