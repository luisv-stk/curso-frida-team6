# Requirements Specification

## 1. Overview  
Se añadirá al módulo de “Añadir nuevo elemento” una zona de carga de imágenes que permita arrastrar o seleccionar hasta 5 archivos PNG. Cuando haya al menos una imagen válida seleccionada, se habilitarán los botones **Cargar archivo** y **Borrar**; en caso contrario, permanecerán deshabilitados.  

## 2. Functional Requirements

### 2.1 Core Functionality  
- FR-1: Zona de arrastrar/soltar y clic para abrir selector de archivos. _(Must Have)_  
- FR-2: Sólo aceptar archivos con extensión `.png` y tipo MIME `image/png`. _(Must Have)_  
- FR-3: Límite máximo de 5 archivos seleccionados simultáneamente. _(Must Have)_  
- FR-4: Mostrar miniaturas (thumbnails), nombre y tamaño de cada archivo seleccionado. _(Should Have)_  
- FR-5: Botón **Cargar archivo** habilitado sólo cuando haya ≥1 archivo válido. _(Must Have)_  
- FR-6: Botón **Borrar** (o **Limpiar**) habilitado sólo cuando haya ≥1 archivo seleccionado. _(Must Have)_  
- FR-7: Posibilidad de eliminar individualmente cada archivo de la lista. _(Should Have)_  
- FR-8: Al hacer clic en **Cargar archivo**, invocar el servicio de subida (`uploadService.uploadFiles(files)`) y gestionar la respuesta. _(Must Have)_  
- FR-9: Mostrar mensaje de éxito o error tras la operación de subida. _(Must Have)_  

### 2.2 User Interactions  
- El usuario arrastra uno o varios archivos sobre la zona marcada: ésta se resalta y los archivos válidos se agregan a la lista.  
- El usuario hace clic en la zona: se abre el diálogo del sistema para seleccionar hasta 5 archivos PNG.  
- El usuario puede retirar un archivo concreto haciendo clic en un icono de “Eliminar” junto a su miniatura.  
- El usuario puede limpiar toda la selección con el botón **Borrar**.  
- El usuario pulsa **Cargar archivo** para subir las imágenes; tras respuesta satisfactoria, se limpia la selección y se muestra confirmación.  

### 2.3 Data Management  
- Mantener en memoria (componente Angular) un array de objetos `File` validados.  
- Validar en el cliente: tipo MIME, extensión, tamaño (opcional) y número de archivos.  
- Enviar los archivos en una petición `multipart/form-data` al endpoint `/api/files/upload`.  
- Gestionar el estado de carga y posibles errores de red o servidor.  

## 3. Non-Functional Requirements

### 3.1 Performance  
- Renderizar el componente en <100 ms tras la carga de la vista.  
- Generar miniaturas en <200 ms por archivo (si se utiliza API de canvas o `URL.createObjectURL`).  
- Soportar cómodamente la selección simultánea de 5 archivos de hasta 10 MB cada uno.  

### 3.2 Security  
- Comprobar tipo y extensión de archivo en cliente y servidor.  
- Evitar inyección XSS en nombres de archivos (escape de caracteres).  
- Todas las comunicaciones con el servidor usar HTTPS.  

### 3.3 Usability  
- Mensaje en la zona: “Arrastra o selecciona hasta 5 imágenes PNG”.  
- Feedback visual al arrastrar archivos (hover state).  
- Teclado accesible: foco, disparar selector con Enter/Espacio.  
- Contraste de color suficiente (WCAG AA) en texto e iconos.  

### 3.4 Reliability  
- Disponibilidad del 99,5% del componente en el entorno de producción.  
- Gestión de errores de red: reintento automático o mensaje claro al usuario.  
- En caso de fallo de subida, conservar los archivos en la lista para reintento.  

## 4. User Stories  
1. Como **Usuario**, quiero arrastrar imágenes al área de carga para subirlas rápidamente.  
2. Como **Usuario**, quiero hacer clic en el área de carga para abrir el explorador de archivos.  
3. Como **Usuario**, quiero ver miniaturas, nombres y tamaños de archivo para verificar mi selección.  
4. Como **Usuario**, quiero eliminar una imagen individual de la lista para corregir mi selección.  
5. Como **Usuario**, quiero limpiar toda la selección con un solo clic.  
6. Como **Usuario**, quiero que los botones de **Cargar** y **Borrar** estén deshabilitados hasta que haya archivos válidos.  
7. Como **Usuario**, quiero recibir confirmación de subida exitosa o error para saber el estado de la operación.  
8. Como **Desarrollador**, quiero que el componente sea reutilizable en otros módulos.  
9. Como **Usuario con discapacidad**, quiero poder interactuar con teclado y lector de pantalla con la misma eficacia.  

## 5. Constraints and Assumptions

### 5.1 Technical Constraints  
- Framework: Angular 11+  
- CSS: Bootstrap 5 (ya presente)  
- API de archivos: HTML5 File API y `URL.createObjectURL`  
- Endpoint de subida ya definido: `/api/files/upload`  

### 5.2 Business Constraints  
- Entrega en 2 sprints (4 semanas)  
- Equipo: 1 frontend, 1 backend (parcial)  
- Presupuesto: límite de \$10 000 para esta funcionalidad  

### 5.3 Assumptions  
- Navegadores modernos (Chrome, Firefox, Edge, Safari) con soporte DnD.  
- El backend acepta y procesa multipart/form-data.  
- Límite de tamaño por archivo: 10 MB (en servidor).  

## 6. Acceptance Criteria  
- [ ] Con 0 archivos, los botones **Cargar** y **Borrar** están deshabilitados.  
- [ ] Al seleccionar 1–5 PNG válidos, ambos botones se habilitan.  
- [ ] Si se intenta añadir >5 archivos, se muestra error y sólo se mantienen los primeros 5.  
- [ ] Si se añade un archivo no PNG, aparece mensaje de validación y no se incluye.  
- [ ] Al pulsar **Cargar**, la petición POST llega al servidor y, en caso de 200 OK, los archivos se eliminan de la lista y se muestra “Subida realizada con éxito”.  
- [ ] En caso de error de red o servidor, se muestra mensaje “Error al subir. Inténtalo de nuevo.” y los archivos permanecen listados.  
- [ ] Todos los elementos interactivos son accesibles por teclado y cumplen WCAG AA.  

## 7. Out of Scope  
- Formatos distintos a PNG (JPEG, GIF, etc.)  
- Recorte o redimensionado de imágenes en cliente  
- Barra de progreso por archivo (se muestra sólo spinner global)  
- Soporte específico para arrastre desde móviles  
- Detalles de almacenamiento y base de datos en backend