--
-- packages/language/sql/language-create.sql
--
-- @author Jeff Davis (davis@xarg.net)
-- @creation-date 2000-09-10
-- @cvs-id $Id: ad-locales-drop.sql,v 1.4 2015/12/04 13:50:04 cvs Exp $
--

-- ****************************************************************************
-- * The lang_messages table holds the message catalog.
-- * It is populated by ad_lang_message_register.
-- * The registered_p flag denotes that a message exists in a file
-- * that gets loaded on server startup, and hence should not get updated.
-- ****************************************************************************

drop table ad_locale_user_prefs;
drop view enabled_locales;
drop table ad_locales;
