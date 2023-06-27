require 'redmine'

Redmine::Plugin.register :redmine_pivot_table do
  name 'Redmine Pivot Table plugin'
  author 'Daiju Kito - Fixed by Jim Garlick'
  description 'Pivot table plugin for Redmine using pivottable.js'
  version '0.1.0'
  url 'https://github.com/jrgarlick/redmine_pivot_table'

  project_module :pivottables do
    permission :view_pivottables, :pivottables => [:index]
  end

  menu :project_menu, :pivottables, { :controller => 'pivottables', :action => 'index' }, :after => :activity, :param => :project_id

  settings :default => {'pivottable_max' => 1000}, :partial => 'pivottables/setting'
end
