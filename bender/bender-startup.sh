#!/bin/bash

export MATTERMOST_ENDPOINT=/bender/incoming
export MATTERMOST_TOKEN=pbezu8qodjb7ib8skotfak5bar
export MATTERMOST_INCOME_URL=http://localhost:8060/hooks/dkf58ez1z3rsikrfwenrnupapc
export HUBOT_LOG_LEVEL="debug"

./bin/hubot -a mattermost
