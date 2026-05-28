# Zenith Crea Ofertas™ · Plugin Claude Code

<div align="center">

<img src="assets/zenith-banner.svg" alt="Zenith Crea Ofertas™" width="100%"/>

[![Version](https://img.shields.io/badge/version-2.0.0-B845FF?style=for-the-badge)](https://github.com/zenithmetodo/zenith-crea-ofertas/releases/tag/v2.0.0) [![Brand](https://img.shields.io/badge/Zenith%E2%84%A2-00E5CF?style=for-the-badge)]() [![License](https://img.shields.io/badge/license-MIT-yellow?style=for-the-badge)](LICENSE)

[![Opus 4.7](https://img.shields.io/badge/Opus%204.7-1M%20ctx-blueviolet)]() [![Sonnet](https://img.shields.io/badge/Sonnet%204.6-medium-blue)]() [![Haiku](https://img.shields.io/badge/Haiku%204.5-fast-cyan)]() [![Tokens](https://img.shields.io/badge/tokens-optimized%2060--70%25-green)]() [![Spanish](https://img.shields.io/badge/lang-es--ES-red)]() [![Topics](https://img.shields.io/badge/topics-20-purple)]()

**`/zenith-crea-ofertas:zenith-quick-discovery` · 41 agentes · 17 commands · 18 HTMLs print-to-PDF · 20 knowledge files**

</div>


Sistema completo de agentes Claude Code para construir **OFERTAS TOP 1%** de alto valor percibido en español de España. **Creado por Josep · Método Zenith™** a partir de los frameworks canónicos del Direct Response (Schwartz · Masterson · Bencivenga · Evaldo · Todd Brown · Hormozi · Brunson · Halbert · Sugarman · Cialdini) + transcripciones operativas del autor.

Un orquestador padre coordina **41 sub-agentes especializados** (Opus/Sonnet/Haiku optimizado) + **20 knowledge files** + **18 templates HTML** print-to-PDF + Drive-friendly. Cada agente domina una pieza del puzzle: desde el avatar deep (psicólogo + Reddit + YouTube) hasta la auditoría de 200+ ítems de la oferta final.

> *"De la cima se ve mejor el avatar."*

---

## Instalación

```bash
claude /plugin install https://github.com/zenithmetodo/zenith-crea-ofertas
```

Después de instalar:

```bash
# El orquestador padre — punto de entrada recomendado
/zenith-crea-ofertas:zenith-quick-discovery

# O lanza el pipeline completo
/zenith-crea-ofertas:zenith-crea-oferta

# O invoca un agente concreto directamente
@agent-zenith-crea-ofertas:one-belief-creator
@agent-zenith-crea-ofertas:avatar-deep-psicologo
@agent-zenith-crea-ofertas:angulos-architect
```

### Para transcribir vídeos del usuario (opcional · requiere Whisper)

```bash
bash install.sh        # macOS / Linux
.\install.ps1          # Windows (PowerShell admin)
```

Esto instala Python + ffmpeg + Whisper + jq + BeautifulSoup automáticamente.

---

## Arquitectura

<div align="center">

<img src="assets/architecture-diagram.svg" alt="Arquitectura del plugin Zenith Crea Ofertas" width="100%"/>

*Un orquestador padre coordina los 41 sub-agentes especializados, agrupados por bloque funcional.*

</div>

<details>
<summary>Ver diagrama ASCII (alternativa)</summary>

```
┌────────────────────────────────────────────────────────────────────┐
│                  zenith-quick-discovery (PADRE)                    │
│  5 preguntas críticas + confirmación obligatoria antes de ejecutar │
│  Pipeline 17 etapas · 100-180k tokens · optimización 60-70%        │
└────────────────────────────────────────────────────────────────────┘
                                 │
   ┌──────────┬────────┬─────────┴────────┬────────────┬──────────┐
   ▼          ▼        ▼                  ▼            ▼          ▼
AVATAR     RESEARCH  COMPETENCIA     ONE BELIEF    MECANISMO   OFERTA
   │          │         │                │             │           │
┌──┴───┐  ┌───┴──┐  ┌───┴────┐    ┌──────┴────┐ ┌──────┴──┐  ┌────┴───┐
│deep  │  │reddit│  │spy meta│    │ creator   │ │ problema│  │master  │
│mapa  │  │youtube│ │ad-libry│    │ identidad │ │ solucion│  │auditor │
│deal  │  └──────┘  └────────┘    │ oportunidad│ │ chicle  │  │headline│
│makers│                          │ angulos    │ │ super-est│ │fascina │
└──────┘                          └───────────┘ └──────────┘  │stack   │
                                                              │valor   │
                                                              │bonus   │
                                                              │garantía│
                                                              │módulos │
                                                              │upsell  │
                                                              │autorid │
                                                              └────────┘
```

</details>

---

## Pipeline completo (17 etapas)

<div align="center">

<img src="assets/pipeline-diagram.svg" alt="Pipeline 17 etapas Zenith Crea Ofertas" width="100%"/>

*Cada etapa con sus agentes y output HTML correspondiente.*

</div>

| Etapa | Bloque | Agentes implicados | Output HTML |
|---|---|---|---|
| **00** | Quick Discovery | `zenith-quick-discovery` | `00-brief.html` |
| **00b** | Avatar deep | `avatar-deep-psicologo` + `avatar-mapa-empatia` + `deal-makers-extractor` | `12-avatar-deep.html` |
| **00c** | Research mercado | `research-reddit` + `research-youtube` (paralelo) | `13-research-mercado.html` |
| **00d** | Competencia | `competidor-spy` | `15-competencia.html` |
| **01** | Punto A → Punto B | `punto-a-b-architect` | `01-punto-a-b.html` |
| **02** | One Belief (4 variantes) | `one-belief-creator` + `identidad-anti-identidad` + `nueva-oportunidad` | `02-one-belief.html` |
| **03** | Mecanismo | `mecanismo-problema` + `mecanismo-solucion` + `nombre-chicle` + `super-estructura` | `03-mecanismo.html` |
| **03b** | Ángulos | `angulos-architect` | `14-angulos.html` |
| **04** | Features → Benefits → Desires | `caracteristicas-extractor` + `beneficios-extractor` + `deseos-extractor` + `intangibles-extractor` | `04-features-benefits-desires.html` |
| **05** | Promesa | `promesa-ganadora` | `05-promesa.html` |
| **06** | Garantía + Risk Reversal | `garantia-impresionante` + `objeciones-rotas` + `risk-reversal-master` | `06-garantia.html` |
| **07** | Módulos + Clases | `modulos-namer` + `clases-namer` | `07-modulos-clases.html` |
| **08** | Bonus | `bonus-architect` + `bonus-irresistible` | `08-bonus.html` |
| **09** | Valor percibido | `valor-percibido` + `anclaje-precio` + `stack-slide-architect` | `09-valor-percibido.html` |
| **09b** | Upsells | `upsell-downsell-architect` | (integra en oferta) |
| **09c** | Autoridad | `autoridad-builder` | (integra en oferta) |
| **10** | Consciencia + Lead | `schwartz-consciousness` + `great-leads-masterson` | (integra en oferta + auditoría) |
| **10b** | Headline + Fascinations | `headline-master` + `fascinations-architect` | (integra en oferta) |
| **11** | Oferta completa | `offer-master` | **`10-oferta-completa.html`** ← la página de ventas |
| **12** | Auditoría 200+ | `auditor-completo` | `11-auditoria.html` |

---

## Agentes incluidos (41)

### Orquestador
| Agente | Model | Qué hace |
|---|---|---|
| `zenith-quick-discovery` | opus | **Padre v2.0**. Hace 5 preguntas críticas + pide confirmación explícita antes de lanzar pipeline completo. Punto de entrada Zenith. |
| `discovery-master` | opus | Discovery v1.0 más extenso (5+5 preguntas). Para casos que requieren brief profundo. |

### Avatar + Research + Competencia
| Agente | Model | Qué hace |
|---|---|---|
| `avatar-deep-psicologo` | opus | Avatar profundo con 11 componentes (psicológico/demográfico/identitario). Genera archetype name + día en la vida + lenguaje literal. |
| `avatar-mapa-empatia` | sonnet | Mapa de empatía (siente/piensa/ve/hace) antes vs después de conocer la oferta. |
| `research-reddit` | opus | Investigación deep en Reddit · 30-50 frases textuales del avatar · subreddits mapeados · upvotes reales. |
| `research-youtube` | opus | Top creadores del nicho + vídeos virales + comentarios + mecanismos ya nombrados en el mercado. |
| `competidor-spy` | sonnet | Audit competencia · Biblioteca de Anuncios Meta · GAP competitivo identificado. |
| `deal-makers-extractor` | sonnet | 10 deal-makers (lo que SÍ hace comprar) + 10 deal-breakers (lo que LE HACE HUIR). |

### Punto A → Punto B + One Belief
| Agente | Model | Qué hace |
|---|---|---|
| `punto-a-b-architect` | sonnet | Transformación antes vs después · 5 dimensiones (situación/emoción/comportamiento/identidad/imagen mental) + tiempo específico. |
| `one-belief-creator` | opus | Genera SIEMPRE 4 variantes del One Belief Statement aplicando **Fórmula de Evaldo Albuquerque · adaptada por Joseph Moreno**. V1 Identidad / V2 Anti-identidad / V3 Nueva oportunidad / V4 Combo. |
| `identidad-anti-identidad` | sonnet | Matriz dual identidad aspiracional vs anti-identidad rechazada con 8 preguntas operativas. |
| `nueva-oportunidad` | sonnet | Genera la "nueva oportunidad" del One Belief (V3) según las 5 categorías Evaldo. |

### Mecanismo + Ángulos
| Agente | Model | Qué hace |
|---|---|---|
| `mecanismo-problema` | opus | Villano concreto del problema (Unique Problem Mechanism · Todd Brown). Aplica 4 preguntas de competencia. |
| `mecanismo-solucion` | opus | Cómo deseable de la solución (Unique Solution Mechanism). Aplica 12 preguntas + 3 reglas innegociables (Joseph Moreno). |
| `nombre-chicle` | sonnet | Naming del mecanismo · 10 nombres en 7 categorías · 2-3 palabras misteriosas que se pegan a la memoria. |
| `super-estructura` | sonnet | Stage 5 sofisticación · super-estructura cultural (celebridad/etnicidad/ocupación/marca) que amplifica el mecanismo. |
| `angulos-architect` | opus | Genera 5-10 **ángulos** con la **definición exacta del autor**: *"razón distinta de por qué me comprarían"* + 3 ingredientes (tipo concreto + creencia específica + reconocimiento) + sub-ángulos. |

### Features · Benefits · Desires
| Agente | Model | Qué hace |
|---|---|---|
| `caracteristicas-extractor` | haiku | Lista exhaustiva de características tangibles · 6 categorías (contenido/entregables/interacción/formato/duración/garantía). |
| `beneficios-extractor` | haiku | Conversión característica → beneficio con fórmula puente "y eso significa que tú…" + 17 power words Halbert. |
| `deseos-extractor` | sonnet | Ejercicio maestro 3 preguntas en cadena · mapeo Maslow + Robbins 6 needs + Bauer 8 fears + imagen mental. |
| `intangibles-extractor` | haiku | 15-25 intangibles emocionales · 10 dominios + activador físico. |

### Promesa + Garantía + Objeciones
| Agente | Model | Qué hace |
|---|---|---|
| `promesa-ganadora` | opus | Fórmula 7 componentes de Noemí (Avatar + Probabilidad + Resultado + Tiempo + Sin dolor + Aunque objeción + Garantía) · test del ascensor · 3 versiones. |
| `garantia-impresionante` | sonnet | 11 tipos canónicos de garantía · nombre atractivo · texto exacto · decisión según tasa de éxito real. |
| `objeciones-rotas` | sonnet | Cataloga 8-15 objeciones del avatar · mapeo a vehículo de ruptura (bullet/FAQ/bonus/garantía/testimonio). |
| `risk-reversal-master` | sonnet | Stack apilado 3-7 capas de risk reversal estilo Hormozi · más allá de garantía única. |

### Estructura del programa
| Agente | Model | Qué hace |
|---|---|---|
| `modulos-namer` | haiku | Naming módulos con fórmula carta-de-ventas-invisible (Resultado × Identificación × Objeción) con paréntesis obligatorio. |
| `clases-namer` | haiku | Naming clases con fórmula carta-de-ventas-invisible (Elemento × Identificación × Objeción). |

### Bonus
| Agente | Model | Qué hace |
|---|---|---|
| `bonus-architect` | sonnet | 6 categorías de bonus (Infalibles + Antes + Después + Acortar + Romper objeciones + Última hora) · 14 bonus mínimo · 8 reglas del bonus infalible. |
| `bonus-irresistible` | sonnet | Plantilla 6 componentes (Nombre sexy + Obstáculo + Beneficio + Pruebas + Valor real + Urgencia) · regla "justificar por VALOR no por precio". |

### Valor percibido + Cierre
| Agente | Model | Qué hace |
|---|---|---|
| `valor-percibido` | opus | Fórmula maestra **Bencivenga**: Beneficio + Credibilidad − Costo. 4 palancas + stack desglosado. |
| `anclaje-precio` | sonnet | 6 técnicas de anclaje de precio (Ariely) · desdoblamiento ("0,80€/día") · contraste con competencia. |
| `stack-slide-architect` | sonnet | Stack Slide canónico Brunson · 7-12 ítems con precios desglosados · valor total ≥ 10× precio. |
| `upsell-downsell-architect` | sonnet | Order bumps + 1-click upsells + downsells · aumenta AOV +30-100% post-checkout. |
| `autoridad-builder` | sonnet | Construye credibilidad del experto · 7 palancas autoridad + 5 simpatía · combinación 70/30. |

### Consciencia + Lead + Headline
| Agente | Model | Qué hace |
|---|---|---|
| `schwartz-consciousness` | sonnet | Audita nivel de consciencia (5 niveles) + stage de sofisticación (5 stages) pieza por pieza. |
| `great-leads-masterson` | sonnet | Elige tipo de lead correcto · 6 opciones (Offer/Promise/Problem-Solution/Big Secret/Proclamation/Story) según Schwartz × Stage. |
| `headline-master` | opus | Genera EL headline definitivo · 27 fórmulas Halbert/Caples/Ogilvy · 4U (Útil/Urgente/Único/Ultraespecífico). |
| `fascinations-architect` | sonnet | 25-40 bullets/fascinations hipnóticos · 30 fórmulas canónicas · 4 tipos Stefan Georgi. |

### Master + Output + Auditor
| Agente | Model | Qué hace |
|---|---|---|
| `offer-master` | opus | **ENSAMBLA** la oferta completa final · Hook-Story-Offer + Stack Slide + 17 secciones obligatorias · activa ≥8 triggers Sugarman + ≥5 principios Cialdini. |
| `output-architect` | haiku | META-agente. Convierte JSON de cualquier agente en HTML estético usando los templates Zenith. |
| `auditor-completo` | opus | Auditor maestro · 200+ ítems en 12 bloques · score global · roadmap rojo/ámbar/verde · veredicto luz-verde/amarilla/roja para tráfico. |

---

## Knowledge — frameworks canónicos del Direct Response

La carpeta `knowledge/` contiene **12 frameworks canónicos** + **8 transcripciones de vídeos del autor**. Cada agente tiene este conocimiento **internalizado** desde el origen (NO relee archivos en ejecución → ahorro masivo de tokens).

### Frameworks canónicos
| Archivo | Framework |
|---|---|
| `schwartz-5-niveles-consciencia.md` | Eugene Schwartz · Breakthrough Advertising (1966) |
| `schwartz-5-stages-sofisticacion.md` | Eugene Schwartz · Stages of Sophistication |
| `masterson-forde-great-leads.md` | Michael Masterson + John Forde · Great Leads (2011) · 6 tipos |
| `bencivenga-formula-valor-percibido.md` | Gary Bencivenga · Beneficio + Credibilidad − Costo |
| `evaldo-albuquerque-one-belief.md` | Evaldo Albuquerque · The 16-Word Sales Letter (2019) |
| `todd-brown-mecanismo-unico.md` | Todd Brown · E5 Method · Unique Mechanism |
| `identidad-vs-anti-identidad.md` | Síntesis canónica · dualidad operativa |
| `halbert-power-words.md` | Gary Halbert · Boron Letters · 17 power words + 4 leyes |
| `sugarman-30-triggers.md` | Joseph Sugarman · 30 Psychological Triggers + Sliding Scale |
| `cialdini-7-principios.md` | Robert Cialdini · Influence + Pre-Suasion · 7 principios |
| `maslow-robbins-bauer-deseos.md` | Maslow + Tony Robbins + Joseph Bauer · deseos profundos |
| `brunson-hook-story-offer.md` | Russell Brunson · Hook-Story-Offer + Stack Slide |

### Transcripciones del autor (Whisper)
| Archivo | Tema |
|---|---|
| `transcripcion-video-one-belief.md` | Define tu One Belief (Joseph + Noemí) |
| `transcripcion-video-nueva-oportunidad.md` | Identifica tu Nueva Oportunidad (Joseph) |
| `transcripcion-video-mecanismo.md` | Tu Nuevo Mecanismo (Joseph) |
| `transcripcion-video-punto-a-b.md` | Del Punto A al Punto B (Noemí) |
| `transcripcion-video-caracteristicas-beneficios.md` | Define las Características (Joseph) |
| `transcripcion-video-promesa.md` | Construye una Promesa Ganadora (Noemí) |
| `transcripcion-video-carta-ventas-invisible.md` | Carta de Ventas Invisible (Joseph) |
| `transcripcion-video-bonus.md` | Creación de Bonus 13min (Joseph) |

---

## Templates HTML — print-to-PDF + Drive-friendly

La carpeta `templates/` contiene **18 plantillas HTML estéticas** con branding Zenith™ (cian #00E5CF + purple #B845FF + Fraunces). Cada HTML:

- ✅ **Imprimible a PDF** con `Cmd+P` · estética preservada al 100%
- ✅ **Drive-friendly** · se sube a Google Drive sin perder branding
- ✅ **Mobile responsive** · funciona en cualquier pantalla
- ✅ **Favicon montaña Zenith SVG inline**
- ✅ **Footer obligatorio** "Hecho con Método Zenith™"

| Template | Etapa pipeline | Agente que lo genera |
|---|---|---|
| `_zenith-brand.html` | Design system maestro | (referencia para todos) |
| `00-brief.html` | Discovery | `discovery-master` / `zenith-quick-discovery` |
| `01-punto-a-b.html` | Transformación A→B | `punto-a-b-architect` |
| `02-one-belief.html` | One Belief 4 variantes | `one-belief-creator` |
| `03-mecanismo.html` | Mecanismo P+S + nombre chicle | `mecanismo-solucion` |
| `04-features-benefits-desires.html` | Cadena F→B→D | `caracteristicas-extractor` (líder) |
| `05-promesa.html` | Promesa ganadora | `promesa-ganadora` |
| `06-garantia.html` | Garantía + objeciones + risk reversal | `garantia-impresionante` |
| `07-modulos-clases.html` | Estructura programa | `modulos-namer` + `clases-namer` |
| `08-bonus.html` | Stack de bonus | `bonus-architect` |
| `09-valor-percibido.html` | Fórmula Bencivenga + anclajes + stack slide | `valor-percibido` |
| `10-oferta-completa.html` | **Oferta final ensamblada** | `offer-master` |
| `11-auditoria.html` | Score + checklist + roadmap | `auditor-completo` |
| `12-avatar-deep.html` | Avatar profundo + mapa empatía | `avatar-deep-psicologo` |
| `13-research-mercado.html` | Reddit + YouTube combinado | `research-reddit` + `research-youtube` |
| `14-angulos.html` | 5-10 ángulos + sub-ángulos | `angulos-architect` |
| `15-competencia.html` | Análisis competidores + GAP | `competidor-spy` |
| `16-deal-makers.html` | Deal-makers vs Deal-breakers | `deal-makers-extractor` |

---

## Slash Commands (17)

| Command | Función |
|---|---|
| `/zenith-crea-oferta` | Entry point principal v2.0 · Quick Discovery + confirmación + pipeline completo |
| `/avatar-deep` | Avatar profundo + mapa empatía + deal-makers |
| `/research-mercado` | Reddit + YouTube en paralelo |
| `/angulos` | Ángulos architect (5-10 ángulos con sub-ángulos) |
| `/competidor` | Competidor spy (Meta Ad Library + GAP) |
| `/one-belief` | Solo One Belief (4 variantes Evaldo + Joseph Moreno) |
| `/mecanismo` | Mecanismo problema + solución + nombre chicle |
| `/promesa` | Solo promesa ganadora |
| `/garantia` | Solo garantía impresionante |
| `/bonus` | Bonus architect + irresistible |
| `/modulos` | Naming módulos + clases (carta de ventas invisible) |
| `/valor-percibido` | Solo fórmula Bencivenga aplicada |
| `/schwartz-level` | Auditoría nivel consciencia + stage |
| `/great-leads` | Elige tipo de lead correcto |
| `/audit-oferta` | Auditor 200+ ítems |
| `/setup-crea-ofertas` | Auto-instalador (Python + Whisper + ffmpeg + jq) |
| `/setup-apis` | Asistente APIs opcionales (Apify + PRAW + YouTube API + Meta API + MCPs) |

---

## Optimización de costes

Cada agente declara su `model` según la complejidad de su tarea:

| Model | # Agentes | Casos |
|---|---|---|
| 🧠 **Opus** | 14 | Decisiones estratégicas · razonamiento creativo profundo · auditoría maestra · deep research |
| 🧠 **Sonnet** | 21 | Generativo con razonamiento · investigación · transformación inteligente |
| ⚡ **Haiku** | 6 | Extracción simple · procesamiento rutinario · conversión de formato |

**Pipeline completo estimado:** 100-180k tokens (vs 300-500k sin optimización) · **ahorro 60-70%**.

### Reglas aplicadas en cada agente
1. **CONOCIMIENTO INTERNALIZADO** · NO relee archivos `knowledge/` en ejecución
2. **Solo lee brief + output del agente anterior** · NO explora carpetas
3. **Output bounded** · cada agente declara TAMAÑO MÁXIMO
4. **El padre orquesta · los hijos son cortos** y específicos
5. **Bash solo para ACCIONES** · NO para `cat`/`ls`
6. **Reuso de outputs JSON** · NO regeneración

---

## APIs externas opcionales

**El plugin funciona al 100% SIN ninguna API externa** (todo se hace con WebSearch + WebFetch nativos de Claude Code).

Power-ups opcionales (solo si haces +20 ofertas/mes):

| API | Para qué | Setup |
|---|---|---|
| **Apify** | Scraping masivo profesional (Reddit/YouTube/TikTok/Meta) | `/setup-apis apify` |
| **PRAW** | Reddit API oficial (gratis) | `/setup-apis praw` |
| **YouTube Data API** | YouTube oficial (10k/día gratis) | `/setup-apis youtube` |
| **Meta Ad Library API** | Biblioteca Anuncios oficial | `/setup-apis meta` |
| **MCPs externos** | DataForSEO · Firecrawl · Notion · Drive | `/setup-apis mcp` |

Ver [EXTERNAL_SERVICES.md](EXTERNAL_SERVICES.md) para detalles completos.

---

## Filosofía Zenith™

> *"De la cima se ve mejor el avatar."*

- **Una oferta del 1% no se inventa** — se construye por capas, con un agente crack en cada capa.
- **Cada agente UNA función** · nunca dos haciendo lo mismo.
- **Cada agente TIENE el conocimiento INTERNALIZADO** · no solo lo referencia.
- **One Belief SIEMPRE 4 variantes** (Fórmula Evaldo Albuquerque adaptada por Joseph Moreno).
- **Mecanismo SIEMPRE desdoblado** (problema + solución + nombre chicle).
- **Bencivenga manda al final**: Beneficio + Credibilidad − Costo.
- **Schwartz audita** nivel + stage pieza por pieza.
- **Sin discovery + CONFIRMACIÓN explícita**, no se ejecuta nada.
- **Avatar PROFUNDO** (psicólogo + Reddit + YouTube + día en la vida + deal-makers).
- **Ángulos según definición exacta del autor** (razón distinta + tipo concreto + creencia + reconocimiento).
- **HTMLs print-to-PDF + Drive-friendly** con branding Zenith.

---

## Roadmap futuro

- [ ] Agente `email-sequence-architect` · secuencia post-compra (7 emails)
- [ ] Agente `vsl-script-master` · guion completo VSL
- [ ] Agente `criativos-generator` · 3 hooks + 1 body
- [ ] Agente `testimonios-architect` · before/after/bridge
- [ ] Integración Hotmart / Stripe (checkout config automático)
- [ ] Integración Meta Ads (publicación automática)
- [ ] Multi-idioma (en, pt-BR)
- [ ] Dashboard visual de progreso del pipeline

---

## Licencia

MIT · ver [LICENSE](LICENSE)

## Créditos

**Frameworks aplicados (20):**
Eugene Schwartz · Michael Masterson · John Forde · Gary Bencivenga · Evaldo Albuquerque · Todd Brown · Gary Halbert · Joseph Sugarman · Robert Cialdini · Russell Brunson · Alex Hormozi · John Caples · David Ogilvy · Stefan Georgi · Dan Ariely · Abraham Maslow · Tony Robbins · Joseph Bauer · Carl Jung (arquetipos) · **Joseph Moreno** (Masterclass Low Ticket Quiz + Método Zenith).

**Hecho con ❤️ por Josep · Método Zenith™**

---

*v2.0.0 · 2026-05-28*
