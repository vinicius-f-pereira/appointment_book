[English Version](README.md)
# Agenda de consulta
Este repositório foi criado para solucionar um desafio onde é necessário criar um sistema que rode em terminal e cadastre pacientes, agende e cancele consultas.
# Dependencias
Certifique-se de ter o Ruby instalado `(v3.3.15)` para funcionar corretamente. Execute o comando `ruby -v` para verificar a versão.

## Modo de usar
`clone o repositorio`

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

## Execute o programa
```bash
ruby main.c
```

### Opçoes
1. Cadastrar paciente
2. Agendar consulta
3. Desmarcar consulta
4. Encerrar programa

### Registrar paciente
```text
Esta opção pede nome e telefone do paciente
O telefone precisa estar neste padrão: código do país, código de área e número de telefone.
Ao registrar um paciente pela primeira vez, o programa criará um arquivo '.db' para armazenar esses dados.
Se você fechar o programa e executá-lo novamente, seus dados serão lidos deste arquivo e você manterá os dados salvos em sessões anteriores.
```

### Agendar consulta
```text
Para que esta opção funcione, é necessário ter pelo menos um paciente cadastrado.
Ao escolher esta opção, aparecerá um prompt com os pacientes cadastrados, então você escolhe o paciente e inicia a consulta.
Insira a data e hora da consulta. Padrão de data: "dd/MM/yyyy" Padrão de horário: "HH:MM" (não é possível agendamento em datas passadas).
Inserir especialidade médica.
```

### Cancelar consulta
```text
Para que esta opção funcione, precisamos de pelo menos um agendamento.
Irá solicitar agendamentos existentes, escolha um.
```

### Encerrar programa
```text
Encerra o programa.
```



  
