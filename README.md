#  Azure End-to-End Data Engineering Project

Implementando una arquitectura **realista y funcional** para ingestar datos desde GitHub hacia Azure SQL Database mediante **Azure Data Factory**.

##  Arquitectura actual

**Origen → Ingestión → Almacenamiento**

```text
GitHub (CSV Raw)
     ↓
Azure Data Factory (HTTP Linked Service)
     ↓
Azure SQL Database (car-sales-sql-db)

```

##  Componentes configurados

| Componente | Descripción | Estado |
|-------------|-------------|--------|
| **Azure Data Factory** | Pipeline `data_source_prep` con Copy Activity (`ds_github` → `ds_sqldb`) | ✅ |
| **Linked Service - HTTP** | `ls_github` conectado a `https://raw.githubusercontent.com/` | ✅ |
| **Linked Service - SQL** | `ls_sqldb` conectado a `car-sales-sql-db` | ✅ |
| **Dataset - ds_github** | CSV dinámico desde GitHub, con parámetro `file_name` | ✅ |
| **Dataset - ds_sqldb** | Tabla `dbo.source_cars_data` en SQL | ✅ |