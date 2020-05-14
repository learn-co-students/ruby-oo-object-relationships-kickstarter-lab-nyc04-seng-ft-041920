class ProjectBacker 
    @@all = []
    attr_accessor :backer, :project 

    def initialize(project, backer)
        @backer = backer 
        @project = project 
        @@all << self 
    end 



    def self.all 
        @@all 
    end 
end 