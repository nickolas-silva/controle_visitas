namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      show_spinner("Criando o Administrador padrão...") { %x(rails dev:add_default_admin) }
      show_spinner("Criando o Funcionario padrão...") { %x(rails dev:add_default_employee) }
      show_spinner("Criando o Atendente padrão...") { %x(rails dev:add_default_attendant) }
      # show_spinner("xxxxxxxx...") { %x(rails dev:xxxxxxx) }
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do
   Admin.create!(
    email: 'admin@admin.com',
    password: 123456,
    password_confirmation: 123456
   )
  end

  desc "Adiciona um Funcionario padrão"
  task add_default_employee: :environment do
    Employee.create!(
    email: 'employee@employee.com',
    password: 123456,
    password_confirmation: 123456
  )
  end

  desc "Adiciona um Atendente padrão"
  task add_default_attendant: :environment do
    Attendant.create!(
    email: 'attendant@attendant.com',
    password: 123456,
    password_confirmation: 123456
   )
  end

  private

  def show_spinner(msg_start, msg_end = "Concluido")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
