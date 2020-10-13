require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


employees = ["Ben", "Grable", "Birdie", "Sky"]
managers = []

managers << Manager.new("Sally", "Vitamins", 45)
managers << Manager.new("Harvey", "Grocery", 32)
managers << Manager.new("Triston", "Beauty", 22)
managers << Manager.new("Sarah", "Produce", 76)

def rand_pay
    rand(30000..60000)
end

managers.each do |manager|
    employees.each do |emp|
        manager.hire_employee(emp, rand_pay)
    end
end
puts "========================"
puts "Manager All Depts"
puts 
puts Manager.all_departments
puts "========================"
puts "Avg Manager Age"
puts 
puts Manager.average_age
puts "========================"
puts "Employee's manager and Tax bracket"
puts
Employee.all.each do |emp|
    puts emp.name 
    puts
    puts emp.manager_name
    emp.tax_bracket.each do |emp|
        puts emp.name
    end
    puts
end
puts "========================"
puts "Employee Paid-over"
Employee.paid_over(35000).each do |emp|
    puts emp.name
    puts "Makes $#{emp.salary} per year"
    puts
end
puts "========================"
puts "Employee department"
puts Employee.find_by_department("Vitamins")
puts "========================"
puts 





#binding.pry










puts "done"
