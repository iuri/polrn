<?xml version="1.0"?>
<queryset>

<fullquery name="panel_add">      
      <querytext>
      
	insert into wf_context_task_panels
	    (workflow_key, transition_key, context_key, sort_order, header, template_url)
	select :workflow_key, :transition_key, :context_key, coalesce(max(sort_order)+1,1), :header, :template_url
	from   wf_context_task_panels
	where  workflow_key = :workflow_key
	and    transition_key = :transition_key
	and    context_key = :context_key
    
      </querytext>
</fullquery>

 
</queryset>
