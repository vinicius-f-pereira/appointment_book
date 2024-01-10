def load_patients(filename)
	return {} unless File.exist?(filename)
	File.open(filename, 'r') { |file| Marshal.load(file) }
end

def save_patients(filename, patients)
	File.open(filename, 'w') { |file| Marshal.dump(patients, file) }
end

def load_appointments(filename)
	return [] unless File.exist?(filename)
	File.open(filename, 'r') { |file| Marshal.load(file) }
end

def save_appointments(filename, appointments)
	File.open(filename, 'w') { |file| Marshal.dump(appointments, file) }
end
