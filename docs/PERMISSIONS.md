# Permisos del APK

Lista completa, tomada del `AndroidManifest.xml` de la versión 2.1.19:

```xml
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
```

| Permiso | Para qué | Qué NO hace |
| --- | --- | --- |
| `INTERNET` | Cargar el catálogo, las imágenes y el vídeo que tú eliges | No envía tus datos a ningún servidor propio de analítica |
| `ACCESS_NETWORK_STATE` | Avisar cuando te quedas sin conexión y reintentar | No mide tu velocidad ni tu consumo |

## Lo que la app no pide

Ni cámara, ni micrófono, ni contactos, ni ubicación, ni SMS, ni teléfono, ni acceso a archivos fuera de lo
que tú eliges en el selector del sistema, ni permiso para instalar otros paquetes.

## Características declaradas

```xml
<uses-feature android:name="android.hardware.touchscreen" android:required="false" />
<uses-feature android:name="android.software.leanback" android:required="false" />
<uses-feature android:name="android.hardware.faketouch" android:required="false" />
```

Las tres son opcionales: la app instala igual en un móvil táctil, en un televisor o en un dispositivo con
ratón. No restringen la compatibilidad.

## Cómo comprobarlo tú mismo

En el móvil, con el APK instalado:

```bash
adb shell dumpsys package com.reotaku.latestqa | grep -A 20 "requested permissions"
```

O sin instalar nada:

```bash
aapt dump permissions REOTAKU-2.1.19-QA.apk
```
