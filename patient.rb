# Check for presence
# Validate phone format
# Check for existing patient
# Save sanitized inputs to prevent potential security issues

def add_patient(patients)
	print "Nome do paciente: "
	name = gets.chomp
	print "Telefone do paciente: "
	phone = gets.chomp

	if name.empty? || phone.empty?
	  puts "Nome e telefone são obrigatórios."
	  return
	end

	unless phone.match?(/\A\+?\d{1,3}\s?\d{1,3}\s?\d{1,5}\s?\-?\d{1,4}\z/)
	  puts "Formato de telefone inválido. Use o formato +55 11 9876 9543."
	  return
	end

	if patients[phone]
	  puts "Paciente já cadastrado!"
	else
	  patients[phone] = name.strip
	  puts "Paciente cadastrado com sucesso"
	end
end
