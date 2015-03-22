packer-hubot-lingr
==================

Docker image builder for Hubot with Lingr connection.

Date:  March, 2015
Author: Hiroshi Miura <miurahr@linux.com>

Build
-------

You can get docker commit <user>/hubot-lingr with Packer
command line;

```
$ packer build hubot-lingr.json
```

Dependency
-----------

 * Packer: 0.7.5 or after
 * Docker: 1.3.3 ( with Packer 0.7.5) or after (with Packer >= 0.8)


Configurations
--------------

Docker tag name is hard coded in hubot-lingr.json packer's conf file.


Run
------------

Configuration for running environment is located in utils/hubot-lingr.cf.
Please locate scripts and configuration file in `utils/*` into your favorite
place and edit hubot-lingr.cf.

Lingr Bot id and secret can be obtained at http://lingr.com/developer
Trello key can be obtained at https://trello.com/1/appKey/generate

Please refer further details on
https://trello.com/docs/


License
-------

This recipe is provided by MIT license.
You can use it freely.

