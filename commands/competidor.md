---
name: competidor
description: Lanza el competidor-spy. Investiga la Biblioteca de Anuncios de Meta y los 3-5 competidores principales del nicho · extrae sus ángulos · ofertas · garantías · hooks · y detecta el GAP competitivo que TU oferta puede explotar.
argument-hint: "[opcional: nicho + 2-3 competidores conocidos · ej: 'yoga silla · SilverSneakers · Yoga Vista']"
---

# /competidor · Spy de competencia + detección de GAP

## QUÉ HACE

Lanza el agente `40-competidor-spy`, que hace **investigación competitiva real** sobre tu nicho usando WebSearch + WebFetch + Biblioteca de Anuncios de Meta. No se trata de "mirar la web del competidor" — se trata de extraer la inteligencia que necesitas para posicionarte por diferencia, no por imitación.

El agente trabaja en 4 fases:
1. **Identifica los 3-5 competidores principales** del nicho (los que mueven dinero · no los pequeños). Combina búsqueda en Google + scan de Meta Ad Library + cruce con creadores del research-mercado.
2. **Audita sus anuncios activos** en Meta Ad Library — qué ángulos están corriendo · cuánto tiempo llevan vivos (indicador de que funcionan) · qué hooks usan · qué CTAs · qué creatividades repiten.
3. **Disecciona sus ofertas** — precio · garantía · bonus · módulos · One Belief explícito o implícito · qué promesa central usan.
4. **Detecta el GAP competitivo** — qué ángulo nadie está atacando · qué objeción nadie resuelve · qué mecanismo nadie nombra · qué público dentro del avatar nadie está cubriendo.

El output es la **biblia competitiva** que te dice exactamente por dónde meter cuchillo. A diferencia del `research-mercado` (que mira el mercado general · qué se habla · quién manda en contenido), `/competidor` mira específicamente a **quién está vendiendo el mismo producto que tú** y cómo lo está vendiendo.

## CUÁNDO USARLO

- Antes de cerrar el One Belief y la Promesa · para asegurar que no copias al competidor
- Cuando vas a entrar a un mercado y necesitas la fotografía operativa de los 3-5 players principales
- Cuando llevas semanas vendiendo con un ángulo y notas saturación · necesitas saber qué hace el resto para diferenciarte
- Cuando el cliente te pregunta "¿por qué tu oferta es mejor que la de X?" y necesitas argumentos con datos
- Cuando estás diseñando el ángulo de COMPARACIÓN (ej: "Monjaro de pobre" · "Apex de pobre") y necesitas conocer al competidor referencia al milímetro
- Antes de poner la garantía · para asegurar que la tuya bate la suya en al menos un eje

PRE-REQUISITOS:
- **Brief mínimo** (producto + nicho). Si no lo tienes, el agente te pide nicho + 2 keywords.
- **Recomendable haber hecho /research-mercado antes** — así el agente ya tiene la lista de creadores top y puede cruzarla con anunciantes de Meta.

## CÓMO USARLO

```
/competidor
/competidor yoga silla mujeres +50 (SilverSneakers, Yoga Vista, Yoga With Adriene)
/competidor INDI libertad financiera (Apex, Iman Gadzhi, Joel Suárez)
/competidor Bumbum glúteo en casa (Bumbum Na Nuca original, Brazilian Booty)
/competidor Monjaro pérdida de peso (Monjaro real, Noom, Wegovy informativo)
```

Sin argumento, te pide nicho + 2-3 competidores conocidos (si no los sabes, el agente los identifica solo · pero tarda más).

## QUÉ AGENTES LANZA

- `40-competidor-spy` (siempre · trabaja en 4 fases internas · usa WebSearch + WebFetch intensivamente)

Output: HTML `15-competencia.html` en `proyecto-{slug}/15-competencia/` con:
- Ficha por competidor (4-5 fichas · una por player)
- Tabla comparativa cruzada (precio · garantía · ángulo · mecanismo · One Belief inferido)
- Top 10 anuncios vivos del nicho (con captura + tiempo activo + ángulo detectado)
- **Bloque GAP** — el hallazgo más valioso del informe (qué no está cubierto)

## OPTIMIZACIÓN DE COSTES

- `40-competidor-spy` → **Sonnet 4.7** (es investigación intensiva en web · Sonnet maneja bien múltiples WebFetch + análisis estructurado · usar Opus aquí es desperdicio salvo que el nicho sea muy técnico)
- `output-architect` (HTML con tablas + galería) → **Haiku 4.7**

Coste típico: **0,90-1,80 €** por informe (depende de cuántos competidores y cuántas WebFetch hace).

Si el nicho es muy técnico o jurídicamente sensible (salud · financiero regulado), el agente puede pedir promoverse a Opus para esa fase concreta — te lo avisa antes de gastar.

## EJEMPLO DE USO

```
USUARIO: /competidor yoga silla mujeres +50

SKILL:
"Recibido. Lanzando 40-competidor-spy (Sonnet).
Fase 1: identifico competidores principales... (WebSearch + cruce con research-mercado)

✅ 5 competidores identificados:
   1. SilverSneakers (USA · referente institucional)
   2. Yoga Vista / Sherry Zak (USA · chair yoga especialista)
   3. Yoga With Adriene (general · no específico +50)
   4. Cuerpo Sereno (España · pilates +50)
   5. Yoga en Casa con Xuan Lan (España · general)

Fase 2: audito anuncios en Meta Ad Library...
Fase 3: disecciono ofertas...
Fase 4: detecto GAP...

📄 FICHA · SilverSneakers
· Precio: incluido en Medicare (no compite directo en ES)
· Ángulo: institucional/médico
· Garantía: ninguna (es seguro privado)
· Hook típico: 'gentle exercise for seniors'

📄 FICHA · Yoga Vista (Sherry Zak)
· Precio: 19,99 $/mes membership
· Ángulo: especialista chair yoga · autoridad fundadora
· Garantía: 30 días
· Hook típico: 'chair yoga for ALL bodies'
· Anuncios activos: 4 vivos · uno corre desde hace 11 meses (golden creative)

📄 FICHA · Cuerpo Sereno (España)
· Precio: 39 €/mes
· Ángulo: pilates suave España +50
· Garantía: 7 días
· Mecanismo: ninguno con nombre · genérico
· One Belief implícito: 'pilates te devuelve la juventud articular'

[+2 fichas más]

📊 TABLA COMPARATIVA
| Competidor       | Precio  | Ángulo principal     | Garantía | Mecanismo nombrado |
|------------------|---------|----------------------|----------|---------------------|
| SilverSneakers   | gratis* | institucional        | -        | NO                  |
| Yoga Vista       | 19,99$  | autoridad fundadora  | 30 días  | NO                  |
| Yoga Adriene     | gratis  | comunidad mundial    | -        | NO                  |
| Cuerpo Sereno    | 39 €    | pilates suave España | 7 días   | NO                  |
| Xuan Lan         | 14,99€  | general España       | -        | NO                  |

🎯 GAP COMPETITIVO DETECTADO (el oro):
   1. NADIE en España tiene mecanismo nombrado (ej: 'Yoga en Silla')
   2. NADIE ataca el dolor articular específico de la menopausia
   3. NADIE ofrece garantía de 90 días incondicional (max 30)
   4. NADIE usa anti-identidad ('dejar de ser la mujer invisible')
   5. NADIE tiene precio low-ticket España (<17 €)

   → Tu oferta puede atacar los 5 gaps simultáneos.
   → Tu One Belief 'Yoga en Silla es la llave para sentirte ágil otra vez tras la menopausia' es ÚNICO en el mercado ES.

📁 Guardado en: proyecto-yoga-silla-50/15-competencia/15-competencia.html

¿Pasamos los hallazgos al /angulos para reforzar los ángulos con la inteligencia competitiva?"
```
