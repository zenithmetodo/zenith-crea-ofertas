---
name: crea-oferta-1pct
description: Lanza el pipeline COMPLETO de la skill zenith-crea-ofertas (discovery + 12 etapas + 26 sub-agentes). Construye toda la oferta de cero, palabra por palabra, con HTML estético en cada carpeta. El comando estrella del plugin.
argument-hint: "[opcional: idea del producto en 1 frase · ej: 'app glúteo en casa para mujeres 25-50']"
---

# /crea-oferta-1pct · El comando estrella del plugin

## QUÉ HACE

Ejecuta el **pipeline maestro completo** de la skill `zenith-crea-ofertas`. Es el comando que más usarás: arranca el discovery, decide qué sub-agentes lanzar y en qué orden, y entrega la oferta TOP 1% terminada — con sus 13 carpetas numeradas (00 → 12), su HTML estético dentro de cada una y un dashboard final con score, veredicto y roadmap de optimización.

A diferencia de los comandos atómicos (`/one-belief`, `/mecanismo`…) que solo lanzan UN agente o un grupo pequeño, `/crea-oferta-1pct` **orquesta los 26 sub-agentes** en cascada, respetando dependencias entre etapas. Si te saltas este comando y vas pieza a pieza, te quedas sin la coherencia global que solo el orquestador garantiza.

## CUÁNDO USARLO

- Cuando tienes una idea/producto y quieres la oferta COMPLETA construida de cero
- Cuando tienes una oferta a medias y quieres reconstruirla bien (te hace el discovery, ve qué falta y rellena)
- Cuando vas a lanzar un nuevo producto y necesitas las 12 etapas resueltas con HTML imprimible
- Cuando quieres ver TODO el pipeline en acción (modo aprendizaje)

NO lo uses cuando solo necesitas una pieza suelta (para eso están los 10 comandos atómicos restantes).

## CÓMO USARLO

```
/crea-oferta-1pct
/crea-oferta-1pct app glúteo en casa para mujeres 25-50
/crea-oferta-1pct mentoría hombres 1% libertad financiera
```

Si pasas argumento, el comando lo usa como semilla para el `discovery-master`. Si no, te hace las 5 preguntas críticas desde cero.

## QUÉ AGENTES LANZA

En este orden (cascada estricta — saltarse uno = oferta floja):

1. `discovery-master` (brief estratégico + viabilidad score)
2. `punto-a-b-architect` (Punto A real → Punto B realista)
3. `one-belief-creator` + `identidad-anti-identidad` + `nueva-oportunidad` (4 variantes One Belief)
4. `mecanismo-problema` + `mecanismo-solucion` + `nombre-chicle` (mecanismo desdoblado + nombre)
5. `caracteristicas-extractor` + `beneficios-extractor` + `deseos-extractor` + `intangibles-extractor` (cadena Features → Benefits → Desires)
6. `promesa-ganadora` (frase de promesa con fórmula Avatar+Resultado+Tiempo+SinDolor+AunqueObjeción)
7. `garantia-impresionante` + `objeciones-rotas` (garantía nombrada + ruptura objeciones)
8. `modulos-namer` + `clases-namer` (carta de ventas invisible)
9. `bonus-architect` + `bonus-irresistible` (5 categorías de bonus + nombre sexy + valor + urgencia)
10. `valor-percibido` + `bencivenga-formula` (Beneficio + Credibilidad − Costo maximizado)
11. `schwartz-consciousness` + `great-leads-masterson` (nivel + tipo de lead)
12. `offer-master` (ensambla la oferta final)
13. `output-architect` (HTML estéticos imprimibles en CADA carpeta)
14. `auditor-completo` (200+ checklist, score, veredicto luz verde/ámbar/rojo)

## EJEMPLO DE USO

```
USUARIO: /crea-oferta-1pct app de yoga en silla para mujeres +50 sedentarias

SKILL:
"Recibido. Voy a montar el pipeline completo en proyecto-yoga-silla-50/

⚡ ETAPA 00 · DISCOVERY (discovery-master)
Te hago las 5 preguntas críticas — una por una.

Pregunta 1 de 5 · PRODUCTO
¿Qué vendes EXACTAMENTE?..."

[el operador responde · el discovery completa el brief]

SKILL:
"✅ BRIEF cerrado · Viabilidad 84/100 (LUZ VERDE)
Lanzando pipeline en cascada...

✅ 01 punto-a-b-architect → proyecto-yoga-silla-50/01-punto-a-b/punto-a-b.html
✅ 02 one-belief-creator (4 variantes) → /02-one-belief/v1-identidad.html · v2-anti-identidad.html · v3-nueva-oportunidad.html · v4-combo.html
✅ 03 mecanismo-problema + solucion + nombre-chicle → /03-mecanismo/
   · Mecanismo problema: 'menopausia + sedentarismo bloquean músculos profundos'
   · Mecanismo solución: 'yoga adaptado a silla activa músculos profundos sin impacto'
   · Nombre chicle: 'Yoga en Silla'
✅ 04 caracteristicas → beneficios → deseos → intangibles → /04-caracteristicas/
✅ 05 promesa-ganadora → /05-promesa/promesa.html
✅ 06 garantia-impresionante (90 días incondicional) → /06-garantia/
✅ 07 modulos-namer + clases-namer (4 módulos · 21 clases) → /07-modulos/
✅ 08 bonus-architect + bonus-irresistible (5 categorías) → /08-bonus/
✅ 09 valor-percibido (stack 1.997€ vs precio 17€) → /09-valor-percibido/
✅ 10 schwartz-consciousness (nivel 1-2 detectado) + great-leads (Story Lead) → /10-consciencia/
✅ 11 offer-master (oferta ensamblada) → /11-oferta-completa/oferta-final.html
✅ 12 auditor-completo → Score 91/100 · LUZ VERDE para tráfico

📁 Estructura final:
proyecto-yoga-silla-50/
├── 00-discovery/brief.html
├── 01-punto-a-b/...
├── 02-one-belief/ (4 variantes)
├── 03-mecanismo/
├── 04-caracteristicas/
├── 05-promesa/
├── 06-garantia/
├── 07-modulos-clases/
├── 08-bonus/
├── 09-valor-percibido/
├── 10-consciencia-sofisticacion/
├── 11-oferta-completa/
└── 12-auditoria/

🎯 Próximos pasos sugeridos:
1. Imprime el HTML de /11-oferta-completa/ → revísalo con tu equipo
2. Lanza el quiz con el copy del mecanismo + promesa
3. Valida en orgánico antes de tráfico pago (Joseph Moreno · regla maestra)"
```
