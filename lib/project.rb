class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def project_helper
        ProjectBacker.all.select do |backed_project|
            backed_project.project == self
        end
    end

    def backers
        project_helper.map do |project|
            project.backer
        end
    end
end