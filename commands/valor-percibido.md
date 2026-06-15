---
name: valor-percibido
description: Lanza el agente valor-percibido para aplicar la fórmula maestra de Gary Bencivenga · Valor Percibido = Beneficio + Credibilidad − Costo. Construye el stack completo de valor, las 7 capas de credibilidad y la minimización del coste percibido para convertir un precio en "lo regalan".
argument-hint: "[opcional: producto + precio · ej: 'desafío glúteo 17€']"
---

# /valor-percibido · La fórmula Bencivenga aplicada

## QUÉ HACE

Aplica la **fórmula maestra de Gary Bencivenga** (el copywriter mejor pagado de la historia · A-list del direct response USA) para maximizar el valor percibido de tu oferta:

```
VALOR PERCIBIDO = BENEFICIO + CREDIBILIDAD − COSTO
```

El comando trabaja las **3 palancas** de la fórmula:

1. **MAXIMIZAR BENEFICIO** — stack de valor (suma de producto + bonus + intangibles) presentado en orden creciente de impacto emocional
2. **MAXIMIZAR CREDIBILIDAD** — 7 capas Bencivenga (autoridad experto, testimonios, prueba social, mecanismo nombrado, garantía, casos antes/después, certificaciones)
3. **MINIMIZAR COSTO PERCIBIDO** — desdoblar el precio en cuotas mentales, comparar con coste de NO hacerlo, anclar contra alternativas caras (gimnasio 60€/mes vs app 17€)

Output: el avatar lee la oferta y piensa "esto vale 1.997€ y lo regalan por 17€". Eso es valor percibido del 1%.

## CUÁNDO USARLO

- Después de tener producto + bonus + garantía + módulos/clases (ya tienes los ingredientes del stack)
- Cuando el precio te parece bajo pero la gente sigue diciendo "es caro" (es problema de valor percibido, no de precio)
- Cuando vas a montar la sección de precio de la landing
- Cuando vas a montar el checkout y necesitas reforzar la decisión
- Antes de subir un precio (validas primero el valor percibido)
- Cuando vas a escribir el email del lanzamiento (el stack se usa en el email)

## CÓMO USARLO

```
/valor-percibido
/valor-percibido desafío glúteo 17€
/valor-percibido mentoría hombres 1% 2000€
```

## QUÉ AGENTES LANZA

- `valor-percibido` (orquesta la fórmula completa)
- Lee internamente: `bencivenga-formula-valor-percibido.md` (las 7 leyes Bencivenga)

Output: carpeta `09-valor-percibido/` con `stack-de-valor.html` + `capas-de-credibilidad.html` + `minimizacion-costo.html` + `pagina-de-precio.html` (sección lista para pegar en landing).

## EJEMPLO DE USO

```
USUARIO: /valor-percibido desafío glúteo Bumbum na Nuca · precio 17€

SKILL:
"Recibido. Aplicando la fórmula Bencivenga en 3 capas.

⚡ CAPA 1 · MAXIMIZAR BENEFICIO (Stack de Valor)

Recopilo del proyecto:
PRODUCTO PRINCIPAL · Desafío Bumbum na Nuca 21 días     ... 297€
+ BONUS 1 · Decreto del Glúteo (pre-protocolo 3 días)    ... 147€
+ BONUS 2 · Bumbum Sisterhood (comunidad vitalicia)      ... 228€
+ BONUS 3 · Bumbum Forever (12 meses mantenimiento)      ... 197€
+ BONUS 4 · Truco de la Foto (hack 7 días)               ...  47€
+ BONUS 5 · Vídeo Anti-Excusas                           ...  37€
+ INTANGIBLE 1 · App PWA acceso vitalicio                ... 197€
+ INTANGIBLE 2 · Actualizaciones de por vida              ...  97€
+ INTANGIBLE 3 · Soporte humano por WhatsApp 90 días     ... 197€
─────────────────────────────────────────────────────────────────
VALOR REAL TOTAL                                        ... 1.444€

⚡ CAPA 2 · MAXIMIZAR CREDIBILIDAD (7 capas Bencivenga)

1. AUTORIDAD EXPERTO: 'Diseñado por Joana, fisioterapeuta deportiva
   con +10 años en clínica + entrenadora personal de modelos brasileñas'

2. TESTIMONIOS: '+12.000 mujeres ya han hecho el desafío' (con 3-5
   testimonios reales + foto antes/después)

3. PRUEBA SOCIAL: 'TikTok #bumbumnanuca con +50M de views' +
   capturas de comentarios reales en redes

4. MECANISMO NOMBRADO: 'El Desafío Bumbum na Nuca activa
   específicamente el glúteo medio en 20 min/día' (mecanismo Todd Brown)

5. GARANTÍA: 'Garantía Bumbum Garantizado 90 Días · sin preguntas'

6. CASOS ANTES/DESPUÉS: 3 fotos reales (con consentimiento) +
   nombre + ciudad + tiempo

7. CERTIFICACIONES: 'App PWA · Funciona en iOS y Android sin descarga'
   + sello 'Recomendado por +50 fisioterapeutas'

⚡ CAPA 3 · MINIMIZAR COSTO PERCIBIDO

DESDOBLE EN CUOTAS MENTALES:
'17€ por 21 días = 81 céntimos al día.
Menos de la mitad de un café.'

COSTE DE NO HACERLO:
'En 1 año más mirándote al espejo igual.
365 días pensando 'mañana empiezo'.
0 fotos en bikini este verano.'

ANCLAJE CONTRA ALTERNATIVAS:
| Alternativa            | Coste año     | Resultado real |
|------------------------|---------------|----------------|
| Gimnasio mensual       | 720€/año      | 30% adherencia |
| Personal trainer 1-1   | 2.400€/año    | depende        |
| Cirugía glúteo BBL     | 8.000€        | riesgo + dolor |
| Otra app sin guía      | 120€/año      | sin resultado  |
| Bumbum na Nuca         | 17€ ÚNICOS    | 21 días        |

📄 PÁGINA DE PRECIO (lista para pegar en landing):

╔═══════════════════════════════════════════════════════════╗
║   STACK DE VALOR · DESAFÍO BUMBUM NA NUCA                ║
║                                                            ║
║   ✓ Desafío 21 días (app PWA)              ... 297€       ║
║   ✓ Bonus DECRETO DEL GLÚTEO               ... 147€       ║
║   ✓ Bonus BUMBUM SISTERHOOD vitalicia      ... 228€       ║
║   ✓ Bonus BUMBUM FOREVER 12 meses          ... 197€       ║
║   ✓ Bonus EL TRUCO DE LA FOTO              ...  47€       ║
║   ✓ Bonus VÍDEO ANTI-EXCUSAS               ...  37€       ║
║   ✓ App PWA vitalicia                      ... 197€       ║
║   ✓ Actualizaciones de por vida            ...  97€       ║
║   ✓ Soporte WhatsApp 90 días               ... 197€       ║
║   ────────────────────────────────────────────────         ║
║   VALOR TOTAL                            1.444€            ║
║                                                            ║
║   HOY · POR LANZAMIENTO                                    ║
║   Solo  17€                                                ║
║                                                            ║
║   (es 81 céntimos al día durante 21 días.                 ║
║    menos de la mitad de un café)                          ║
║                                                            ║
║   ✓ Garantía Bumbum Garantizado 90 días                   ║
║   ✓ Riesgo CERO · te devolvemos sin preguntas             ║
╚═══════════════════════════════════════════════════════════╝

📁 Guardado en:
proyecto-bumbum-na-nuca/09-valor-percibido/
├── stack-de-valor.html (1.444€ desdoblado)
├── capas-de-credibilidad.html (las 7 Bencivenga)
├── minimizacion-costo.html (cuotas + alternativas + coste de no hacer)
└── pagina-de-precio.html (sección lista para landing)

🎯 Próximo paso:
Con este valor percibido + el precio 17€ = ratio 85x. Brutal.
Lanza /audit-oferta para validar score global antes de tráfico."
```
