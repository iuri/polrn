ad_page_contract {
    Inform the user of an account status message.
    
    @cvs-id $Id: account-message.tcl,v 1.5 2015/12/04 13:50:10 cvs Exp $
} {
    {message:html ""}
    {return_url ""}
}

set page_title "Logged in"
set context [list $page_title]

set system_name [ad_system_name]


# Local variables:
#    mode: tcl
#    tcl-indent-level: 4
#    indent-tabs-mode: nil
# End:
