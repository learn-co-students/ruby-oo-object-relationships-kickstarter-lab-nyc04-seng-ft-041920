class Project

    attr_reader :title


    def initialize(title)
        @title = title
    end

  
    def add_backer(backer)
        new = ProjectBacker.new(self, backer)


    end

    def backers
        backers = ProjectBacker.all.select do |backer|
            backer.project == self

        end

        backers.map {|backer| backer.backergold9897}

    end

end