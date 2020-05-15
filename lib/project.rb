class Project
    attr_accessor :title, :project_backer
    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end
    
    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def projects
        ProjectBacker.all.select{|pb| pb.project == self}
    end

    def backers
        projects.collect do |project|
            project.backer
        end
    end
end