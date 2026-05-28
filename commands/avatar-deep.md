---
name: avatar-deep
description: Lanza el agente avatar-deep-psicologo (psicólogo experto en mercado) para construir el avatar completo — archetype name, día en la vida hora por hora, lenguaje literal del avatar y deal-makers psicológicos. Encadena opcionalmente mapa de empatía + extractor de deal-makers.
argument-hint: "[opcional: producto + nicho · ej: 'app glúteo mujeres 25-50' o 'INDI hombres +30 libertad']"
---

# /avatar-deep · Avatar profundo (psicólogo experto)

## QUÉ HACE

Construye el **avatar más profundo** que vas a tener en tu vida. No es una ficha demográfica de 6 líneas — es un dossier psicológico completo que un buen copywriter tarda semanas en sacar a fuerza de entrevistas. Lo hace el agente `35-avatar-deep-psicologo`, que combina conocimiento de psicología (Jung · arquetipos · jerarquía Maslow · 4 deseos universales · core fears) con técnicas de research del direct response (deep customer research · voice of customer · jobs to be done).

El output cubre 5 capas: (1) **archetype name** — cómo se llama el avatar en una etiqueta tipo "La Mujer Invisible de los 40", "El Padre Proveedor Fantasma", "El Joven Frustrado del Salario Fijo"; (2) **día en la vida hora por hora** — qué hace de 7:00 a 23:00, qué le duele, qué le inspira, qué consume; (3) **lenguaje literal** — palabras exactas que usa para describir su problema (las mismas que después pegas en headlines y bullets); (4) **deal-makers** — los 5-7 botones psicológicos que, si los tocas, hacen que compre; (5) **deal-breakers** — qué objeciones lo congelan.

Opcionalmente encadena el `38-avatar-mapa-empatia` (lo que piensa/siente/escucha/ve) y el `41-deal-makers-extractor` (versión expandida de los deal-makers con jerarquía de impacto).

## CUÁNDO USARLO

- Antes de escribir cualquier copy de la oferta — el avatar manda
- Cuando tienes brief pero NO tienes claro a quién le hablas en concreto
- Cuando vas a investigar Reddit/YouTube y necesitas la pista de a quién buscar
- Cuando quieres validar/recalibrar un avatar existente con capa psicológica seria
- Cuando vas a hacer creatividades de ads y necesitas el "día en la vida" para situarlas

PRE-REQUISITOS: necesita el **brief del discovery** (mínimo producto + nicho + resultado). Si no lo tienes, lánzalo después de `/zenith-crea-oferta` (que ya hace discovery) o pásaselo en el argumento.

## CÓMO USARLO

```
/avatar-deep
/avatar-deep app glúteo en casa para mujeres 25-50 con vergüenza al cuerpo
/avatar-deep INDI hombres +30 libertad financiera vs salario fijo
/avatar-deep Bumbum brasileña con cuerpo cambiado tras hijos
/avatar-deep Monjaro de pobre para gente +35 que perdió la motivación
```

Sin argumento, te hace 3 micro-preguntas (producto · nicho · dolor principal) y arranca.

## QUÉ AGENTES LANZA

- `35-avatar-deep-psicologo` (siempre · genera dossier psicológico de 5 capas)
- `38-avatar-mapa-empatia` (opcional · si pides "+ mapa empatía" o si el agente padre lo recomienda)
- `41-deal-makers-extractor` (opcional · si pides "+ deal-makers" o si vas a redactar oferta)

Output: HTML `12-avatar-deep.html` en `proyecto-{slug}/12-avatar-deep/` (con secciones desplegables y look print-to-PDF Zenith).

## OPTIMIZACIÓN DE COSTES

- `35-avatar-deep-psicologo` → **Opus 4.7** (es trabajo de copywriter senior · necesita matiz psicológico real · sin Opus saca arquetipos genéricos)
- `38-avatar-mapa-empatia` → **Sonnet 4.7** (estructura tipo template · Sonnet basta)
- `41-deal-makers-extractor` → **Sonnet 4.7** (extrae del output anterior · no inventa)
- HTML final (`output-architect`) → **Haiku 4.7** (formateo)

Coste típico: **0,80-1,40 €** por avatar deep completo.

## EJEMPLO DE USO

```
USUARIO: /avatar-deep app de yoga en silla para mujeres +50 sedentarias

SKILL:
"Recibido. Lanzando 35-avatar-deep-psicologo (Opus).

📄 ARCHETYPE NAME
'La Mujer Invisible de los 50'
(perdió motivación tras la menopausia · siente que el cuerpo ya no le responde · se mira al espejo y no se reconoce · evita la playa · pero por dentro hay rabia + ganas de volver a sentirse ella)

📄 DÍA EN LA VIDA (jueves cualquiera)
07:00 · se despierta con dolor lumbar · 'otra vez igual'
07:30 · café · scroll Instagram · ve a otras mujeres entrenando · culpabilidad
...
22:00 · sofá · serie · plato dulce · 'mañana empiezo'
23:00 · cama · piensa 'tengo que hacer algo · pero no sé qué ni puedo con un gym'

📄 LENGUAJE LITERAL (palabras suyas · pégalas en headlines)
· 'estoy oxidada'
· 'no me reconozco al espejo'
· 'no puedo con un gimnasio normal · me daría vergüenza'
· 'mi marido ya ni me mira igual'
· 'quiero sentirme yo otra vez · no estar buenísima'

📄 DEAL-MAKERS (los 7 botones que la convierten)
1. Sin gimnasio (no quiere que la vean)
2. Sin impacto (le duelen rodillas)
3. En casa · ropa cómoda
4. Resultados visibles en 14 días (necesita prueba rápida)
5. Otras mujeres como ella ya lo hacen (prueba social tribu)
6. Una rutina de 15 min (no más · su agenda no aguanta)
7. Que NO le diga 'esfuérzate más' (ya lo intentó · le humilla)

📄 DEAL-BREAKERS
· Modelo joven flexible en la portada
· Lenguaje 'fitness · transformación brutal'
· Precio 90 €/mes
· Vídeos en inglés

📁 Guardado en: proyecto-yoga-silla-50/12-avatar-deep/12-avatar-deep.html

¿Quieres que encadene 38-mapa-empatia + 41-deal-makers-extractor o paso al siguiente bloque?"
```
