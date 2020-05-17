class ProjectBacker
  attr_reader :project, :backer
  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def initialize(project, backer)
    @project = project
    @backer = backer
    save
  end
end
