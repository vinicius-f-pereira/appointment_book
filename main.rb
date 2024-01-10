require 'date'
require '../lib/appointment'
require '../lib/cancelation'
require '../lib/handle_db'
require '../lib/patient'
require '../lib/utils'

patients = {}
appointments = []

patients_filename = 'patients.db'
appointments_filename = 'appointments.db'

patients = load_patients(patients_filename)
appointments = load_appointments(appointments_filename)

system("clear")

loop do
	main_menu
	choice = gets.to_i
	case choice
	when 1
		system("clear")
		add_patient(patients)
		save_patients(patients_filename, patients)
	when 2
		system("clear")
		book_appointment(patients, appointments)
		save_appointments(appointments_filename, appointments)
	when 3
		system("clear")
		cancel_appointment(appointments)
		save_appointments(appointments_filename, appointments)
	when 4
		system("clear")
		puts "Saindo do sistema..."
			break
		else
			puts "Opção inválida."
		end
end

