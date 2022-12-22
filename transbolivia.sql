/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2005                    */
/* Created on:     1/12/2022 21:07:38                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ALQUILER') and o.name = 'FK_ALQUILER_REALIZA__CLIENTE')
alter table ALQUILER
   drop constraint FK_ALQUILER_REALIZA__CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ALQUILER') and o.name = 'FK_ALQUILER_RELATIONS_RESERVA')
alter table ALQUILER
   drop constraint FK_ALQUILER_RELATIONS_RESERVA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ALQUILER') and o.name = 'FK_ALQUILER_RELATIONS_CAMION')
alter table ALQUILER
   drop constraint FK_ALQUILER_RELATIONS_CAMION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ALQUILER') and o.name = 'FK_ALQUILER_RELATIONS_CONDUCTO')
alter table ALQUILER
   drop constraint FK_ALQUILER_RELATIONS_CONDUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ALQUILER') and o.name = 'FK_ALQUILER_SE_ASIGNA_RUTA')
alter table ALQUILER
   drop constraint FK_ALQUILER_SE_ASIGNA_RUTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CAMION') and o.name = 'FK_CAMION_RELATIONS_TIPO_VEH')
alter table CAMION
   drop constraint FK_CAMION_RELATIONS_TIPO_VEH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CAMION') and o.name = 'FK_CAMION_TIENE__EMPRESA')
alter table CAMION
   drop constraint FK_CAMION_TIENE__EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE_PREFERENCIAL') and o.name = 'FK_CLIENTE__RELATIONS_CLIENTE')
alter table CLIENTE_PREFERENCIAL
   drop constraint FK_CLIENTE__RELATIONS_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CONDUCTOR') and o.name = 'FK_CONDUCTO_ESUN_EMPLEADO')
alter table CONDUCTOR
   drop constraint FK_CONDUCTO_ESUN_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DETALLE_FALLA') and o.name = 'FK_DETALLE__RELATIONS_REGISTRO')
alter table DETALLE_FALLA
   drop constraint FK_DETALLE__RELATIONS_REGISTRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('EMPLEADO') and o.name = 'FK_EMPLEADO_TIENE2_EMPRESA')
alter table EMPLEADO
   drop constraint FK_EMPLEADO_TIENE2_EMPRESA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('INSPECTOR') and o.name = 'FK_INSPECTO_ES_UN_UNA_EMPLEADO')
alter table INSPECTOR
   drop constraint FK_INSPECTO_ES_UN_UNA_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MANTENIMIENTO') and o.name = 'FK_MANTENIM_REALIZA2__MECANICO')
alter table MANTENIMIENTO
   drop constraint FK_MANTENIM_REALIZA2__MECANICO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MANTENIMIENTO') and o.name = 'FK_MANTENIM_RELATIONS_DETALLE_')
alter table MANTENIMIENTO
   drop constraint FK_MANTENIM_RELATIONS_DETALLE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MECANICO') and o.name = 'FK_MECANICO_ES_UN2_EMPLEADO')
alter table MECANICO
   drop constraint FK_MECANICO_ES_UN2_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REGISTRO_SERVICIO') and o.name = 'FK_REGISTRO_REALIZA_INSPECTO')
alter table REGISTRO_SERVICIO
   drop constraint FK_REGISTRO_REALIZA_INSPECTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REGISTRO_SERVICIO') and o.name = 'FK_REGISTRO_RELATIONS_CAMION')
alter table REGISTRO_SERVICIO
   drop constraint FK_REGISTRO_RELATIONS_CAMION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REGISTRO_SERVICIO') and o.name = 'FK_REGISTRO_RELATIONS_MECANICO')
alter table REGISTRO_SERVICIO
   drop constraint FK_REGISTRO_RELATIONS_MECANICO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPARACION') and o.name = 'FK_REPARACI_RELATIONS_MECANICO')
alter table REPARACION
   drop constraint FK_REPARACI_RELATIONS_MECANICO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPARACION') and o.name = 'FK_REPARACI_RELATIONS_DETALLE_')
alter table REPARACION
   drop constraint FK_REPARACI_RELATIONS_DETALLE_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPUESTOS') and o.name = 'FK_REPUESTO_RELATIONS_REPARACI')
alter table REPUESTOS
   drop constraint FK_REPUESTO_RELATIONS_REPARACI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVA') and o.name = 'FK_RESERVA_RELATIONS_CLIENTE')
alter table RESERVA
   drop constraint FK_RESERVA_RELATIONS_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVA') and o.name = 'FK_RESERVA_RELATIONS_CONDUCTO')
alter table RESERVA
   drop constraint FK_RESERVA_RELATIONS_CONDUCTO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVA') and o.name = 'FK_RESERVA_RELATIONS_CAMION')
alter table RESERVA
   drop constraint FK_RESERVA_RELATIONS_CAMION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVA') and o.name = 'FK_RESERVA_SE_ASIGNA_RUTA')
alter table RESERVA
   drop constraint FK_RESERVA_SE_ASIGNA_RUTA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SALARIO') and o.name = 'FK_SALARIO_GANA_EMPLEADO')
alter table SALARIO
   drop constraint FK_SALARIO_GANA_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SEGURO') and o.name = 'FK_SEGURO_TIENE_EMPLEADO')
alter table SEGURO
   drop constraint FK_SEGURO_TIENE_EMPLEADO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SEGURO_ESTANDAR') and o.name = 'FK_SEGURO_E_RELATIONS_SEGURO')
alter table SEGURO_ESTANDAR
   drop constraint FK_SEGURO_E_RELATIONS_SEGURO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SEGURO_OPCIONAL') and o.name = 'FK_SEGURO_O_RELATIONS_SEGURO')
alter table SEGURO_OPCIONAL
   drop constraint FK_SEGURO_O_RELATIONS_SEGURO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO_CLIENTE') and o.name = 'FK_TELEFONO_RELATIONS_CLIENTE')
alter table TELEFONO_CLIENTE
   drop constraint FK_TELEFONO_RELATIONS_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TELEFONO_EMPLEADO') and o.name = 'FK_TELEFONO_RELATIONS_EMPLEADO')
alter table TELEFONO_EMPLEADO
   drop constraint FK_TELEFONO_RELATIONS_EMPLEADO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALQUILER')
            and   name  = 'RELATIONSHIP_45_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALQUILER.RELATIONSHIP_45_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALQUILER')
            and   name  = 'SE_ASIGNA2_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALQUILER.SE_ASIGNA2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALQUILER')
            and   name  = 'RELATIONSHIP_37_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALQUILER.RELATIONSHIP_37_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALQUILER')
            and   name  = 'RELATIONSHIP_29_FK'
            and   indid > 0
            and   indid < 255)
   drop index ALQUILER.RELATIONSHIP_29_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ALQUILER')
            and   name  = 'REALIZA__FK'
            and   indid > 0
            and   indid < 255)
   drop index ALQUILER.REALIZA__FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ALQUILER')
            and   type = 'U')
   drop table ALQUILER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CAMION')
            and   name  = 'RELATIONSHIP_38_FK'
            and   indid > 0
            and   indid < 255)
   drop index CAMION.RELATIONSHIP_38_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CAMION')
            and   name  = 'TIENE__FK'
            and   indid > 0
            and   indid < 255)
   drop index CAMION.TIENE__FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAMION')
            and   type = 'U')
   drop table CAMION
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE_PREFERENCIAL')
            and   name  = 'RELATIONSHIP_34_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE_PREFERENCIAL.RELATIONSHIP_34_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE_PREFERENCIAL')
            and   type = 'U')
   drop table CLIENTE_PREFERENCIAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CONDUCTOR')
            and   name  = 'ESUN_FK'
            and   indid > 0
            and   indid < 255)
   drop index CONDUCTOR.ESUN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CONDUCTOR')
            and   type = 'U')
   drop table CONDUCTOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DETALLE_FALLA')
            and   name  = 'RELATIONSHIP_48_FK'
            and   indid > 0
            and   indid < 255)
   drop index DETALLE_FALLA.RELATIONSHIP_48_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DETALLE_FALLA')
            and   type = 'U')
   drop table DETALLE_FALLA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('EMPLEADO')
            and   name  = 'TIENE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index EMPLEADO.TIENE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPLEADO')
            and   type = 'U')
   drop table EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('EMPRESA')
            and   type = 'U')
   drop table EMPRESA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('INSPECTOR')
            and   name  = 'ES_UN_UNA_FK'
            and   indid > 0
            and   indid < 255)
   drop index INSPECTOR.ES_UN_UNA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INSPECTOR')
            and   type = 'U')
   drop table INSPECTOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MANTENIMIENTO')
            and   name  = 'RELATIONSHIP_46_FK'
            and   indid > 0
            and   indid < 255)
   drop index MANTENIMIENTO.RELATIONSHIP_46_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MANTENIMIENTO')
            and   name  = 'REALIZA2__FK'
            and   indid > 0
            and   indid < 255)
   drop index MANTENIMIENTO.REALIZA2__FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MANTENIMIENTO')
            and   type = 'U')
   drop table MANTENIMIENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MECANICO')
            and   name  = 'ES_UN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index MECANICO.ES_UN2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MECANICO')
            and   type = 'U')
   drop table MECANICO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REGISTRO_SERVICIO')
            and   name  = 'RELATIONSHIP_44_FK'
            and   indid > 0
            and   indid < 255)
   drop index REGISTRO_SERVICIO.RELATIONSHIP_44_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REGISTRO_SERVICIO')
            and   name  = 'RELATIONSHIP_43_FK'
            and   indid > 0
            and   indid < 255)
   drop index REGISTRO_SERVICIO.RELATIONSHIP_43_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REGISTRO_SERVICIO')
            and   name  = 'REALIZA_FK'
            and   indid > 0
            and   indid < 255)
   drop index REGISTRO_SERVICIO.REALIZA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REGISTRO_SERVICIO')
            and   type = 'U')
   drop table REGISTRO_SERVICIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPARACION')
            and   name  = 'RELATIONSHIP_47_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPARACION.RELATIONSHIP_47_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPARACION')
            and   name  = 'RELATIONSHIP_42_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPARACION.RELATIONSHIP_42_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPARACION')
            and   type = 'U')
   drop table REPARACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPUESTOS')
            and   name  = 'RELATIONSHIP_40_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPUESTOS.RELATIONSHIP_40_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPUESTOS')
            and   type = 'U')
   drop table REPUESTOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVA')
            and   name  = 'SE_ASIGNA_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVA.SE_ASIGNA_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVA')
            and   name  = 'RELATIONSHIP_36_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVA.RELATIONSHIP_36_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVA')
            and   name  = 'RELATIONSHIP_35_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVA.RELATIONSHIP_35_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVA')
            and   name  = 'RELATIONSHIP_22_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVA.RELATIONSHIP_22_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESERVA')
            and   type = 'U')
   drop table RESERVA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RUTA')
            and   type = 'U')
   drop table RUTA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SALARIO')
            and   name  = 'GANA_FK'
            and   indid > 0
            and   indid < 255)
   drop index SALARIO.GANA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SALARIO')
            and   type = 'U')
   drop table SALARIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SEGURO')
            and   name  = 'TIENE_FK'
            and   indid > 0
            and   indid < 255)
   drop index SEGURO.TIENE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SEGURO')
            and   type = 'U')
   drop table SEGURO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SEGURO_ESTANDAR')
            and   name  = 'RELATIONSHIP_39_FK'
            and   indid > 0
            and   indid < 255)
   drop index SEGURO_ESTANDAR.RELATIONSHIP_39_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SEGURO_ESTANDAR')
            and   type = 'U')
   drop table SEGURO_ESTANDAR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SEGURO_OPCIONAL')
            and   name  = 'RELATIONSHIP_30_FK'
            and   indid > 0
            and   indid < 255)
   drop index SEGURO_OPCIONAL.RELATIONSHIP_30_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SEGURO_OPCIONAL')
            and   type = 'U')
   drop table SEGURO_OPCIONAL
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO_CLIENTE')
            and   name  = 'RELATIONSHIP_31_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO_CLIENTE.RELATIONSHIP_31_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO_CLIENTE')
            and   type = 'U')
   drop table TELEFONO_CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TELEFONO_EMPLEADO')
            and   name  = 'RELATIONSHIP_32_FK'
            and   indid > 0
            and   indid < 255)
   drop index TELEFONO_EMPLEADO.RELATIONSHIP_32_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TELEFONO_EMPLEADO')
            and   type = 'U')
   drop table TELEFONO_EMPLEADO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIPO_VEHICULO')
            and   type = 'U')
   drop table TIPO_VEHICULO
go

/*==============================================================*/
/* Table: ALQUILER                                              */
/*==============================================================*/
create table ALQUILER (
   CODALQUILER          int                  IDENTITY(1,1) not null,
   CODRESERVAS          int                  null,
   CODCAMION            int                  null,
   CODCONDUCTOR         int                  null,
   CODCLIENTE           int                  null,
   CODRUTA              int                  null,
   HORASDESERVICIO      datetime             null,
   COSTOALQUILER        int                  null,
   FECHAINICIOALQUILER  datetime             null,
   FECHARETORNO         datetime             null,
   constraint PK_ALQUILER primary key (CODALQUILER)
)
go

/*==============================================================*/
/* Index: REALIZA__FK                                           */
/*==============================================================*/
create index REALIZA__FK on ALQUILER (
CODCLIENTE ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on ALQUILER (
CODRESERVAS ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_37_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_37_FK on ALQUILER (
CODCAMION ASC
)
go

/*==============================================================*/
/* Index: SE_ASIGNA2_FK                                         */
/*==============================================================*/
create index SE_ASIGNA2_FK on ALQUILER (
CODRUTA ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_45_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_45_FK on ALQUILER (
CODCONDUCTOR ASC
)
go

/*==============================================================*/
/* Table: CAMION                                                */
/*==============================================================*/
create table CAMION (
   CODCAMION            int                  IDENTITY(1,1) not null,
   CODEMPRESA           int                  null,
   CODTIPO              int                  null,
   PLACA                varchar(7)           null,
   MODELO               varchar(7)           null,
   MARCA                varchar(7)           null,
   ESTADO               varchar(15)          null,
   constraint PK_CAMION primary key (CODCAMION)
)
go

/*==============================================================*/
/* Index: TIENE__FK                                             */
/*==============================================================*/
create index TIENE__FK on CAMION (
CODEMPRESA ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_38_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_38_FK on CAMION (
CODTIPO ASC
)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CODCLIENTE           int                  IDENTITY(1,1) not null,
   NOMBRECLIENTE        varchar(40)          null,
   APELLIDOCLIENTE      varchar(20)          null,
   EMAIL                varchar(50)          null,
   DIRECCIONCLIENTE     varchar(20)          null,
   constraint PK_CLIENTE primary key (CODCLIENTE)
)
go

/*==============================================================*/
/* Table: CLIENTE_PREFERENCIAL                                  */
/*==============================================================*/
create table CLIENTE_PREFERENCIAL (
   CODCLIENTEPREFERENCIAL int                IDENTITY(1,1)  not null,
   CODCLIENTE           int                  null,
   CANTIDADDESCUENTO    int                  null,
   constraint PK_CLIENTE_PREFERENCIAL primary key (CODCLIENTEPREFERENCIAL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_34_FK on CLIENTE_PREFERENCIAL (
CODCLIENTE ASC
)
go

/*==============================================================*/
/* Table: CONDUCTOR                                             */
/*==============================================================*/
create table CONDUCTOR (
   CODCONDUCTOR         int                  IDENTITY(1,1) not null,
   CODEMPLEADO          int                  null,
   TIPODELICENCIA       char(5)              not null,
   CADUCIDADLICENCIA    datetime             null,
   constraint PK_CONDUCTOR primary key (CODCONDUCTOR)
)
go

/*==============================================================*/
/* Index: ESUN_FK                                               */
/*==============================================================*/
create index ESUN_FK on CONDUCTOR (
CODEMPLEADO ASC
)
go

/*==============================================================*/
/* Table: DETALLE_FALLA                                         */
/*==============================================================*/
create table DETALLE_FALLA (
   CODFALLA             int                  IDENTITY(1,1) not null,
   CODREGISTRO          int                  null,
   NOMBREFALLA          varchar(20)          null,
   DESCRIPCIONFALLA     varchar(100)         null,
   constraint PK_DETALLE_FALLA primary key (CODFALLA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_48_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_48_FK on DETALLE_FALLA (
CODREGISTRO ASC
)
go

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          int                  IDENTITY(1,1) not null,
   CODEMPRESA           int                  null,
   NOMBRE               varchar(15)          null,
   APELLIDO             varchar(20)          null,
   EDAD                 int                  null,
   DIRECCIONACTUAL      varchar(50)          null,
   EMAILEMPLEADO        varchar(40)          null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
)
go

/*==============================================================*/
/* Index: TIENE2_FK                                             */
/*==============================================================*/
create index TIENE2_FK on EMPLEADO (
CODEMPRESA ASC
)
go

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   CODEMPRESA           int                  IDENTITY(1,1) not null,
   NOMBREEMPRESA        varchar(20)          null,
   TIPOEMPRESA          varchar(20)          null,
   constraint PK_EMPRESA primary key (CODEMPRESA)
)
go

/*==============================================================*/
/* Table: INSPECTOR                                             */
/*==============================================================*/
create table INSPECTOR (
   CODINSPECTOR         int                  IDENTITY(1,1) not null,
   CODEMPLEADO          int                  null,
   constraint PK_INSPECTOR primary key (CODINSPECTOR)
)
go

/*==============================================================*/
/* Index: ES_UN_UNA_FK                                          */
/*==============================================================*/
create index ES_UN_UNA_FK on INSPECTOR (
CODEMPLEADO ASC
)
go

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
   CODMANTENIMIENTO     int                  IDENTITY(1,1) not null,
   CODMECANICO          int                  null,
   CODFALLA             int                  null,
   COSTOMANTENIMIENTO   money                null,
   TIEMPOMANTENIMIENTO  int                  null,
   DESCRIPCIONMANTENIMIENTO varchar(100)         null,
   constraint PK_MANTENIMIENTO primary key (CODMANTENIMIENTO)
)
go

/*==============================================================*/
/* Index: REALIZA2__FK                                          */
/*==============================================================*/
create index REALIZA2__FK on MANTENIMIENTO (
CODMECANICO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_46_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_46_FK on MANTENIMIENTO (
CODFALLA ASC
)
go

/*==============================================================*/
/* Table: MECANICO                                              */
/*==============================================================*/
create table MECANICO (
   CODMECANICO          int                  IDENTITY(1,1) not null,
   CODEMPLEADO          int                  null,
   ESCALIFICADO         bit                  null,
   constraint PK_MECANICO primary key (CODMECANICO)
)
go

/*==============================================================*/
/* Index: ES_UN2_FK                                             */
/*==============================================================*/
create index ES_UN2_FK on MECANICO (
CODEMPLEADO ASC
)
go

/*==============================================================*/
/* Table: REGISTRO_SERVICIO                                     */
/*==============================================================*/
create table REGISTRO_SERVICIO (
   CODREGISTRO          int                  IDENTITY(1,1) not null,
   CODMECANICO          int                  null,
   CODCAMION            int                  null,
   CODINSPECTOR         int                  null,
   FECHAINGRESO         datetime             null,
   FECHASALIDA          datetime             null,
   COSTOTOTAL           int                  null,
   FIRMAINSPECTOR       bit                  null,
   constraint PK_REGISTRO_SERVICIO primary key (CODREGISTRO)
)
go

/*==============================================================*/
/* Index: REALIZA_FK                                            */
/*==============================================================*/
create index REALIZA_FK on REGISTRO_SERVICIO (
CODINSPECTOR ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_43_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_43_FK on REGISTRO_SERVICIO (
CODCAMION ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_44_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_44_FK on REGISTRO_SERVICIO (
CODMECANICO ASC
)
go

/*==============================================================*/
/* Table: REPARACION                                            */
/*==============================================================*/
create table REPARACION (
   CODREPARACION        int                  IDENTITY(1,1) not null,
   CODFALLA             int                  null,
   CODMECANICO          int                  null,
   TIEMPOREPARACION     int                  null,
   DESCRIPCIONREPARACION varchar(100)         null,
   COSTOREPARACION      money                null,
   constraint PK_REPARACION primary key (CODREPARACION)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_42_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_42_FK on REPARACION (
CODMECANICO ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_47_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_47_FK on REPARACION (
CODFALLA ASC
)
go

/*==============================================================*/
/* Table: REPUESTOS                                             */
/*==============================================================*/
create table REPUESTOS (
   CODREPUESTO          int                  IDENTITY(1,1) not null,
   CODREPARACION        int                  null,
   NOMBREREPUESTO       varchar(20)          null,
   COSTOREPUESTO        int                  null,
   constraint PK_REPUESTOS primary key (CODREPUESTO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_40_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_40_FK on REPUESTOS (
CODREPARACION ASC
)
go

/*==============================================================*/
/* Table: RESERVA                                               */
/*==============================================================*/
create table RESERVA (
   CODRESERVAS          int                  IDENTITY(1,1) not null,
   CODCONDUCTOR         int                  null,
   CODCLIENTE           int                  null,
   CODCAMION            int                  null,
   CODRUTA              int                  null,
   TIPODERESERVA        varchar(12)          null,
   COSTODERESERVA       int                  null,
   TIEMPORESERVA        datetime             null,
   FECHAINICIORESERVA   datetime             null,
   FECHAFINRESERVA      datetime             null,
   CONFIRMACION         bit                  null,
   ANTICIPORESERVA      int                  null,
   PORCENTAJEPERDIDO    int                  null,
   constraint PK_RESERVA primary key (CODRESERVAS)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on RESERVA (
CODCLIENTE ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_35_FK on RESERVA (
CODCONDUCTOR ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_36_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_36_FK on RESERVA (
CODCAMION ASC
)
go

/*==============================================================*/
/* Index: SE_ASIGNA_FK                                          */
/*==============================================================*/
create index SE_ASIGNA_FK on RESERVA (
CODRUTA ASC
)
go

/*==============================================================*/
/* Table: RUTA                                                  */
/*==============================================================*/
create table RUTA (
   CODRUTA              int                  IDENTITY(1,1) not null,
   DISTANCIA            int                  null,
   FECHAINICIO          datetime             null,
   ORIGEN               varchar(15)          null,
   DESTINO              varchar(20)          null,
   FECHAVUELTA          datetime             null,
   constraint PK_RUTA primary key (CODRUTA)
)
go

/*==============================================================*/
/* Table: SALARIO                                               */
/*==============================================================*/
create table SALARIO (
   SUELDO               int                  null,
   BONOS                int                  null,
   FECHAPAGO            datetime             null,
   CODSALARIO           int                  IDENTITY(1,1)not null,
   CODEMPLEADO          int                  null,
   constraint PK_SALARIO primary key (CODSALARIO)
)
go

/*==============================================================*/
/* Index: GANA_FK                                               */
/*==============================================================*/
create index GANA_FK on SALARIO (
CODEMPLEADO ASC
)
go

/*==============================================================*/
/* Table: SEGURO                                                */
/*==============================================================*/
create table SEGURO (
   CODSEGURO            int                  IDENTITY(1,1) not null,
   CODEMPLEADO          int                  null,
   FECHAINICIOCOBERTURA datetime             null,
   FECHAFINCOBERTURA    datetime             null,
   COSTOSEGURO          int                  null,
   INDEMIZACION         int                  null,
   COSTOANUAL           int                  null,
   EMPRESASEGURO        varchar(50)          null,
   constraint PK_SEGURO primary key (CODSEGURO)
)
go

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create index TIENE_FK on SEGURO (
CODEMPLEADO ASC
)
go

/*==============================================================*/
/* Table: SEGURO_ESTANDAR                                       */
/*==============================================================*/
create table SEGURO_ESTANDAR (
   CODESTANDAR          int                  IDENTITY(1,1) not null,
   CODSEGURO            int                  null,
   EMPRESACONTRATADA    varchar(20)          null,
   constraint PK_SEGURO_ESTANDAR primary key (CODESTANDAR)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_39_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_39_FK on SEGURO_ESTANDAR (
CODSEGURO ASC
)
go

/*==============================================================*/
/* Table: SEGURO_OPCIONAL                                       */
/*==============================================================*/
create table SEGURO_OPCIONAL (
   CODSEGOPCIONAL       int                  IDENTITY(1,1) not null,
   CODSEGURO            int                  null,
   NOMBRESEGURO         varchar(50)          null,
   COSTOEMPLEADO        int                  null,
   COSTOEMPRESA         int                  null,
   constraint PK_SEGURO_OPCIONAL primary key (CODSEGOPCIONAL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on SEGURO_OPCIONAL (
CODSEGURO ASC
)
go

/*==============================================================*/
/* Table: TELEFONO_CLIENTE                                      */
/*==============================================================*/
create table TELEFONO_CLIENTE (
   CODTELEFONOCLIENTE   int                  IDENTITY(1,1) not null,
   CODCLIENTE           int                  null,
   TIPOTELEFONOCLIENTE  varchar(40)          null,
   TELEFONOMOVILCLIENTE int                  null,
   constraint PK_TELEFONO_CLIENTE primary key (CODTELEFONOCLIENTE)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_31_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_31_FK on TELEFONO_CLIENTE (
CODCLIENTE ASC
)
go

/*==============================================================*/
/* Table: TELEFONO_EMPLEADO                                     */
/*==============================================================*/
create table TELEFONO_EMPLEADO (
   CODTELEFONOEMPLEADO  int                  IDENTITY(1,1) not null,
   CODEMPLEADO          int                  null,
   TIPOTELEFONOEMPLEADO varchar(40)          null,
   TELEFONOEMPLEADO     int                  null,
   constraint PK_TELEFONO_EMPLEADO primary key (CODTELEFONOEMPLEADO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_32_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_32_FK on TELEFONO_EMPLEADO (
CODEMPLEADO ASC
)
go

/*==============================================================*/
/* Table: TIPO_VEHICULO                                         */
/*==============================================================*/
create table TIPO_VEHICULO (
   CODTIPO              int                  IDENTITY(1,1) not null,
   DESCRIPCIONTIPO      varchar(100)         null,
   constraint PK_TIPO_VEHICULO primary key (CODTIPO)
)
go

alter table ALQUILER
   add constraint FK_ALQUILER_REALIZA__CLIENTE foreign key (CODCLIENTE)
      references CLIENTE (CODCLIENTE)
go

alter table ALQUILER
   add constraint FK_ALQUILER_RELATIONS_RESERVA foreign key (CODRESERVAS)
      references RESERVA (CODRESERVAS)
go

alter table ALQUILER
   add constraint FK_ALQUILER_RELATIONS_CAMION foreign key (CODCAMION)
      references CAMION (CODCAMION)
go

alter table ALQUILER
   add constraint FK_ALQUILER_RELATIONS_CONDUCTO foreign key (CODCONDUCTOR)
      references CONDUCTOR (CODCONDUCTOR)
go

alter table ALQUILER
   add constraint FK_ALQUILER_SE_ASIGNA_RUTA foreign key (CODRUTA)
      references RUTA (CODRUTA)
go

alter table CAMION
   add constraint FK_CAMION_RELATIONS_TIPO_VEH foreign key (CODTIPO)
      references TIPO_VEHICULO (CODTIPO)
go

alter table CAMION
   add constraint FK_CAMION_TIENE__EMPRESA foreign key (CODEMPRESA)
      references EMPRESA (CODEMPRESA)
go

alter table CLIENTE_PREFERENCIAL
   add constraint FK_CLIENTE__RELATIONS_CLIENTE foreign key (CODCLIENTE)
      references CLIENTE (CODCLIENTE)
go

alter table CONDUCTOR
   add constraint FK_CONDUCTO_ESUN_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
go

alter table DETALLE_FALLA
   add constraint FK_DETALLE__RELATIONS_REGISTRO foreign key (CODREGISTRO)
      references REGISTRO_SERVICIO (CODREGISTRO)
go

alter table EMPLEADO
   add constraint FK_EMPLEADO_TIENE2_EMPRESA foreign key (CODEMPRESA)
      references EMPRESA (CODEMPRESA)
go

alter table INSPECTOR
   add constraint FK_INSPECTO_ES_UN_UNA_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
go

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_REALIZA2__MECANICO foreign key (CODMECANICO)
      references MECANICO (CODMECANICO)
go

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_RELATIONS_DETALLE_ foreign key (CODFALLA)
      references DETALLE_FALLA (CODFALLA)
go

alter table MECANICO
   add constraint FK_MECANICO_ES_UN2_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
go

alter table REGISTRO_SERVICIO
   add constraint FK_REGISTRO_REALIZA_INSPECTO foreign key (CODINSPECTOR)
      references INSPECTOR (CODINSPECTOR)
go

alter table REGISTRO_SERVICIO
   add constraint FK_REGISTRO_RELATIONS_CAMION foreign key (CODCAMION)
      references CAMION (CODCAMION)
go

alter table REGISTRO_SERVICIO
   add constraint FK_REGISTRO_RELATIONS_MECANICO foreign key (CODMECANICO)
      references MECANICO (CODMECANICO)
go

alter table REPARACION
   add constraint FK_REPARACI_RELATIONS_MECANICO foreign key (CODMECANICO)
      references MECANICO (CODMECANICO)
go

alter table REPARACION
   add constraint FK_REPARACI_RELATIONS_DETALLE_ foreign key (CODFALLA)
      references DETALLE_FALLA (CODFALLA)
go

alter table REPUESTOS
   add constraint FK_REPUESTO_RELATIONS_REPARACI foreign key (CODREPARACION)
      references REPARACION (CODREPARACION)
go

alter table RESERVA
   add constraint FK_RESERVA_RELATIONS_CLIENTE foreign key (CODCLIENTE)
      references CLIENTE (CODCLIENTE)
go

alter table RESERVA
   add constraint FK_RESERVA_RELATIONS_CONDUCTO foreign key (CODCONDUCTOR)
      references CONDUCTOR (CODCONDUCTOR)
go

alter table RESERVA
   add constraint FK_RESERVA_RELATIONS_CAMION foreign key (CODCAMION)
      references CAMION (CODCAMION)
go

alter table RESERVA
   add constraint FK_RESERVA_SE_ASIGNA_RUTA foreign key (CODRUTA)
      references RUTA (CODRUTA)
go

alter table SALARIO
   add constraint FK_SALARIO_GANA_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
go

alter table SEGURO
   add constraint FK_SEGURO_TIENE_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
go

alter table SEGURO_ESTANDAR
   add constraint FK_SEGURO_E_RELATIONS_SEGURO foreign key (CODSEGURO)
      references SEGURO (CODSEGURO)
go

alter table SEGURO_OPCIONAL
   add constraint FK_SEGURO_O_RELATIONS_SEGURO foreign key (CODSEGURO)
      references SEGURO (CODSEGURO)
go

alter table TELEFONO_CLIENTE
   add constraint FK_TELEFONO_RELATIONS_CLIENTE foreign key (CODCLIENTE)
      references CLIENTE (CODCLIENTE)
go

alter table TELEFONO_EMPLEADO
   add constraint FK_TELEFONO_RELATIONS_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO)
go

