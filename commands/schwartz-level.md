---
name: schwartz-level
description: Lanza el agente schwartz-consciousness para auditar el nivel de consciencia del avatar (5 niveles · Unaware → Most Aware) y el stage de sofisticación del mercado (5 stages) y validar que tu copy encaje. Diagnóstico + recomendaciones de ajuste.
argument-hint: "[opcional: nicho + copy actual · ej: 'audita el headline de mi landing de glúteo']"
---

# /schwartz-level · La auditoría Eugene Schwartz

## QUÉ HACE

Aplica el framework canónico de **Eugene Schwartz** (*Breakthrough Advertising* · 1966 · biblia del direct response) para auditar:

**A) NIVEL DE CONSCIENCIA del avatar (5 niveles):**

1. **UNAWARE** — no sabe que tiene el problema (vende con story/curiosidad)
2. **PROBLEM-AWARE** — sabe que tiene el problema, no sabe que hay solución (vende con educación + agitación)
3. **SOLUTION-AWARE** — sabe que hay soluciones, no conoce la tuya (vende con diferenciación + mecanismo único)
4. **PRODUCT-AWARE** — conoce tu producto, no compra todavía (vende con prueba + escasez + bonus)
5. **MOST AWARE** — listo para comprar, solo necesita la oferta (vende con offer + urgencia + cierre)

**B) STAGE DE SOFISTICACIÓN del mercado (5 stages):**

1. **STAGE 1** — eres el primero (basta enunciar el producto · "Adelgaza con esta pastilla")
2. **STAGE 2** — hay copia, ya no basta (subes la apuesta · "Adelgaza 5 kg con esta pastilla")
3. **STAGE 3** — saturado, hay que introducir MECANISMO ("Adelgaza 5 kg con la pastilla que activa la hormona X")
4. **STAGE 4** — el mecanismo ya está copiado, hay que renombrarlo ("Monjaro de pobre", "Bumbum na nuca")
5. **STAGE 5** — agotamiento de mercado, hay que vender IDENTIDAD ("Sé la mujer que…")

El agente analiza tu copy actual y te dice: en qué nivel está hablando, qué nivel debería estar atacando, y QUÉ AJUSTAR.

## CUÁNDO USARLO

- Antes de escribir el copy (te dice qué nivel atacar)
- Después de escribir copy y antes de lanzarlo (audita encaje)
- Cuando tu CTR es alto pero la conversión baja (el copy ataca un nivel pero el avatar está en otro)
- Cuando vas a entrar a un nicho saturado (Stage 4-5) y no sabes cómo diferenciarte
- Cuando vas a escalar a un nicho nuevo y necesitas mapear nivel del avatar
- Como auditoría rápida antes de invertir presupuesto pago

## CÓMO USARLO

```
/schwartz-level
/schwartz-level audita el headline de mi landing de glúteo
/schwartz-level mercado adelgazamiento femenino España 2026
```

## QUÉ AGENTES LANZA

- `schwartz-consciousness` (único agente · audita los 2 ejes Schwartz)

Lee antes: `${CLAUDE_PLUGIN_ROOT}/knowledge/schwartz-5-niveles-consciencia.md` + `${CLAUDE_PLUGIN_ROOT}/knowledge/schwartz-5-stages-sofisticacion.md`.

Output: carpeta `10-consciencia-sofisticacion/` con `diagnostico-schwartz.html` + `recomendaciones-ajuste.html` + `copy-reescrito.html` (si pediste auditoría de copy concreto).

## EJEMPLO DE USO

```
USUARIO: /schwartz-level audita: 'Compra mi curso de glúteo. Funciona.'
         Mercado: adelgazamiento femenino España 2026

SKILL:
"Recibido. Audito tu copy + el mercado.

⚡ DIAGNÓSTICO

A) NIVEL DE CONSCIENCIA del COPY actual:
   El copy 'Compra mi curso' = NIVEL 5 (Most Aware)
   Asume que la mujer YA conoce el producto, YA cree en él,
   YA está lista para pagar. Solo necesita el botón.

B) NIVEL REAL del AVATAR en el nicho adelgazamiento femenino España 2026:
   La mayoría está en NIVEL 2-3 (Problem-Aware → Solution-Aware)
   Saben que tienen sobrepeso (Problem-Aware).
   Han probado dietas/gym y no ha funcionado (Solution-Aware).
   NO conocen tu producto (Product-Unaware).

   → DESAJUSTE BRUTAL · 3 niveles de diferencia.
   → Tu copy ataca a 1% del mercado (Most Aware) e ignora el 99%.

C) STAGE DE SOFISTICACIÓN del MERCADO:
   Adelgazamiento femenino España 2026 = STAGE 4-5
   · Stage 4: mecanismos copiados a saturación (keto, ayuno intermitente,
     low carb, Monjaro…)
   · Stage 5 emergente: pivot a IDENTIDAD (ser la mujer empoderada de +40
     que se acepta y mejora · BodyPositive + resultado)

   Tu copy ('compra mi curso') = STAGE 1
   → 4 stages de retraso · invisible en este mercado

⚡ RECOMENDACIONES DE AJUSTE

PARA EL COPY:
1. Cambia de Most Aware → Solution-Aware (atacas al 60% del mercado)
2. Introduce MECANISMO con nombre chicle (Stage 4)
3. Conecta con IDENTIDAD aspiracional (Stage 5)

📄 COPY REESCRITO (3 versiones):

V1 · SOLUTION-AWARE + MECANISMO
'Si llevas años probando dietas y vuelves al mismo peso, no eres tú.
Es que tu cuerpo perdió la sensibilidad a la GLP-1 — la hormona quema-grasa.
Reactívala en 30 días con el Monjaro de Pobre · 5 ingredientes naturales.'

V2 · SOLUTION-AWARE + IDENTIDAD
'Para la mujer +35 que está harta de empezar el lunes y abandonar el viernes.
Hay otra forma. Una que ya están usando +12.000 mujeres en España.
Se llama Monjaro de Pobre.'

V3 · PROBLEM-AWARE (atacar al 80% del mercado · cuello más amplio)
'¿Por qué sigues engordando aunque comas poco?
La respuesta NO es comer menos. Es activar una hormona específica
que el 90% de las mujeres tiene bloqueada. Te enseño cómo · gratis.'

📊 IMPACTO ESTIMADO DEL CAMBIO:
· CTR creativo: +180% (V3 ataca mayor cuello del mercado)
· Conversión landing: +120% (V1/V2 encajan con avatar real)
· CAC: -45%

📁 Guardado en:
proyecto-monjaro-pobre/10-consciencia-sofisticacion/
├── diagnostico-schwartz.html (nivel actual vs nivel ideal)
├── recomendaciones-ajuste.html
└── copy-reescrito.html (V1, V2, V3 listas para A/B)

🎯 Próximo paso:
Lanza /great-leads para elegir el TIPO DE LEAD adecuado al
nivel Schwartz detectado (Story Lead para V3 · Big Secret para V1)."
```
