# Verificar la descarga

Descarga el APK desde el [sitio oficial](https://reotaku-descargar.vercel.app/) o desde la [última versión publicada en GitHub](https://github.com/greenman9909-cmd/Re-Otaku/releases/latest). Antes de instalarlo, compara su SHA-256 con la entrada correspondiente de [`checksums.txt`](../checksums.txt).

Los nombres de archivo de la versión v2.3.1 son:

- `reotaku-android.apk` — Android phone
- `reotaku-tv.apk` — Android TV
- `reotaku-universal.apk` — universal build

## 1. SHA-256

**Windows (PowerShell)**

```powershell
Get-FileHash .\reotaku-android.apk -Algorithm SHA256
```

**Linux / macOS**

```bash
sha256sum reotaku-android.apk
# macOS también admite: shasum -a 256 reotaku-android.apk
```

Cambia el nombre del archivo si descargaste la versión TV o universal. El hash calculado debe coincidir exactamente con la línea correspondiente de `checksums.txt`. Si no coincide, no instales el archivo: vuelve a descargarlo desde el sitio o la release oficial.

## 2. Firma del paquete

Con las Android SDK Build Tools:

```bash
apksigner verify --print-certs reotaku-android.apk
```

La identidad de firma debe coincidir entre versiones para poder actualizar la instalación existente sin desinstalarla. Android rechazará una actualización firmada con una clave distinta.

## 3. Scripts incluidos

**Linux / macOS**

```bash
./tools/verify-apk.sh reotaku-android.apk
```

**Windows (PowerShell)**

```powershell
.\tools\verify-apk.ps1 -Apk .\reotaku-android.apk
```

Los scripts comparan el hash con `checksums.txt` y, si `apksigner` está disponible, muestran la información del certificado.
