require "pry"

class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    back_p = ProjectBacker.new(project, self)
    back_p
  end

  def backed_projects
    projects = []
    ProjectBacker.all.select do |pj|
      #   binding.pry
      if self.name == pj.backer.name
        projects << pj.project
      end
    end
    projects
  end
end
