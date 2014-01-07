iOS6-7-Statusbar-Demo
=====================

Demonstrate how to deal with iOS6 / iOS7 status bar compatibility issue with combination of autolayout/non-autolayout, storyboard/nib, navigation bar translucent/opaque.

Due to the chages made for iOS7, view contents may slide under status bar.  There are some different ways to fix this ssue, but the way to fix this is depending upon whether autolayout or not, storyboard or not, and some others.

I have been fixing these issues when necessary, and everytime when I face this issue, I scratch my head and say, "gee I forgot how to fix this."

This project give you some idea about how to deal with status bar issue with followng conditions.

* Autolayout / None-autolayout
* Storyboard / Nib
* Navigation bar: translucent / opaque
* Navigation bar: hidden / shown

Known Issues
------------
Underfollowing conditions, view controller is not behaving as expected. Your feedback is truly welcome.

* Non-autolayout, storyboard, navigation bar: opaque, shown on iOS7
* Non-autolayout, Nib, navigation bar: opaque, shown on iOS7

License
-------
MIT

