---
name: setup-crea-ofertas
description: Instala automáticamente todas las dependencias del plugin (Python, ffmpeg, Whisper, jq) y enlaza el plugin en ~/.claude/skills/. Útil cuando es la primera vez que usas la skill o cuando faltan herramientas. Detecta tu sistema operativo (macOS / Linux / Windows) y lanza el instalador correcto.
argument-hint: "[opcional: --check-only para solo verificar sin instalar]"
---

# /setup-crea-ofertas · Instalador automático

## QUÉ HACE

Instala TODO lo necesario para que el plugin `zenith-crea-ofertas` funcione al 100%:

- ✅ Python 3.10+ (si no está)
- ✅ pip3 (si no está)
- ✅ ffmpeg (procesamiento audio/vídeo · Whisper lo necesita)
- ✅ openai-whisper (transcripción de vídeos del usuario)
- ✅ jq (procesamiento JSON)
- ✅ requests + BeautifulSoup (para agentes que consultan web)
- ✅ Enlaza el plugin en `${CLAUDE_PLUGIN_ROOT}`

Al final hace una verificación completa.

## CUÁNDO USARLO

- Primera vez que instalas el plugin
- Cuando un agente falla por una dependencia ausente
- Cuando quieres actualizar las herramientas externas
- Cuando quieres VERIFICAR (sin instalar) que todo está en orden

## CÓMO USARLO

### Instalación completa (recomendado · primera vez)

```
/setup-crea-ofertas
```

Lanza el script `install.sh` (Mac/Linux) o `install.ps1` (Windows) y queda todo listo en ~5-10 minutos.

### Solo verificar (sin instalar)

```
/setup-crea-ofertas --check-only
```

Solo comprueba el estado de las dependencias y reporta qué falta. No instala nada.

## QUÉ EJECUTA INTERNAMENTE

El comando detecta tu sistema y ejecuta:

| Sistema | Comando |
|---------|---------|
| **macOS** | `bash install.sh` |
| **Linux (apt/dnf/pacman)** | `bash install.sh` |
| **Windows (PowerShell)** | `powershell -ExecutionPolicy Bypass -File install.ps1` |

Los scripts están en la raíz del plugin y son auto-contenidos.

## CHECKLIST POST-INSTALACIÓN

Al terminar, te muestra:

```
✓ Python 3.12.0
✓ pip3 24.0.0
✓ ffmpeg 8.1
✓ whisper · disponible
✓ jq 1.6
✓ Plugin enlazado en /Users/[tu_user]/.claude/skills/zenith-crea-ofertas
```

Si todo aparece con ✓, ya puedes usar:

```
/crea-oferta-1pct
```

Para arrancar el pipeline completo (discovery + 13 pasos).

## QUÉ HACER SI ALGO FALLA

1. Lee el output del instalador (te dice qué falló)
2. Consulta `INSTALL.md` (manual paso a paso para tu sistema)
3. Si persiste, abre una issue en GitHub con el output completo

## EJEMPLO DE USO

```
Usuario: /setup-crea-ofertas

Claude: Detecto que estás en macOS. Lanzando install.sh...

[el script ejecuta los 7 pasos]

✅ INSTALACIÓN COMPLETADA
   - Python 3.12.0
   - ffmpeg 8.1
   - whisper 20231117
   - jq 1.6
   - Plugin enlazado en ${CLAUDE_PLUGIN_ROOT}

🚀 Listo. Ya puedes lanzar:
   /crea-oferta-1pct
```

## AGENTES QUE NECESITAN ESTAS DEPENDENCIAS

| Agente | Dependencia | Para qué |
|--------|-------------|----------|
| Cualquier agente que procese vídeo | whisper + ffmpeg | Transcribir vídeos MP4 del usuario |
| `nombre-chicle` | requests + bs4 (vía WebFetch interno) | Validar dominios + handles disponibles |
| `super-estructura` | requests (vía WebSearch) | Validar celebridades y referentes culturales |
| `mecanismo-problema` / `mecanismo-solucion` | requests | Pesquisar competencia en Biblioteca Anuncios Meta |
| `auditor-completo` | jq | Procesar el brief.json y validar estructura |

Sin estas dependencias, los agentes pierden funcionalidad o trabajan en modo degradado.

## NOTAS DE COMPATIBILIDAD

- **macOS 10.15+** (Catalina o superior)
- **Linux** kernel 4.0+ (Ubuntu 18.04+, Debian 10+, Fedora 30+, etc.)
- **Windows 10+** con PowerShell 5.1+ (Windows 11 OK)
- **Apple Silicon** (M1/M2/M3): totalmente soportado · Whisper aprovecha el chip
- **GPU NVIDIA**: opcional · acelera Whisper 10-50× si tienes CUDA

---

*El instalador es **idempotente**: puedes ejecutarlo varias veces sin riesgo. Si algo ya está instalado, lo salta.*
