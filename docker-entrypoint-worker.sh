#!/bin/bash

I="\e[1;32m::\e[00m"

echo -e "$I Starting Sidekiq"
rm -f /app/tmp/pids/sidekiq.pid
bundle exec sidekiq
