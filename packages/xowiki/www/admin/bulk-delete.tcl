::xowiki::Package initialize -ad_doc {
  this file is called by the bulk action of admin/list 

  @author Gustaf Neumann (gustaf.neumann@wu-wien.ac.at)
  @creation-date Nov 11, 2007
  @cvs-id $Id: bulk-delete.tcl,v 1.3 2015/12/04 17:16:55 cvs Exp $

  @param object_type 
} -parameter {
  {-objects ""}
}

foreach o $objects {
  ns_log notice "DELETE $o"
  $package_id delete -name $o 
}

ad_returnredirect "./list"

# Local variables:
#    mode: tcl
#    tcl-indent-level: 2
#    indent-tabs-mode: nil
# End:
