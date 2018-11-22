<master>
<property name="doc(title)">@page_title;literal@</property>
<property name="context">@context_bar;literal@</property>
<property name="main_navbar_label">projects</property>
<property name="sub_navbar">@sub_navbar;literal@</property>


<!-- ------------------------------------------------------------------------------ -->
<%= [im_box_header [lang::message::lookup "" intranet-ganttproject.TaskJuggler_Output_Files "TaskJuggler Output Files"]] %>
<%
    set project_id $main_project_id
    set project_path [im_filestorage_project_path $project_id]
    set folder_type "project"
    set object_name [lang::message::lookup "" intranet-filestorage.Folder_type_Project "Project"]
%>
<%= [im_filestorage_base_component $user_id $project_id $main_project_name $project_path $folder_type "taskjuggler"] %>
<%= [im_box_footer] %>

<p>
    The files above have been automatically generated by ]project-open[ and TaskJuggler.<br>
    You can click on the icons of the files above in order to inspect their contents.<br>
    For interpretation, please see <a href='http://www.taskjuggker.com/'>www.taskjuggler.org</a>.
</p>

<br>&nbsp;<br>
<h1>Import TaskJuggler Schedule</h1>
<p>
The following button will read the "@taskreport_csv@" file<br>
and import the values into the current project.
</p>


<form action=taskjuggler-import method=POST>
<%= [export_vars -form {project_id}] %>
<input type="submit" name="import" value="Import Schedule">
	from TaskJuggler into ]project-open[
</form>
