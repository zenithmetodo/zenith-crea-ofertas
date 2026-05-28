---
name: bonus
description: Lanza bonus-architect + bonus-irresistible para diseñar los 5 categorías canónicas de bonus (antes/durante/después/acorta/rompe-objeción/cierre) y convertirlos en bonus IRRESISTIBLES con nombre sexy, valor desdoblado y urgencia/escasez integrada.
argument-hint: "[opcional: producto principal + transformación · ej: 'desafío glúteo 21 días']"
---

# /bonus · Los que multiplican el valor percibido

## QUÉ HACE

Diseña los **bonus de tu oferta** en dos pasos:

1. **bonus-architect** mapea los 5 huecos donde un bonus refuerza la oferta:
   - **ANTES** del producto (preparación · ej: "Pre-protocolo 3 días para activar el metabolismo")
   - **DURANTE** el producto (acompañamiento · ej: "Comunidad privada de alumnas")
   - **DESPUÉS** del producto (mantenimiento · ej: "Plan de continuidad mes 4-12")
   - **ACORTA tiempo** (acelerador · ej: "Hack para ver resultado en 7 días")
   - **ROMPE objeción/cierre** (el bonus que cierra al indeciso · ej: "Garantía extendida x2")

2. **bonus-irresistible** convierte cada bonus normal en bonus IRRESISTIBLE aplicando:
   - **Nombre chicle** (no "Guía complementaria" sino "El Decreto del Glúteo")
   - **Valor desdoblado** (no "ebook" sino "vale 197€" justificado con stack)
   - **Urgencia/escasez** ("solo para las 100 primeras", "bonus expira en 24h")
   - **Visual** (descripción de mockup para landing/quiz)

> "Los bonus no son regalos. Son palancas de valor percibido que justifican un precio 10x." — Fórmula Bencivenga aplicada

## CUÁNDO USARLO

- Después de tener producto principal + promesa + garantía definidos
- Cuando tu oferta "se ve sosa" comparada con la competencia
- Cuando la tasa de conversión cae en el checkout (faltan palancas finales)
- Cuando vas a subir el precio y necesitas stack que lo justifique
- Cuando quieres añadir urgencia/escasez sin sonar a vendedor barato
- Antes del comando `/valor-percibido` (los bonus alimentan el stack Bencivenga)

## CÓMO USARLO

```
/bonus
/bonus desafío glúteo 21 días
/bonus mentoría high ticket hombres 1%
```

## QUÉ AGENTES LANZA

- `bonus-architect` (mapea los 5 huecos · propone 1-2 bonus por hueco)
- `bonus-irresistible` (los convierte en irresistibles · nombre + valor + urgencia + visual)

Output: carpeta `08-bonus/` con `arquitectura-5-categorias.html` + `bonus-irresistibles.html` (versión final · 5-7 bonus listos) + `stack-de-valor.html` (suma de bonus para usar en la página).

## EJEMPLO DE USO

```
USUARIO: /bonus desafío glúteo 21 días Bumbum na Nuca

SKILL:
"Recibido. Vamos a montar los bonus en 2 fases.

⚡ FASE 1 — bonus-architect mapea los 5 huecos

CATEGORÍA 1 · ANTES (preparación · activa el resultado)
BONUS: 'Pre-Protocolo Bumbum 3 días'
Por qué: la mujer empieza activada y motivada · reduce drop-off semana 1

CATEGORÍA 2 · DURANTE (acompañamiento · evita abandono)
BONUS: 'Comunidad Privada Bumbum Sisterhood'
Por qué: pertenencia + accountability · LTV sube

CATEGORÍA 3 · DESPUÉS (mantenimiento · LTV)
BONUS: 'Plan Bumbum Forever · 12 meses de mantenimiento'
Por qué: extiende el resultado · puerta abierta al upsell suscripción

CATEGORÍA 4 · ACORTA TIEMPO (acelerador · resultado rápido)
BONUS: 'Hack Glúteo 7 Días · Resultado Visible en Foto'
Por qué: gratificación rápida · genera testimonio antes del día 21

CATEGORÍA 5 · ROMPE OBJECIÓN (cierre · el bonus del indeciso)
BONUS: 'Plan Anti-Excusas · Vídeo de 2 min para días que no quieres entrenar'
Por qué: rompe 'no tengo tiempo / no tengo ganas' · top objeción

⚡ FASE 2 — bonus-irresistible los hace irresistibles

📄 BONUS 1 · PRE-PROTOCOLO 3 DÍAS
Nombre sexy: 'EL DECRETO DEL GLÚTEO · 3 días pre-desafío que despiertan
el músculo que dormía hace años'
Valor desdoblado: 'Si comprases un personal trainer para diseñarte estos
3 días = 147€. Hoy → INCLUIDO'
Urgencia: 'Solo para las 50 primeras del día'
Visual: mockup app + carrusel '3 días, 3 ejercicios secretos'

📄 BONUS 2 · COMUNIDAD PRIVADA
Nombre sexy: 'BUMBUM SISTERHOOD · La comunidad cerrada de mujeres que
NO se rinden (acceso vitalicio)'
Valor: 'Comunidades de pago similares cobran 19€/mes = 228€/año →
Vitalicio INCLUIDO'
Urgencia: 'Bonus expira el domingo · luego pasa a 19€/mes'
Visual: capturas comunidad + frase '+12.000 mujeres dentro'

📄 BONUS 3 · PLAN BUMBUM FOREVER
Nombre sexy: 'BUMBUM FOREVER · 12 meses para no perder lo conseguido'
Valor: '12 meses de mantenimiento profesional = 197€ → INCLUIDO'

📄 BONUS 4 · HACK 7 DÍAS
Nombre sexy: 'EL TRUCO DE LA FOTO · ver el cambio en el espejo en
7 días (no en 21)'
Valor: '47€ → INCLUIDO'
Urgencia: 'Solo para hoy'

📄 BONUS 5 · ANTI-EXCUSAS
Nombre sexy: 'EL VÍDEO DE 2 MIN · cuando no quieres pero TIENES que'
Valor: '37€ → INCLUIDO'

🧮 STACK DE VALOR (para la página):
DECRETO DEL GLÚTEO        ... 147€
BUMBUM SISTERHOOD          ... 228€
BUMBUM FOREVER             ... 197€
EL TRUCO DE LA FOTO        ...  47€
EL VÍDEO DE 2 MIN          ...  37€
─────────────────────────────────────
TOTAL BONUS              ... 656€
+ DESAFÍO PRINCIPAL        ... 297€
─────────────────────────────────────
VALOR TOTAL              ... 953€

HOY · SOLO POR 17€

📁 Guardado en:
proyecto-bumbum-na-nuca/08-bonus/
├── arquitectura-5-categorias.html
├── bonus-irresistibles.html
└── stack-de-valor.html (listo para pegar en landing)

🎯 Próximo paso: /valor-percibido para aplicar la fórmula Bencivenga
   y maximizar la sensación de '953€ por 17€ = bestial'."
```
