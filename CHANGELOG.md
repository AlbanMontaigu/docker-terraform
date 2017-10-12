
## 0.10.7 (2017-10-12)
- FEATURE: now any `*.tf.m4` files will be processed by `m4` and not only `main.tf.m4`
- FEATURE: flag `--m4-opts` added to be able to pass options to `m4` (must be followed by `m4` flags between quotes) 

## 0.10.7 (2017-10-05)
- UPDATE: update to terraform 0.10.7
- UPDATE: maintainer added inside a LABEL
- UPDATE: update to docker 17.09.0-ce for build

## 0.10.4 (2017-09-07)
- UPDATE: update to terraform 0.10.4
- UPDATE: update to docker 17.06.2-ce for build

## 0.10.2 (2017-08-21)
- Update to terraform 0.10.2
- Move to circle ci 2 (and use docker 17.06.1-ce for image build)
- No more use of the old makefile since circle ci do the job

## 0.9.11 (2017-07-05)
- Update to terraform 0.9.11
- Update to alpine 3.6

## 0.9.6 (2017-05-30)
- Update to terraform 0.9.6

## 0.9.4 (2017-05-09)
- Update to terraform 0.9.4

## 0.9.2 (2017-04-07)
- Merge with last [uzyexe/dockerfile-terraform](https://github.com/uzyexe/dockerfile-terraform) version
- Update to terraform 0.9.2

## 0.8.8 (2017-03-13)
- Merge with last [uzyexe/dockerfile-terraform](https://github.com/uzyexe/dockerfile-terraform) version
- Update to terraform 0.8.8
- Test fixed
- Update to alpine 3.5

## 0.7.6 (2016-10-16)
- Merge with last [uzyexe/dockerfile-terraform](https://github.com/uzyexe/dockerfile-terraform) version
- Update to terraform 0.7.6

## 0.6.16 (2016-06-04)
- Update to terraform 0.6.16
- Update to alpine 3.4
- Now auto deploy on hub is stopped (will use hub directly)
- Goal for tests is now "tests" instead of "test"
- Merge with last [uzyexe/dockerfile-terraform](https://github.com/uzyexe/dockerfile-terraform) version

## 0.6.11 (2015-12-19)
- Update to terraform 0.6.11

## 0.6.8 (2015-12-19)
- Merge from fork base and so update to terraform 0.6.8
- Update docker image to 1.9.1 for testing

## 0.6.6 (2015-11-19)
- Added m4 template system for main.tf
- Added circle ci integration
