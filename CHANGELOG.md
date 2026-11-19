# Cambios

## 2.1.20 — cabecera fija y panel de chat como la referencia

- **Los botones de la cabecera responden siempre.** Al hacer scroll la barra se desvanecía y se desplazaba
  fuera de la zona táctil, y una capa del héroe se quedaba por encima. Ahora la cabecera se mantiene visible,
  con capa propia, y chat, actualizar, avisos y menú abren con un toque en cualquier posición de la página.
- **Panel de chat a sangre en móvil**, con su propia cabecera debajo de la barra de la app: título, presencia
  en directo y cierre a la derecha.
- **Ajuste tipográfico y de aire** en cabecera, Comunidad, tarjetas y compositor.
- **Comunidad** con pestañas Foro/Chat en vivo, recuentos reales y tarjetas con último mensaje.
- **Se retira la voz:** sin salas, cámara ni notas de voz. Los mensajes antiguos de ese tipo se muestran como
  «Mensaje de voz · ya no disponible».
- **Versión interna** 24 (2.1.20). Misma firma e id de paquete: se instala encima sin perder datos.

## 2.1.19 — correcciones de la beta pública

- **Foto de perfil y portada con más resolución.** Los avatares se recortaban a 256 px; ahora se recortan a
  512 px con más calidad (WebP 0.92). Se nota sobre todo en pantallas grandes y al abrir el perfil desde el
  ordenador.
- **Android TV.** La app ya se instala en televisores: `leanback` opcional, banner de TV 320×180 y lanzador
  de TV. Con el D-pad las flechas mueven el foco entre los controles visibles, la vista hace scroll hasta el
  elemento enfocado y OK/Enter lo activa, con anillo de foco visible.
- **Más redes publicitarias bloqueadas:** seis redes que aparecen dentro de reproductores incrustados.
- **Chat en vivo en la cabecera.** El icono de chat vuelve arriba, junto a buscar y avisos, y abre un panel lateral con presencia en directo (SSE), historial, GIF, notas de voz y envío. Se retira la pestaña **Comunidad** de la barra inferior: el chat se usa desde la cabecera.
- **Estilos del panel de chat** al estilo del panel de referencia: cabecera con título y contador de conectados, filas limpias con avatar/nombre/hora, GIF y audio acotados, compositor fijo.
- **Actualizaciones sin reinstalar.** La capa de interfaz consulta `/ota.json` y aplica parches de CSS/JS encima del APK. Un cambio nativo sigue necesitando instalación.
- **Versión interna** 23 (2.1.19). Misma firma e id de paquete: se instala encima sin perder datos.

## 2.1.18 — primera beta pública

- Arquitectura propia: cáscara nativa mínima + motor empaquetado, sin frameworks.
- Resolver de fuentes con reintento automático y reproductor HLS propio (SUB/DUB, subtítulos ES).
- Fichas desde AniList y TMDB con títulos y sinopsis en español.
- Biblioteca, historial y progreso locales, sin cuenta.
