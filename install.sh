#!/usr/bin/env bash
# ════════════════════════════════════════════════════════════════════════════
# zenith-crea-ofertas · INSTALADOR AUTOMÁTICO
# ════════════════════════════════════════════════════════════════════════════
# Instala TODO lo necesario para que la skill funcione al 100%:
# - Python 3.10+ + pip
# - ffmpeg (para procesar audio/vídeo)
# - openai-whisper (transcripción de vídeos del usuario)
# - jq (procesamiento JSON)
# - curl + wget (descargas)
# - El plugin en ~/.claude/skills/ (para que Claude Code lo detecte)
#
# Soporta: macOS (brew), Linux (apt/dnf/pacman), Windows (vía WSL).
# Para Windows nativo, usar install.ps1
# ════════════════════════════════════════════════════════════════════════════

set -e

# ── Colores ──────────────────────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# ── Helpers ─────────────────────────────────────────────────────────────────
say()   { echo -e "${CYAN}▸${NC} $1"; }
ok()    { echo -e "${GREEN}✓${NC} $1"; }
warn()  { echo -e "${YELLOW}⚠${NC} $1"; }
err()   { echo -e "${RED}✕${NC} $1"; exit 1; }
title() { echo; echo -e "${PURPLE}${BOLD}── $1 ──${NC}"; echo; }

# ── Banner ──────────────────────────────────────────────────────────────────
clear 2>/dev/null || true
cat <<'BANNER'

   ▄████▄  ██▀███  ▓█████ ▄▄▄          ▒█████  ▒█████▒ ▓█████ ██▀███   ▄▄▄█████▓▄▄▄        ██████
   ▒██▀ ▀█ ▓██ ▒ ██▒▓█   ▀▒████▄       ▒██▒  ██▒▒▓██▒  ▒▓█   ▀▓██ ▒ ██▒▓  ██▒ ▓▒▒████▄    ▒██    ▒
   ▒▓█    ▄▓██ ░▄█ ▒▒███  ▒██  ▀█▄     ▒██░  ██▒░░▒██░  ▒███  ▓██ ░▄█ ▒▒ ▓██░ ▒░▒██  ▀█▄  ░ ▓██▄
   ▒▓▓▄ ▄██▒▒██▀▀█▄  ▒▓█  ▄░██▄▄▄▄██   ▒██   ██░   ▒██   ▒▓█  ▄▒██▀▀█▄  ░ ▓██▓ ░ ░██▄▄▄▄██  ▒   ██▒
   ▒ ▓███▀ ░░██▓ ▒██▒░▒████▒▓█   ▓██▒  ░ ████▓▒░    ▒██░ ░▒████░██▓ ▒██▒  ▒██▒ ░  ▓█   ▓██▒▒██████▒▒

                          CREA OFERTAS 1% · INSTALADOR AUTOMÁTICO v1.0
                          ─────────────────────────────────────────────

BANNER

# ── Detectar OS ─────────────────────────────────────────────────────────────
title "1/7 · Detectando sistema operativo"

OS="unknown"
PKG_MANAGER="unknown"

if [[ "$OSTYPE" == "darwin"* ]]; then
  OS="macos"
  PKG_MANAGER="brew"
  ok "Sistema: macOS"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  OS="linux"
  if command -v apt-get &>/dev/null; then
    PKG_MANAGER="apt"
    ok "Sistema: Linux (apt)"
  elif command -v dnf &>/dev/null; then
    PKG_MANAGER="dnf"
    ok "Sistema: Linux (dnf)"
  elif command -v pacman &>/dev/null; then
    PKG_MANAGER="pacman"
    ok "Sistema: Linux (pacman)"
  else
    err "No detecto package manager. Instala manualmente: python3, pip, ffmpeg, jq."
  fi
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
  OS="windows-bash"
  warn "Detecto Git Bash/Cygwin en Windows. Para Windows nativo usa install.ps1"
  PKG_MANAGER="manual"
else
  err "Sistema operativo no reconocido: $OSTYPE"
fi

# ── Instalar Homebrew si macOS y no está ────────────────────────────────────
if [[ "$OS" == "macos" ]] && ! command -v brew &>/dev/null; then
  title "2/7 · Instalando Homebrew (Mac)"
  say "No tienes Homebrew. Lo instalo ahora..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ok "Homebrew instalado"
else
  title "2/7 · Package manager"
  ok "Package manager $PKG_MANAGER disponible"
fi

# ── Instalar Python 3 ────────────────────────────────────────────────────────
title "3/7 · Verificando Python 3"

if ! command -v python3 &>/dev/null; then
  say "Python 3 no encontrado. Instalando..."
  case "$PKG_MANAGER" in
    brew) brew install python@3.12 ;;
    apt) sudo apt-get update && sudo apt-get install -y python3 python3-pip ;;
    dnf) sudo dnf install -y python3 python3-pip ;;
    pacman) sudo pacman -S --noconfirm python python-pip ;;
    *) err "No puedo instalar Python automáticamente. Descárgalo de python.org" ;;
  esac
fi

PYTHON_VERSION=$(python3 --version | awk '{print $2}')
ok "Python $PYTHON_VERSION instalado"

# ── Instalar pip si no está ──────────────────────────────────────────────────
if ! command -v pip3 &>/dev/null; then
  say "pip3 no encontrado. Instalando..."
  case "$PKG_MANAGER" in
    brew) brew install python@3.12 ;;
    apt) sudo apt-get install -y python3-pip ;;
    dnf) sudo dnf install -y python3-pip ;;
    pacman) sudo pacman -S --noconfirm python-pip ;;
  esac
fi
ok "pip3 disponible"

# ── Instalar ffmpeg (para Whisper) ──────────────────────────────────────────
title "4/7 · Instalando ffmpeg (procesamiento audio/vídeo)"

if ! command -v ffmpeg &>/dev/null; then
  say "ffmpeg no encontrado. Instalando..."
  case "$PKG_MANAGER" in
    brew) brew install ffmpeg ;;
    apt) sudo apt-get install -y ffmpeg ;;
    dnf) sudo dnf install -y ffmpeg || sudo dnf install -y ffmpeg-free ;;
    pacman) sudo pacman -S --noconfirm ffmpeg ;;
    *) err "Descarga ffmpeg manualmente: https://ffmpeg.org/download.html" ;;
  esac
  ok "ffmpeg instalado"
else
  FFMPEG_VERSION=$(ffmpeg -version 2>&1 | head -1 | awk '{print $3}')
  ok "ffmpeg $FFMPEG_VERSION ya instalado"
fi

# ── Instalar jq (procesamiento JSON) ────────────────────────────────────────
title "5/7 · Instalando jq (procesamiento JSON)"

if ! command -v jq &>/dev/null; then
  say "jq no encontrado. Instalando..."
  case "$PKG_MANAGER" in
    brew) brew install jq ;;
    apt) sudo apt-get install -y jq ;;
    dnf) sudo dnf install -y jq ;;
    pacman) sudo pacman -S --noconfirm jq ;;
  esac
  ok "jq instalado"
else
  ok "jq ya instalado"
fi

# ── Instalar dependencias Python ─────────────────────────────────────────────
title "6/7 · Instalando dependencias Python (Whisper + utilidades)"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ -f "$SCRIPT_DIR/requirements.txt" ]]; then
  say "Instalando desde requirements.txt..."
  pip3 install --upgrade --user -r "$SCRIPT_DIR/requirements.txt" || pip3 install --upgrade -r "$SCRIPT_DIR/requirements.txt"
else
  say "requirements.txt no encontrado, instalando paquetes esenciales..."
  pip3 install --upgrade --user openai-whisper requests beautifulsoup4 lxml || \
  pip3 install --upgrade openai-whisper requests beautifulsoup4 lxml
fi

# Verificar Whisper
if command -v whisper &>/dev/null; then
  ok "Whisper instalado correctamente"
else
  warn "Whisper instalado pero no en PATH. Añade ~/.local/bin a tu PATH si es necesario."
fi

# ── Instalar plugin en ~/.claude/skills/ ─────────────────────────────────────
title "7/7 · Instalando plugin en ~/.claude/skills/"

CLAUDE_DIR="$HOME/.claude"
SKILLS_DIR="$CLAUDE_DIR/skills"
PLUGIN_NAME="zenith-crea-ofertas"
TARGET="$SKILLS_DIR/$PLUGIN_NAME"

mkdir -p "$SKILLS_DIR"

if [[ -L "$TARGET" ]] || [[ -d "$TARGET" ]]; then
  warn "Ya existe $TARGET. Hago backup..."
  mv "$TARGET" "$TARGET.backup.$(date +%Y%m%d-%H%M%S)"
fi

# Crear symlink (preferible · permite actualizar el plugin in-place)
ln -s "$SCRIPT_DIR" "$TARGET"
ok "Plugin enlazado en: $TARGET"

# ── Verificación final ───────────────────────────────────────────────────────
title "VERIFICACIÓN FINAL"

echo -e "${BOLD}Componentes:${NC}"
command -v python3 &>/dev/null && ok "Python 3 · $(python3 --version)" || err "Python 3 NO encontrado"
command -v pip3 &>/dev/null && ok "pip3 · $(pip3 --version | awk '{print $2}')" || err "pip3 NO encontrado"
command -v ffmpeg &>/dev/null && ok "ffmpeg · $(ffmpeg -version 2>&1 | head -1 | awk '{print $3}')" || err "ffmpeg NO encontrado"
command -v whisper &>/dev/null && ok "whisper · disponible" || warn "whisper · revisa PATH"
command -v jq &>/dev/null && ok "jq · $(jq --version)" || warn "jq NO encontrado"

[[ -L "$TARGET" ]] && ok "Plugin enlazado en $TARGET" || err "Plugin NO enlazado"

# ── Banner final ─────────────────────────────────────────────────────────────
echo
cat <<'DONE'

   ╔════════════════════════════════════════════════════════════════════════╗
   ║                                                                        ║
   ║                ✅  INSTALACIÓN COMPLETADA  ✅                           ║
   ║                                                                        ║
   ║   La skill `zenith-crea-ofertas` está LISTA para usarse en Claude Code.  ║
   ║                                                                        ║
   ║   Próximo paso:                                                        ║
   ║                                                                        ║
   ║      1. Abre Claude Code                                               ║
   ║      2. Escribe:  /zenith-crea-oferta                                    ║
   ║      3. Te lanza el discovery-master (5 preguntas)                     ║
   ║      4. En ~60-90 min tienes la oferta completa en HTML print-to-PDF   ║
   ║                                                                        ║
   ║   Comandos disponibles:                                                ║
   ║      /zenith-crea-oferta  ·  /one-belief  ·  /mecanismo  ·  /promesa     ║
   ║      /garantia  ·  /bonus  ·  /modulos  ·  /valor-percibido            ║
   ║      /schwartz-level  ·  /great-leads  ·  /audit-oferta                ║
   ║                                                                        ║
   ║   Docs:  README.md  ·  docs/QUICKSTART.md  ·  docs/ARCHITECTURE.md     ║
   ║                                                                        ║
   ╚════════════════════════════════════════════════════════════════════════╝

DONE

echo -e "${PURPLE}${BOLD}¡Dale caña!${NC} 🚀"
echo
