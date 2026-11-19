# Qué hay abierto y qué no

RE:OTAKU es **fuente disponible en parte**: se publica lo que ayuda a confiar en la app y a integrarla,
y se mantiene privado lo que hace que funcione.

## Abierto

- Este repositorio: versiones, hashes, permisos, privacidad, verificación del APK.
- Herramientas de verificación (`tools/verify-apk.sh`, `tools/verify-apk.ps1`).
- La capa de navegación y accesibilidad de la interfaz (foco con D-pad, panel de chat) se comparte como
  parches documentados en `CHANGELOG.md`, porque no revela nada del funcionamiento interno.

## Privado (no se publica, no se comparte)

| Pieza | Por qué |
| --- | --- |
| **Reproductor de vídeo** (HLS, controles, subtítulos, saltos) | Es la parte más costosa de mantener y la que da la experiencia; además expone la lógica de negociación con las fuentes. |
| **API de vídeo y resolución de fuentes** | Es el núcleo: comprobar servidores, descartar los caídos, elegir por idioma y calidad, y cambiar de fuente a mitad de episodio. Publicarlo rompe la app en días y convierte el proyecto en un clon. |
| **Motor de la interfaz** (módulos, capas, estado) | Es el trabajo de rendimiento y el diseño; se distribuye sólo como binario dentro del APK. |
| **Claves y endpoints internos** | Secretos operativos. Nunca están en el repositorio ni en el APK en claro. |

## Qué significa para ti

- Puedes auditar **qué instala** la app (permisos, tamaño, hash, firma) sin poder recompilarla.
- No se aceptan PRs que reimplementen el reproductor ni el resolver: esas partes no se abren.
- Si encuentras un fallo, abre un issue con los datos del README; si es de seguridad, usa
  [`../SECURITY.md`](../SECURITY.md).
