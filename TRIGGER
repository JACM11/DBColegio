create trigger Trigger_cant_estu 
on Estudiante 
after insert
as
update Periodo_Academico
set Periodo_cantidad_estudiantes=Periodo_cantidad_estudiantes+1
go
