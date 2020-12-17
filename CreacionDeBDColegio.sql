/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     15/12/2020 10:30:06                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('Asignatura')
            and   type = 'U')
   drop table Asignatura
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Curso')
            and   type = 'U')
   drop table Curso
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Estudiante')
            and   type = 'U')
   drop table Estudiante
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"Notas-Alumno-Asignatura"')
            and   type = 'U')
   drop table "Notas-Alumno-Asignatura"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Parentesco')
            and   type = 'U')
   drop table Parentesco
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Periodo_Academico')
            and   type = 'U')
   drop table Periodo_Academico
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Profesor')
            and   type = 'U')
   drop table Profesor
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Representante')
            and   type = 'U')
   drop table Representante
go

/*==============================================================*/
/* Table: Asignatura                                            */
/*==============================================================*/
create table Asignatura (
   Asignatura_id        numeric              identity,
   Profesor_id          int                  null,
   Curso_id             int                  null,
   Asignatura_nombre    text                 null,
   constraint PK_ASIGNATURA primary key nonclustered (Asignatura_id)
)
go

/*==============================================================*/
/* Table: Curso                                                 */
/*==============================================================*/
create table Curso (
   Curso_id             numeric              identity,
   Periodo_id           int                  null,
   Profesor_id          int                  null,
   Curso_nombre         text                 null,
   Curso_ubicacion      text                 null,
   Curso_paralelo       text                 null,
   Curso_numero_estudiantes numeric              null,
   constraint PK_CURSO primary key nonclustered (Curso_id)
)
go

/*==============================================================*/
/* Table: Estudiante                                            */
/*==============================================================*/
create table Estudiante (
   Estudiante_id        numeric              identity,
   Periodo_id           int                  null,
   Estudiante_cedula    numeric              null,
   Estudiante_nombres   text                 null,
   Estudiante_apellidos text                 null,
   Estudiante_genero    text                 null,
   Estudiante_fecha_nacimiento datetime             null,
   Estudiante_direccion text                 null,
   Estudiante_telefono  numeric              null,
   constraint PK_ESTUDIANTE primary key nonclustered (Estudiante_id)
)
go

/*==============================================================*/
/* Table: "Notas-Alumno-Asignatura"                             */
/*==============================================================*/
create table "Notas-Alumno-Asignatura" (
   Asignatura_id        int                  not null,
   Estudiante_id        int                  not null,
   Nota1                decimal              null,
   Nota2                decimal              null,
   Notatotal            decimal              null,
   NotaRecuperacion     decimal              null,
   constraint "PK_NOTAS-ALUMNO-ASIGNATURA" primary key nonclustered (Asignatura_id, Estudiante_id)
)
go

/*==============================================================*/
/* Table: Parentesco                                            */
/*==============================================================*/
create table Parentesco (
   Parentesco_id        numeric              identity,
   Parentesco_Nombre    text                 null,
   constraint PK_PARENTESCO primary key nonclustered (Parentesco_id)
)
go

/*==============================================================*/
/* Table: Periodo_Academico                                     */
/*==============================================================*/
create table Periodo_Academico (
   Periodo_id           numeric              identity,
   Periodo_fecha_inicio datetime             null,
   Periodo_fecha_fin    datetime             null,
   Periodo_cantidad_estudiantes int                  null,
   Periodo_cantidad_profesores int                  null,
   constraint PK_PERIODO_ACADEMICO primary key nonclustered (Periodo_id)
)
go

/*==============================================================*/
/* Table: Profesor                                              */
/*==============================================================*/
create table Profesor (
   Profesor_id          numeric              identity,
   Curso_id             int                  null,
   Profesor_nombres     text                 null,
   Profesor_apellidos   text                 null,
   Profesor_cedula      numeric              null,
   Profesor_telefono    numeric              null,
   Profesor_direccion   text                 null,
   constraint PK_PROFESOR primary key nonclustered (Profesor_id)
)
go

/*==============================================================*/
/* Table: Representante                                         */
/*==============================================================*/
create table Representante (
   Representante_id     numeric              identity,
   Estudiante_id        int                  null,
   Parentesco_id        int                  null,
   Representante_cedula bigint               null,
   Representante_nombres text                 null,
   Representante_apellidos text                 null,
   Representante_direccion_domicilio text                 null,
   Representante_telefono_domicilio numeric              null,
   Representante_direccion_trabajo text                 null,
   Representante_telefono_trabajo numeric              null,
   constraint PK_REPRESENTANTE primary key nonclustered (Representante_id)
)
go

