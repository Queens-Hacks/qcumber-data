qcumber-data
============

Note: If you're looking for the easy to use course catalogue for Queen's University, you came close! This is the normalized filestructure database the powers it. You'll want to head over to http://qcumber.ca for the end-user site :)

Note also! Work in progress, not live yet. The current live site code is at http://github.com/ChrisCooper/QcumberD


Priorities
----------

All of them are important, but the rank for the concerns of this repository is:

 1. Data correctness
 2. Computer friendliness
 3. Human friendliness



Format
------

Everything is `yaml`, because it's nice to work with in a lot of ways, for computers, git, and humans.


Validation
----------

There are [Rx](http://rx.codesimply.com/) schemas defined for every type of `yaml` file stored. We're making a [validator](https://github.com/Queens-Hacks/qcumber-data-validator) to make this all nice.

Eventually that script will hook into Travis CI and be awesome.
