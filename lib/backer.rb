require_relative 'project_backer.rb'
require_relative 'project.rb'

class Backer
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        all_instances = ProjectBacker.all.find_all {|project| project.backer == self}
        return all_instances.collect {|project| project.project}
    end
end

# richperson1 = Backer.new("Rich Person")
# richperson2 = Backer.new("Rich Person Jr")

# coffee_shop = Project.new("Hipster Coffee Shop")
# whale_app = Project.new("An app about whales")
# pokemon_go = Project.new("Pokemon Go")

# ProjectBacker.new(coffee_shop,richperson1)
# ProjectBacker.new(whale_app,richperson1)
# ProjectBacker.new(pokemon_go,richperson2)

# p richperson1.backed_projects

