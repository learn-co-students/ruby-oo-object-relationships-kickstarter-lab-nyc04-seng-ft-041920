class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    add = ProjectBacker.new(self, backer)
  end

  def backers
    supporters = []
    ProjectBacker.all.select do |project|
      if project.project == self
        supporters << project.backer
      end
    end
    supporters
  end
end
