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
%#   File: lnxslt-restapi-to-xslt-sh.t
%#
%# Author: $author$
%#   Date: 4/25/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%to,%(%else-then(%to%,%(%include(%include_path%/lnxslt-restapi-to-xslt.t)%)%)%)%,%
%To,%(%else-then(%To%,%(%to%)%)%)%,%
%TO,%(%else-then(%TO%,%(%toupper(%To%)%)%)%)%,%
%to,%(%else-then(%_To%,%(%tolower(%To%)%)%)%)%,%
%%(%
%%parse(%To%,%(
)%,,%(
)%,,%(%
%#
# %To%.xslt
#
echo ln -s $object.restapi $application-$object-%To%.xml
ln -s $object.restapi $application-$object-%To%.xml
echo ln -s ../../%To%.xslt $application-$object-%To%.xslt
ln -s ../../%To%.xslt $application-$object-%To%.xslt
%
%)%,To)%%
%)%)%