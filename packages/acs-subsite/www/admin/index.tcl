# /packages/mbryzek-subsite/www/admin/index.tcl

ad_page_contract {
    @author Bryan Quinn (bquinn@arsdigita.com)
    @author Michael Bryzek (mbryzek@arsdigita.com)

    @creation-date August 15, 2000
    @cvs-id $Id: index.tcl,v 1.19.6.4 2018/09/14 11:56:34 gustafn Exp $
} {
} -properties {
    context:onevalue
    subsite_name:onevalue
    acs_admin_url:onevalue
    instance_name:onevalue
    acs_automated_testing_url:onevalue
    acs_lang_admin_url:onevalue
}

array set this_node [site_node::get -url [ad_conn url]]
set title "Subsite [_ acs-subsite.Administration]: $this_node(instance_name)"

set acs_admin_url [apm_package_url_from_key "acs-admin"]
array set acs_admin_node [site_node::get -url $acs_admin_url]
set acs_admin_name $acs_admin_node(instance_name)
set sw_admin_p [permission::permission_p \
                    -party_id [ad_conn user_id] \
                    -object_id $acs_admin_node(object_id) \
                    -privilege admin]

#
# Get the main site location, which is the configured location.
# When SuppressHttpPort is set, get it without the port.
#
set suppress_port [parameter::get -parameter SuppressHttpPort \
                       -package_id [apm_package_id_from_key acs-tcl] \
                       -default 0]
set main_site_location [util::configured_location -suppress_port=$suppress_port]
set full_acs_admin_url $main_site_location$acs_admin_url


set convert_subsite_p [expr { [llength [apm::get_package_descendent_options [ad_conn package_key]]] > 0 }]

# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:
