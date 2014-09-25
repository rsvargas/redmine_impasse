require_dependency 'issue'

module ImpasseIssuePatch
  def self.included(base) # :nodoc:
    base.class_eval do
      unloadable # Send unloadable so it will not be unloaded in development
      has_many :requirement_issues,
               :class_name => 'Impasse::RequirementIssue',
               :join_table => 'impasse_requirement_issues'
    end
  end
end
