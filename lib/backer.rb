class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_helper
        ProjectBacker.all.select do |project_backed|
            project_backed.backer == self
        end
    end

    def backed_projects
        backed_helper.map do |backed|
            backed.project
        end
    end
end