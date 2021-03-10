--cursor que permite ver los tutores con el periodo acedmico y sus cursos 
DECLARE Cursor_info  CURSOR   
     FOR select 
Periodo_Academico.Periodo_id as Num_Periodo,
Periodo_Academico.Periodo_fecha_fin,
Periodo_Academico.Periodo_fecha_inicio,
Profesor.Profesor_nombres as Nombre_Profesor_tutor,
Profesor.Profesor_apellidos as Apellido_Profesor_tutor,
Curso.Curso_nombre as Nivel,
Curso.Curso_paralelo,
Curso.Curso_numero_estudiantes
from Profesor
inner join Curso on Profesor.Curso_id=Curso.Curso_id
inner join Periodo_Academico on Curso.Periodo_id=Periodo_Academico.Periodo_id
where Periodo_Academico.Periodo_id=1;
--Abrir el cursor
open Cursor_info
--Recorrer cursor
fetch next from Cursor_info
--Cerrar cursor
close Cursor_info
