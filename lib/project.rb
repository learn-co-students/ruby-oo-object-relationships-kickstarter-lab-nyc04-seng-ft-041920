require 'pry'

class Project
  attr_reader :title

  def initialize project_title
    @title = project_title
  end

  def add_backer backer_obj
    ProjectBacker.new(self, backer_obj)
  end

  def backers
    # Here I created a local var to store all the projects that belong to the instance project calling this instance method. we search for that data in the ProjectBacker Class mathod '.all', and use the select method
    all_project_arr = ProjectBacker.all.select { |project_backer_ins| project_backer_ins.project == self}
    # then we use the 'collect' method to iterate our all_project_arr and return a new arr of all our backers.
    all_project_arr.collect { |project_ins| project_ins.backer}
  end

end
