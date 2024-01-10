# Validate patient selection
# Only proceed if there are patients to choose from
# Validate and parse the appointment date and time
# Check if the appointment is in the past
# Check if the appointment slot is already taken

def book_appointment(patients, appointments)
	if patients.empty?
		puts "Não há pacientes cadastrados."
		return
	end
	
	patients.each_with_index { |(phone, name), index| puts "#{index + 1}. #{name} - #{phone}" }
	print "Escolha o paciente pelo número: "
	patient_index = gets.to_i - 1

	if patient_index.negative? || patient_index >= patients.length
		puts "Seleção de paciente inválida."
		return
	end

	phone = patients.keys[patient_index]
	print "Dia da consulta (dd/mm/yyyy): "
	day = gets.chomp
	print "Hora da consulta (HH:MM): "
	time = gets.chomp
	print "Especialidade desejada: "
	specialty = gets.chomp
  
	begin
		appointment_datetime = DateTime.strptime("#{day} #{time}", "%d/%m/%Y %H:%M")
	rescue ArgumentError
		puts "Formato de data e hora inválido."
		return
	end

	if appointment_datetime < DateTime.now
		puts "Não é possível marcar consultas para datas passadas."
		return
	end
  
	if appointments.any? { |appointment| appointment[:day] == day && appointment[:time] == time }
		puts "Esse horário já está ocupado."
		return
	end

	appointments.push({phone: phone, day: day, time: time, specialty: specialty})
	puts "Consulta agendada com sucesso"
end
