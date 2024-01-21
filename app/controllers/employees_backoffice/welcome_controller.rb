class EmployeesBackoffice::WelcomeController < EmployeesBackofficeController

  def index
    @vitts = current_employee.visits
  end
end
