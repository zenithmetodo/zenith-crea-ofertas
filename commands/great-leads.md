---
name: great-leads
description: Lanza el agente great-leads-masterson para elegir el TIPO DE LEAD adecuado (Masterson + Forde · Great Leads) según el nivel Schwartz del mercado. 6 tipos canónicos · Offer · Promise · Problem-Solution · Big Secret · Proclamation · Story.
argument-hint: "[opcional: producto + nivel Schwartz detectado · ej: 'mecanismo Monjaro de pobre · Schwartz 2-3']"
---

# /great-leads · El tipo de lead perfecto (Masterson + Forde)

## QUÉ HACE

Aplica el framework canónico de **Mark Ford (Michael Masterson) + John Forde** (*Great Leads · The Six Easiest Ways to Start Any Sales Message* · 2011 · biblia del lead writing en direct response) para elegir el **tipo de lead** correcto según el nivel Schwartz del mercado.

El "lead" es la apertura — los primeros 1-3 párrafos de tu VSL, landing, email o anuncio. Es donde se decide si la persona se queda o se va. Los **6 tipos canónicos** son:

1. **OFFER LEAD** — para Most Aware (Schwartz 5) · empiezas con la oferta directa
2. **PROMISE LEAD** — para Most/Product Aware (Schwartz 4-5) · empiezas con la promesa
3. **PROBLEM-SOLUTION LEAD** — para Solution Aware (Schwartz 3) · agitas problema → presentas solución
4. **BIG SECRET LEAD** — para Solution/Product Aware (Schwartz 2-3) · introduces el mecanismo único como "secreto"
5. **PROCLAMATION LEAD** — para Product/Most Aware (Schwartz 4) · declaración bombástica que rompe creencias
6. **STORY LEAD** — para Unaware/Problem Aware (Schwartz 1-2) · historia que engancha y educa

Cada tipo tiene una estructura, ritmo, longitud y palancas distintas. Elegir mal el tipo = quemar dinero en tráfico.

## CUÁNDO USARLO

- Justo después de `/schwartz-level` (ya sabes el nivel · ahora eliges el lead)
- Antes de escribir el headline + apertura de la landing
- Antes de escribir el guion del VSL o el hook del creativo
- Cuando tu lead actual no engancha (CTR bajo · drop-off en los primeros 10 segundos)
- Cuando vas a montar un email de lanzamiento (el lead del email = primera línea)
- Cuando vas a hacer un A/B test del primer párrafo de la landing

## CÓMO USARLO

```
/great-leads
/great-leads mecanismo Monjaro de pobre · Schwartz 2-3
/great-leads mentoría hombres 1% · Schwartz 4-5
```

## QUÉ AGENTES LANZA

- `great-leads-masterson` (único agente · recomienda tipo + escribe lead modelo)

Lee antes: `${CLAUDE_PLUGIN_ROOT}/knowledge/masterson-forde-great-leads.md`.

Output: carpeta `10-consciencia-sofisticacion/great-leads/` con `recomendacion-tipo.html` + `lead-modelo.html` (los primeros 3 párrafos listos para usar) + `por-que-este-tipo.html` (justificación).

## EJEMPLO DE USO

```
USUARIO: /great-leads producto Monjaro de pobre · adelgazamiento mujeres
         Schwartz nivel 2-3 · mercado Stage 4

SKILL:
"Recibido. Analizo nivel + recomendo tipo de lead.

⚡ DIAGNÓSTICO RÁPIDO
· Nivel Schwartz del avatar: 2-3 (Problem-Aware → Solution-Aware)
· Stage del mercado: 4 (mecanismos copiados a saturación)
· Combinación → tipo recomendado: BIG SECRET LEAD

⚡ POR QUÉ BIG SECRET LEAD

Big Secret Lead es el rey para Schwartz 2-3 en Stage 4 porque:
✓ La avatar ya sabe que tiene el problema (Problem-Aware) → no hay que agitar
✓ Ya ha probado soluciones (Solution-Aware) → tiene escepticismo
✓ Está harta de la misma promesa → necesita una NUEVA forma (mecanismo)
✓ El mercado está saturado → tu mecanismo nombrado ('Monjaro de pobre')
   funciona como el SECRETO que ella busca
✓ La curiosidad rompe el escepticismo

⚡ ESTRUCTURA DEL BIG SECRET LEAD

Párrafo 1 · Curiosidad bombástica (10-30 palabras)
   Anuncia que existe un secreto + introduce el nombre del mecanismo

Párrafo 2 · Por qué nadie te lo dijo antes
   Justifica que sea un secreto · culpa la industria, no al avatar

Párrafo 3 · Promesa específica + invitación a descubrir el cómo
   Cuantifica el resultado + invita a seguir leyendo/cliquear

📄 LEAD MODELO (los primeros 3 párrafos)

P1 — CURIOSIDAD BOMBÁSTICA:
'Las mujeres de Brasil que están adelgazando hasta 14 kilos en 90 días
no usan Monjaro inyectable. Usan algo que llaman 'el Monjaro de pobre' —
y consigues los mismos efectos con 5 ingredientes que ya tienes en tu cocina.'

P2 — POR QUÉ NADIE TE LO DIJO ANTES:
'La industria farmacéutica gana 12.000 millones al año con el Monjaro real.
Por eso nadie te cuenta que existe una versión NATURAL que activa
exactamente la misma hormona (la GLP-1) — sin pinchazos, sin caída de pelo,
sin gastar 1.200€ al mes.'

P3 — PROMESA + INVITACIÓN:
'Esta es la receta exacta · 5 ingredientes · 1 cucharada al día · 81 céntimos
por día. Pierde hasta 14 kg en 90 días o te devolvemos cada euro. Haz el
test rápido aquí abajo para saber cuál es TU combinación personalizada.'

⚡ ALTERNATIVAS (por si quieres testear A/B)

ALT 1 · STORY LEAD (mejor para Schwartz 1-2 Problem-Aware puro)
'Joana tenía 47 años, 31 kg de sobrepeso y la receta del médico para
Monjaro inyectable lista para empezar. La paró su madre, una señora
de pueblo de 78 años. Y le dio una receta de 5 ingredientes...'

ALT 2 · PROCLAMATION LEAD (mejor para Stage 5 disruptivo)
'Te van a decir que necesitas Monjaro. Que necesitas Ozempic. Que necesitas
pinchazos de 1.200€ al mes. Es MENTIRA. Y aquí te explico por qué.'

⚡ RANKING DE TIPOS POR EFICACIA EN TU CASO

🥇 BIG SECRET LEAD ........ 92% match
🥈 STORY LEAD ............. 76% match (mejor para creativos UGC)
🥉 PROCLAMATION LEAD ...... 64% match (mejor para newsletter)
   PROBLEM-SOLUTION ........ 51% match (saturado en el nicho)
   PROMISE LEAD ............ 38% match (no rompe escepticismo)
   OFFER LEAD .............. 12% match (avatar no listo todavía)

📁 Guardado en:
proyecto-monjaro-pobre/10-consciencia-sofisticacion/great-leads/
├── recomendacion-tipo.html (Big Secret Lead · ranking completo)
├── lead-modelo.html (los 3 primeros párrafos · listos para usar)
└── por-que-este-tipo.html (justificación basada en Schwartz + Masterson)

🎯 Próximo paso:
Usa este lead como apertura de:
1. La landing (sustituye los 3 primeros párrafos)
2. El guion del VSL (primeros 60 segundos)
3. El email del lanzamiento (primer párrafo)
4. El hook del anuncio (primeras 4 líneas)

Lanza /audit-oferta cuando hayas integrado el lead para validar coherencia."
```
