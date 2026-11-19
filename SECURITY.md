# Seguridad

## Reportar un problema

Escribe a **security@reotaku.com** con:

- versión de la app (Ajustes → Acerca de) y `versionCode`;
- modelo de móvil y versión de Android;
- pasos para reproducirlo y qué esperabas que pasara.

No abras un issue público con un fallo explotable. Respondo en un máximo de 7 días.

## Alcance

- APK oficial y su firma.
- Tratamiento de datos locales (perfil, historial, descargas).
- Bloqueo de anuncios y ventanas emergentes.

Fuera de alcance: el contenido que sirven terceros y los fallos de sus reproductores.

## Verificar que un APK es mío

Cada versión publica su SHA-256 en [`checksums.txt`](checksums.txt). Compara el hash del archivo que
descargaste antes de instalarlo. Si no coincide, no lo instales.
