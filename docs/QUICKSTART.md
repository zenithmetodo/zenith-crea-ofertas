# 🚀 QUICKSTART · zenith-crea-ofertas

Crea tu primera oferta TOP 1% en menos de 90 minutos.

---

## ⚡ Quickstart (3 minutos de setup)

### 1. Verifica que el plugin está disponible

En Claude Code, abre cualquier directorio y escribe:

```
/crea-oferta-1pct
```

Si el plugin está activo, verás que el orquestador padre arranca.

### 2. Lanza el pipeline completo

```
/crea-oferta-1pct
```

El agente padre `zenith-crea-ofertas` te pedirá:
1. Responder las 5 preguntas críticas (~10 min)
2. (Opcional) Responder las 5 preguntas opcionales (~10 min)

### 3. Recibe tu oferta completa

En ~60-90 minutos tendrás en tu directorio actual:

```
proyecto-{slug-producto}/
├── 00-discovery/brief.html
├── 01-punto-a-b/punto-a-b.html
├── 02-one-belief/
│   ├── v1-identidad.html
│   ├── v2-anti-identidad.html
│   ├── v3-nueva-oportunidad.html
│   └── v4-combo.html
├── 03-mecanismo/...
├── ... (10 carpetas más)
└── 12-auditoria/auditoria.html
```

Cada HTML se imprime a PDF con `Cmd/Ctrl + P → Guardar como PDF`.

---

## 🎯 Casos de uso típicos

### Caso 1 · Pipeline completo desde cero

```
"Quiero crear una oferta para mi app de glúteo desde casa para mujeres."
```

→ El padre lanza `discovery-master` automáticamente.

### Caso 2 · Solo el One Belief

```
/one-belief
```

→ Lanza `one-belief-creator` + `identidad-anti-identidad` + `nueva-oportunidad` para generar 4 variantes.

### Caso 3 · Solo el Mecanismo

```
/mecanismo
```

→ Lanza `mecanismo-problema` + `mecanismo-solucion` + `nombre-chicle`.

### Caso 4 · Auditar oferta existente

```
/audit-oferta
```

→ Lanza `auditor-completo` con checklist 200+ ítems.

---

## 🧠 ¿Cómo funciona internamente?

```
USER  →  Claude Code  →  SKILL.md (orquestador)
                            ↓
                       discovery-master (5 preguntas)
                            ↓
                       brief.json + brief.html
                            ↓
              ┌─────────────┴─────────────┐
              ↓                           ↓
         punto-a-b-architect         one-belief-creator
                                          ↓
                                 identidad-anti-identidad
                                          ↓
                                    nueva-oportunidad
              ↓                           ↓
              ↓                    [4 variantes One Belief]
              ↓                           ↓
              └──────────→ mecanismo-problema + mecanismo-solucion + nombre-chicle
                                          ↓
                                  ... (más agentes en cadena) ...
                                          ↓
                                   offer-master (ensambla)
                                          ↓
                                   auditor-completo (200+ ítems)
                                          ↓
                                   oferta-final.html (LISTO PARA TRÁFICO)
```

---

## 📊 Output esperado tras cada etapa

| Etapa | Output | Tiempo |
|-------|--------|--------|
| 00 · Discovery | `brief.json` + `brief.html` | 10 min |
| 01 · Punto A-B | `punto-a-b.html` | 5 min |
| 02 · One Belief | 4 archivos HTML (V1-V4) | 12 min |
| 03 · Mecanismo | `mecanismo-problema.html` + `mecanismo-solucion.html` + `nombre-chicle.html` | 15 min |
| 04 · F→B→D | `cadena-completa.html` | 12 min |
| 05 · Promesa | `promesa-ganadora.html` | 6 min |
| 06 · Garantía | `garantia.html` + `objeciones-rotas.html` | 8 min |
| 07 · Módulos | `modulos.html` + `clases.html` | 10 min |
| 08 · Bonus | `bonus-arquitectura.html` + `bonus-irresistibles.html` | 12 min |
| 09 · Valor Percibido | `valor-percibido.html` | 8 min |
| 10 · Consciencia+Lead | `schwartz-audit.html` + `great-lead-recomendado.html` | 6 min |
| 11 · Oferta Completa | `oferta-final.html` | 10 min |
| 12 · Auditoría | `auditoria.html` + `roadmap-fixes.html` | 8 min |
| **TOTAL** | **~22 archivos HTML** | **~110 min** |

---

## 🎨 Ejemplo de output (1ª etapa)

Después del discovery, recibes:

```html
<!-- 00-discovery/brief.html -->
<header class="hero">
  <h1>Desafío Bumbum na Nuca</h1>
  <p>App PWA · 21 días · Sin equipamiento</p>
  <div class="viabilidad-score">87 / 100 · LUZ VERDE</div>
</header>

<section>
  <h2>Avatar</h2>
  <p>Mujer 25-50 años · España + Latam · Schwartz nivel 2-3</p>
  ...
</section>

<section>
  <h2>Pipeline recomendado</h2>
  <ol>
    <li>01-punto-a-b</li>
    <li>02-one-belief (foco V4 Combo)</li>
    <li>03-mecanismo</li>
    ...
  </ol>
</section>
```

Y un JSON estructurado en `brief.json` que los demás agentes consumen.

---

## ⚠️ Errores comunes

### Error 1 · Lanzar mecanismo antes del discovery

```
❌ /mecanismo  ← sin haber hecho discovery
```

**Solución:** lanza primero `/crea-oferta-1pct` o pasa al agente el contexto manualmente.

### Error 2 · Saltarse el One Belief

```
❌ /promesa  ← sin tener One Belief definido
```

**Solución:** la promesa se construye sobre el One Belief. Sin él, queda genérica.

### Error 3 · Generar copy sin Schwartz

```
❌ "Escribe el headline de mi oferta"
```

**Solución:** pasa siempre por `/schwartz-level` para auditar nivel + stage. El copy debe matchear.

---

## 📚 Recursos para profundizar

- [README.md](../README.md) · arquitectura completa
- [SKILL.md](../SKILL.md) · orquestador padre
- [knowledge/](../knowledge/) · 12 frameworks canónicos
- [examples/](../examples/) · 5 casos canónicos desmenuzados
- [agents/](../agents/) · 26 sub-agentes detallados

---

## 💡 Tips PRO

1. **Discovery con tiempo.** No saltes las opcionales si el nicho es difícil.
2. **One Belief V4 (combo) suele ganar.** Empieza por ahí si dudas.
3. **Mecanismo `cabe-en-frase`.** Si no cabe en 1 frase, está malo.
4. **Nombre chicle.** Si lo lees y NO te causa curiosidad → cámbialo.
5. **Stack de bonus mínimo 5×.** Valor total al menos 10× el precio.
6. **Imprime los HTMLs a PDF.** Para revisar en frío después.
7. **Audita siempre.** No lances a tráfico sin pasar `auditor-completo`.

---

*"En 90 minutos tienes una oferta del 1%. En 9 minutos solo tienes ruido."*

🚀 **Empieza ahora:** `/crea-oferta-1pct`
