#!/bin/bash
########################################################################
# Copyright (c) 1988-2019 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: lnxslt-restapi-object.sh
#
# Author: $author$
#   Date: 4/25/2019
#
# Make restapi-to-[what].xslt and .xml symbolic links for object
########################################################################
default_application=Examples
default_object=Object
if [ "$1" != "" ]; then
object=$1
if [ "$2" != "" ]; then
application=$2
else
application=$default_application
fi
#
# restapi-to-xos-class-cxx.html
#
echo ln -s ../../restapi-to.js restapi-to.js
ln -s ../../restapi-to.js restapi-to.js
echo ln -s ../../restapi-to-xos-class-cxx.html restapi-to-xos-class-cxx.html
ln -s ../../restapi-to-xos-class-cxx.html restapi-to-xos-class-cxx.html

#
# restapi-to-xos-class-cxx.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-xos-class-cxx.xml
ln -s $object.restapi $application-$object-restapi-to-xos-class-cxx.xml
echo ln -s ../../restapi-to-xos-class-cxx.xslt $application-$object-restapi-to-xos-class-cxx.xslt
ln -s ../../restapi-to-xos-class-cxx.xslt $application-$object-restapi-to-xos-class-cxx.xslt

#
# restapi-to-xos-class-implement-cxx.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-xos-class-implement-cxx.xml
ln -s $object.restapi $application-$object-restapi-to-xos-class-implement-cxx.xml
echo ln -s ../../restapi-to-xos-class-implement-cxx.xslt $application-$object-restapi-to-xos-class-implement-cxx.xslt
ln -s ../../restapi-to-xos-class-implement-cxx.xslt $application-$object-restapi-to-xos-class-implement-cxx.xslt

#
# restapi-to-xos-http-processors-cxx.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-xos-http-processors-cxx.xml
ln -s $object.restapi $application-$object-restapi-to-xos-http-processors-cxx.xml
echo ln -s ../../restapi-to-xos-http-processors-cxx.xslt $application-$object-restapi-to-xos-http-processors-cxx.xslt
ln -s ../../restapi-to-xos-http-processors-cxx.xslt $application-$object-restapi-to-xos-http-processors-cxx.xslt

#
# restapi-to-xos-http-processors-implement-cxx.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-xos-http-processors-implement-cxx.xml
ln -s $object.restapi $application-$object-restapi-to-xos-http-processors-implement-cxx.xml
echo ln -s ../../restapi-to-xos-http-processors-implement-cxx.xslt $application-$object-restapi-to-xos-http-processors-implement-cxx.xslt
ln -s ../../restapi-to-xos-http-processors-implement-cxx.xslt $application-$object-restapi-to-xos-http-processors-implement-cxx.xslt

#
# restapi-to-xos-http-callback-cxx.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-xos-http-callback-cxx.xml
ln -s $object.restapi $application-$object-restapi-to-xos-http-callback-cxx.xml
echo ln -s ../../restapi-to-xos-http-callback-cxx.xslt $application-$object-restapi-to-xos-http-callback-cxx.xslt
ln -s ../../restapi-to-xos-http-callback-cxx.xslt $application-$object-restapi-to-xos-http-callback-cxx.xslt

#
# restapi-to-html.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-html.xml
ln -s $object.restapi $application-$object-restapi-to-html.xml
echo ln -s ../../restapi-to-html.xslt $application-$object-restapi-to-html.xslt
ln -s ../../restapi-to-html.xslt $application-$object-restapi-to-html.xslt

#
# restapi-to-html-js.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-html-js.xml
ln -s $object.restapi $application-$object-restapi-to-html-js.xml
echo ln -s ../../restapi-to-html-js.xslt $application-$object-restapi-to-html-js.xslt
ln -s ../../restapi-to-html-js.xslt $application-$object-restapi-to-html-js.xslt

#
# restapi-to-js.xslt
#
echo ln -s $object.restapi $application-$object-restapi-to-js.xml
ln -s $object.restapi $application-$object-restapi-to-js.xml
echo ln -s ../../restapi-to-js.xslt $application-$object-restapi-to-js.xslt
ln -s ../../restapi-to-js.xslt $application-$object-restapi-to-js.xslt
else
object=$default_object
echo usage `basename $0` object
fi
