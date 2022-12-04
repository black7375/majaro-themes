#!/bin/bash
source ./packages.sh

for installpkg in "${targetpkgs[@]}"; do
  (cd "${installpkg}" && makepkg -si)
done
