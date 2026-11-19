# Verificar la descarga

Antes de instalar el APK, comprueba que es exactamente el que publiqué. Son dos comprobaciones de un
minuto: el hash del archivo y la firma.

## 1. SHA-256

El hash de cada versión está en [`../checksums.txt`](../checksums.txt).

**Windows (PowerShell)**

```powershell
Get-FileHash .\REOTAKU-2.1.19-QA.apk -Algorithm SHA256
```

**Linux / macOS**

```bash
sha256sum REOTAKU-2.1.19-QA.apk      # o: shasum -a 256 REOTAKU-2.1.19-QA.apk
```

Debe coincidir con la línea del archivo. Si no coincide, borra el archivo y descárgalo otra vez del sitio
oficial.

## 2. Firma del paquete

Con las *build-tools* de Android:

```bash
apksigner verify --print-certs REOTAKU-2.1.19-QA.apk
```

La huella SHA-256 del certificado debe ser la misma en todas las versiones: es lo que permite actualizar
encima sin desinstalar. Si un APK que dice ser RE:OTAKU trae otro certificado, no es mío.

## 3. Scripts incluidos

```bash
./tools/verify-apk.sh REOTAKU-2.1.19-QA.apk
```

```powershell
.\tools\verify-apk.ps1 -Apk .\REOTAKU-2.1.19-QA.apk
```

El script compara el hash contra `checksums.txt` y, si `apksigner` está disponible, imprime el certificado.
