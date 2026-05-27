---
name: angulos
description: Lanza el angulos-architect para generar 5-10 ángulos distintos de la misma oferta. Cada ángulo con definición exacta — razón distinta + tipo concreto + creencia específica — y sus 2-3 sub-ángulos. Imprescindible antes de pasar al equipo de hooks/creatividades.
argument-hint: "[opcional: oferta + avatar · ej: 'INDI vs salario fijo hombres +30' o 'yoga silla mujeres 50']"
---

# /angulos · 5-10 ángulos por oferta (con sub-ángulos)

## QUÉ HACE

Lanza el agente `39-angulos-architect`, que toma tu oferta + avatar y genera entre **5 y 10 ángulos diferentes** desde los que se puede vender exactamente el mismo producto. Y lo hace bien — siguiendo la definición exacta que el plugin maneja:

> **Un ángulo NO es un titular.** Un ángulo es una combinación única de:
> (1) **una razón distinta** — por qué este producto resuelve el problema (mecanismo, fenómeno, contexto cultural, descubrimiento, etc.)
> (2) **un tipo concreto** — categoría del ángulo (oportunidad, miedo, identidad, deseo, contra-tendencia, comparación, autoridad, etc.)
> (3) **una creencia específica** — qué tiene que creer el avatar para que el ángulo funcione (el "one belief" de ese ángulo)

Cada uno de los 5-10 ángulos viene desglosado con esos 3 campos + **2-3 sub-ángulos** (variaciones tácticas dentro del mismo ángulo madre — útil para A/B testing de creatividades). El output es la **biblia de ángulos** que después usan el equipo de hooks (`neurocopy-hook-director`), el guionista de ads (`neurocopy-ads-master`) y el creador de Reels (`neurocopy-viral-reels`).

A diferencia del `/one-belief` (que genera 4 variantes de UNA creencia ancla), `/angulos` genera **múltiples puertas de entrada distintas** al mismo producto — cada una con su propia creencia ancla, su propio público dentro del avatar, su propio tipo emocional.

## CUÁNDO USARLO

- Después de tener brief + avatar + One Belief · antes de pasar a creatividades
- Cuando llevas semanas con los mismos 2 ángulos y la cuenta de ads está saturada (necesitas fresh angles)
- Cuando vas a probar el funnel en diferentes públicos del mismo avatar (mujer +50 ama de casa vs mujer +50 profesional · mismo producto · ángulos distintos)
- Cuando preparas un sprint creativo de 20-40 anuncios y necesitas que la matriz sea diversa, no clones
- Cuando un competidor está dominando un ángulo y necesitas atacar por otro lado

PRE-REQUISITOS (importantes):
- **NECESITA brief** (mínimo producto + avatar + resultado). Si no lo tienes, el agente te advierte y te pide lanzar `/zenith-crea-oferta` primero.
- **MUY RECOMENDADO tener avatar-deep** ya hecho. Sin avatar profundo, los ángulos salen flojos y genéricos.
- Si no tienes avatar, el agente te avisa: "advertencia · sin avatar-deep los ángulos pierden 60% de su potencia · ¿lanzo /avatar-deep primero?"

## CÓMO USARLO

```
/angulos
/angulos INDI vs salario fijo hombres +30 que no aguantan más
/angulos yoga silla mujeres +50 dolor articular sedentarismo
/angulos Apex hombres 1% libertad financiera
/angulos Bumbum brasileño glúteo en casa mujeres post-parto
```

Sin argumento, lee el brief del proyecto activo y arranca. Si no hay proyecto activo, te pide los 3 datos mínimos.

## QUÉ AGENTES LANZA

- `39-angulos-architect` (siempre · genera los 5-10 ángulos + sub-ángulos)

Output: HTML `14-angulos.html` en `proyecto-{slug}/14-angulos/` con:
- Tabla resumen (ángulo · razón · tipo · creencia · sub-ángulos)
- Fichas individuales por ángulo (página completa cada uno · imprimible)
- Matriz de priorización (qué ángulos atacar primero · cuáles son moonshots)

## OPTIMIZACIÓN DE COSTES

- `39-angulos-architect` → **Opus 4.7** (es trabajo creativo-estratégico de alto valor · sin Opus salen ángulos clónicos y obvios · este es uno de los 5 agentes donde Opus pesa)
- `output-architect` (HTML) → **Haiku 4.7**

Coste típico: **1,20-2,00 €** por sesión completa (depende de si pide 5 o 10 ángulos).

Si quieres bajar coste, pide solo 5 ángulos: `/angulos INDI hombres +30 · solo 5`.

## EJEMPLO DE USO

```
USUARIO: /angulos INDI vs salario fijo hombres +30 que no aguantan más

SKILL:
"Recibido. Reviso si tienes brief + avatar...
✅ brief OK (proyecto-INDI-libertad-30/)
✅ avatar-deep OK (archetype: 'El Empleado Atrapado de los 30')

Lanzando 39-angulos-architect (Opus) · genero 7 ángulos.

📄 ÁNGULO 1 · OPORTUNIDAD INÉDITA
· Razón: descubrimiento de un nicho fiscal-legal poco explotado
· Tipo: nueva oportunidad (Schwartz Stage 3-4)
· Creencia ancla: 'existe una vía que el 97% de empleados no conoce'
· Sub-ángulos: (a) ahorro fiscal · (b) renta pasiva inmobiliaria · (c) negocio en sombra mientras sigues empleado

📄 ÁNGULO 2 · ANTI-IDENTIDAD (el padre invisible)
· Razón: contraste brutal entre quien eres ahora y quien podrías ser
· Tipo: identidad/anti-identidad
· Creencia ancla: 'tu trabajo te está robando al hombre que tu familia merece'
· Sub-ángulos: (a) tu hijo no te ve · (b) tu mujer ya no te admira · (c) tu padre se decepcionaría

📄 ÁNGULO 3 · MIEDO (la jaula dorada)
· Razón: el salario fijo es la trampa
· Tipo: miedo + dolor proyectado
· Creencia ancla: 'el salario fijo NO es seguridad · es la peor decisión a largo plazo'
· Sub-ángulos: (a) inflación · (b) despido · (c) jubilación pobre

📄 ÁNGULO 4 · CONTRA-TENDENCIA
· Razón: todos hablan de emprender online · pocos hablan de INDI
· Tipo: contra-tendencia + autoridad oculta
· Creencia ancla: 'lo que está de moda NO funciona · esto sí'
· Sub-ángulos: (a) vs dropshipping · (b) vs trading · (c) vs cripto

📄 ÁNGULO 5 · COMPARACIÓN (Apex de pobre)
· Razón: Apex es caro · esto es accesible y funciona igual
· Tipo: comparación + democratización
· Creencia ancla: 'no necesitas Apex para entrar al 1%'
· Sub-ángulos: (a) precio · (b) tiempo · (c) requisitos previos

📄 ÁNGULO 6 · AUTORIDAD DEL CASO
· Razón: caso real de alguien que escapó del salario en 6 meses
· Tipo: prueba/historia
· Creencia ancla: 'si X lo hizo siendo igual que tú · tú puedes'
· Sub-ángulos: (a) caso 1: ingeniero · (b) caso 2: profesor · (c) caso 3: comercial

📄 ÁNGULO 7 · MIEDO TEMPORAL (la ventana se cierra)
· Razón: cambio normativo o ventana fiscal que se cierra
· Tipo: urgencia real + escasez
· Creencia ancla: 'si no entras este año · ya no podrás aprovecharlo igual'
· Sub-ángulos: (a) cambio Hacienda · (b) saturación de mercado · (c) early adopter

📁 Guardado en: proyecto-INDI-libertad-30/14-angulos/14-angulos.html

🎯 Matriz de priorización:
   · Empezar por: ángulos 2 (anti-identidad) + 5 (comparación Apex)
   · Mid-term: 1 (oportunidad) + 4 (contra-tendencia)
   · Moonshots: 7 (urgencia temporal · requiere validar)

¿Quieres que pase los ángulos al equipo de hooks (/neurocopy-hook-director)?"
```
