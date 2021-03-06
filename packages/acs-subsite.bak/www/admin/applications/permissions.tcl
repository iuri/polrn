ad_page_contract {
    Permissions for the subsite itself.
    
    @author Lars Pind (lars@collaboraid.biz)
    @creation-date 2003-06-13
    @cvs-id $Id: permissions.tcl,v 1.4 2015/12/04 13:50:08 cvs Exp $
} {
    package_id:naturalnum,notnull
}

set page_title "[apm_instance_name_from_id $package_id] Permissions"

set context [list [list "." "Applications"] $page_title]


# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:
