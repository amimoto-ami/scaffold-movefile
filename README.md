# Scaffold Wordmove's Movefile for AMIMOTO

Wordmove is a gem that lets you automatically mirror local Wordpress installations and DB data back and forth from your local development machine to the remote staging server.

This script outputs Movefile for Wordmove.

## How to use

SSH into your AMIMOTO.

```
$ ssh ec2-user@xxx.xxx.xxx.xxx
```

Run following.

```
curl https://raw.githubusercontent.com/amimoto-ami/scaffold-movefile/master/run.sh | bash
```

Then you will get YAML text like following. So copy and paste into your local Movefile.

```
local:
  vhost: http://vccw.dev
  wordpress_path: /var/www/wordpress
  database:
    name: wordpress
    user: wordpress
    password: wordpress
    host: localhost
    charset: utf8
production:
  vhost: https://example.com
  wordpress_path: /var/www/vhosts/xxxxxxxxxx
  database:
    name: xxxxxxxxxxxxxxx
    user: xxxxxxxxxxx
    password: xxxxxxxxxxxxxxxxxxxxx
    host: localhost
    charset: utf8
  exclude:
    - .git/
    - .gitignore
    - .sass-cache/
    - bin/
    - 'tmp/*'
    - 'Gemfile*'
    - Movefile
    - wp-config.php
    - 'wp-content/*.sql'
  ssh:
    host: example.com
    user: ec2-user
```

You should edit SSH account or so in Movefile. :smile:
