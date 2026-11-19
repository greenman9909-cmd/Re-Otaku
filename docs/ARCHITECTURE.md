# Arquitectura (alto nivel)

Este documento describe **qué hace** cada capa por encima del detalle de implementación. Los nombres de
archivos, los endpoints internos, las claves y la lógica del resolver no se publican.

## Capas

1. **Cáscara nativa.** Una única pantalla de Android que carga la interfaz desde dentro del propio APK y
   resuelve los enlaces entrantes de la app. En Android moderno sirve los archivos desde un origen local
   propio, así que la interfaz no depende de ninguna web externa.
2. **Motor de interfaz.** Paquete de módulos pequeños sin framework, cargados en orden, con el estado en
   memoria y persistencia local. El diseño va en capas de CSS, de forma que se puede cambiar el aspecto sin
   tocar la lógica.
3. **Catálogo.** Metadatos de AniList y TMDB, normalizados a un modelo único: ficha, temporadas, episodios,
   títulos y sinopsis en español, y arte en buena resolución.
4. **Resolver de fuentes.** Comprueba qué servidores responden para un episodio, descarta los que fallan,
   elige según idioma y calidad, y puede cambiar de fuente a mitad de reproducción sin salir del episodio.
5. **Reproductor.** HLS propio con controles, salto de opening, siguiente episodio, temporizador y
   subtítulos en español; si la fuente no da HLS compatible, se usa un reproductor alternativo.
6. **Memoria local.** Biblioteca, historial, progreso, ajustes y descargas en el almacenamiento privado de
   la app. Sin cuenta.

## Decisiones que se notan al usarla

- **Todo dentro del APK.** Arranca sin red y sin cargar una web: la interfaz ya está ahí.
- **Listas por partes.** Las series largas cargan episodios en bloques y las imágenes sólo cuando van a
  verse, para que el scroll no se atragante.
- **Pausa al salir del reproductor.** Si abres los comentarios o vuelves a la ficha, el vídeo espera y se
  reanuda al volver.
- **Bloqueo de anuncios y pop-ups** en cualquier marco incrustado, no sólo en la página principal.

## Qué no se publica y por qué

El motor, el resolver y el reproductor son la ventaja de la app: el resolver es lo que la mantiene viva
cuando una fuente cae, y el motor es donde está el trabajo de rendimiento. Publicarlos convertiría el
proyecto en un clon en una semana y en un objetivo fácil para quien quiere reempaquetarlo. El APK se
distribuye como aplicación terminada y este repositorio documenta su comportamiento, no su interior.
