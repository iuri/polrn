-- packages/acs-events/sql/postgresql/activity-drop.sql
--
-- $Id: activity-drop.sql,v 1.4 2015/12/04 13:50:03 cvs Exp $

-- drop package acs_activity;
select drop_package('acs_activity');

drop table   acs_activity_object_map;
drop table   acs_activities;

select  acs_object_type__drop_type ('acs_activity','f');




