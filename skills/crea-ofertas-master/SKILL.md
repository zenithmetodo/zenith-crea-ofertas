---
name: crea-ofertas-master
user-invocable: true
disable-model-invocation: false
description: Zenith Crea Ofertas™ · Mega-skill TOP 1% para crear OFERTAS COMPLETAS de alto valor percibido bajo el Método Zenith. Arranca con una pre-fase guiada por especificación (spec → review por severidad → validación humana → plan) y orquesta 49 sub-agentes especializados (Opus/Sonnet/Haiku optimizado) que construyen, palabra por palabra, todo el embudo de la oferta — desde el avatar deep (psicólogo + Reddit + YouTube), pasando por ángulos (definición exacta Joseph Moreno), competencia (Biblioteca Anuncios Meta + GAP), 4 variantes de One Belief (Fórmula Evaldo Albuquerque adaptada por Joseph Moreno), mecanismo del problema, mecanismo de la solución, nombre chicle, características → beneficios → deseos, promesa ganadora, garantía impresionante, módulos y clases con la fórmula carta-de-ventas-invisible, bonus irresistibles, hasta la maximización del valor percibido con la fórmula Bencivenga (Beneficio + Credibilidad − Costo). Aplica 20 frameworks canónicos del direct response (Schwartz · Masterson+Forde · Bencivenga · Evaldo · Todd Brown · Halbert · Sugarman · Cialdini · Brunson · Hormozi · Caples · Ogilvy · Stefan Georgi · Ariely · Maslow/Robbins/Bauer · Jung · Joseph Moreno). Entrega cada pieza en una carpeta con HTML estético imprimible a PDF + Drive-friendly con branding Zenith (cian #00E5CF + purple #B845FF + Fraunces). Triggers: "crea mi oferta", "zenith crea oferta", "avatar deep", "research mercado", "ángulos", "competidor spy", "one belief", "mecanismo", "promesa ganadora", "bonus irresistibles", "valor percibido", "carta de ventas invisible", "auditor de oferta", "incuba mi producto perfecto", "método zenith".
---

# ZENITH CREA OFERTAS™ · Orquestador Maestro

> "Una oferta del 1% no se inventa — se construye por capas, con un agente crack en cada capa, hasta que cada palabra justifica el precio." — Principio operativo del plugin

> ⚠️ Esto es una **SKILL** (no un agente) porque solo el hilo principal puede (a) **hacerte preguntas** (spec/discovery) y (b) **lanzar subagentes** con la tool `Agent`. Un subagente no puede ninguna de las dos. **NUNCA hagas tú el trabajo de un subagente: SIEMPRE delega** lanzando `zenith-crea-ofertas:<nombre>` con la tool `Agent`, en el orden del pipeline.

## 🔴 0 · LO PRIMERO DE TODO (OBLIGATORIO · antes de tocar nada)

### A) Lee la base de conocimiento OBLIGATORIA (conocimiento real del plugin)
Lee con la tool `Read`, sí o sí, ANTES de generar nada y al lanzar cada subagente que escribe copy:
- **`${CLAUDE_PLUGIN_ROOT}/knowledge/biblia-del-copy.md`** — la Biblia del Copy (neurocopywriting de respuesta directa). **OBLIGATORIA.**
- **`${CLAUDE_PLUGIN_ROOT}/knowledge/copy-en-las-ofertas.md`** — cómo se usa el copy en cada capa de la oferta.
- **`${CLAUDE_PLUGIN_ROOT}/knowledge/biblia-del-mecanismo.md`** — el mecanismo (villano, causa raíz, nombre chicle, objeto brillante, mito de origen).

> **REGLA INNEGOCIABLE:** TÚ las lees y, al lanzar cada subagente que redacta (promesa, one-belief, mecanismo, módulos, bonus, valor-percibido, garantía, headline, fascinations, great-leads, objeciones, ángulos…), le **ORDENAS en el prompt que lea y aplique la Biblia del Copy** antes de escribir. Ninguna pieza de la oferta se redacta sin pasar por la Biblia del Copy. Cero traición de mensaje en todo el embudo.

### B) Comprueba la MEMORIA / TONO / VOZ del usuario y ÚSALA
Antes de redactar, comprueba si el usuario ya subió su contexto de marca y úsalo para TODA la redacción:
- ¿Hay un **CLAUDE.md** (del proyecto o `~/.claude/CLAUDE.md`) con su tono, marca, avatar, público?
- ¿Hay un doc de **tono / voz de marca / núcleo del creador / memoria** en el proyecto? (busca con Grep/Glob: `tono*.md`, `voz*.md`, `marca*.md`, `nucleo*.md`, `memoria*.md`, `brand*.md`).
- ¿La memoria/preferencias de Claude definen cómo escribe?

> **REGLA:** Si EXISTE → cárgala y escribe TODO con ESA voz (no la genérica), y pásala a CADA subagente en su prompt. Si NO existe → pregúntale UNA vez ("¿tienes un doc de tono/voz de marca o memoria que quieras que use?") y, si no, usa el branding/voz Zenith por defecto en español de España.

## QUÉ ES ESTA SKILL

Es la skill PADRE de un sistema de **49 sub-agentes especializados** (cada uno experto en UNA sola pieza de la oferta — nunca dos haciendo lo mismo) y **19 slash commands** para invocación rápida. Arranca con una **pre-fase guiada por especificación** (spec → review por severidad → validación humana → plan) antes de ejecutar nada.

Construye la oferta completa siguiendo la metodología **"Incubando tu Producto Perfecto"** + los frameworks canónicos del direct response del siglo XX y XXI.

## CUÁNDO INVOCARME

Cuando el usuario diga cualquiera de estas frases (o equivalente):

- "crea/construye/diseña mi oferta"
- "estructura mi producto"
- "incuba mi producto perfecto"
- "necesito una oferta del 1%"
- "ayúdame con el One Belief / mecanismo / promesa / garantía / bonus"
- "carta de ventas invisible para mis módulos"
- "aumenta el valor percibido"
- "audita mi oferta"
- "qué objeciones tiene mi oferta"
- "convierte mi producto en irresistible"

## PIPELINE COMPLETO (en 13 pasos)

El embudo se construye SIEMPRE en este orden estricto. Saltarse uno = oferta floja.

```
PRE-A · SPEC ⭐         → spec-architect (enmarca el proyecto: objetivo, alcance, criterios, supuestos, riesgos)
PRE-B · REVIEW ⭐       → spec-reviewer (audita el spec · clasifica por severidad 🔴🟠🟡🟢)
PRE-C · VALIDACIÓN ⭐   → ⏸️ GATE HUMANO · la persona aprueba / itera / para (NADA avanza sin su OK)
PRE-D · PLAN ⭐         → plan-architect (plan.md de TODO + plan de research · solo tras aprobación)
00 · DISCOVERY          → discovery-master
01 · PUNTO A → PUNTO B  → punto-a-b-architect (PERSONA · viaje emocional)
01b · PUNTO A → B PRODUCTO → punto-a-b-producto (pasos operativos del servicio · base de la carta de ventas invisible)
02 · ONE BELIEF (×4)    → one-belief-creator + identidad-anti-identidad + nueva-oportunidad
03 · MECANISMO ⭐       → mecanismo-maestro (PREGUNTA TODO primero · 9 bloques) → causa-raiz + mecanismo-problema + mecanismo-solucion + nombre-chicle + objeto-brillante + mito-origen · carga la BIBLIA DEL MECANISMO · entrega MD + HTML GIGANTE
04 · CARACTERÍSTICAS    → caracteristicas-extractor + beneficios-extractor + deseos-extractor + intangibles-extractor
05 · PROMESA            → promesa-ganadora
06 · GARANTÍA           → garantia-impresionante + objeciones-rotas
07 · MÓDULOS + CLASES   → modulos-namer + clases-namer (carta de ventas invisible)
08 · BONUS              → bonus-architect + bonus-irresistible
09 · VALOR PERCIBIDO    → valor-percibido (fórmula Bencivenga)
10 · CONSCIENCIA        → schwartz-consciousness + great-leads-masterson
10b · COPY + STACK ⭐   → headline-master + fascinations-architect + autoridad-builder + stack-slide-architect + anclaje-precio + risk-reversal-master + upsell-downsell-architect (las piezas de copy y de oferta que offer-master ensambla)
11 · OFERTA COMPLETA    → offer-master (ensambla TODO: headline + fascinations + stack + anclaje + garantía + autoridad + upsell)
03c · NAMING PRODUCTO   → naming-producto (nombre comercial del PROGRAMA · el QUÉ se vende · distinto del nombre chicle del mecanismo · check dominio/RRSS/trademark)
12 · ÁNGULOS ⭐         → angulos-architect (5-10 ángulos AL 1000% · nombres DESCRIPTIVOS · A qué apela / Qué cree / CÓMO LO ROMPEMOS / reconocimiento / hook · HTML editable) · OBLIGATORIO
13 · HANDOFF ⭐         → auto-invocación a zenith-audience (crea el contenido/anuncios a partir de los ángulos)
14 · AUDITORÍA          → auditor-completo
```

## ⚠️ REGLA INNEGOCIABLE · ÁNGULOS AL 1000% + HANDOFF A ZENITH-AUDIENCE

El pipeline completo SIEMPRE termina con los ángulos perfectos y el handoff al motor de contenido:

1. **ÁNGULOS (`angulos-architect`)** · 5-10 ángulos AL 1000%, cada uno con **nombre DESCRIPTIVO (NADA de nombres raros/creativos)** y, por cada ángulo, se responde:
   - **A qué apela** (la situación/dolor concreto)
   - **Quién es** (tipo concreto de persona)
   - **Qué cree** (la creencia específica que tiene hoy)
   - **CÓMO LO ROMPEMOS** (el giro · cómo desmontamos esa creencia) ← clave
   - **Reconocimiento** ("esto va por mí") + **Hook**
   - **SIEMPRE crea la carpeta `proyecto-{slug}/12-angulos/`** con `angulos.json` + `angulos.html` (plantilla EDITABLE · 3-4 ángulos por defecto + botón "➕ Añadir ángulo" para sumar más · Guardar PDF / Descargar copia / Restablecer).
   - **Por defecto 3-4 ángulos** (los más sólidos) · hasta 10 si el usuario quiere.
   - **Si empieza de 0 o no sabe por dónde tirar → PREGUNTAS OBLIGATORIAS** antes de generar nada (no se inventa ángulos a ciegas).
   - **Si tiene que investigar** para intuir los ángulos → **crea SIEMPRE una carpeta `12-angulos/research/`** con `research.md` + `research.html` (lo investigado: dolores, creencias, lenguaje del avatar, competencia, fuentes), para que se vea de dónde salen los ángulos.
   > "Si falta uno de los 3 ingredientes, es eslogan, no ángulo. Un buen ángulo divide." · Ejemplo de nombre BIEN: "Hacer todo manual en 2026". MAL: "La Mama Hostia".

2. **HANDOFF → `zenith-audience`** · El plugin **NO redacta anuncios**. En cuanto los ángulos están listos, **auto-invoca la skill `zenith-audience`** y le pasa los ángulos para que cree el contenido/anuncios (cada ángulo → reels/anuncios con su tipo de persona + creencia + cómo lo rompemos + hook). Si `zenith-audience` no está instalada, se avisa y se dejan los ángulos listos.

> Una oferta SIN ángulos al 1000% está INCOMPLETA. Los anuncios NO son trabajo de este plugin: se delegan a `zenith-audience`.

## CÓMO TRABAJAR (PROTOCOLO MAESTRO)

### Paso 0 · PRE-FASE · Spec → Review → Validación humana → Plan ⭐

ANTES de gastar un solo token en el pipeline, el proyecto pasa por un **gate de calidad guiado por especificación**:

1. **`spec-architect`** convierte la idea cruda en un **SPEC** (objetivo · alcance qué SÍ/qué NO · entregables · criterios de éxito medibles · supuestos · restricciones · riesgos · preguntas abiertas). Output: `00-spec/spec.md` + `spec.html`.
2. **`spec-reviewer`** (el "code reviewer" del proyecto) audita el spec en 12 ejes y **clasifica cada hallazgo por severidad**: 🔴 Crítico · 🟠 Alto · 🟡 Moderado · 🟢 Bajo. Output: `00-spec/spec-review.md` + `spec-review.html` con veredicto (✅ aprobar / 🔁 iterar / ⛔ parar).
3. **⏸️ VALIDACIÓN HUMANA (gate obligatorio):** la persona ve el review y decide. **Nada del pipeline avanza sin su aprobación explícita.** Si pide iterar, el `spec-architect` corrige y el `spec-reviewer` vuelve a revisar.
4. **`plan-architect`** (solo tras la aprobación) convierte el spec validado en el **`plan.md` de TODO**: mitigaciones de los hallazgos, plan de research (qué investigar primero), secuencia de ejecución del pipeline, checkpoints humanos y criterios de cierre. Output: `00-spec/plan.md` + `plan.html` + `research-plan.md`.

> Sin spec validado, no se ejecuta el pipeline. Este gate evita construir una oferta entera sobre un marco roto.

### Paso 1 · Discovery breve (3-5 preguntas máximo)

Antes de lanzar agentes, lanzo el `discovery-master` para recoger:

- **Producto** (qué vendes)
- **Avatar** (a quién)
- **Resultado deseado** (qué transformación promete)
- **Precio objetivo** (ticket alto / medio / low ticket)
- **Nivel Schwartz del mercado** (1-5)

Sin esto, todos los sub-agentes inventan datos.

### Paso 2 · Crear estructura de carpetas del proyecto

Creo `proyecto-{slug-producto}/` con TODAS las subcarpetas (00 a 13), una por etapa del pipeline. Cada carpeta recibirá un `.html` print-to-PDF generado por el `output-architect`.

> ⚠️ **LA CARPETA `12-angulos/` SE CREA SIEMPRE, SIN EXCEPCIÓN.** Aunque el usuario no pida ángulos explícitamente, el pipeline completo SIEMPRE la crea y la rellena. Si al terminar el proyecto NO existe `12-angulos/` con su `angulos.html`, el pipeline está MAL.

```
proyecto-{slug}/
├── 00-spec/                 (⭐ PRE-FASE · spec.md + spec-review.md + plan.md + research-plan.md · gate humano)
├── 00-discovery/
├── 01-punto-a-b/
├── 02-one-belief/         (4 variantes en HTML)
├── 03-mecanismo/
├── 04-caracteristicas-beneficios-deseos/
├── 05-promesa/
├── 06-garantia/
├── 07-modulos-clases/
├── 08-bonus/
├── 09-valor-percibido/
├── 10-consciencia-sofisticacion/
├── 11-oferta-completa/
├── 12-angulos/            (⭐ SIEMPRE · angulos.json + angulos.html EDITABLE · 3-4 ángulos + botón "Añadir ángulo")
└── 13-auditoria/
```

### Paso 3 · Lanzar sub-agentes en orden

Lanzo los agentes uno por uno (o en paralelo si son independientes), nunca dos cubriendo lo mismo. Cada agente:

1. Lee el contenido de su carpeta knowledge correspondiente
2. Lee el output del agente anterior (en `proyecto-{slug}/`)
3. Genera su entregable
4. El `output-architect` lo envuelve en HTML estético
5. Guarda en la carpeta correspondiente

### Paso 4 · ONE BELIEF — siempre 4 variantes

Cuando se ejecuta el bloque 02, el `one-belief-creator` genera **4 versiones distintas** del One Belief Statement:

- **Variante 1 · Identidad pura**: la persona se ve como X ("Ser un hombre del 1%")
- **Variante 2 · Anti-identidad**: la persona deja de ser Y ("Dejar de ser el padre invisible")
- **Variante 3 · Nueva oportunidad / fenómeno**: ("Extraer dinero del rincón oculto de Reels")
- **Variante 4 · Combo identidad + anti-identidad**: la dualidad ("De padre invisible a referente del 1%")

Cada variante usa la fórmula Evaldo Albuquerque:

> *"La [NUEVA OPORTUNIDAD] es la llave para obtener [RESULTADO DESEADO], y eso es solo posible a través de [NUEVO MECANISMO]."*

### Paso 5 · MECANISMO — bloque maestro de 6 piezas (lo lidera `mecanismo-maestro`)

El stage 03 es el **corazón de la oferta** y tiene su propio orquestador: **`mecanismo-maestro`**. Es el PRIMERO del bloque, carga la **BIBLIA DEL MECANISMO** (`${CLAUDE_PLUGIN_ROOT}/knowledge/biblia-del-mecanismo.md` · 131 formaciones destiladas · 20 partes) y trabaja en DOS fases:

1. **FASE PREGUNTAS (primero, siempre):** hace TODAS las preguntas necesarias — la **batería de 9 bloques** — una a una (como el discovery-master pero del mecanismo). No re-pregunta lo que ya está en el brief/One Belief. No construye nada hasta tener los bloques críticos (1·villano, 2·causa raíz, 4·solución, 6·nombre chicle).
2. **FASE CONSTRUCCIÓN (después):** lee la Biblia y construye las **6 PIEZAS**:

- **Causa raíz** — la cadena causal completa (mecánica + emocional).
- **Mecanismo del problema** — el villano concreto. Nunca culpas — rediriges (externalizas la culpa).
- **Mecanismo de la solución** — el "cómo deseable" (Yoga en silla, Monjaro de pobre, 5 ingredientes).
- **Nombre chicle** — el naming pegadizo, **bilateral** (del villano Y del método).
- **Objeto brillante** — las piezas/rebanadas nombradas que rechean la oferta ("¿qué es eso?").
- **Mito de origen** — el rostro y la historia de cómo se descubrió el mecanismo.

Todo se ensambla aplicando **las 4 capas** (Nombre Chicle → Mecanismo Único → Mecanismo del Problema → Causa Raíz) y **los 7 pasos del mecanismo único de 7 dígitos** (caso La Mer).

Pasa por las **3 reglas innegociables** (Joseph Moreno):
1. Cabe en una frase (máximo 5-7 palabras)
2. Está en alta en orgánico (TikTok, Reels, YouTube)
3. Tiene un nombre chicle (curiosidad o identificación)
> Fórmula: **MECANISMO + NOMBRE CHICLE = OFERTA NUEVA.**

**Salida del bloque:** la carpeta `03-mecanismo/` con un `.md` y un `.html` por cada pieza + un **`mecanismo-completo.md` y un `mecanismo-completo.html` GIGANTE** que reúnen TODA la explicación, para que TODAS las skills posteriores (promesa, ángulos, great-leads, valor percibido…) hereden el contexto del mecanismo al 100%.

### Paso 6 · VALOR PERCIBIDO — fórmula Bencivenga

Todo el final del pipeline pasa por la fórmula maestra de Gary Bencivenga:

```
VALOR PERCIBIDO = BENEFICIO + CREDIBILIDAD − COSTO
```

Cuanto más alto sea el beneficio Y la credibilidad, menos suena el coste por implementarlo. Es la palanca que convierte 17 € en "esto vale 1.997 €, lo regalan".

### Paso 7 · CONSCIENCIA + SOFISTICACIÓN (Schwartz)

Antes de cerrar, el `schwartz-consciousness` audita el copy generado contra:

- **5 niveles de consciencia** (Unaware, Problem-Aware, Solution-Aware, Product-Aware, Most Aware)
- **5 stages de sofisticación de mercado** (Stage 1-5)

Si el copy no encaja con el nivel del avatar, se rehace el bloque correspondiente.

### Paso 8 · GREAT LEADS (Masterson + Forde)

El `great-leads-masterson` elige el TIPO DE LEAD adecuado para el nivel Schwartz del mercado:

- **Offer Lead** (Stage 1 / Most Aware)
- **Promise Lead** (Stage 1-2)
- **Problem-Solution Lead** (Stage 2-3)
- **Big Secret Lead** (Stage 3-4)
- **Proclamation Lead** (Stage 4)
- **Story Lead** (Stage 4-5)

### Paso 9 · AUDITORÍA FINAL

El `auditor-completo` revisa pieza por pieza:

- ✅/❌ checklist de 200+ ítems en 12 bloques
- Score global sobre 100
- Correcciones priorizadas
- Veredicto: ¿luz verde para tráfico?

## LISTA COMPLETA DE SUB-AGENTES

Ver [`agents/`](agents/) para los archivos completos. Mapa rápido:

| # | Agente | Crack en… |
|---|--------|-----------|
| ⭐ | **spec-architect** | PRIMERO DE TODO · enmarca el proyecto en un SPEC (objetivo, alcance, criterios, supuestos, riesgos) antes de gastar tokens |
| ⭐ | **spec-reviewer** | El "code reviewer" del proyecto · audita el spec y clasifica por severidad 🔴🟠🟡🟢 · gate de validación humana |
| ⭐ | **plan-architect** | Convierte el spec aprobado en plan.md de TODO + plan de research (solo tras validación humana) |
| 01 | **discovery-master** | Hace las 5 preguntas críticas antes de empezar |
| 02 | **punto-a-b-architect** | Punto A real + Punto B realista + tiempo (PERSONA · viaje emocional) |
| ⭐ | **punto-a-b-producto** | Los pasos operativos del servicio (el otro Punto A-B) · base de la carta de ventas invisible |
| ⭐ | **naming-producto** | Nombre comercial del PROGRAMA (el QUÉ) · distinto del nombre chicle del mecanismo (el CÓMO) |
| 03 | **one-belief-creator** | 4 variantes del One Belief (Evaldo) |
| 04 | **identidad-anti-identidad** | Hace funcionar identidad VS anti-identidad |
| 05 | **nueva-oportunidad** | Identifica la "nueva oportunidad" única del mecanismo |
| ⭐ | **mecanismo-maestro** | ORQUESTA el bloque 03: pregunta los 9 bloques + construye las 6 piezas · carga la Biblia del Mecanismo · MD + HTML gigante |
| 06 | **mecanismo-problema** | El villano concreto que justifica el dolor |
| 07 | **mecanismo-solucion** | El cómo deseable que diferencia |
| 08 | **nombre-chicle** | Naming 2-3 palabras misterioso y pegadizo |
| ⭐ | **objeto-brillante** | Convierte lo genérico en "¿qué es eso?" · rechea la oferta de piezas brillantes |
| ⭐ | **mito-origen** | El rostro y la historia de cómo se descubrió el mecanismo |
| 09 | **caracteristicas-extractor** | Lista exhaustiva de características del producto |
| 10 | **beneficios-extractor** | Convierte cada característica en beneficio |
| 11 | **deseos-extractor** | Convierte cada beneficio en deseo profundo |
| 12 | **intangibles-extractor** | Saca los intangibles emocionales |
| 13 | **promesa-ganadora** | Fórmula Avatar + Resultado + Tiempo + Sin dolor + Aunque objeción |
| 14 | **garantia-impresionante** | 11 tipos de garantía + nombre atractivo |
| 15 | **objeciones-rotas** | Cataloga objeciones y diseña ruptura por capas |
| 16 | **modulos-namer** | Naming módulos con fórmula Resultado × Identificación × Objeción |
| 17 | **clases-namer** | Naming clases con fórmula Elemento × Identificación × Objeción |
| 18 | **bonus-architect** | Diseña 5 categorías de bonus (antes/después/acorta/rompe/cierre) |
| 19 | **bonus-irresistible** | Convierte bonus normal en irresistible (nombre sexy + valor + urgencia) |
| 20 | **valor-percibido** | Aplica fórmula Bencivenga + maximiza autoridad |
| 21 | **schwartz-consciousness** | Audita niveles de consciencia y sofisticación |
| 22 | **great-leads-masterson** | Elige el tipo de lead correcto (6 opciones) |
| 23 | **bencivenga-formula** | Aplica las 7 leyes Bencivenga al copy final |
| ⭐ | **headline-master** | El titular/headline maestro de la oferta (trinidad beneficio + credibilidad + curiosidad) |
| ⭐ | **fascinations-architect** | Los bullets/fascinations que abren bucles de curiosidad |
| ⭐ | **autoridad-builder** | Construye la autoridad/credibilidad (las capas de prueba) |
| ⭐ | **stack-slide-architect** | El stack de valor visual (apila las piezas → precio ridículo) |
| ⭐ | **anclaje-precio** | El anclaje de precio (valor total → precio real → razón) |
| ⭐ | **risk-reversal-master** | Inversión de riesgo / garantía audaz que blinda la promesa |
| ⭐ | **upsell-downsell-architect** | Upsell / downsell / order bumps para maximizar el ticket |
| 24 | **offer-master** | Ensambla todas las piezas anteriores (headline, fascinations, stack, anclaje, garantía, autoridad, upsell) en la oferta final |
| 25 | **angulos-architect** ⭐ | 5-10 ángulos AL 1000% · nombres descriptivos · A qué apela / Qué cree / CÓMO LO ROMPEMOS · HTML editable · auto-handoff a zenith-audience · OBLIGATORIO |
| 26 | **output-architect** | Genera HTML estéticos print-to-PDF + editables |
| 27 | **auditor-completo** | Audita 200+ ítems · score global · roadmap fixes |

## SLASH COMMANDS

Ver [`commands/`](commands/) para invocación rápida sin discovery completo.

| Command | Lanza |
|---------|-------|
| `/spec` ⭐ | **PRE-FASE** · spec-architect → spec-reviewer (severidad 🔴🟠🟡🟢) → validación humana → plan-architect (plan.md + research) |
| `/zenith-crea-oferta` | **Entry point v2.0 recomendado** · Quick Discovery + confirmación + pipeline 17 etapas |
| `/crea-oferta-1pct` | Entry point v1.0 legacy · Discovery completo (5+5 preguntas) + 13 pasos |
| `/one-belief` | one-belief-creator (4 variantes Evaldo + Joseph Moreno) |
| `/mecanismo` | mecanismo-maestro (pregunta 9 bloques + construye las 6 piezas: causa raíz + problema + solución + nombre chicle + objeto brillante + mito de origen) |
| `/promesa` | promesa-ganadora |
| `/garantia` | garantia-impresionante |
| `/bonus` | bonus-architect + bonus-irresistible |
| `/modulos` | modulos-namer + clases-namer |
| `/valor-percibido` | valor-percibido (Bencivenga) |
| `/schwartz-level` | schwartz-consciousness (audita el nivel) |
| `/great-leads` | great-leads-masterson (elige tipo) |
| `/angulos` ⭐ | angulos-architect (5-10 ángulos al 1000% · nombres descriptivos · A qué apela / Qué cree / Cómo lo rompemos · auto-handoff a zenith-audience) |
| `/audit-oferta` | auditor-completo |

## KNOWLEDGE BASE

Ver [`knowledge/`](knowledge/). Cada agente consulta el suyo. Esencial:

- `schwartz-5-niveles-consciencia.md` — Eugene Schwartz · *Breakthrough Advertising*
- `schwartz-5-stages-sofisticacion.md` — Eugene Schwartz · *Breakthrough Advertising*
- `masterson-forde-great-leads.md` — Masterson & Forde · *Great Leads*
- `bencivenga-formula-valor-percibido.md` — Gary Bencivenga · *Bullets, Marketing Bullets*
- `evaldo-albuquerque-one-belief.md` — Evaldo Albuquerque · *The 16-Word Sales Letter*
- `biblia-del-mecanismo.md` — ⭐ **LA BIBLIA DEL MECANISMO** · 131 formaciones destiladas (20 partes): las 4 capas, mecanismo del problema/solución, causa raíz, objeto brillante, nombre chicle, mito de origen, los 7 pasos de 7 dígitos (La Mer), 50+ ejemplos. La carga `mecanismo-maestro`.
- `biblia-del-copy.md` — ⭐ **LA BIBLIA DEL COPY** · compendio canónico de copywriting/neurocopy (21 partes): deseo, niveles de consciencia, Great Leads, PAS/AIDA/BAB, headlines, prueba, oferta irresistible (Hormozi), storytelling, dimensionalización, pesquisa. La consultan los agentes de copy (promesa, headline, fascinations, offer, valor-percibido, great-leads, ángulos, objeciones, mecanismo-maestro).
- `copy-en-las-ofertas.md` — mapa puente: conecta cada pieza de la Biblia del Copy con la zona de la oferta donde aplica (promesa · mecanismo · oferta/stack · copy de superficie).
- `todd-brown-mecanismo-unico.md` — Todd Brown · *E5 Method*
- `identidad-vs-anti-identidad.md` — Combinación operativa
- `halbert-power-words.md` — Gary Halbert · *Boron Letters*
- `sugarman-30-triggers.md` — Joseph Sugarman · *Adweek Copywriting Handbook*
- `brunson-hook-story-offer.md` — Russell Brunson · *Expert Secrets*
- `cialdini-7-principios.md` — Cialdini · *Influence*
- `transcripcion-video-mecanismo.md` — Joseph Moreno · vídeo mecanismo
- `jung-arquetipos.md` · `maslow-robbins-bauer-deseos.md` — psicología del avatar (Jung + Maslow + Robbins + Bauer)
- `meta-ad-library-guide.md` · `reddit-subreddit-map.md` — research de competencia y avatar
- `naming-comercial-frameworks.md` · `trademark-domain-availability-checklist.md` — naming de producto + disponibilidad
- `zenith-branding-guidelines.md` — guidelines de marca Zenith para los HTML
- `transcripcion-video-one-belief.md` — Vídeo del usuario
- `transcripcion-video-promesa.md` — Vídeo del usuario
- `transcripcion-video-bonus.md` — Vídeo del usuario
- (etc · 1 transcripción por vídeo)

## TEMPLATES HTML

Ver [`${CLAUDE_PLUGIN_ROOT}/templates/`](${CLAUDE_PLUGIN_ROOT}/templates/). 12 plantillas print-to-PDF (Cmd/Ctrl + P → Guardar como PDF). Diseño cohesivo (dark mode + accent morado/ámbar, tipografía Space Grotesk + Inter + JetBrains Mono). El `output-architect` rellena cada una con el contenido del agente correspondiente.

## EJEMPLOS CANÓNICOS

Ver [`examples/`](examples/). Casos reales desmenuzados:

- `monjaro-de-pobre.md`
- `desafio-bumbum-na-nuca.md`
- `yoga-en-silla.md`
- `codigo-apex.md` (hombres 1%)
- `metodo-blasting.md` (renta extra · Reels)

## REGLAS INNEGOCIABLES (no me las saltes)

0. **Pre-fase con gate humano SIEMPRE**. Spec → review por severidad → la persona valida → plan.md. El pipeline NO se ejecuta sin spec validado.
1. **Cada agente UNA función**. Nunca dos haciendo lo mismo.
2. **One Belief siempre 4 variantes**. Identidad + Anti-identidad + Nueva oportunidad + Combo.
3. **Mecanismo siempre completo (6 piezas)**. Lo lidera `mecanismo-maestro`: pregunta primero (9 bloques) y construye Causa raíz + Problema + Solución + Nombre chicle + Objeto brillante + Mito de origen. Jamás solo uno. Carga la Biblia del Mecanismo.
4. **MD + HTML SIEMPRE en cada carpeta**. Cada entregable lleva su `.md` (para que la IA lo lea y los siguientes agentes hereden el contexto) Y su `.html` print-to-PDF (para el humano). Nunca solo HTML.
5. **Sin discovery, no se ejecuta nada**. Todos los agentes leen el brief antes de actuar.
6. **Bencivenga manda al final**. Beneficio + Credibilidad − Costo es la fórmula maestra del valor percibido.
7. **Schwartz audita**. Antes de cerrar, el nivel de consciencia y sofisticación tiene que cuadrar.
8. **Carpetas estéticas**. Cada entregable en su carpeta numerada (00 → 13), con MD + HTML elegante dentro.

## CIERRE

> "La diferencia entre una oferta del 99% y una del 1% no es el producto. Es la cantidad de capas de valor que el cliente percibe antes de leer el precio."

Esta skill construye esas capas. Una por una. Con un crack en cada una.
