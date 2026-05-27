---
name: modulos
description: Lanza modulos-namer + clases-namer para construir la "carta de ventas invisible" del producto — naming de los módulos con la fórmula Resultado × Identificación × Objeción y naming de cada clase con Elemento × Identificación × Objeción. Cada nombre vende, no solo describe.
argument-hint: "[opcional: producto + número módulos/clases · ej: 'mentoría 6 módulos 24 clases']"
---

# /modulos · La carta de ventas invisible

## QUÉ HACE

Construye los nombres de **módulos y clases** de tu producto convirtiendo el índice (que normalmente nadie lee) en una **carta de ventas invisible** que vende mientras la persona lo lee.

**Filosofía operativa:** un módulo NO se llama "Módulo 1: Introducción" — se llama "MÓDULO 1 · El despertar del glúteo dormido (cómo en 72h vas a sentir el músculo que dormía hace años)". Cada palabra del nombre carga: el RESULTADO (despertar del glúteo), la IDENTIFICACIÓN (el músculo que dormía hace años → "soy yo"), y rompe una OBJECIÓN (72h = rápido).

Aplica la **fórmula doble**:

- **Módulos:** `Resultado × Identificación × Objeción`
- **Clases:** `Elemento concreto × Identificación × Objeción específica`

Resultado: el avatar lee el índice del producto y ya está comprando. Cada nombre suma una capa de valor percibido.

## CUÁNDO USARLO

- Después de tener el producto principal estructurado (módulos definidos como temas)
- Cuando tu índice actual es plano ("Módulo 1: Bases · Módulo 2: Avanzado")
- Cuando vas a montar la landing y necesitas la sección "qué incluye" con nombres que vendan
- Cuando vas a montar el aplicativo/área de miembros y los nombres de las clases tienen que enganchar
- Cuando vas a hacer un VSL que muestre el índice en pantalla mientras hablas

## CÓMO USARLO

```
/modulos
/modulos mentoría hombres 1% · 6 módulos · 24 clases
/modulos app glúteo 21 días · 3 semanas · 21 clases
```

## QUÉ AGENTES LANZA

- `modulos-namer` (renombra módulos con fórmula Resultado × Identificación × Objeción)
- `clases-namer` (renombra cada clase con Elemento × Identificación × Objeción)

Output: carpeta `07-modulos-clases/` con `modulos.html` + `clases.html` + `carta-de-ventas-invisible.html` (ensamblado completo listo para landing).

## EJEMPLO DE USO

```
USUARIO: /modulos desafío glúteo Bumbum na Nuca · 3 semanas · 21 clases

SKILL:
"Recibido. Vamos a montar la carta de ventas invisible.

⚡ MÓDULOS (3 semanas → 3 módulos)

❌ ANTES (versión sosa):
Módulo 1 · Bases · Semana 1
Módulo 2 · Intermedio · Semana 2
Módulo 3 · Avanzado · Semana 3

✅ DESPUÉS (fórmula Resultado × Identificación × Objeción):

📄 MÓDULO 1 · EL DESPERTAR DEL GLÚTEO DORMIDO
'El músculo que dormía hace años se activa por primera vez —
y lo notas en 72 horas, aunque jamás hayas entrenado'
· Resultado: glúteo activado
· Identificación: 'dormía hace años' → soy yo
· Objeción rota: 72h + 'jamás hayas entrenado'

📄 MÓDULO 2 · CUANDO LAS AMIGAS EMPIEZAN A PREGUNTAR
'La semana en que la ropa empieza a sentar diferente y
alguien te pregunta sin que tú digas nada'
· Resultado: cambio visible
· Identificación: 'amigas preguntan' (social proof emocional)
· Objeción rota: 'no se va a notar' → SÍ se nota

📄 MÓDULO 3 · LA SEMANA DEL ESPEJO DIFERENTE
'21 días después miras y dices: ¿esa soy yo?
El glúteo está donde tiene que estar y lo sabes.'
· Resultado: transformación final
· Identificación: 'esa soy yo' (epifanía visual)
· Objeción rota: 'son fotos editadas' → es TU espejo

⚡ CLASES (21 clases · una por día)

Aplico fórmula Elemento × Identificación × Objeción.
Te paso 5 ejemplos representativos:

📄 CLASE 1 · LA POSTURA DE LAS 4 ESQUINAS
'5 minutos para encontrar el glúteo que llevas años buscando ·
sin esterilla, sin pesas, sin moverte de tu cuarto'

📄 CLASE 4 · EL EJERCICIO QUE NADIE ENSEÑA
'2 minutos diarios y el glúteo medio (el que de verdad levanta)
empieza a despertar — funciona aunque vivas en piso pequeño'

📄 CLASE 7 · LA TÉCNICA QUE USABAN LAS BAILARINAS DEL FOLIES BERGÈRE
'7 minutos de un truco que tiene 100 años y nadie te dijo nunca'

📄 CLASE 14 · EL BOTÓN MÁGICO DEL GLÚTEO
'Cómo activar manualmente el músculo justo antes de cada ejercicio
para que TODO el entreno te cunda x3'

📄 CLASE 21 · LA FOTO DEL DESPUÉS
'El plan visual para hacerte LA FOTO que va a romper Instagram ·
con luz, ángulo, postura · ese día vas a llorar'

(las 16 restantes igual de afiladas · disponibles en clases.html)

📁 Guardado en:
proyecto-bumbum-na-nuca/07-modulos-clases/
├── modulos.html (3 módulos · descomposición fórmula)
├── clases.html (21 clases · cada una con fórmula)
└── carta-de-ventas-invisible.html (listo para pegar en landing)

🎯 Próximo paso:
Esta es la sección 'QUÉ INCLUYE' de tu landing — cópiala literal.
Cada nombre añade ~30€ de valor percibido (multiplica por 21 clases
= 630€ extra de stack). Lanza /bonus si todavía no lo hiciste."
```
