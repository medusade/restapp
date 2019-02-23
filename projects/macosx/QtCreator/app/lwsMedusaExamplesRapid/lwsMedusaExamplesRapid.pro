########################################################################
# Copyright (c) 1988-2014 $organization$
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
#   File: lwsMedusaExamplesRapid.pro
#
# Author: $author$
#   Date: 6/19/2014
########################################################################
PKG = ../../../../..
BLD = ../..
SRC = $${PKG}/source

libJson_PKG = $${PKG}/../thirdparty/libc/libjson/libjson
libJson_SRC = $${libJson_PKG}
libJson_BLD = ../$${libJson_PKG}/build/macosx/QtCreator/Debug
libJson_LIB = $${libJson_BLD}/lib/libjson

libWebsockets_PKG = $${PKG}/../thirdparty/libc/libwebsockets/libwebsockets
libWebsockets_SRC = $${libWebsockets_PKG}/lib
libWebsockets_BLD = ../$${libWebsockets_PKG}/build/macosx/QtCreator/Debug
libWebsockets_LIB = $${libWebsockets_BLD}/lib/libwebsockets

XOS_PKG = $${PKG}/../xos
XOS_SRC = $${XOS_PKG}/src
XOS_BLD = ../$${XOS_PKG}/build/macosx/QtCreator/Debug
XOS_LIB = $${XOS_BLD}/lib
XosCore_LIB = $${XOS_LIB}/libXosCore

TARGET = lwsMedusaExamplesRapid

INCLUDEPATH += \
$${SRC} \
$${XOS_SRC} \
$${libWebsockets_SRC} \
$${libJson_SRC} \

DEFINES += \

########################################################################

HEADERS += \
$${SRC}/examples/clock/Clock.hpp \
$${SRC}/examples/clock/server/Processors.hpp \
$${SRC}/examples/clock/server/implement/Clock.hpp \
$${SRC}/examples/clock/server/implement/Processors.hpp \
$${SRC}/examples/server/Callback.hpp \

SOURCES += \
$${SRC}/examples/clock/server/implement/Clock.cpp \
$${SRC}/examples/clock/server/implement/Clock_instance.cpp \
$${SRC}/examples/clock/server/implement/Processors.cpp \
$${SRC}/examples/server/Callback.cpp \

########################################################################
HEADERS += \
$${SRC}/examples/server/libwebsockets/medusa/Daemon.hpp \
$${SRC}/server/libwebsockets/medusa/Daemon.hpp \
$${SRC}/server/libwebsockets/Daemon.hpp \
$${SRC}/RestApp.hpp \

SOURCES += \
$${SRC}/examples/server/libwebsockets/medusa/Daemon.cpp \
$${SRC}/examples/server/libwebsockets/medusa/Daemon_instance.cpp \
$${SRC}/RestApp.cpp \
$${SRC}/libjson/Json.cpp \

########################################################################
HEADERS += \
$${XOS_SRC}/xos/inet/http/Form.hpp \
$${XOS_SRC}/xos/inet/http/UrlEncodedReader.hpp \
$${XOS_SRC}/xos/inet/http/FormReader.hpp \
$${XOS_SRC}/xos/inet/http/Request.hpp \
$${XOS_SRC}/xos/inet/http/Response.hpp \
$${XOS_SRC}/xos/inet/http/server/Processor.hpp \

SOURCES += \
$${XOS_SRC}/xos/inet/http/Form.cpp \
$${XOS_SRC}/xos/inet/http/UrlEncodedReader.cpp \
$${XOS_SRC}/xos/inet/http/FormReader.cpp \
$${XOS_SRC}/xos/inet/http/Request.cpp \
$${XOS_SRC}/xos/inet/http/Response.cpp \
$${XOS_SRC}/xos/inet/http/Mime.cpp \
$${XOS_SRC}/xos/inet/http/server/medusa/method/GetProcessor.cpp \
$${XOS_SRC}/xos/os/Main_main.cpp \

LIBS += \
-L$${XosCore_LIB} \
-lXosCore \
-L$${libWebsockets_LIB} \
-lwebsockets \
-L$${libJson_LIB} \
-ljson \
-lssl \
-lcrypto \
-lz \
-lpthread \
-ldl \
