# CHANGELOG · zenith-crea-ofertas · Método Zenith™

Todos los cambios notables del plugin.

Formato basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.1.0/) · adhiere a [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0] · 2026-05-28 · ✨ MÉTODO ZENITH™ + AVATAR DEEP

### 🎨 Branding · Método Zenith™ aplicado

- **Nueva paleta visual** (sustituye morado/ámbar):
  - Cian #00E5CF · primario
  - Purple #B845FF · acento
  - Dark #050510 · background
  - Gradiente maestro `cian → purple`
- **Tipografías**: Fraunces (display · serif italics) + Inter + JetBrains Mono
- **Favicon SVG montaña Zenith** inline en todos los HTMLs
- **HUD Zenith™** sticky top en cada HTML (logo + etapa + Live badge)
- **Footer Zenith™** obligatorio en cada HTML con tagline + print/drive tips
- Tagline oficial: *"De la cima se ve mejor el avatar."*

### 🧠 Conocimiento INTERNALIZADO en cada agente

- Los **33 agentes existentes** ahora tienen sección `🧠 CONOCIMIENTO INTERNALIZADO` con TODO el conocimiento crítico dentro del cuerpo del agente
- **NO releen knowledge externos** en ejecución normal (ahorro masivo de tokens)
- Total: ~8.000 líneas de knowledge internalizado distribuidas

### ⚡ Optimización de costes (cada agente con su `model`)

- **Opus**: agentes estratégicos / master / críticos (12 agentes)
- **Sonnet**: generativo con razonamiento (23 agentes)
- **Haiku**: extractivo / rutinario (6 agentes)
- Pipeline completo: **100-180k tokens** estimados (vs 300-500k sin optimización)
- Cada agente declara TAMAÑO MÁXIMO de output
- Reuso de outputs JSON · NO regeneración

### 🆕 8 nuevos agentes (avatar + research + ángulos + competencia)

| # | Agente | Función |
|---|--------|---------|
| 34 | `zenith-quick-discovery` | Entry point Zenith · 5 preguntas + confirmación explícita antes de ejecutar |
| 35 | `avatar-deep-psicologo` | Avatar completo · psicólogo · día en la vida · lenguaje · 11 componentes |
| 36 | `research-reddit` | Investigación Reddit · 30+ frases textuales del avatar |
| 37 | `research-youtube` | Top canales + vídeos + comentarios virales |
| 38 | `avatar-mapa-empatia` | Mapa de empatía (siente/piensa/ve/hace) antes vs después |
| 39 | `angulos-architect` | Genera 5-10 ángulos con la definición exacta del autor + sub-ángulos |
| 40 | `competidor-spy` | Biblioteca Anuncios Meta + competidores principales + GAP |
| 41 | `deal-makers-extractor` | 10 deal-makers + 10 deal-breakers personalizados al avatar |

### 🆕 5 nuevos templates HTML con branding Zenith

- `12-avatar-deep.html` · avatar completo (output del 35)
- `13-research-mercado.html` · Reddit + YouTube combinado
- `14-angulos.html` · ángulos visualizados con definición del autor
- `15-competencia.html` · análisis competidores
- `16-deal-makers.html` · deal-makers vs deal-breakers

### 🆕 5 nuevos slash commands

- `/zenith-crea-oferta` · entry point principal Zenith (con confirmación)
- `/avatar-deep` · avatar completo + mapa empatía + deal-makers
- `/research-mercado` · Reddit + YouTube en paralelo
- `/angulos` · ángulos arquitectos
- `/competidor` · competidor spy

### 🔄 Refactor 13 HTMLs existentes

- Variables CSS migradas a paleta Zenith
- Fuentes Space Grotesk → Fraunces
- Favicon SVG montaña añadido en cada HTML
- Footer Zenith™ obligatorio reemplaza footer anterior
- `@media print` reforzado con `print-color-adjust: exact`

### 📚 Knowledge

- 12 frameworks canónicos (sin cambios)
- 8 transcripciones del autor (sin cambios)
- + nuevos casos canónicos en agentes nuevos (Bumbum, Apex, Monjaro, Yoga silla, Blasting)

### 📦 plugin.json actualizado

- Versión 2.0.0
- Componentes: 41 agentes · 16 commands · 18 templates · 20 knowledge
- Sección `model_strategy` con justificación por agente
- Sección `optimization_rules` con las 6 reglas de ahorro de tokens
- Sección `pipeline_zenith_v2` con tokens estimados por etapa

### 🌟 Filosofía Zenith™ añadida

- "De la cima se ve mejor el avatar"
- Confirmación explícita antes de ejecutar pipeline
- Avatar PROFUNDO con investigación real (Reddit + YouTube)
- Optimización de costes para el cliente sin perder calidad

---

## [1.0.0] · 2026-05-27 · LANZAMIENTO INICIAL

### Añadido

#### Skill padre
- `SKILL.md` orquestador maestro del pipeline de 13 pasos

#### 26 sub-agentes especializados

Bloques: Discovery + Punto A→B + One Belief + Mecanismo + Features→Benefits→Desires + Promesa + Garantía + Módulos/Clases + Bonus + Valor Percibido + Frameworks + Master + Output + Auditor.

#### 11 Slash commands originales

`/zenith-crea-oferta` · `/one-belief` · `/mecanismo` · `/promesa` · `/garantia` · `/bonus` · `/modulos` · `/valor-percibido` · `/schwartz-level` · `/great-leads` · `/audit-oferta`

#### 12 Knowledge files

Schwartz × 2 + Masterson/Forde + Bencivenga + Evaldo + Todd Brown + Identidad/Anti-Identidad + Halbert + Sugarman + Cialdini + Maslow/Robbins/Bauer + Brunson.

#### 12 HTML templates print-to-PDF

`_design-system` (deprecado en v2.0.0) + 00-brief → 11-auditoria.

#### 5 Examples canónicos

Monjaro de pobre · Bumbum na Nuca · Yoga en silla · Código Apex · Método Blasting.

#### Documentación

README.md jerarquizado · LICENSE MIT · CHANGELOG · plugin.json · .gitignore.

#### 8 transcripciones whisper

8 vídeos MP4 del autor transcritos con Whisper modelo small (español) e incorporados al knowledge.

### 7 agentes adicionales (v1.1.0 dentro de la misma fecha)

27 headline-master · 28 fascinations-architect · 29 stack-slide-architect · 30 anclaje-precio · 31 upsell-downsell-architect · 32 risk-reversal-master · 33 autoridad-builder.

### Sistema de auto-instalación (v1.1.0)

- `install.sh` (Mac/Linux)
- `install.ps1` (Windows)
- `requirements.txt`
- `INSTALL.md`
- `/setup-crea-ofertas` slash command

---

## [Roadmap futuro · v3.0.0]

### Planeado

- [ ] Agente `email-sequence-architect` · secuencia post-compra (7 emails)
- [ ] Agente `vsl-script-master` · guion completo VSL
- [ ] Agente `criativos-generator` · 3 hooks + 1 body
- [ ] Agente `testimonios-architect` · before/after/bridge
- [ ] Template HTML `17-email-sequence.html`
- [ ] Template HTML `18-vsl-script.html`
- [ ] Integración con Hotmart (checkout config)
- [ ] Integración con Meta Ads (publicación automática)
- [ ] Multi-idioma (en, pt-BR)
- [ ] Dashboard visual de progreso del pipeline

---

*Hecho con Método Zenith™ · "De la cima se ve mejor el avatar"*
