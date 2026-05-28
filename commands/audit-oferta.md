---
name: audit-oferta
description: Lanza el agente auditor-completo · 200+ checklist en 12 bloques. Genera score global 0-100, lista de fixes priorizados, veredicto luz verde/ámbar/rojo y roadmap de optimización. La auditoría final antes de soltar tráfico.
argument-hint: "[opcional: oferta a auditar · ej: 'proyecto-bumbum-na-nuca' o 'mi landing actual']"
---

# /audit-oferta · La auditoría 200+ ítems antes del tráfico

## QUÉ HACE

Lanza el `auditor-completo` — el agente más severo del plugin. Pasa tu oferta por una **checklist de 200+ ítems organizados en 12 bloques** (uno por etapa del pipeline). Cada ítem vale 0-1 punto. Score final 0-100. Veredicto en 3 colores:

- **LUZ VERDE (85-100)** → oferta lista para soltar tráfico pago
- **LUZ ÁMBAR (60-84)** → oferta viable pero con fugas · fixes priorizados
- **LUZ ROJA (0-59)** → no soltar tráfico · roadmap obligatorio

Los 12 bloques (uno por carpeta del proyecto):

1. **Brief estratégico** — discovery completo · viabilidad
2. **Punto A → Punto B** — cuantificable · realista · emocional
3. **One Belief** — 4 variantes · fórmula Evaldo · encaje con avatar
4. **Mecanismo** — desdoblado problema/solución · nombre chicle · 3 reglas
5. **Características → Beneficios → Deseos** — cadena completa · intangibles
6. **Promesa** — 5 componentes · alineada con One Belief
7. **Garantía** — nombrada · rompe objeciones top · texto legal
8. **Módulos + Clases** — carta de ventas invisible · fórmula aplicada
9. **Bonus** — 5 categorías · irresistibles · stack desdoblado
10. **Valor Percibido** — Bencivenga · 7 capas credibilidad · costo minimizado
11. **Consciencia + Sofisticación** — Schwartz auditado · ajustes hechos
12. **Great Leads** — tipo correcto · lead modelo escrito

Para cada bloque entrega: score (0-100) + ítems fallados + fixes priorizados + tiempo estimado de fix.

## CUÁNDO USARLO

- ANTES de soltar tráfico pago (obligatorio · te ahorra 1.000s de €)
- DESPUÉS de cualquier cambio mayor en la oferta
- Cuando los números no salen y no sabes qué falla
- Como check semanal en una oferta en escala (deteca degradación)
- Cuando te pasan una oferta de otra persona y necesitas evaluarla rápido
- Antes de subir un precio (audita si el valor percibido aguanta)

## CÓMO USARLO

```
/audit-oferta
/audit-oferta proyecto-bumbum-na-nuca
/audit-oferta mi landing actual en bumbumnanuca.app
```

Si no pasas argumento, audita el último proyecto que ejecutaste.

## QUÉ AGENTES LANZA

- `auditor-completo` (único agente · más severo · 200+ ítems)

Output: carpeta `12-auditoria/` con `score-global.html` (dashboard) + `bloques-detalle.html` (cada bloque pieza por pieza) + `fixes-priorizados.html` (lista accionable) + `roadmap-optimizacion.html` (qué hacer la próxima semana).

## EJEMPLO DE USO

```
USUARIO: /audit-oferta proyecto-bumbum-na-nuca

SKILL:
"Recibido. Auditando los 200+ ítems en 12 bloques.

⚡ DASHBOARD EJECUTIVO

SCORE GLOBAL: 84/100 · 🟡 LUZ ÁMBAR
Veredicto: viable para tráfico pero con fugas · 4 fixes críticos

⚡ DESGLOSE POR BLOQUE

01 · BRIEF              ████████████████░░  87/100  ✅
02 · PUNTO A → B        ███████████████░░░  82/100  ✅
03 · ONE BELIEF         ██████████████████  95/100  ✅
04 · MECANISMO          ██████████████████  98/100  ✅★
05 · CAR → BEN → DES    █████████████░░░░░  73/100  ⚠️
06 · PROMESA            ████████████████░░  85/100  ✅
07 · GARANTÍA           ███████████████░░░  82/100  ✅
08 · MÓDULOS/CLASES     ████████████░░░░░░  68/100  ⚠️
09 · BONUS              ███████████████░░░  84/100  ✅
10 · VALOR PERCIBIDO    ████████████████░░  88/100  ✅
11 · CONSCIENCIA        █████████████░░░░░  75/100  ⚠️
12 · GREAT LEADS        █████████████████░  92/100  ✅

⚡ 4 FIXES CRÍTICOS (prioridad 🔴)

🔴 FIX 1 · Bloque 05 Beneficios débiles (impacto: +12% conversión)
Problema: 6 de 12 beneficios son técnicos · no emocionales
Solución: pásalos por agente beneficios-extractor + deseos-extractor
Tiempo: 30 min · ROI estimado: ALTO

🔴 FIX 2 · Bloque 08 Clases sin fórmula (impacto: +8% percepción)
Problema: 14 de 21 clases tienen nombre plano ('Día 5 · Sentadilla')
Solución: relanza /modulos para aplicar Elemento × Identificación × Objeción
Tiempo: 45 min · ROI estimado: MEDIO-ALTO

🔴 FIX 3 · Bloque 11 Copy en Most Aware ataca Solution Aware (impacto: -30% CTR)
Problema: el headline de la landing presupone que ya conoce el producto
Solución: relanza /schwartz-level + reescribe con Big Secret Lead
Tiempo: 1h · ROI estimado: ALTO

🔴 FIX 4 · Bloque 05 Faltan intangibles (impacto: +5% valor percibido)
Problema: solo hay 2 intangibles · oferta se siente plana
Solución: relanza intangibles-extractor · saca 5-7 más
Tiempo: 20 min · ROI estimado: MEDIO

⚡ ROADMAP DE OPTIMIZACIÓN (próxima semana)

DÍA 1 · Lunes
  · Fix 3 (1h) — copy en Big Secret Lead
  · Fix 1 (30 min) — beneficios emocionales
  · Test A/B en quiz

DÍA 2 · Martes
  · Fix 2 (45 min) — naming clases con fórmula
  · Fix 4 (20 min) — intangibles

DÍA 3 · Miércoles
  · Re-auditoría /audit-oferta
  · Target: 92+/100 LUZ VERDE

DÍA 4-7 · Tráfico
  · Si score 92+, lanzar tráfico pago en los 3 días viernes-domingo
  · Validación 300€ · 3 conjuntos · ABO + CBO

⚡ FORTALEZAS A NO TOCAR

★ Mecanismo (98/100) — el Bumbum na Nuca es perfecto · NO cambiar
★ One Belief (95/100) — 4 variantes potentes · NO tocar
★ Great Leads (92/100) — Big Secret bien construido

📁 Guardado en:
proyecto-bumbum-na-nuca/12-auditoria/
├── score-global.html (dashboard ejecutivo)
├── bloques-detalle.html (cada bloque · 200+ ítems)
├── fixes-priorizados.html (los 4 fixes accionables)
└── roadmap-optimizacion.html (próximos 7 días)

🎯 Próximo paso:
Ejecuta los 4 fixes en orden · re-audita · cuando llegues a 92+
suelta el tráfico de validación los 3 días (vie-sáb-dom).
La oferta tiene huesos buenos · solo le falta pulido."
```
