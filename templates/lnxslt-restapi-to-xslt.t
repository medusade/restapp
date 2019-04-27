%########################################################################
%# Copyright (c) 1988-2019 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: restapi-to-xslt.t
%#
%# Author: $author$
%#   Date: 4/25/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(restapi-to-xos-class-cxx
restapi-to-xos-class-implement-cxx
restapi-to-xos-http-processors-cxx
restapi-to-xos-http-processors-implement-cxx
restapi-to-xos-http-callback-cxx
restapi-to-html
restapi-to-html-js
restapi-to-js
)%)%