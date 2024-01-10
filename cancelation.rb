# Check if input is a positive number
# Validate appointment selection

def cancel_appointment(appointments)
	if appointments.empty?
		puts "Não há consultas para cancelar."
		return
	end

	appointments.each_with_index do |appointment, index|
		puts "#{index + 1}. #{appointment[:day]} #{appointment[:time]} - #{appointment[:specialty]}"
	end

	print "Escolha a consulta para cancelar pelo número: "
	input = gets.chomp

	if input !~ /^\d+$/ || input.to_i <= 0
		puts "Por favor, insira um número válido."
		return
	end

	appointment_index = input.to_i - 1

	if appointment_index.negative? || appointment_index >= appointments.length
		puts "Seleção de consulta inválida."
		return
	end

	appointments.delete_at(appointment_index)
	puts "Consulta cancelada com sucesso"
end
