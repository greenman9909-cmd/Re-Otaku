# RE:OTAKU

App de anime para Android, en español, con subtítulos automáticos, reproductor propio y biblioteca local.
Sitio de descargas: **https://reotaku-descargar.vercel.app/**

Este repositorio es el **canal oficial de transparencia** del APK: versiones publicadas, hash de
verificación, permisos reales de la app, política de privacidad y registro de cambios. Aquí no hay código
de la aplicación.

---

## Qué hay aquí y qué no

| Incluido | No incluido |
| --- | --- |
| Versiones publicadas y su SHA-256 (`checksums.txt`) | El motor de la interfaz |
| Permisos que pide el APK, explicados (`docs/PERMISSIONS.md`) | El resolver de fuentes de vídeo |
| Privacidad y datos que se guardan (`docs/PRIVACY.md`) | El reproductor y los parches de subtítulos |
| Cómo verificar la descarga (`docs/VERIFY.md`) + scripts | Claves, endpoints internos y configuración |

La app está empaquetada: la parte nativa de Android es una cáscara mínima y toda la interfaz viaja dentro
del APK. El motor, el resolver y el reproductor son código propietario y **no se publican**. Por eso este
repositorio **no compila una app funcional**: clonarlo no da nada ejecutable, y eso es intencionado.

## Instalar

1. Descarga el APK desde el sitio oficial.
2. Verifica el SHA-256 contra [`checksums.txt`](checksums.txt) → [`docs/VERIFY.md`](docs/VERIFY.md).
3. Instálalo (Android 7 o superior; permite "instalar apps desconocidas" para el navegador o el gestor de
   archivos que uses).

## Versión actual

**2.1.19** (versionCode 23) · 17.088.099 bytes
`sha256 248ea064ae384c186a47def9d519dd41cb4876604fde6f4330eb0c6ab6b13414`

Cambios de esta versión en [`CHANGELOG.md`](CHANGELOG.md).

## Permisos

Solo dos, ambos normales: `INTERNET` y `ACCESS_NETWORK_STATE`. Nada de cámara, contactos, ubicación,
almacenamiento externo ni telefonía. Detalle completo en [`docs/PERMISSIONS.md`](docs/PERMISSIONS.md).

## Privacidad

Sin cuenta obligatoria, sin analítica y sin publicidad propia. Biblioteca, historial y progreso se quedan
en el dispositivo. Lo único que sale del teléfono son las peticiones al catálogo (AniList/TMDB) y a las
fuentes de vídeo que elijas. Detalle en [`docs/PRIVACY.md`](docs/PRIVACY.md).

## Actualizaciones

La interfaz se actualiza **sin volver a instalar el APK**: la app consulta `/ota.json` en el sitio oficial y, si hay una versión de parche mayor, la carga encima (CSS + JS). Los cambios nativos (permisos, reproductor, Java) sí requieren APK nuevo; el resto llega solo.

## Preguntas frecuentes

**¿Por qué no está el código?**
El motor es años de trabajo y el resolver es lo que mantiene la app funcionando cuando las fuentes caen.
Publicarlo lo rompe en una semana. Lo que sí publico es todo lo necesario para confiar en el APK que
instalas: hash reproducible, permisos verificables y comportamiento documentado.

**¿De dónde salen los anuncios que a veces se ven?**
No son de la app. La app bloquea dominios publicitarios y pop-ups de cualquier marco incrustado, y cuando
la fuente ofrece HLS se reproduce con el reproductor propio. Si un servidor tercero mete anuncios dentro de
su propio reproductor y no da HLS, no hay forma de quitarlos sin cambiar de fuente: la app intentará otra.

**¿Funciona en Android TV?**
Sí, instala (banner y lanzador de TV incluidos) y se maneja con el D-pad: las flechas mueven el foco y OK
activa. Hay pantallas que aún se afinan mejor con mando; los reportes son bienvenidos.

**¿Se actualiza sola?**
No. Cada versión se publica aquí con su hash y se instala encima de la anterior (misma firma y misma id de
paquete), conservando perfil y biblioteca.

## Reportar

- Fallos o ideas: abre un *issue* con modelo de móvil, versión de Android y versión de la app.
- Seguridad: ver [`SECURITY.md`](SECURITY.md).

## Licencia

Propietario, todos los derechos reservados. Ver [`LICENSE`](LICENSE). No se autoriza la redistribución del
APK ni la reutilización de su contenido.
