class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
      ProjectBacker.new(self, backer)
    end 

    def backers
        all_backers = ProjectBacker.all.select do |backer|
            backer.project == self 
        end 
        all_backers.map do |backer_array|
            backer_array.backer
        end 
    end 

end 

