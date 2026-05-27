# Contribuir a `crea-ofertas-1pct`

Bienvenido. Si estás aquí es porque quieres aportar valor al sistema de creación de ofertas TOP 1%. Antes de hacer cualquier PR, lee las reglas.

---

## 🔒 Reglas innegociables

Toda contribución debe respetar las **10 reglas innegociables** del proyecto:

1. **Cada agente UNA función.** Si vas a añadir un agente, asegúrate de que NO existe ya otro haciendo lo mismo. Si hay solapamiento → refactoriza, no dupliques.
2. **One Belief siempre 4 variantes.** Cualquier modificación al `one-belief-creator` debe seguir entregando V1/V2/V3/V4.
3. **Mecanismo siempre desdoblado.** Problema + Solución.
4. **HTML siempre print-to-PDF.** Cmd+P debe generar un PDF aceptable.
5. **Sin discovery, no se ejecuta nada.** Cualquier agente nuevo debe leer `brief.json` antes de actuar.
6. **Bencivenga manda al final.** Beneficio + Credibilidad − Costo.
7. **Schwartz audita.** Nivel + stage deben aparecer en outputs.
8. **Carpetas estéticas.** Estructura 00-12 numerada.
9. **Identidad vs Anti-identidad SIEMPRE en pareja.**
10. **Naming TOP.** Sin nombres aburridos.

---

## 🚀 Cómo contribuir

### 1. Reportar bugs

Abre una issue con:
- Pasos para reproducir
- Comportamiento esperado vs real
- Versión del plugin
- Logs si aplica

### 2. Proponer un agente nuevo

Antes de programar, abre una issue con:
- Nombre del agente propuesto
- Función ÚNICA que cubrirá (que no cubre ningún agente actual)
- Frameworks que aplicará
- Output esperado
- Cómo encaja en el pipeline (¿qué etapa? ¿antes/después de qué agente?)

Si recibe el OK, procede a programarlo siguiendo el formato canónico de `01-discovery-master.md`.

### 3. Proponer un slash command nuevo

Abre una issue justificando:
- Qué agentes lanza
- Caso de uso específico que cubre
- Por qué no basta con los 11 existentes

### 4. Proponer un knowledge file nuevo

Abre una issue indicando:
- Autor/libro fuente
- Aplicación práctica en la skill
- Qué agentes lo consultarán

### 5. Mejorar HTML templates

- Mantén el **design system** intacto (variables CSS, tipografías)
- Asegura print-to-PDF responsive
- Test en Chrome + Safari + Firefox

### 6. Añadir examples canónicos

Sigue la estructura de `01-monjaro-de-pobre.md`. Mínimo 250 líneas, todas las piezas resueltas, sin placeholders.

---

## 📝 Formato de los agentes

Todos los agentes siguen el formato canónico:

```yaml
---
name: nombre-del-agente
description: 100-200 palabras descripción potente
allowed-tools: Read, Grep, Write, Bash
model: opus
---

# nombre-del-agente · Tagline corto

## QUIÉN SOY
## CUÁNDO ME INVOCAS
## CONOCIMIENTO QUE CONSULTO
## EL PROCESO PASO A PASO
## OUTPUT (con ejemplo JSON real)
## REGLAS INNEGOCIABLES
## ANTI-PATRONES
## EJEMPLO DE EJECUCIÓN
## INTEGRACIÓN CON OTROS AGENTES
```

---

## 🧪 Cómo testear tu contribución

1. Crea un proyecto de prueba en una carpeta temporal
2. Invoca el agente / command nuevo
3. Verifica que el output se genera correctamente
4. Verifica que el HTML imprime a PDF sin romper
5. Pasa el `auditor-completo` y comprueba que no baja el score global del pipeline

---

## ❌ Lo que NO se acepta

- Agentes que hagan lo mismo que otro existente
- HTMLs que rompen el design system
- Knowledge files con afirmaciones sin fuente
- Examples con placeholders sin rellenar
- PRs sin justificación en issue previa

---

## 🌟 Reconocimiento

Los contributors aceptados aparecerán en el `CONTRIBUTORS.md`.

---

## 📞 Contacto

- Issues: GitHub Issues
- Email: `impactodigitalformacionbrasil@gmail.com`

---

*"Una oferta del 1% no se inventa — se construye por capas, con un agente crack en cada capa. Y cuando contribuyes, eres uno de esos cracks. Bienvenido."*
