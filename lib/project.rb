class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        save
    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = ProjectBacker.all.select {|project| project.project == self}
        arr.map {|project| project.backer}
        # ProjectBacker.all.select do |project|
        #     project.project == self
        # end.map {|project| project.backer}
    end

end