#### micro Gentoo builder

* [Table of Contents](#table-of-contents)
* [Description](#description)
* [Quickstart](#quickstart)
* [Example](#example)
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

#### References

* [minimal base gentoo](http://txt.si/blog/p/minimal-base-linux-gentoo/)
* [minimal gentoo for raspberry pi](http://dustinhatch.tumblr.com/post/38118003177/minimalist-gentoo-for-the-raspberry-pi)
* [ratgentoo](http://www.anticore.org/ratgentoo/index.php?page=001)

#### Copyright

Copyright (c) 2013-2016 Paul Healy

Permission granted to redistribute it and/or modify it under the terms of the
GNU General Public License version 2.
