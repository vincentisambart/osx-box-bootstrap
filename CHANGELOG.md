## 2016_06_15_1

* `wine` removed. We really wanted to keep it around, but so far we had more issues with `wine` than we had with any other tool..
  We decided to remove it for now as it breaks the install/provision process - if the new Xcode 8 (beta) is installed on the system
  `wine` fails to install.


## 2016_06_11_1

* `bitrise` (CLI): `1.3.5`


## 2016_05_14_1

* `bitrise` (CLI): `1.3.4`


## 2016_04_27_1

* `bitrise` (CLI) : `1.3.3`


## 2016_04_26_1

* Bit of reorganization: after `bitrise run provision-vm` you now have to run `bitrise run perform-weekly-cache-update`,
  to not to duplicate tasks/scripts between the initial setup and the weekly cache updates.
* `bitrise` (CLI) : `1.3.2`
* `bitrise-bridge` : `0.9.8`
* Cleanup: make sure that `~/Library/Developer/Xcode/DerivedData` is empty before saving the virtual machine image


## 2016_04_04_1

* `Build tool 23.0.3` added to the Xamarin stack
* `NUnit 2.6.4` added to the stack

## 2016_03_17_1

* `java` is now pre-installed - thanks @izhilenkov! 🙌
* `NUnit` updated to `3.2`

## 2016_02_24_2

* `wine`: http://www.freedesktop.org/ is alive again, `wine` install went through.

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
