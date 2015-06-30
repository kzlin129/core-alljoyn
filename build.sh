#!/bin/bash
exec >${0}.log 2>&1

export AJ_ROOT=`pwd`
export JAVA_HOME="/usr/lib/jvm/default-java"
#export JAVA_HOME="/usr/lib/jvm/java-6-oracle"
export CLASSPATH="/usr/share/java/junit-4.9.jar"
export GECKO_BASE=~/xulrunner-sdk
export JOBS="-j $(grep -c ^processor /proc/cpuinfo)"
#export GTEST_DIR=~/gtest/gtest-1.6.0

#x86 or x86_64
export CPU=x86_64

#html or pdf
export DOCS=html

#check, off, fix or details
export WS=check

#debug or release
export VARIANT=debug

#builtin or openssl
export CRYPTO=openssl

#on or off
export POLICYDB=off

export BINDINGS="cpp,java,c,js"

scons $JOBS 

