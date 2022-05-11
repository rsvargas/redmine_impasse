require_dependency 'projects_helper'

module ImpasseProjectsHelperPatch
  module Patches
    module ProjectsHelperPatch
      def project_settings_tabs
        tabs = super
        action = {:name => 'impasse', :controller => :impasse_settings, :action => :show, :partial => 'impasse_settings/show', :label => :project_module_impasse}

        tabs << action if User.current.allowed_to?(action, @project)

        tabs
      end
    end
  end
end

# apply tab
ProjectsController.send :helper, ImpasseProjectsHelperPatch::Patches::ProjectsHelperPatch
