class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        all_instances = ProjectBacker.all.find_all {|project| project.project == self}
        all_instances.collect {|project| project.backer}
    end
end