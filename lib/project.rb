require 'pry'

class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backer_array = []
        ProjectBacker.all.select do |pb|
            if pb.project == self
                backer_array << pb.backer
            end
        end
        backer_array
    end

end