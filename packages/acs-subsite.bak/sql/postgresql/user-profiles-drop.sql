--
-- packages/acs-subsite/sql/user-profiles-drop.sql
--
-- @author oumi@arsdigita.com
-- @creation-date 2000-02-02
-- @cvs-id $Id: user-profiles-drop.sql,v 1.4 2015/12/04 13:50:07 cvs Exp $
--

drop view cc_users_of_package_id;
drop view registered_users_of_package_id;
drop view application_users;

select acs_rel_type__drop_type('user_profile', 'f');
select acs_rel_type__drop_role('application');

select drop_package('user_profile');

drop table user_profiles;


