class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = ProjectBacker.all.select {|project| project.backer == self}
        arr.map {|project| project.project}
        
    end


end