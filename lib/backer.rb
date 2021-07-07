
class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # artibrary name PB to store the collection of each project backer that belongs to this back instance
        pb = ProjectBacker.all.select do |projectbacker| 
         projectbacker.backer == self 
        end
        #since PB contains the entire project backer information and we just want an array of the projects, we use map to iterate through and collect the projects into an array
        pb.map do |projectB| projectB.project end
    end

end