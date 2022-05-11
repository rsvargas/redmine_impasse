require_dependency 'projects_helper'

module ImpasseProjectsHelperPatch
  def project_settings_tabs
    tabs = super
    action = {:name => 'impasse', :controller => :impasse_settings, :action => :show, :partial => 'impasse_settings/show', :label => :project_module_impasse}

    tabs << action if User.current.allowed_to?(action, @project)

    tabs
  end
end

ProjectsHelper.prepend(ImpasseProjectsHelperPatch)
