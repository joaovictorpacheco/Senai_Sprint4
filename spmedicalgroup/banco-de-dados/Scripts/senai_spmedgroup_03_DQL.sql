USE SPMedicalGroup
GO

--Mostra todos os tipos de usu�rios
SELECT * FROM tipoUsuario;

--Mostra todas as clinicas cadastradas
SELECT * FROM clinicas;

--Mostra todas as especilidades
SELECT * FROM especialidades;

--Mostra todos os usu�rios cadastrados
SELECT * FROM usuarios;

--Mostra todos os prontuarios
SELECT * FROM prontuarios;

--Mostra todos os m�dicos
SELECT * FROM medicos;

--Mostra todas as consultas j� realizadas,canceladas e agendadas
SELECT * FROM consultas;


--Mostra Pacientes e suas consultas (Para a Recpcionista cpm)
SELECT nomePaciente AS Nome,telefonePaciente AS Telefone,dataConsulta AS [Data],situacao AS Situa��o  FROM prontuarios
INNER JOIN consultas
ON consultas.idProntuario = prontuarios.idProntuario;

--Mostra m�dicos e cl�nica em que trabalha
SELECT crm AS CRM,nomeMedico AS M�dico,email AS Email,nomeEspecialidade AS Especialidade,nomeClinica AS Clinica,cnpj AS CNPJ,razaoSocial AS [Raz�o Social],enderecoClinica AS Endere�o  FROM medicos
INNER JOIN usuarios
ON usuarios.idUsuario = medicos.idUsuario
INNER JOIN especialidades
ON especialidades.idEspecialidade = medicos.idEspecialidade
INNER JOIN clinicas
ON clinicas.idClinica = medicos.idClinica;


--Mostra as consultas com nome do Paciente, m�dico que ir� atende-l� e a situa��o da consulta
SELECT nomepaciente,nomeMedico,dataConsulta,situacao FROM consultas
INNER JOIN prontuarios
ON prontuarios.idProntuario = consultas.idProntuario
INNER JOIN medicos
ON medicos.idMedico = consultas.idMedico;

--Mostra os Prontuarios
SELECT nomePaciente AS Nome,email AS Email,dataNascimento AS [Data de Nascimento],telefonePaciente AS Telefone,rg AS RG,cpf AS CPF,enderecoPaciente AS Endere�o FROM prontuarios
INNER JOIN usuarios
ON usuarios.idUsuario = prontuarios.idUsuario;

--Mostra todas as Especialidades
SELECT nomeEspecialidade AS Especialidades FROM especialidades;