# Cambios

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
