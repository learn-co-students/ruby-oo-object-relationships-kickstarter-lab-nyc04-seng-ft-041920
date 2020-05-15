require 'pry'

class Backer
    
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select{|p_b| p_b.backer == self}
        project_backers.map{|element| element.project}
    end
end