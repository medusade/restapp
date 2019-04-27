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
#   File: lnxslt-restapi-application.sh
#
# Author: $author$
#   Date: 4/25/2019
#
# Make restapi-to-[what].xslt and .xml symbolic links for application
########################################################################
default_application=Examples
if [ "$1" != "" ]; then
object=$1
if [ "$2" != "" ]; then
application=$2
else
application=$default_application
fi
pushd $application/$object
sh ../../lnxslt-restapi-object.sh $object $application
popd
else
echo usage `basename $0` object application
echo pushd '$application['$default_application']/$object'
echo sh ../../lnxslt-restapi-object.sh '$object' '$application'
echo popd
fi
