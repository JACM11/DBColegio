create procedure Familiares
@id_estudiante as int
as
select
Estudiante.Estudiante_nombres,
Estudiante.Estudiante_apellidos,
Representante.Representante_nombres,
Representante.Representante_apellidos,
Parentesco.Parentesco_Nombre
from  Estudiante
inner join Representante on Estudiante.Estudiante_id = Representante.Estudiante_id
inner join Parentesco on Representante.Parentesco_id=Parentesco.Parentesco_id
where Estudiante.Estudiante_id=@id_estudiante

Execute Familiares 15
