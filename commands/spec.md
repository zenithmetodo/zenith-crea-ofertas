---
name: spec
description: PRE-FASE del pipeline · arranca el proyecto con un spec guiado por especificación antes de gastar tokens. Lanza spec-architect (enmarca el proyecto) → spec-reviewer (lo audita y clasifica por severidad 🔴🟠🟡🟢) → ⏸️ VALIDACIÓN HUMANA → plan-architect (plan.md de todo + plan de research). Nada del pipeline avanza sin que la persona valide.
argument-hint: "[opcional: la idea cruda · ej: 'oferta low ticket adelgazamiento Monjaro de pobre']"
---

# /spec · Enmarca, revisa, valida y planifica antes de construir

## QUÉ HACE

Arranca cualquier proyecto de oferta con el **gate de calidad guiado por especificación**, igual que el desarrollo serio empieza por un spec antes de escribir código. Cuatro pasos:

1. **`spec-architect`** → convierte tu idea cruda en un **SPEC** (objetivo · alcance qué SÍ/qué NO · entregables · criterios de éxito medibles · supuestos · restricciones · riesgos · preguntas abiertas).
2. **`spec-reviewer`** → audita el spec en 12 ejes y **clasifica cada hallazgo por severidad**:
   - 🔴 **Crítico** (bloquea · proyecto falla o es inviable/ilegal)
   - 🟠 **Alto** (riesgo serio · arreglar antes de lanzar)
   - 🟡 **Moderado** (mejora importante · no bloqueante)
   - 🟢 **Bajo** (pulido · opcional)
   - Veredicto: ✅ aprobar / 🔁 iterar / ⛔ parar.
3. **⏸️ VALIDACIÓN HUMANA (gate)** → tú decides: aprobar, iterar (se corrige y se vuelve a revisar) o parar. **Nada avanza sin tu OK.**
4. **`plan-architect`** (solo tras tu aprobación) → genera el **`plan.md` de TODO**: mitigaciones de los hallazgos, plan de research (qué investigar primero), secuencia de ejecución del pipeline, checkpoints humanos y criterios de cierre.

> Sin spec validado, no se construye la oferta. Este gate evita gastar todo el pipeline sobre un marco roto.

## CUÁNDO USARLO

- Al EMPEZAR cualquier proyecto de oferta (es el primer paso recomendado).
- Cuando quieres alinear el alcance con tu equipo/cliente antes de ejecutar.
- Cuando la idea aún es difusa y necesitas enmarcarla y ver sus riesgos.

## CÓMO USARLO

```
/spec
/spec oferta low ticket adelgazamiento natural tipo 'Monjaro de pobre'
/spec mentoría high ticket para coaches que no consiguen clientes
```

## QUÉ AGENTES LANZA

- `spec-architect` (enmarca · `00-spec/spec.md` + `.html`)
- `spec-reviewer` (audita por severidad · `00-spec/spec-review.md` + `.html`)
- `plan-architect` (plan + research · `00-spec/plan.md` + `plan.html` + `research-plan.md`)

Output: carpeta `00-spec/` con MD + HTML de cada pieza. Tras la validación, hace handoff al `discovery-master` para arrancar el pipeline real.

## EJEMPLO DE USO

```
USUARIO: /spec oferta low ticket adelgazamiento 'Monjaro de pobre'

SKILL:
"⚡ Paso 1 — spec-architect enmarca el proyecto
📄 SPEC generado (00-spec/spec.md):
   · Objetivo: oferta 17 € que escale en Meta/TikTok con mecanismo en alta
   · Alcance: SÍ oferta 13 bloques + mecanismo · NO producción de vídeos ni tráfico
   · Criterios: auditor >= 85 · mecanismo en 1 frase · garantía sostenible
   · Supuestos / Riesgos / Preguntas abiertas listados

⚡ Paso 2 — spec-reviewer audita por severidad
🔴 CRÍTICOS (1): claim médico comparado al Monjaro → riesgo de ban en Meta
🟠 ALTOS (2): garantía sin tasa real · stage 5 saturado
🟡 MODERADOS (3) · 🟢 BAJOS (1)
📊 VEREDICTO: 🔁 ITERAR

⏸️ Tú decides: [A] Aprobar  [I] Iterar  [P] Parar

(esperando tu validación · no avanzo sin tu OK)

— si apruebas —
⚡ Paso 3 — plan-architect genera el plan.md de todo + research-plan
🎯 Próximo paso: discovery-master arranca el pipeline real."
```
