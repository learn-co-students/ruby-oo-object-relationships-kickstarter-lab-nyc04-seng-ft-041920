class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  # [1] attempting to create that step here, like:
  # def appointments
  #   Appointment.all.select { |appt| appt.patient == self }
  # end

  def projects
    ProjectBacker.all.select { |backer| backer.project == self }
  end

  # somethings not working for either and it feels like im missing a step [1]
  # and it keeps returning a boolean
  def backers
    projects.collect { |title| title.backer }
    # is this reverse engineering?
  end
end
