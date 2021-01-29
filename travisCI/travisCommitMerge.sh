#!/bin/sh
# Copyright 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
set -e
echo "RUN ROOT: $RUN_ROOT"
cd $RUN_ROOT
echo "Getting Date & Month..."
dateAndMonth=`date "+%b %Y"`
echo "Configureing git info..."
git config --global user.email "travis@travis-ci.org"
git config --global user.name "Travis CI"
echo "Committing merge result"
git commit -m "Travis update: $dateAndMonth (Build $TRAVIS_BUILD_NUMBER) auto-merge develop-restructure into $TRAVIS_BRANCH" > /dev/null 2>&1
