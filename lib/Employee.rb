
class Employee

    @@all = []
    attr_reader :name, :salary, :manager_name, :department

    #CLASS METHODS#

    def self.all
        @@all
    end

    def self.paid_over(amount)
        @@all.select do |emp|
            emp.salary > amount
        end
    end

    def self.find_by_department(department)
        @@all.find do |emp|
            emp.department == department
        end
    end

    #INSTANCE METHODS#

    def initialize(name, salary, manager)
        @name, @salary = name, salary
        @manager = manager
        @manager_name = manager.name
        @department = manager.department
        self.save
    end

    def save
        @@all << self
    end

    def tax_bracket
        @@all.select do |emp|
            (@salary - emp.salary).positive? ? (@salary - emp.salary < 1000) : (emp.salary - @salary < 1000)
        end.uniq
    end

end
