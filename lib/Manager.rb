
class Manager

    @@all = []
    attr_reader :name, :department, :age, :employees

#CLASS METHODS#
    def self.all
        @@all 
    end

    def self.all_departments
        @@all.map {|manager| manager.department}
    end

    def self.average_age
        @@all.reduce(0) do |age, manager|
            age + manager.age
        end.fdiv(@@all.size).round(2)
    end

#INSTANCE METHODS#
    def initialize(name, department, age)
        @name, @department, @age = name, department, age
        @employees = []
        self.save
    end

    def save
        @@all << self
    end

    def hire_employee(name, salary)
        new_hire = Employee.new(name, salary, self)
        @employees << new_hire
        return new_hire
    end

end
