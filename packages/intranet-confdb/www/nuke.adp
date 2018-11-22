<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN">
<master>
<property name="doc(title)">@page_title;literal@</property>
<property name="context">@context_bar;literal@</property>
<property name="main_navbar_label">conf_items</property>

<br>
<h2><nobr>@page_title@</nobr></h2>

<p>
#intranet-core.lt_Confirm_the_nuking_of#
<a href="@object_url@">@conf_item_name@</a>.

<p>&nbsp;<p>
First, unless @object_name@ is a test @object_type@, you 
should probably delete this user instead. Deleting marks 
the @object_type@ deleted but leaves intact its
relationship with other objects such as forums, filestorage etc.

<p>
Nuking is a violent irreversible action. 
You are instructing the system to remove the user and any content 
that he or she has contributed to the site. This is generally only 
appropriate in the case of test users and, perhaps, dishonest people 
who've flooded a site with fake crud.
<p>&nbsp;<p>

<center>
<form method=get action=nuke-2>
<input type="hidden" name="conf_item_id" value="@conf_item_id@">
<input type="submit" value="Yes I am sure that I want to delete this @object_type@">
</form>
</center>
