Build
=====

 - check out gnugo from git://git.savannah.gnu.org/gnugo.git
 - ./configure
 - make
 - make clean ( sounds stupid but we want to get rid of binary files but keep generated code )
 - copy all files into the path where you checked out this repo ( do not overwrite any file - skip them )
 - now you can run ndk-build as usual
 
Background
==========

This directory tree contains the NDK build scripts and all files that were modified or added on base of the orignal GNU Go 3.8 sources. To build the android native shared library take the original GNU Go 3.8 sources and replace/add the corresponding files with the files found here. Then generate the pattern files with mkpat.

The changes found here are unfortunally a sad hack. A later version should implement usage of the GTP proocol over sockets (which didn't work at first attempt via JNI). First tries can still be found in interfac/java_bridge.c, but that implementation had issues with buffering of the 'from_gnugo_stream'.

FYI: create patterns in build process https://github.com/ligi/gobandroid-ai-gnugo/issues/1

Download
========

[<img src="https://fdroid.gitlab.io/artwork/badge/get-it-on.png"
     alt="Get it on F-Droid"
     height="80">](https://f-droid.org/packages/org.ligi.gobandroidhd.ai.gnugo/)
[<img src="https://play.google.com/intl/en_us/badges/images/generic/en-play-badge.png"
     alt="Get it on Google Play"
     height="80">](https://play.google.com/store/apps/details?id=org.ligi.gobandroidhd.ai.gnugo)

Or get the latest APK from the [Releases Section](https://github.com/ligi/gobandroid-ai-gnugo/releases/latest).
