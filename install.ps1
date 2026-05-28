# ════════════════════════════════════════════════════════════════════════════
# zenith-crea-ofertas · INSTALADOR AUTOMÁTICO para WINDOWS (PowerShell)
# ════════════════════════════════════════════════════════════════════════════
# Instala TODO lo necesario:
# - Chocolatey (package manager Windows)
# - Python 3 + pip
# - ffmpeg
# - openai-whisper
# - jq
# - Plugin en %USERPROFILE%\.claude\skills\
# ════════════════════════════════════════════════════════════════════════════

$ErrorActionPreference = "Stop"

# ── Helpers ─────────────────────────────────────────────────────────────────
function Say   { Write-Host "▸ $args" -ForegroundColor Cyan }
function Ok    { Write-Host "✓ $args" -ForegroundColor Green }
function Warn  { Write-Host "⚠ $args" -ForegroundColor Yellow }
function Err   { Write-Host "✕ $args" -ForegroundColor Red; exit 1 }
function Title { Write-Host ""; Write-Host "── $args ──" -ForegroundColor Magenta; Write-Host "" }

# ── Banner ──────────────────────────────────────────────────────────────────
Clear-Host
Write-Host @"

   CREA OFERTAS 1% · INSTALADOR AUTOMÁTICO v1.0 (Windows)
   ────────────────────────────────────────────────────────

"@ -ForegroundColor Magenta

# ── Verificar admin ──────────────────────────────────────────────────────────
$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
if (-not $isAdmin) {
  Warn "Recomendado ejecutar como administrador para instalar dependencias del sistema."
  Warn "Continuando en modo usuario (algunos paquetes pueden fallar)."
}

# ── 1/6 · Chocolatey ────────────────────────────────────────────────────────
Title "1/6 · Verificando Chocolatey"

if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
  Say "Chocolatey no encontrado. Instalando..."
  Set-ExecutionPolicy Bypass -Scope Process -Force
  [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
  Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
  Ok "Chocolatey instalado"
} else {
  Ok "Chocolatey disponible: $(choco --version)"
}

# ── 2/6 · Python ────────────────────────────────────────────────────────────
Title "2/6 · Verificando Python 3"

if (-not (Get-Command python -ErrorAction SilentlyContinue)) {
  Say "Python no encontrado. Instalando..."
  choco install python -y
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}
Ok "Python: $(python --version)"

# ── 3/6 · ffmpeg ────────────────────────────────────────────────────────────
Title "3/6 · Verificando ffmpeg"

if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
  Say "ffmpeg no encontrado. Instalando..."
  choco install ffmpeg -y
  $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")
}
Ok "ffmpeg disponible"

# ── 4/6 · jq ────────────────────────────────────────────────────────────────
Title "4/6 · Verificando jq"

if (-not (Get-Command jq -ErrorAction SilentlyContinue)) {
  Say "jq no encontrado. Instalando..."
  choco install jq -y
}
Ok "jq disponible"

# ── 5/6 · Dependencias Python ───────────────────────────────────────────────
Title "5/6 · Instalando Whisper y deps Python"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$reqFile = Join-Path $scriptDir "requirements.txt"

if (Test-Path $reqFile) {
  Say "Instalando desde requirements.txt..."
  python -m pip install --upgrade --user -r $reqFile
} else {
  Say "Instalando paquetes esenciales..."
  python -m pip install --upgrade --user openai-whisper requests beautifulsoup4 lxml
}

if (Get-Command whisper -ErrorAction SilentlyContinue) {
  Ok "Whisper instalado"
} else {
  Warn "Whisper instalado pero puede no estar en PATH. Reinicia PowerShell."
}

# ── 6/6 · Plugin en ~/.claude/skills/ ───────────────────────────────────────
Title "6/6 · Instalando plugin en %USERPROFILE%\.claude\skills\"

$claudeDir = Join-Path $env:USERPROFILE ".claude"
$skillsDir = Join-Path $claudeDir "skills"
$pluginName = "zenith-crea-ofertas"
$target = Join-Path $skillsDir $pluginName

New-Item -ItemType Directory -Force -Path $skillsDir | Out-Null

if (Test-Path $target) {
  Warn "Ya existe $target. Backup..."
  $backup = "$target.backup.$(Get-Date -Format 'yyyyMMdd-HHmmss')"
  Rename-Item $target $backup
}

# Symlink (requiere admin) o copia
try {
  New-Item -ItemType SymbolicLink -Path $target -Target $scriptDir -ErrorAction Stop | Out-Null
  Ok "Plugin enlazado (symlink): $target"
} catch {
  Warn "No pude crear symlink (necesitas admin). Copiando archivos..."
  Copy-Item -Path $scriptDir -Destination $target -Recurse
  Ok "Plugin copiado: $target"
}

# ── Verificación final ──────────────────────────────────────────────────────
Title "VERIFICACIÓN FINAL"

if (Get-Command python -ErrorAction SilentlyContinue) { Ok "Python: $(python --version)" } else { Err "Python no encontrado" }
if (Get-Command ffmpeg -ErrorAction SilentlyContinue) { Ok "ffmpeg disponible" } else { Err "ffmpeg no encontrado" }
if (Get-Command whisper -ErrorAction SilentlyContinue) { Ok "whisper disponible" } else { Warn "whisper · revisa PATH" }
if (Get-Command jq -ErrorAction SilentlyContinue) { Ok "jq disponible" } else { Warn "jq no encontrado" }
if (Test-Path $target) { Ok "Plugin instalado en $target" } else { Err "Plugin NO instalado" }

# ── Banner final ────────────────────────────────────────────────────────────
Write-Host @"

   ╔════════════════════════════════════════════════════════════════════════╗
   ║                                                                        ║
   ║                ✅  INSTALACIÓN COMPLETADA  ✅                           ║
   ║                                                                        ║
   ║   La skill 'zenith-crea-ofertas' está LISTA para usarse en Claude Code.  ║
   ║                                                                        ║
   ║   Próximo paso:                                                        ║
   ║                                                                        ║
   ║      1. Reinicia PowerShell (importante para PATH)                     ║
   ║      2. Abre Claude Code                                               ║
   ║      3. Escribe:  /zenith-crea-oferta                                    ║
   ║                                                                        ║
   ╚════════════════════════════════════════════════════════════════════════╝

   ¡Dale caña! 🚀

"@ -ForegroundColor Magenta
