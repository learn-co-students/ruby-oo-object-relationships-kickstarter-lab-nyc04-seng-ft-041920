class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    # instantiate projectbacker with itself
    ProjectBacker.new(project, self)
  end

  def backers
    ProjectBacker.all.select { |project| project.backer == self }
  end

  def backed_projects
    # return an array -- collect?
    backers.collect { |backer| backer.project }
  end

end
