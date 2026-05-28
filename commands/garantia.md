---
name: garantia
description: Lanza el agente garantia-impresionante para diseñar la garantía que blinda la promesa — eligiendo entre los 11 tipos canónicos (incondicional, condicional, de resultado, doble, triple, de proceso, paga después, mejor que gratis…) + nombre atractivo + texto legal-friendly + diseño visual.
argument-hint: "[opcional: tipo de oferta + tasa de éxito · ej: 'oferta low ticket 17€ con 70% éxito']"
---

# /garantia · La que rompe el último miedo

## QUÉ HACE

Diseña la **Garantía Impresionante** que blinda tu promesa y rompe la última objeción antes del checkout. No es una garantía genérica de "30 días de devolución" — es una garantía NOMBRADA, específica al mecanismo y la promesa, que SIRVE COMO ARGUMENTO DE VENTA.

Elige entre los **11 tipos canónicos** según el contexto (tasa de éxito real, precio, riesgo percibido, fase del embudo):

1. **Incondicional clásica** (la más usada · "30/60/90 días te devolvemos sin preguntas")
2. **Condicional al proceso** ("si haces los pasos X, Y, Z y no funciona…")
3. **De resultado** ("si no pierdes 5 kg, te devolvemos")
4. **Doble** (devolución + un bonus extra al irte)
5. **Triple** (devolución + bonus + dinero adicional · "te pagamos por probarlo")
6. **De proceso** ("garantizamos el acompañamiento, no el resultado")
7. **Paga después** ("usa 30 días y luego decides si pagas")
8. **Mejor que gratis** ("te devolvemos MÁS de lo que pagaste")
9. **Garantía de la garantía** ("si nuestra garantía no se cumple, también")
10. **Sin riesgo de la marca** ("yo asumo todo el riesgo")
11. **Garantía vitalicia** (lifetime para info-productos de alto ticket)

A cada garantía se le pone un **nombre atractivo** ("Garantía Tranquilidad 90", "Promesa Cero Riesgo", "Pacto de Resultado") y un **texto legal-friendly** listo para web.

## CUÁNDO USARLO

- Justo después de construir la promesa (la garantía la protege)
- Cuando tu tasa de devolución es alta y necesitas reducir el miedo del prospecto
- Cuando tu producto es nuevo en el mercado y el avatar no te conoce
- Cuando la competencia ofrece garantías débiles (oportunidad para diferenciarte)
- Cuando vas a subir el precio y necesitas justificarlo con menor riesgo
- Antes del checkout — la garantía es lo último que ve el avatar

## CÓMO USARLO

```
/garantia
/garantia oferta low ticket 17€ con 70% éxito
/garantia mentoría high ticket 2000€ con resultados garantizables
```

## QUÉ AGENTES LANZA

- `garantia-impresionante` (recomienda tipo + diseña texto + propone nombre)
- `objeciones-rotas` (lista las objeciones que la garantía debe romper · prioridad)

Output: carpeta `06-garantia/` con `garantia-recomendada.html` + 2 alternativas + análisis de qué objeciones rompe + texto legal-ready.

## EJEMPLO DE USO

```
USUARIO: /garantia mi app PWA glúteo 17€ con 70% de éxito real

SKILL:
"Recibido. Voy a recomendar el tipo + nombre + texto.

⚡ Análisis del contexto:
· Precio bajo (17€) → riesgo bajo · puedes ser AGRESIVO
· Tasa éxito 70% → margen suficiente para incondicional 90 días
· Producto digital → coste marginal cero · no pierdes por devolución
· Mercado low ticket femenino → garantía emocional > técnica

⚡ Objeciones que esta garantía debe romper (orden de impacto):
1. 'Ya he probado todo y nada me funciona' (TOP)
2. 'No tengo tiempo, no voy a poder seguir el ritmo'
3. '¿Y si no me adapto a la app?'
4. '¿Es estafa? No te conozco'

📄 GARANTÍA RECOMENDADA:
TIPO: Incondicional clásica + nombre emocional

NOMBRE: 'Garantía Bumbum Garantizado 90 Días'

TEXTO LEGAL-FRIENDLY:
'Si en los próximos 90 días no ves a tu glúteo levantarse,
no notas las miradas cambiar o simplemente cambias de idea,
te devolvemos los 17 euros COMPLETOS. Sin preguntas. Sin formularios.
Sin culpa. Escribes un email a soporte@bumbumnanuca.app con la
palabra DEVOLUCIÓN y en 48 horas tienes el dinero de vuelta.

El riesgo lo asumimos NOSOTRAS. Tú solo pones 21 días de tu vida.'

📄 2 ALTERNATIVAS (por si tu compliance pide algo distinto):

ALT 1 · Garantía de Resultado
'Si en 21 días siguiendo el plan no ves resultados visibles en
el espejo, te devolvemos el doble · 34 euros. Garantía Bumbum o Doble.'

ALT 2 · Garantía Paga Después
'Empieza GRATIS. 7 días dentro de la app. Si te encanta, pagas los 17€.
Si no, no pagas nada. Garantía Bumbum Cero Riesgo.'

⚡ Análisis qué objeciones rompe:
✓ 'Ya he probado todo' → 90 días + sin preguntas = riesgo 0 emocional
✓ 'No tengo tiempo' → 'Sin formularios. Sin culpa.' (libera de la culpa)
✓ '¿Y si no me adapto?' → 'cambias de idea' (incluye este caso)
✓ '¿Es estafa?' → '48 horas tienes el dinero' (concreto = confiable)

📁 Guardado en:
proyecto-bumbum-na-nuca/06-garantia/
├── garantia-recomendada.html (Garantía Bumbum Garantizado 90 Días)
├── alternativas.html (de Resultado + Paga Después)
├── objeciones-rotas.html (mapeo objeción → cómo la rompe)
└── texto-legal.html (listo para pegar en la landing)

🎯 Próximo paso: lanza /bonus o /modulos para seguir el pipeline."
```
