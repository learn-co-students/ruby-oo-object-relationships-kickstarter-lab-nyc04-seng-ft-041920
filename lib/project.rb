class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def get_all_pb
        ProjectBacker.all.select {|project| project.project == self}
        
    end

    def backers
        self.get_all_pb.collect {|project| project.backer}   
    end
end