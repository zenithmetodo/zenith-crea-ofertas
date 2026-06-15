---
name: zenith-crea-oferta
description: ENTRY POINT de la versión Zenith. Lanza el quick-discovery de 5 preguntas, pide confirmación al cliente y, si da luz verde, ejecuta el pipeline completo (13 etapas · 30+ sub-agentes · branding Zenith). Versión optimizada en coste — Opus solo donde mueve la aguja, Sonnet/Haiku en el resto.
argument-hint: "[opcional: idea del producto en 1 frase · ej: 'app glúteo en casa para mujeres 25-50']"
---

# /zenith-crea-oferta · Entry point Zenith (pipeline con confirmación)

## QUÉ HACE

Es el **comando estrella de la versión Zenith** — la línea premium del plugin `zenith-crea-ofertas`. A diferencia de `/crea-oferta-1pct` (que arranca con 5 preguntas largas y dispara el pipeline de inmediato), este comando hace un **quick-discovery de 5 preguntas cortas**, te muestra un resumen estratégico y **espera tu confirmación antes de gastar tokens** en el resto del pipeline. Es el flujo recomendado cuando trabajas con cliente real y necesitas validar el rumbo antes de tirar de Opus.

Una vez confirmas, ejecuta las **13 etapas completas** (discovery → punto A→B → one belief → mecanismo → características → promesa → garantía → módulos → bonus → valor percibido → consciencia → oferta → auditoría) con **branding Zenith** aplicado a cada HTML (paleta dorada/oscura · tipografía Zenith · marca de agua imprimible). Encadena 30+ sub-agentes respetando dependencias y, al final, entrega el dashboard con score, veredicto y roadmap.

A diferencia de `/crea-oferta-1pct`: (1) **menos fricción inicial** — el quick-discovery es ligero; (2) **confirmación intermedia** — no gasta tokens caros sin tu OK; (3) **branding Zenith** — HTMLs con identidad premium; (4) **coste optimizado** — Opus solo en agentes críticos.

## CUÁNDO USARLO

- Cuando trabajas con cliente externo y quieres validar el rumbo antes de ejecutar el pipeline largo
- Cuando vas a montar una oferta nueva y prefieres entregar con branding Zenith (paleta dorada · imprimible premium)
- Cuando necesitas optimizar coste por proyecto — Opus solo en One Belief/Promesa/Oferta final · Sonnet/Haiku en el resto
- Cuando te interesa el flujo "discovery rápido → confirmo → pipeline en cascada" en lugar del flujo lineal de `/crea-oferta-1pct`

NO lo uses si solo quieres una pieza suelta (usa los comandos atómicos: `/one-belief`, `/avatar-deep`, `/angulos`, etc.).

## CÓMO USARLO

```
/zenith-crea-oferta
/zenith-crea-oferta app glúteo en casa para mujeres 25-50
/zenith-crea-oferta método Apex para hombres +30 libertad financiera
/zenith-crea-oferta protocolo Monjaro de pobre para perder 8 kg
```

Si pasas argumento, el `34-zenith-quick-discovery` lo usa como semilla y te hace solo las 4 preguntas restantes. Si no, te hace las 5.

## QUÉ AGENTES LANZA

**Fase 1 · Quick Discovery (siempre)**
- `34-zenith-quick-discovery` (5 preguntas + brief preliminar + confirmación al cliente)

**Fase 2 · Pipeline completo (solo si el cliente confirma)**
1. `discovery-master` (cierra brief detallado)
2. `punto-a-b-architect`
3. `one-belief-creator` + `identidad-anti-identidad` + `nueva-oportunidad` (4 variantes)
4. `mecanismo-maestro` (pregunta 9 bloques + carga la Biblia del Mecanismo) → `mecanismo-problema` + `mecanismo-solucion` + `nombre-chicle` + `objeto-brillante` + `mito-origen` (6 piezas · MD + HTML gigante)
5. `caracteristicas-extractor` + `beneficios-extractor` + `deseos-extractor` + `intangibles-extractor`
6. `promesa-ganadora`
7. `garantia-impresionante` + `objeciones-rotas`
8. `modulos-namer` + `clases-namer`
9. `bonus-architect` + `bonus-irresistible`
10. `valor-percibido`
11. `schwartz-consciousness` + `great-leads-masterson`
12. `offer-master` (ensambla)
13. `angulos-architect` ⭐ **OBLIGATORIO** (5-10 ángulos al 1000% · nombres DESCRIPTIVOS, no raros · por cada uno: A qué apela + Qué cree + CÓMO LO ROMPEMOS + reconocimiento + hook · HTML específico editable)
14. **HANDOFF → `zenith-audience`** ⭐ (auto-invocación · crea el contenido/anuncios a partir de los ángulos)
15. `output-architect` (HTMLs con **branding Zenith** · editables + PDF)
16. `auditor-completo` (score + roadmap)

> ⚠️ La etapa 13 (ángulos) es INNEGOCIABLE y se entrega al 1000%. El plugin NO redacta anuncios: al terminar los ángulos **auto-invoca `zenith-audience`** para crear el contenido a partir de ellos.

## OPTIMIZACIÓN DE COSTES

La versión Zenith reparte el modelo según el peso estratégico de cada agente:

- **Opus 4.7** (caro · solo donde mueve la aguja): `one-belief-creator`, `promesa-ganadora`, `offer-master`, `auditor-completo`, `mecanismo-problema/solucion`. Son los agentes que escriben copy de portada — necesitan el músculo creativo.
- **Sonnet 4.7** (equilibrio): `discovery-master`, `punto-a-b-architect`, `bonus-architect`, `valor-percibido`, `schwartz-consciousness`, `modulos-namer`. Tareas analíticas + estructurales.
- **Haiku 4.7** (barato · alto volumen): `caracteristicas-extractor`, `beneficios-extractor`, `deseos-extractor`, `intangibles-extractor`, `clases-namer`, `output-architect` (HTML). Extracción mecánica + formateo.

Resultado típico: **40-60% menos coste por oferta** vs `/crea-oferta-1pct` ejecutando todo en Opus.

## EJEMPLO DE USO

```
USUARIO: /zenith-crea-oferta app de yoga en silla para mujeres +50 sedentarias

SKILL:
"Recibido. Lanzando 34-zenith-quick-discovery (5 preguntas cortas · 2 min).

⚡ Pregunta 1/5 · ¿Precio objetivo? (low/mid/high ticket)
⚡ Pregunta 2/5 · ¿Resultado en cuánto tiempo? (días/semanas)
⚡ Pregunta 3/5 · ¿Mercado en qué nivel Schwartz? (1-5)
⚡ Pregunta 4/5 · ¿Mecanismo único existente o por construir?
⚡ Pregunta 5/5 · ¿Avatar tiene archetype name o lo creamos?"

[el cliente responde]

SKILL:
"✅ Brief preliminar:
   · Producto: app yoga en silla
   · Avatar: mujeres +50 sedentarias con dolor articular
   · Precio: 17 € low ticket
   · Tiempo: resultados en 14 días
   · Schwartz: 2-3 (problem-aware)
   · Mecanismo: 'yoga silla activa musculatura profunda sin impacto'

🔵 ¿CONFIRMAS para lanzar pipeline completo Zenith (13 etapas · ~45 min · branding dorado)? [SI/NO/AJUSTAR]"

USUARIO: SI

SKILL:
"⚡ Ejecutando pipeline Zenith en proyecto-yoga-silla-50/...
✅ 00 discovery (Sonnet) · brief.html (Zenith)
✅ 01 punto-a-b (Sonnet) · punto-a-b.html
✅ 02 one-belief 4 variantes (Opus) · /02-one-belief/
✅ 03 mecanismo MAESTRO · 6 piezas (causa raíz + problema + solución + nombre chicle + objeto brillante + mito origen) · MD + HTML gigante · 'Yoga en Silla'
...
✅ 11 offer-master (oferta ensamblada)
✅ 12 angulos-architect (3-4 ángulos · 12-angulos/angulos.html editable) ⭐
✅ 13 auditor (Opus) · Score 92/100 · LUZ VERDE Zenith
➡️ Handoff: invocando zenith-audience con los ángulos para crear el contenido

📁 proyecto-yoga-silla-50/ (con HTMLs branding Zenith)
   ├── 00-discovery/ … 11-oferta-completa/
   ├── 12-angulos/          (⭐ SIEMPRE · angulos.html editable + botón Añadir ángulo)
   └── 13-auditoria/
💰 Coste sesión: incluido en tu plan Claude (Pro/Max) · Ref API: 4,20 € (vs 9,80 € estándar · -57%)"
```

> ⚠️ La carpeta `12-angulos/` se crea SIEMPRE (con `angulos.html` editable). Si no aparece, el pipeline está mal.
