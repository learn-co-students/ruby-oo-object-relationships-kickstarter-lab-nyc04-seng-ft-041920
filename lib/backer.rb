require 'pry'

class Backer
  attr_reader :name

  def initialize backer_name
    @name = backer_name
  end

  def back_project project_obj
    ProjectBacker.new(project_obj, self)
  end

  def backed_projects
    all_projects = ProjectBacker.all.select { |p| p.backer == self}
    all_projects.collect { |project_ins| project_ins.project}
  end

end
