# /packages/mbryzek-subsite/www/admin/attributes/value-delete-2.tcl

ad_page_contract {

    Deletes a value

    @author mbryzek@arsdigita.com
    @creation-date Sun Dec 10 14:48:44 2000
    @cvs-id $Id: value-delete-2.tcl,v 1.4 2015/12/04 13:50:08 cvs Exp $

} {
    attribute_id:naturalnum,notnull
    enum_value:trim,notnull
    { operation:trim "No, I want to cancel my request" } 
    { return_url [export_vars -base one attribute_id] }    
}

if {$operation eq "Yes, I really want to delete this attribute value"} {
    db_transaction {
	attribute::value_delete $attribute_id $enum_value
    }
}

ad_returnredirect $return_url

# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:
