# Cambios

## 2.4.0 — subtítulos y experiencia TV

- Subtítulos de TV alineados con móvil: temporada correcta, pistas completas, selección de idioma y reintentos.
- Traducción por lotes sin perder líneas ni cambiar los tiempos; cancelación al cambiar episodio o idioma.
- Nueva configuración inicial para TV, guía del mando e importación opcional de bibliotecas.
- Tema predeterminado de TV igual que móvil: negro, superficies neutras, botones blancos y acento azul.
- Conexión de AniList desde la ventana de cuenta del móvil; sincronización opcional.


## 2.3.1 — mejoras de navegación y catálogo

- **Navegación inferior:** corregido el recorte de las etiquetas en la barra inferior de Comunidad.
- **Arte de portada:** añadido un respaldo de AniList para las tarjetas destacadas de Explorar cuando falla la imagen de TMDB.
- **Rutas no encontradas:** localizados los mensajes de la ruta 404 en los siete idiomas de la aplicación.

## 2.2.0 — Android TV y mejoras de reproducción

- Nueva aplicación para Android TV.
- Selector de doblaje en inglés, con subtítulos en el idioma elegido.
- Rueda de episodios, personajes y voces.
- Correcciones de imágenes y nombres para cada temporada.
- Correcciones del vídeo verde y de la reproducción en el primer intento.

## 2.1.20 — cabecera fija y panel de chat

- **Los botones de la cabecera responden siempre.** La barra se mantiene visible al desplazarse, y chat, actualizar, avisos y menú abren con un toque.
- **Panel de chat a sangre en móvil**, con cabecera propia, presencia en directo y cierre.
- **Ajuste tipográfico y de aire** en cabecera, Comunidad, tarjetas y compositor.
- **Comunidad** con pestañas Foro/Chat en vivo, recuentos reales y tarjetas con último mensaje.
- **Se retira la voz:** sin salas, cámara ni notas de voz. Los mensajes antiguos de ese tipo se muestran como «Mensaje de voz · ya no disponible».
- Misma firma e id de paquete para instalar encima sin perder datos.

## 2.1.19 — correcciones de la beta pública

- **Foto de perfil y portada con más resolución.** Los avatares se recortan a 512 px con más calidad (WebP 0.92).
- **Android TV.** Banner y lanzador de TV; navegación con D-pad, foco visible y activación con OK/Enter.
- **Más redes publicitarias bloqueadas** dentro de reproductores incrustados.
- **Chat en vivo en la cabecera**, con presencia en directo, historial, GIF y envío.
- **Actualizaciones de interfaz sin reinstalar.** La capa de interfaz consulta `/ota.json` y aplica parches CSS/JS sobre el APK. Los cambios nativos siguen necesitando un APK nuevo.
- Misma firma e id de paquete para instalar encima sin perder datos.

## 2.1.18 — primera beta pública

- Arquitectura propia: cáscara nativa mínima + motor empaquetado, sin frameworks grandes.
- Resolver de fuentes con reintento automático y reproductor HLS propio (SUB/DUB y subtítulos ES).
- Fichas desde AniList y TMDB con títulos y sinopsis en español.
- Biblioteca, historial y progreso locales.
