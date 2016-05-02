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
```

You should edit SSH account or so in Movefile. :smile:
