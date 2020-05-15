require 'pry'
class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        # project_backers associated with this project
        project_backers = ProjectBacker.all.select{|p_b| p_b.project == self}
        # from that array, just the backers assoc. with this proj
        project_backers.map{|p_b| p_b.backer}

    end
end