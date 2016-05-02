#!/usr/bin/env bash

sudo /usr/local/bin/wp cli update --allow-root
wp package install vccw/wp-cli-scaffold-movefile:@stable

wp scaffold movefile --path=/var/www/vhosts/$(curl -L http://169.254.169.254/latest/meta-data/instance-id)
