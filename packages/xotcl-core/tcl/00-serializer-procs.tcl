# $Id: 00-serializer-procs.tcl,v 1.4 2015/12/04 17:16:54 cvs Exp $
if {![info exists ::xotcl::version]} {
  ns_log notice "**********************************************************"
  ns_log notice "OOPS, apparenty you have no XOTcl installed on your aolserver."
  ns_log notice "Please install XOTcl on your system(see http://openacs.org/xowiki/xotcl-core)"
  ns_log notice "**********************************************************"
  return
}
if {$::xotcl::version < 1.5} {
  ns_log notice "**********************************************************"
  ns_log notice "This version of xotcl-core requires at least XOTcl 1.5.0."
  ns_log notice "The installed version ($::xotcl::version$::xotcl::patchlevel appears to be older."
  ns_log notice "Please updgrade to a new version (see http://openacs.org/xowiki/xotcl-core)"
  ns_log notice "**********************************************************"
}

# Local variables:
#    mode: tcl
#    tcl-indent-level: 2
#    indent-tabs-mode: nil
# End:
