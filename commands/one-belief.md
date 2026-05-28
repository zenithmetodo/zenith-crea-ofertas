---
name: one-belief
description: Lanza el agente one-belief-creator (+ identidad-anti-identidad + nueva-oportunidad) para generar las 4 variantes canónicas del One Belief Statement de Evaldo Albuquerque. Identidad pura · Anti-identidad · Nueva oportunidad · Combo.
argument-hint: "[opcional: producto + avatar en 1 frase · ej: 'método para hombres +50 recuperar testosterona']"
---

# /one-belief · 4 variantes del One Belief

## QUÉ HACE

Construye el **One Belief Statement** — la creencia única que, una vez instalada en la mente del prospecto, vuelve la compra inevitable. Sigue la fórmula exacta de Evaldo Albuquerque (autor de *The 16-Word Sales Letter*, copywriter ex-Agora Financial con +1.000 millones $ generados):

> *"La **[NUEVA OPORTUNIDAD]** es la llave para obtener **[RESULTADO DESEADO]**, y eso solo es posible a través de **[NUEVO MECANISMO]**."*

A diferencia de un copywriter que entrega 1 sola versión, este comando **siempre genera 4 variantes** (regla innegociable de esta skill) para que escojas la que mejor encaje con el nivel Schwartz de tu mercado: identidad pura · anti-identidad · nueva oportunidad/fenómeno · combo identidad+anti-identidad.

## CUÁNDO USARLO

- Cuando tienes el avatar y el resultado claro pero no la frase ancla del embudo
- Cuando ya tienes un One Belief pero suena flojo y quieres 3 alternativas mejores
- Cuando vas a escribir el headline de la landing y necesitas saber qué creencia anclar
- Cuando vas a escribir el hook del VSL/Reel y necesitas el ancla mental del prospecto
- Antes de escribir bullets, emails, garantía — todo gira en torno al One Belief

## CÓMO USARLO

```
/one-belief
/one-belief método para hombres +50 recuperar testosterona
/one-belief app glúteo en casa para mujeres con vergüenza al cuerpo
```

Si no pasas argumento, el agente te hace 3 preguntas mínimas: ¿qué resultado deseado?, ¿qué mecanismo único?, ¿qué identidad/fenómeno aspiracional?

## QUÉ AGENTES LANZA

- `one-belief-creator` (crack en la fórmula Evaldo · genera las 4 variantes)
- `identidad-anti-identidad` (refuerza V1, V2 y V4 con dualidad psicológica)
- `nueva-oportunidad` (refuerza V3 con framing de "fenómeno inédito")

Output: carpeta `02-one-belief/` con 4 HTML estéticos (uno por variante) + `comparativa.html` para elegir.

## EJEMPLO DE USO

```
USUARIO: /one-belief renta extra desde casa con Reels para padres 30-45

SKILL:
"Recibido. Vamos a generar 4 variantes del One Belief.

Primero, 3 micro-preguntas:
1. Resultado deseado: ¿cuánto/mes y en cuánto tiempo?
2. Mecanismo: ¿cómo se llama tu método?
3. Identidad / Anti-identidad: ¿en qué persona quiere convertirse el avatar?
                              ¿de qué persona quiere dejar de ser?"

USUARIO: "1) 900$/semana en 30 días · 2) Método Blasting · 3) Quiere ser proveedor referente
        de la familia · Dejar de ser el padre invisible que llega tarde"

SKILL:
"✅ Generando las 4 variantes canónicas...

📄 V1 · IDENTIDAD PURA
'Ser el padre proveedor que tu familia mira con orgullo es la llave para
ganar 900$/semana desde casa, y eso solo es posible a través del Método Blasting.'

📄 V2 · ANTI-IDENTIDAD
'Dejar de ser el padre invisible que llega tarde y nadie escucha es la llave
para ganar 900$/semana desde casa, y eso solo es posible a través del Método Blasting.'

📄 V3 · NUEVA OPORTUNIDAD
'Extraer dinero del rincón oculto de Reels que el 98% de los creadores ignora
es la llave para ganar 900$/semana, y eso solo es posible a través del Método Blasting.'

📄 V4 · COMBO IDENTIDAD + ANTI-IDENTIDAD
'Pasar de padre invisible que llega tarde a proveedor referente del hogar es
la llave para ganar 900$/semana desde casa, y eso solo es posible a través
del Método Blasting.'

📁 Guardado en:
proyecto-metodo-blasting/02-one-belief/
├── v1-identidad-pura.html
├── v2-anti-identidad.html
├── v3-nueva-oportunidad.html
├── v4-combo.html
└── comparativa.html

🎯 Recomendación (basada en Schwartz del nicho 'renta extra' que está
   en Stage 3-4 de sofisticación):
   → V3 (Nueva oportunidad) para creatividad rompescroll
   → V4 (Combo) para landing + checkout

¿Quieres que afine alguna variante o lanzamos el siguiente agente del pipeline?"
```
