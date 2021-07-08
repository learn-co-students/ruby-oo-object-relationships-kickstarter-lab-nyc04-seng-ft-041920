class Backer 
    attr_reader :name 

    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def pBacker 
        ProjectBacker.all.select{|item| item.backer == self}
    end 

    def backed_projects
        self.pBacker.map{|item| item.project}
    end 

  

end 