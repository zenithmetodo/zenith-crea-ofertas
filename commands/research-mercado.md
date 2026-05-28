---
name: research-mercado
description: Lanza en paralelo el research-reddit + research-youtube. Investigación REAL del mercado con WebSearch + WebFetch (no se inventa nada). Saca 30+ frases textuales del avatar, top creadores del nicho, tendencias y formatos que funcionan. Combina ambos outputs en un único HTML.
argument-hint: "[opcional: nicho + keywords · ej: 'yoga silla mujeres 50' o 'libertad financiera hombres +30']"
---

# /research-mercado · Investigación REAL (Reddit + YouTube en paralelo)

## QUÉ HACE

Lanza **dos investigaciones en paralelo** sobre tu nicho usando WebSearch + WebFetch — no inventa absolutamente nada, todo lo que entrega son citas textuales y datos verificables.

- `36-research-reddit` rastrea los subreddits relevantes del nicho, extrae **30+ frases textuales** del avatar (quejas, deseos, miedos, palabras propias), detecta los hilos más comentados de los últimos 12 meses y resume los patrones recurrentes que se repiten.
- `37-research-youtube` localiza los **top creadores del nicho** (los 10-20 que mueven la conversación), analiza títulos virales (los que pasan de X views), saca formatos que funcionan (cómo abren · cómo cierran · qué CTAs usan) y detecta las **tendencias del último trimestre**.

Al terminar, ambos outputs se combinan en un único HTML `13-research-mercado.html` que vas a usar como **biblia del nicho** para todo el resto del pipeline: el lenguaje literal pasa a headlines, las objeciones a la garantía, los formatos virales al copy de ads, los creadores top como inspiración de tono.

A diferencia del `avatar-deep` (que es psicología profunda de UN avatar), este comando es **inteligencia de mercado horizontal** — qué se habla, quién manda, qué funciona.

## CUÁNDO USARLO

- Después del discovery + avatar-deep · antes de escribir cualquier copy
- Cuando entras a un nicho nuevo y no tienes contexto operativo (qué se dice · quién manda)
- Cuando vas a hacer creatividades de ads y necesitas referencias reales (no inventadas)
- Cuando vas a redactar el One Belief y necesitas validar que la creencia que vas a instalar tiene tracción real
- Cuando quieres detectar el GAP que nadie está cubriendo en el nicho

PRE-REQUISITOS: necesita **brief mínimo** (producto + nicho + avatar). Idealmente ya tienes el `12-avatar-deep.html` hecho para que el research apunte a los lugares correctos.

## CÓMO USARLO

```
/research-mercado
/research-mercado yoga silla mujeres +50 dolor articular
/research-mercado libertad financiera hombres +30 vs salario fijo
/research-mercado Bumbum glúteo brasileño cuerpo post-parto
/research-mercado Monjaro pérdida de peso sin gym
```

Sin argumento, te pide nicho + 3-5 keywords y arranca.

## QUÉ AGENTES LANZA

**En paralelo** (ahorra tiempo · ambos son independientes):
- `36-research-reddit` (WebSearch sobre Reddit + WebFetch de los hilos top · extrae citas textuales)
- `37-research-youtube` (WebSearch sobre YouTube + análisis de top creadores · extrae títulos y formatos)

**Después · en secuencia:**
- `output-architect` combina ambos outputs en `13-research-mercado.html`

Output: HTML único con 4 bloques (frases textuales · objeciones repetidas · top creadores · tendencias + formatos).

## OPTIMIZACIÓN DE COSTES

- `36-research-reddit` → **Sonnet 4.7** (WebSearch barato · análisis de texto medio · no necesita Opus para extraer citas)
- `37-research-youtube` → **Sonnet 4.7** (igual · análisis de títulos + descripciones)
- `output-architect` (HTML combinado) → **Haiku 4.7** (formateo)

Coste típico: **0,60-1,20 €** por investigación completa (depende de cuántas WebFetch hace).

**Regla crítica**: ningún agente puede inventar. Si no hay datos suficientes en la web sobre el nicho, el agente lo declara explícitamente en el output ("baja densidad de conversación en Reddit ES · sugiero ampliar a subreddits EN").

## EJEMPLO DE USO

```
USUARIO: /research-mercado yoga silla mujeres +50 dolor articular

SKILL:
"Recibido. Lanzando research-reddit + research-youtube en paralelo.

⚡ 36-research-reddit (Sonnet) · rastreando r/menopause, r/yoga, r/SilverSneakers, r/seniorfitness, r/spainfitness...
⚡ 37-research-youtube (Sonnet) · buscando 'silla yoga +50', 'chair yoga over 50', 'yoga menopausia'...

✅ research-reddit terminado · 47 frases textuales extraídas
✅ research-youtube terminado · 18 creadores top · 24 títulos virales

📄 BLOQUE 1 · FRASES TEXTUALES DEL AVATAR (extracto)
'I can't do floor yoga anymore · my knees won't let me'
'After menopause my body feels like it's not mine'
'Tengo 54 y siento que entré en otro cuerpo de la noche a la mañana'
'I want to feel strong again · not skinny'
'My doctor told me to exercise but I don't even know where to start'
[+42 frases más]

📄 BLOQUE 2 · OBJECIONES REPETIDAS
· 'too late for me to start'
· 'I'll get hurt'
· 'gyms are intimidating'
· 'I don't have time / I'm too tired'

📄 BLOQUE 3 · TOP CREADORES YOUTUBE
1. Yoga With Adriene · 12M subs (no específica edad pero referente)
2. SilverSneakers · 200k subs (oficial · enfoque +65)
3. SeniorShape Fitness · 480k subs
4. Yoga Vista (Sherry Zak) · 320k subs (especialista chair yoga)
...

📄 BLOQUE 4 · FORMATOS QUE FUNCIONAN
· Hooks: '10 minute' · 'gentle' · 'beginner-friendly' · 'no floor'
· Duración óptima: 15-25 min
· Thumbnail: mujer +50 sonriendo · ropa colorida · NO modelos jóvenes
· CTAs: 'comment with your age' · 'subscribe for daily 10-min routines'

📁 Guardado en: proyecto-yoga-silla-50/13-research-mercado/13-research-mercado.html

🎯 Hallazgo clave: nadie está cubriendo el segmento ESPAÑOL +50 con chair yoga · GAP claro."
```
