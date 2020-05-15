class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def get_all_pb
        ProjectBacker.all.select {|project| project.backer == self}
        
    end

    def backed_projects
        self.get_all_pb.collect {|project| project.project}   
    end
end