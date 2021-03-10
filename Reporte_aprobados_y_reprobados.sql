--Reporte de estudiantes aprobados en las materias del periodo
select 
Periodo_Academico.Periodo_fecha_fin,
Periodo_Academico.Periodo_fecha_inicio,
Estudiante.Estudiante_nombres,
Estudiante.Estudiante_apellidos,
Curso.Curso_nombre,
Curso.Curso_paralelo,
Asignatura.Asignatura_nombre,
Profesor.Profesor_nombres,
Profesor.Profesor_apellidos,
[Notas-Alumno-Asignatura].Notatotal,
[Notas-Alumno-Asignatura].NotaRecuperacion
from [Notas-Alumno-Asignatura]
inner join Asignatura on [Notas-Alumno-Asignatura].Asignatura_id=Asignatura.Asignatura_id
inner join Estudiante on [Notas-Alumno-Asignatura].Estudiante_id=Estudiante.Estudiante_id
inner join Curso on Asignatura.Curso_id=Curso.Curso_id
inner join Profesor on Profesor.Profesor_id=Asignatura.Profesor_id
inner join Periodo_Academico on Periodo_Academico.Periodo_id=Curso.Periodo_id
where [Notas-Alumno-Asignatura].Notatotal>=17 or [Notas-Alumno-Asignatura].NotaRecuperacion=10

--Reporte de estudiantes reprobados en las materias del periodo
select 
Periodo_Academico.Periodo_fecha_fin,
Periodo_Academico.Periodo_fecha_inicio,
Estudiante.Estudiante_nombres,
Estudiante.Estudiante_apellidos,
Curso.Curso_nombre,
Curso.Curso_paralelo,
Asignatura.Asignatura_nombre,
Profesor.Profesor_nombres,
Profesor.Profesor_apellidos,
[Notas-Alumno-Asignatura].Notatotal,
[Notas-Alumno-Asignatura].NotaRecuperacion
from [Notas-Alumno-Asignatura]
inner join Asignatura on [Notas-Alumno-Asignatura].Asignatura_id=Asignatura.Asignatura_id
inner join Estudiante on [Notas-Alumno-Asignatura].Estudiante_id=Estudiante.Estudiante_id
inner join Curso on Asignatura.Curso_id=Curso.Curso_id
inner join Profesor on Profesor.Profesor_id=Asignatura.Profesor_id
inner join Periodo_Academico on Periodo_Academico.Periodo_id=Curso.Periodo_id
where [Notas-Alumno-Asignatura].Notatotal<17 and [Notas-Alumno-Asignatura].NotaRecuperacion!=10
