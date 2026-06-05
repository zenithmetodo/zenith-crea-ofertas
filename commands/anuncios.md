---
name: anuncios
description: Lanza el anuncios-architect para generar EXACTAMENTE 5 anuncios POR CADA ángulo (no anuncios freestyle). Toma los ángulos de /angulos y, por cada uno, crea 5 anuncios con 5 ejecuciones distintas (UGC/Story · Problem-Solution · Big Secret/mecanismo · Contrarian · Prueba social), todos anclados al mismo tipo de persona y la misma creencia del ángulo. Cada anuncio con hook (visual+audio+overlay), cuerpo, CTA y notas de producción.
argument-hint: "[opcional: slug del proyecto · ej: 'INDI-libertad-30' o 'bumbum-glúteo']"
---

# /anuncios · 5 anuncios POR cada ángulo (jamás freestyle)

## QUÉ HACE

Lanza el agente `44-anuncios-architect`, que toma los **ángulos** ya creados (`/angulos` → `angulos.json`) y, **por CADA ángulo, genera EXACTAMENTE 5 anuncios**. Si tienes 6 ángulos → 30 anuncios. Si tienes 8 → 40. Siempre 5 por ángulo.

> ⚠️ Los anuncios **NO son freestyle.** Los 5 anuncios de un ángulo atacan el MISMO tipo concreto de persona + la MISMA creencia específica del ángulo. Lo único que cambia entre los 5 es la EJECUCIÓN creativa:
> 1. **UGC / Story** (testimonio en primera persona)
> 2. **Problem-Solution directo** (dolor → salida)
> 3. **Big Secret / Mecanismo único** (el porqué oculto + nombre chicle)
> 4. **Contrarian / Disrupción** (rompe la creencia de frente)
> 5. **Prueba social / Autoridad** (otros como tú ya lo lograron)

Cada anuncio viene con **hook de 3 capas** (visual + audio + overlay), cuerpo palabra a palabra, CTA, duración y notas de producción.

## CUÁNDO USARLO

- DESPUÉS de `/angulos` (necesita `angulos.json`)
- Cuando vas a montar un sprint creativo y necesitas que cada ángulo tenga sus 5 anuncios coherentes (no 30 ads sueltos)
- Automáticamente dentro del pipeline `/crea-oferta-1pct` y `/zenith-crea-oferta` (etapa 14, obligatoria)

PRE-REQUISITO:
- **NECESITA los ángulos.** Si no existe `angulos.json`, el agente te avisa: "Lanza primero `/angulos`. Sin ángulos no puedo hacer 5 anuncios por ángulo."

## CÓMO USARLO

```
/anuncios
/anuncios INDI-libertad-30
/anuncios bumbum-glúteo-postparto
```

Sin argumento, lee los ángulos del proyecto activo.

## QUÉ AGENTES LANZA

- `44-anuncios-architect` (siempre · 5 anuncios por cada ángulo)

Output: `anuncios.json` + `anuncios.html` (editable + PDF · paleta Zenith) en `proyecto-{slug}/15-anuncios/`, agrupado VISUALMENTE por ángulo (cada ángulo = una sección con sus 5 anuncios).

## OPTIMIZACIÓN DE COSTES

- `44-anuncios-architect` → **Opus 4.7** (copy de anuncios · alto valor)
- `output-architect` (HTML) → **Haiku 4.7**

Coste típico: depende del nº de ángulos (5 anuncios × nº ángulos).

## EJEMPLO DE USO

```
USUARIO: /anuncios INDI-libertad-30

SKILL:
"Recibido. Leyendo angulos.json (7 ángulos)...
✅ 7 ángulos detectados → genero 35 anuncios (7 × 5).

🎯 ÁNGULO 2 · ANTI-IDENTIDAD (el padre invisible)
   tipo: 'empleado +30 que llega tarde a casa' · creencia: 'mi trabajo me roba a mi familia'
   · A1 UGC/Story · hook visual: padre llegando de noche, hijo dormido...
   · A2 Problem-Solution · hook: 'Llevas 5 años diciendo que el año que viene...'
   · A3 Big Secret/Mecanismo · hook: 'La vía INDI que el 97% de empleados no conoce...'
   · A4 Contrarian · hook: 'El salario fijo NO es seguridad. Es la jaula.'
   · A5 Prueba social · hook: 'Marcos era ingeniero como tú. En 6 meses...'
   [los 5 comparten tipo+creencia · cambia la ejecución]

... (los 7 bloques) ...

📁 proyecto-INDI-libertad-30/15-anuncios/anuncios.html (editable + PDF)
🎯 Empieza por: bloque del Ángulo 2 (mayor mercado + creencia más viva)
🧪 Validación anti-freestyle: superada (cada anuncio mapea a su ángulo)"
```
