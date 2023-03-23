# so what does a manager do?
# a manager is the same as an employee but it can also "send reports"


class Employee
  attr_reader :first_name, :salary, :active, :last_name
  attr_writer :first_name, :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @active = input_options[:active]
    @salary = input_options[:salary]
  end

  def print_info
    p "#{first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee1 = Employee.new(
  {
    :last_name => "Carter", 
    :active => true, 
    :first_name => "Majora", 
    :salary => 80000
  }
)
# employee1.print_info

# p employee1.salary
# employee1.print_info


employee2 = Employee.new({first_name: "Danilo", last_name: "Campos", active: false, salary: 90000})
# employee2.print_info

# ------------

class Manager < Employee
  attr_reader :employees, :active
  attr_writer :employees, :active
  
  
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end
  
  def send_report
    p "sending report...."
    # some logic here i'm not going to write
    p "just sent all the reports"
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
    # p @employees[0].give_annual_raise
    # p @employees[1].give_annual_raise
    p "giving all the raises"
  end

  def fire_all_employees    
    @employees.each do |employee|
      employee.active = false
    end
  end
end


manager1 = Manager.new(first_name: "Manny", last_name: "Williams", active: true, salary: 100000, employees: [employee1, employee2])

# manager1.give_all_raises
# p "final output, should have higher salaries"
# p manager1


# fire all employees
manager1.fire_all_employees
p manager1

# inputs outputs
# inputs - manager, employees
# outputs employees but have higher salaries
# majora 84k, danilo 94.5k



  # make method called give_all_raises
  # inside that method, find all the employees (danilo, majora)
# once i have a particular employee, then give that employee a raise