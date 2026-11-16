# Portafolio de Quality Assurance (QA Manual & SQL)

Bienvenido a mi portafolio de **Testing de Software**. Este repositorio reúne mis entregables prácticos aplicando metodologías de **QA Manual**, diseño de casos de prueba, reporte técnico de incidencias y validación de datos en bases de datos relacionales.

---

## Stack Técnico y Herramientas

* **Testing Manual:** Diseño de Casos de Prueba (*Happy Path*, negativos y de borde), Pruebas Funcionales y End-to-End (E2E), Pruebas Exploratorias, Caja Negra y Caja Gris, Matrices de Trazabilidad.
* **Gestión de Pruebas e Incidencias:** Jira (gestión de Sprints, ciclo de vida del defecto, severidad y prioridad), Google Sheets / Excel.
* **Inspección Web:** Chrome DevTools (*Elements*, *Console*, *Network*), HTML / DOM.
* **Bases de Datos:** MySQL / SQLyog (`INNER/LEFT/RIGHT JOIN`, `GROUP BY`, `VIEW`, transacciones `START TRANSACTION` / `ROLLBACK`).
* **Control de Versiones:** Git y GitHub.

---

## Estructura del Repositorio

### 1. Diseño de Casos de Prueba y Trazabilidad (`01-Test-Cases`)
Matriz estructurada con **16 casos de prueba funcionales** diseñados para aplicaciones web (*SauceDemo* y *Tío Bigotes*):
* Cobertura de flujos de inicio de sesión, filtrado y ordenamiento de catálogo, gestión de carrito de compras y proceso completo de *Checkout*.
* Inclusión de escenarios positivos, negativos y validación de campos obligatorios.
* Trazabilidad directa entre cada caso de prueba ejecutado y los defectos reportados en Jira.

### 2. Reporte y Análisis de Defectos en Jira (`02-Bug-Reports-Jira`)
Documentación técnica de incidencias reales detectadas durante las ejecuciones de prueba:
* **WB-3 (Fallo silencioso de lógica):** Error en el filtro de ordenamiento por precio (*Low to High*), documentado mediante inspección del DOM en Chrome DevTools sin errores visibles en consola.
* **WB-4 (Inconsistencia visual en catálogo):** Aislamiento de causa raíz en etiquetas `<img>` apuntando a un recurso estático erróneo (`sl-404`).
* **WB-5 (Bloqueo en formulario de Checkout):** Redirección anómala de entrada de texto entre los campos *Last Name* y *First Name*, acompañado de evidencia en vídeo e inspección HTML.

### 3. Auditoría de Integridad de Datos en SQL (`03-SQL-Database-Testing`)
Script autónomo en MySQL (`auditoria_qa_tienda.sql`) orientado a pruebas de **Caja Gris**:
* Creación de esquema relacional (`departamentos` y `empleados`) con claves primarias y foráneas (`PRIMARY KEY`, `FOREIGN KEY`).
* Detección de registros huérfanos y departamentos sin personal asignado mediante `LEFT JOIN` y `RIGHT JOIN`.
* Validación de métricas agregadas y conteos con `GROUP BY` y `COUNT()`.
* Ejecución de pruebas seguras sobre registros utilizando transacciones (`START TRANSACTION` / `ROLLBACK`).

---

## Contacto

* **Ubicación:** Área Metropolitana de Barcelona, España
* **LinkedIn:** https://www.linkedin.com/in/lautaro-escudero-936a5a443/
