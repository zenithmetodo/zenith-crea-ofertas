# 🏗️ ARCHITECTURE · zenith-crea-ofertas

Diseño técnico y filosofía de la skill.

---

## 🎯 Principio fundamental

> **Una skill TOP 1% es como una orquesta: un director (padre) coordina especialistas (sub-agentes). Cada músico (agente) toca UN solo instrumento. Si dos tocan lo mismo, hay ruido.**

---

## 📐 Diagrama de arquitectura

```
┌──────────────────────────────────────────────────────────────────────────┐
│                            SKILL.md (PADRE)                              │
│                        zenith-crea-ofertas · ORQUESTADOR                   │
└──────────────────┬───────────────────────────────────────────────────────┘
                   │
                   │ invoca según el flujo del pipeline
                   ▼
       ┌───────────────────────────────────────────────────┐
       │              26 SUB-AGENTES                       │
       │           (cada uno crack de UNA cosa)            │
       └───────────────────────────────────────────────────┘
                   │                              │
        ┌──────────┴──────────┐         ┌─────────┴─────────┐
        │  Consultan knowledge/  │         │  Generan output/    │
        │  (12 frameworks)        │         │  (en carpetas 00-12)│
        └─────────────────────┘         └─────────────────────┘
                                                   │
                                                   ▼
                                       ┌───────────────────┐
                                       │  output-architect  │
                                       │  (envuelve en HTML)│
                                       └─────────┬─────────┘
                                                 │
                                                 ▼
                                       ┌───────────────────┐
                                       │  12 templates/     │
                                       │  HTML print-to-PDF │
                                       └───────────────────┘
```

---

## 🧬 Composición de un agente

Cada uno de los 26 agentes sigue exactamente la misma estructura:

```yaml
---
name: nombre-del-agente
description: 100-200 palabras (triggers + función + cuándo invocar)
allowed-tools: Read, Grep, Write, Bash
model: opus
---

# nombre-del-agente · Tagline corto

## QUIÉN SOY
[Función específica y única]

## CUÁNDO ME INVOCAS
[Frases que activan este agente]

## CONOCIMIENTO QUE CONSULTO
[Lista de archivos knowledge/ a leer ANTES de actuar]

## EL PROCESO PASO A PASO
[Algoritmo exacto que ejecuta]

## OUTPUT
[Formato JSON + tabla + ejemplo real]

## REGLAS INNEGOCIABLES
[Qué SIEMPRE hace y qué NUNCA hace]

## ANTI-PATRONES
[Errores comunes a evitar]

## EJEMPLO DE EJECUCIÓN
[Diálogo realista]

## INTEGRACIÓN CON OTROS AGENTES
[Qué agentes alimentan a este y a cuáles alimenta]
```

---

## 🔀 Dataflow entre agentes

```
discovery-master
    ↓ produces: brief.json
    │
    ├──→ punto-a-b-architect (lee brief.json)
    │       ↓ produces: punto-a-b.json
    │
    ├──→ one-belief-creator (lee brief.json + punto-a-b.json)
    │       │
    │       ├──→ identidad-anti-identidad (genera matriz)
    │       │       ↓ produces: matriz.json
    │       │
    │       ├──→ nueva-oportunidad (genera fenómeno único)
    │       │       ↓ produces: oportunidad.json
    │       │
    │       └──→ Combina todo y genera 4 variantes
    │               ↓ produces: 4-variantes.json
    │
    ├──→ mecanismo-problema (lee brief + one-belief)
    │       ↓ produces: mecanismo-problema.json
    │
    ├──→ mecanismo-solucion (lee mecanismo-problema)
    │       ↓ produces: mecanismo-solucion.json
    │
    ├──→ nombre-chicle (lee mecanismo-solucion)
    │       ↓ produces: nombres-candidatos.json
    │
    ├──→ ... (cadena continúa hasta auditor-completo)
    │
    └──→ output-architect (envuelve cada output en HTML)
            ↓ produces: 22+ archivos .html
```

**Regla:** un agente NUNCA actúa sin haber leído los outputs anteriores. Todo es una cadena de dependencias estricta.

---

## 🗂️ Estructura de carpetas (filesystem real)

### Plugin (este repo)

```
plugin/
├── SKILL.md                       ← Skill padre
├── README.md                      ← Doc principal
├── CHANGELOG.md
├── LICENSE
├── CONTRIBUTING.md
├── .gitignore
├── plugin.json                    ← Metadata
├── agents/                        ← 26 archivos .md
├── commands/                      ← 11 archivos .md
├── knowledge/                     ← 12 archivos .md + transcripciones
├── templates/                     ← 12 archivos .html + _design-system
├── examples/                      ← 5 archivos .md
└── docs/
    ├── QUICKSTART.md
    └── ARCHITECTURE.md (este)
```

### Output del operador (cuando ejecuta el pipeline)

```
proyecto-{slug-producto}/
├── 00-discovery/
│   ├── brief.json                ← Datos estructurados (consumidos por otros agentes)
│   └── brief.html                ← Bonito (para imprimir a PDF)
├── 01-punto-a-b/
│   └── punto-a-b.html
├── 02-one-belief/
│   ├── v1-identidad.html
│   ├── v2-anti-identidad.html
│   ├── v3-nueva-oportunidad.html
│   ├── v4-combo.html
│   └── recomendada.html          ← La elegida según Schwartz × Stage
├── 03-mecanismo/
│   ├── mecanismo-problema.html
│   ├── mecanismo-solucion.html
│   ├── nombre-chicle.html
│   └── super-estructura.html     ← Solo si Stage 5
├── 04-caracteristicas-beneficios-deseos/
│   ├── cadena-completa.html
│   └── intangibles.html
├── 05-promesa/
│   └── promesa-ganadora.html
├── 06-garantia/
│   ├── garantia.html
│   └── objeciones-rotas.html
├── 07-modulos-clases/
│   ├── modulos.html
│   └── clases.html
├── 08-bonus/
│   ├── bonus-arquitectura.html
│   └── bonus-irresistibles.html
├── 09-valor-percibido/
│   └── valor-percibido.html
├── 10-consciencia-sofisticacion/
│   ├── schwartz-audit.html
│   └── great-lead-recomendado.html
├── 11-oferta-completa/
│   └── oferta-final.html         ← LA PÁGINA DE VENTAS
└── 13-auditoria/
    ├── auditoria.html            ← Score + checklist
    └── roadmap-fixes.html        ← Plan de mejoras
```

---

## 🎨 Design System

**Filosofía:** dark theme premium, acentos morado/ámbar, tipografía editorial.

### Variables CSS canónicas

```css
:root {
  --bg: #0a0a14;            /* Background principal */
  --bg-soft: #14141f;       /* Background secundario */
  --card: #1a1a28;          /* Cards */
  --border: #2a2a3d;        /* Borders sutiles */
  --primary: #a855f7;       /* MORADO · acción principal */
  --accent: #f59e0b;        /* ÁMBAR · highlights */
  --success: #10e0a1;       /* VERDE · confirma */
  --danger: #ff4d6d;        /* ROJO · alerta */
  --text: #f5f5fa;          /* Texto principal */
  --text-soft: #c5c5d4;     /* Texto secundario */
  --text-dim: #8a8a9d;      /* Texto terciario */
}
```

### Tipografías

```css
/* Display (títulos grandes) */
font-family: 'Space Grotesk', sans-serif;

/* Body (texto general) */
font-family: 'Inter', system-ui, sans-serif;

/* Mono (labels, números, código) */
font-family: 'JetBrains Mono', monospace;
```

### Componentes principales

- `.hero` · sección hero con grid background animado
- `.formula-box` · caja destacada con fórmula
- `.card` · tarjeta estándar
- `.variant-card` · tarjeta del One Belief con borde de color
- `.stack-section` · stack slide tipo Brunson
- `.warranty-block` · garantía con badge circular
- `.bonus-card` · bonus con etiqueta
- `.testimonial-card` · testimonio con autor
- `.faq-item` · pregunta FAQ
- `.cta-final` · CTA strip con animación
- `.ps-block` · postdata Halbert

### Print-to-PDF

```css
@media print {
  body { background: white; color: black; }
  section { padding: 30px 0; page-break-inside: avoid; }
  .card, .formula-box, ... { page-break-inside: avoid; }
  header.hero { min-height: auto; }
}
```

---

## 🧪 Filosofía de testing

### Cada agente debe:
- [ ] Funcionar standalone (lectura del brief + ejecución)
- [ ] Generar output JSON parseable
- [ ] Generar HTML imprimible a PDF
- [ ] No solapar con otro agente

### Cada slash command debe:
- [ ] Tener trigger claro
- [ ] Lanzar al menos 1 agente
- [ ] Validar pre-requisitos (¿hay brief? ¿hay one-belief?)

### Cada knowledge file debe:
- [ ] Citar fuente (autor + libro + año)
- [ ] Tener ejemplos canónicos
- [ ] Tener "Regla de oro para los agentes"
- [ ] Tener "Integración con otros frameworks"

---

## 🔐 Garantías estructurales

1. **Determinismo:** mismo brief → mismo pipeline → mismos archivos. Repetible.
2. **Atomicidad:** cada agente es transaccional. Si falla, no rompe los demás.
3. **Trazabilidad:** todo output JSON lleva metadata (timestamp + agente generador + versión).
4. **Print-to-PDF garantizado:** todos los HTMLs pasan test de impresión.
5. **Multi-modelo seguro:** cada agente declara `model: opus` para asegurar TOP 1% quality.

---

## 🚀 Roadmap técnico

- v1.0 · 2026-05-27 · Lanzamiento inicial (26 agentes + 11 commands + 12 templates + 12 knowledge)
- v1.1 · MVP completo con todos los HTMLs print-to-PDF probados
- v2.0 · Integración con plugins hermanos (low-ticket-masterclass)
- v3.0 · Soporte multilenguaje (en, pt-BR)
- v4.0 · Generación automática de copy con A/B testing integrado

---

## 📞 Cómo extender

¿Quieres añadir un agente nuevo? Lee `CONTRIBUTING.md`. La regla #1 sigue siendo: **NO duplicar funciones existentes**.

¿Quieres añadir un framework nuevo al knowledge? Sigue el formato canónico:
1. Fuente + autor + año
2. Regla maestra
3. Componentes desglosados
4. Ejemplos canónicos
5. Tabla de aplicación
6. Errores típicos
7. Citas para usar
8. Regla de oro para los agentes
9. Integración con otros frameworks

---

*Arquitectura diseñada para escalar a 50+ agentes sin perder coherencia.*
