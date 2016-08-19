#!/usr/bin/env bash
# -*- coding: utf-8 -*-

export PROJECT_NAME=nodejs_tweets
# Vars Dir
export ROOT_DIR="`pwd`"
export RESOURCES_DIR="$ROOT_DIR/resources"
export RESOURCES_DB_DIR="$RESOURCES_DIR/db"
export PROVISION_DIR="$ROOT_DIR/provision/ansible"
export SOURCE_DIR="$ROOT_DIR/src"
export STATIC_DIR="$SOURCE_DIR/staticfiles/"

export KEYS_DIR="$HOME/.ssh"
export KEY_FILE="$KEYS_DIR/$PROJECT_NAME.pem"
export DEPLOY_SOURCE_DIR=$STATIC_DIR
export DEPLOY_DEST_DIR=/home/ubuntu/$PROJECT_NAME/src/staticfiles/
export DEPLOY_SERVER=52.39.180.62

export DEPLOY_ACCOUNT=ubuntu

export DJANGO_IP=0.0.0.0
export DJANGO_PORT=8080
export DJANGO_SETTINGS_DEFAULT=$PROJECT_NAME.settings
export DJANGO_SETTINGS_DEV=$PROJECT_NAME.settings_dev
export DJANGO_SETTINGS_TEST=$PROJECT_NAME.settings_test

export NAME_DATABASE=$PROJECT_NAME.sqlite3
export NAME_DATABASE_DEV=$PROJECT_NAME-dev.sqlite3
export NAME_DATABASE_TEST=$PROJECT_NAME-test.sqlite3

export PATH_INVENTORY="$PROVISION_DIR/inventories/aws/production"
export USER=$DEPLOY_ACCOUNT
export PRIVATE_KEY="$KEY_FILE"
export EXTRA_VARS="user=ubuntu"
