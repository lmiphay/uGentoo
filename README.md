#### micro Gentoo builder

* [Table of Contents](#table-of-contents)
* [Description](#description)
* [Quickstart](#quickstart)
* [Example](#example)
* [pkgsizes](#pkgsizes)
* [References](#references)
* [Copyright](#copyright)

#### Description

`make-ugentoo.sh` is an easy to customise script which creates small gentoo
systems.

#### Quickstart

Follow these steps:

1. make a directory to hold the build
2. chdir into the directory
3. copy the build script into the directory
4. review/edit the script, slice/dice to your requirements
5. run the script
6. have a coffee
7. come back to a built system
8. chroot into the directory and start manual customisation

#### Example

```
# mkdir .../ugentoo-root
# cd .../ugentoo-root
# cp .../make-ugentoo.sh .
# vi make-ugentoo.sh
# ./make-ugentoo.sh
```

#### pkgsizes

`pkgsizes` will summarise the space used by the installed packages:
```
# pkgsizes
        0 sys-libs/ncurses-5.9-r99
        0 virtual/acl-0-r1
        0 virtual/libffi-3.0.13-r1
        0 virtual/libiconv-0-r2
        0 virtual/libintl-0-r2
        0 virtual/pam-0-r1
      818 app-misc/editor-wrapper-4
     2226 sys-auth/pambase-20150213
     4163 app-misc/c_rehash-1.7-r1
     4677 app-eselect/eselect-vi-1.1.7-r1
    15326 sys-apps/install-xattr-0.5
...
  5568555 sys-libs/ncurses-5.9-r5
  6124244 sys-apps/shadow-4.1.5.1-r1
  7204000 app-shells/bash-4.3_p42-r1
  8993852 dev-libs/openssl-1.0.2e
 11031297 sys-apps/portage-2.2.26
 11127212 sys-apps/util-linux-2.26.2
 14081614 sys-libs/db-4.8.30-r2
 16250500 sys-apps/coreutils-8.23
 26314667 app-editors/vim-core-7.4.769
 48644007 sys-libs/glibc-2.21-r1
 62897249 dev-lang/python-2.7.10-r1
#
```

#### References

* [minimal base gentoo](http://txt.si/blog/p/minimal-base-linux-gentoo/)
* [minimal gentoo for raspberry pi](http://dustinhatch.tumblr.com/post/38118003177/minimalist-gentoo-for-the-raspberry-pi)
* [ratgentoo](http://www.anticore.org/ratgentoo/index.php?page=001)

#### Copyright

Copyright (c) 2013-2016 Paul Healy

Permission granted to redistribute it and/or modify it under the terms of the
GNU General Public License version 2.
