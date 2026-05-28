# 🚀 INSTALACIÓN · zenith-crea-ofertas

Sistema de instalación AUTOMÁTICA. Un comando y todo queda listo.

---

## ⚡ Instalación rápida (1 línea)

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/TU_USUARIO/zenith-crea-ofertas/main/install.sh | bash
```

O si ya tienes el plugin descargado:

```bash
cd "/ruta/al/plugin"
bash install.sh
```

### Windows (PowerShell · ejecutar como Administrador)

```powershell
iwr -useb https://raw.githubusercontent.com/TU_USUARIO/zenith-crea-ofertas/main/install.ps1 | iex
```

O si ya tienes el plugin descargado:

```powershell
cd "C:\ruta\al\plugin"
.\install.ps1
```

---

## 🛠️ Qué instala automáticamente

| Componente | Función | Tamaño |
|---|---|---|
| **Python 3.12** | Runtime para Whisper + utilidades | ~120 MB |
| **pip3** | Gestor de paquetes Python | (incluido con Python) |
| **ffmpeg** | Procesamiento audio/vídeo (Whisper lo necesita) | ~80 MB |
| **openai-whisper** | Transcripción de tus vídeos MP4 a knowledge files | ~500 MB (incluye modelo) |
| **jq** | Procesamiento JSON | ~2 MB |
| **requests + BeautifulSoup** | Para que los agentes consulten web cuando necesitan | ~5 MB |
| **El plugin** | Enlazado en `~/.claude/skills/zenith-crea-ofertas/` | ~1.5 MB |

**Total descarga aproximada: ~700 MB** (primera vez · Whisper es lo más pesado).

---

## 📋 Proceso paso a paso

El instalador hace 7 pasos:

1. **Detecta tu sistema operativo** (macOS / Linux distro / Windows)
2. **Instala el package manager** si no lo tienes (Homebrew en Mac / Chocolatey en Windows)
3. **Verifica/instala Python 3** (3.10+ requerido)
4. **Verifica/instala ffmpeg** (esencial para Whisper)
5. **Verifica/instala jq** (procesamiento JSON)
6. **Instala las dependencias Python** desde `requirements.txt` (Whisper + scraping web)
7. **Enlaza el plugin en `~/.claude/skills/`** para que Claude Code lo detecte

Al final hace una **verificación completa** de que todo está OK.

---

## ✅ Cómo verificar que está instalado

Después de instalar, abre una terminal nueva y ejecuta:

```bash
# Verifica Python
python3 --version
# Debe mostrar: Python 3.10+ (o superior)

# Verifica Whisper
whisper --version
# Debe mostrar: 20231117 (o superior)

# Verifica ffmpeg
ffmpeg -version | head -1
# Debe mostrar: ffmpeg version X.X.X

# Verifica jq
jq --version
# Debe mostrar: jq-1.6 (o superior)

# Verifica plugin enlazado
ls -la ~/.claude/skills/zenith-crea-ofertas
# Debe mostrar el enlace simbólico al plugin
```

Si TODOS muestran versiones, **está listo**.

---

## 🚀 Primer uso

Abre **Claude Code** y escribe:

```
/zenith-crea-oferta
```

El agente padre `zenith-crea-ofertas` arrancará el discovery (5 preguntas) y en ~60-90 min tendrás la oferta completa.

---

## 🔧 Instalación manual (si los scripts fallan)

### macOS

```bash
# 1. Homebrew (si no lo tienes)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Dependencias
brew install python@3.12 ffmpeg jq

# 3. Whisper
pip3 install --upgrade openai-whisper requests beautifulsoup4 lxml

# 4. Enlazar plugin
mkdir -p ~/.claude/skills
ln -s "$(pwd)" ~/.claude/skills/zenith-crea-ofertas
```

### Linux (Ubuntu/Debian)

```bash
# 1. Dependencias del sistema
sudo apt-get update
sudo apt-get install -y python3 python3-pip ffmpeg jq

# 2. Whisper
pip3 install --user --upgrade openai-whisper requests beautifulsoup4 lxml

# 3. Enlazar plugin
mkdir -p ~/.claude/skills
ln -s "$(pwd)" ~/.claude/skills/zenith-crea-ofertas
```

### Linux (Fedora/RHEL)

```bash
sudo dnf install -y python3 python3-pip ffmpeg jq
pip3 install --user --upgrade openai-whisper requests beautifulsoup4 lxml
mkdir -p ~/.claude/skills
ln -s "$(pwd)" ~/.claude/skills/zenith-crea-ofertas
```

### Windows (PowerShell · admin)

```powershell
# 1. Chocolatey (si no lo tienes)
Set-ExecutionPolicy Bypass -Scope Process -Force
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 2. Dependencias
choco install python ffmpeg jq -y

# 3. Whisper
python -m pip install --upgrade openai-whisper requests beautifulsoup4 lxml

# 4. Enlazar plugin
New-Item -ItemType Directory -Force -Path "$env:USERPROFILE\.claude\skills"
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.claude\skills\zenith-crea-ofertas" -Target (Get-Location)
```

---

## 🐛 Troubleshooting

### "command not found: whisper"

PATH no incluye `~/.local/bin`. Añádelo:

```bash
# macOS / Linux (bash)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# macOS (zsh, default en Mac moderno)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

### "ffmpeg not found"

Verifica con `which ffmpeg`. Si no aparece, reinstala:
- Mac: `brew reinstall ffmpeg`
- Linux: `sudo apt-get install --reinstall ffmpeg`
- Windows: `choco install ffmpeg --force`

### Whisper extremadamente lento

Es normal en CPU. Para acelerar:
- Usa modelo más pequeño: `whisper file.mp4 --model tiny` (peor calidad, 10× más rápido)
- Si tienes GPU NVIDIA: `pip install torch --index-url https://download.pytorch.org/whl/cu118`
- En Mac M1/M2/M3: Whisper usa el chip Apple Silicon automáticamente si tienes PyTorch reciente

### Permiso denegado al enlazar plugin

```bash
sudo chown -R $(whoami) ~/.claude
```

### Plugin no aparece en Claude Code

1. Verifica el enlace: `ls -la ~/.claude/skills/zenith-crea-ofertas`
2. Reinicia Claude Code
3. Verifica que el `SKILL.md` existe: `cat ~/.claude/skills/zenith-crea-ofertas/SKILL.md | head`

---

## 📦 Desinstalación

```bash
# Eliminar plugin enlazado
rm ~/.claude/skills/zenith-crea-ofertas

# (Opcional) eliminar Whisper si no lo usas para otra cosa
pip3 uninstall openai-whisper

# (Opcional) eliminar ffmpeg si no lo usas para otra cosa
brew uninstall ffmpeg          # Mac
sudo apt-get remove ffmpeg     # Linux
choco uninstall ffmpeg         # Windows
```

---

## 🔄 Actualización

Como el plugin se instala como **symlink** al directorio del repo, basta con:

```bash
cd /ruta/al/plugin
git pull
```

Y los cambios se reflejan inmediatamente sin reinstalar nada.

---

## 📞 Soporte

- Issues: GitHub Issues
- Email: `impactodigitalformacionbrasil@gmail.com`
- Documentación adicional: [README.md](README.md) · [QUICKSTART.md](docs/QUICKSTART.md) · [ARCHITECTURE.md](docs/ARCHITECTURE.md)

---

*¿Funcionó? Pásate por el discovery: `/zenith-crea-oferta` 🚀*
