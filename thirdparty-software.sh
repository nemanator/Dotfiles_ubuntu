#!/bin/bash

#The MIT License (MIT)
#
#Copyright (c) 2016 Stefano Cappa
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.

#ONLY FOR Ubuntu
#DON'T EXECUTE THIS - BUT USE install.sh, please

read -p "Would you install other softwares like Java, Chrome, Atom, MongoChef and so on? Press y or n: " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  read -p "Would you install Oracle JRE 8? Press y or n: " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
    then
      echo installing Oracle JRE 8
      sudo add-apt-repository ppa:webupd8team/java
      sudo apt-get update
      sudo apt-get install oracle-java8-installer
      sudo apt-get install oracle-java8-set-default
  fi

  read -p "Would you install Chromium? Press y or n: " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
    then
      echo installing Chromium-browser
      sudo apt-get install chromium-browser
  fi

  read -p "Would you install Atom? Press y or n: " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
    then
      echo installing atom
      wget -O atom-amd64.deb https://atom-installer.github.com/v1.11.2/atom-amd64.deb
      sudo dpkg -i atom-amd64.deb
      rm -f atom-amd64.deb
  fi
  
  read -p "Would you install MongoChef? Press y or n: " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]
    then
      echo installing mongochef
      wget -O mongochef-linux-x64-dist.tar.gz https://cdn.3t.io/mongochef-core/linux/4.4.0/mongochef-linux-x64-dist.tar.gz &&
      tar -xvzf mongochef-linux-x64-dist.tar.gz &&
      sudo ./mongochef-4.4.0-linux-x64-dist/bin/mongochef.sh
  fi
  




fi
