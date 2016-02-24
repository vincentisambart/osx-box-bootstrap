## 2016_02_24_1

* `wine` temporarily removed from this version. There's an ongoing issue with
  one of its dependency which downloads from http://www.freedesktop.org/ - the
  site is down for more than 5 hours now.

## 2016_02_10_1

* `wine` and `xquartz` are pre-installed now

## 2016_01_28_1

* `carthage` is now pre-installed


## 2016_01_18_1

* Updated `ansible` playbooks, for Ansible 2.0
* Xcode path can (and should) be specified.


## 2016_01_13_1

* `tree` is now pre-installed
* The current Revision ID is now available in the `bitrise_profile` (loaded automatically,
  through `.bashrc`),
  and can be accessed with the Environment Variable `BITRISE_OSX_STACK_REV_ID`.
