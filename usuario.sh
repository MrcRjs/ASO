#!/bin/bash

id -u $1;
id -g $1;
cat /etc/passwd |grep $1;
echo ~;
