[Versão em Português](README.pt-BR.md)
# Appointment book
This repository was created to solve a challenge where you need to create a system that runs in terminal and register patients,  schedule  and cancel appointments.
# Dependencies
Ensure that you have ruby installed `(v3.3.15)` to run correctly. Run command `ruby -v` to verify version.

## How to use
`clone the repository`

### SSH
```ssh
git clone git@github.com:vinicius-f-pereira/appointment_book.git; cd appointment_book
```
### HTTP
```html
git clone https://github.com/vinicius-f-pereira/appointment_book.git; cd appointment_book
```
### GH CLI
```bash
gh repo clone vinicius-f-pereira/appointment_book; cd appointment_book
```

## Run the project
```bash
ruby main.c
```

### Options
1. Cadastrar paciente `register patient`
2. Agendar consulta `schedule appointment`
3. Desmarcar consulta `cacel appointment`
4. Encerrar programa `finish program`

### Register patient
```text
This option ask for name and phone of patient.
Phone need to be in this pattern: Country code, area code and phone number.
At register a patienc for the first time, program will create a file '.db' to store this data.
If you close program and run again, you data will be read from this file and you keep data saved in past sessions.
```

### Schedule appointment
```text
To this option works, you need to have at least one patient registered.
When you choose this option, a prompt with registered patients will appear, so you choose patient and start the appointment.
Enter the consultation date and time. Date pattern: "dd/MM/yyyy" Time pattern: "HH:MM" (is not possible schedule in past dates)
Insert medical speciality.
```

### Cancel appointment
```text
To this option works, we need at least one appointment.
Will prompt existing appointments, choose one.
```

### Finish program
```text
Finish program
```



  
