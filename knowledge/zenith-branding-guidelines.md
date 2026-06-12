# Zenith™ · GUIDELINES DE MARCA (para HTML y entregables)

**Aplicación canónica:** cómo se ve, suena y se firma cualquier entregable del Método Zenith™. Aplica a TODOS los HTML print-to-PDF y a las carpetas de output.

**Lo usa:** el agente `zenith-quick-discovery` (y de referencia el `output-architect`).

**Tagline oficial:** *"De la cima se ve mejor el avatar."*

---

## 1 · PALETA DE COLOR

| Rol | Nombre | HEX | Uso |
|-----|--------|-----|-----|
| Acento primario | **cian** | `#00E5CF` | Títulos clave, líneas, gradiente, CTA, montaña del favicon |
| Acento primario suave | cian_soft | `#4DECDB` | Hover, fondos sutiles, bordes |
| Acento secundario | **purple** | `#B845FF` | Segundo color del gradiente, badges, énfasis |
| Acento secundario suave | purple_soft | `#C972FF` | Detalles, iconografía |
| Acento secundario profundo | purple_deep | `#6E1FB8` | Sombras del gradiente, fondos de bloque |
| Fondo base | **dark** | `#050510` | Fondo de página (casi negro azulado) |
| Superficie | **card** | `#0B0B17` | Tarjetas, cajas, secciones elevadas |

**Gradiente firma Zenith:** `linear-gradient(135deg, #00E5CF 0%, #B845FF 100%)` — cian→purple. Es la huella visual de la marca: úsalo en la montaña del favicon, en líneas divisorias, en el título principal y en acentos. No lo abuses: 1-2 usos protagonistas por pantalla.

**Texto sobre dark:** blanco/casi-blanco (`#F4F4FA` aprox.) para cuerpo; cian o purple SOLO para énfasis, nunca para párrafos largos (cansa). Mantén contraste AA mínimo.

---

## 2 · TIPOGRAFÍA

| Rol | Fuente | Carácter | Uso |
|-----|--------|----------|-----|
| **Display** | **Fraunces** (serif, itálicas elegantes) | Editorial, con alma | Titulares, frases destacadas, tagline. Las itálicas de Fraunces son la firma. |
| **Body** | **Inter** (sans) | Limpia, legible | Todo el cuerpo de texto, tablas, UI, listas. |
| **Mono** | **JetBrains Mono** | Técnica | Código, etiquetas, datos, "fichas técnicas", números ancla. |

**Reglas:**
- Fraunces manda en jerarquía: H1/H2 y citas memorables. Aprovecha sus itálicas para el tono "de autor".
- Inter para todo lo legible: nunca pongas un párrafo largo en Fraunces ni en mono.
- JetBrains Mono para precios, métricas, etiquetas tipo `[ ÁNGULO 3 ]`, bloques de datos.
- Si las fuentes no cargan (offline/PDF), declara fallbacks: Fraunces→`Georgia, serif`; Inter→`system-ui, sans-serif`; JetBrains Mono→`ui-monospace, monospace`.

---

## 3 · TONO DE VOZ

La voz Zenith es **experta pero cercana, directa, con altura**. Habla desde la cima sin mirar por encima del hombro.

- **Español de España (es-ES).** Tú/vosotros, nada de "usted" salvo que el avatar lo pida. Modismos de España, no neutro-LATAM.
- **Directo y sin paja.** Frases cortas. Verbos fuertes. Cero relleno corporativo.
- **Confiado, no arrogante.** Afirma con criterio; respalda con método y ejemplos.
- **Didáctico.** Introduce el término propietario e inmediatamente lo explica con una analogía (baja carga cognitiva).
- **Con guiño de altura.** La metáfora de la cima/montaña impregna el lenguaje sin saturar ("subir un peldaño", "ver mejor el avatar", "desde arriba").
- **Cero emojis** en entregables salvo petición expresa.

**Evita:** jerga vacía, superlativos sin prueba, tono de gurú humo, traducciones literales del inglés.

---

## 4 · ELEMENTOS OBLIGATORIOS DE CADA HTML

Todo HTML entregable DEBE incluir:

1. **Favicon montaña Zenith** — SVG inline, una montaña con gradiente cian→purple. Va embebido (no enlazado) para que sobreviva offline y en PDF.
2. **Tagline** presente o disponible: *"De la cima se ve mejor el avatar."* (en cabecera o cierre).
3. **Footer obligatorio:** **"Hecho con Método Zenith™"** en CADA HTML. No es opcional. Discreto, al pie, en Inter pequeño con acento cian.
4. **Fondo dark** (`#050510`) y tarjetas `card` (`#0B0B17`).
5. **Gradiente firma** al menos en un elemento protagonista (título o línea).
6. **Fuentes declaradas** con sus fallbacks (ver sección 2).

Snippet de referencia del footer:

```html
<footer style="font-family:Inter,system-ui,sans-serif;font-size:12px;
  color:#4DECDB;text-align:center;padding:24px 0;opacity:.8;">
  Hecho con Método Zenith™ · De la cima se ve mejor el avatar.
</footer>
```

Favicon montaña (SVG inline, simplificado):

```html
<link rel="icon" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg'
  viewBox='0 0 64 64'><defs><linearGradient id='z' x1='0' y1='0' x2='1' y2='1'>
  <stop offset='0' stop-color='%2300E5CF'/><stop offset='1' stop-color='%23B845FF'/>
  </linearGradient></defs><path d='M8 52 L28 16 L40 36 L48 24 L56 52 Z'
  fill='url(%23z)'/></svg>">
```

---

## 5 · PRINCIPIO "PRINT-FRIENDLY + DRIVE-FRIENDLY"

El entregable se ve igual en pantalla, impreso en PDF y compartido en Google Drive. La estética NO se rompe nunca.

- **Print-to-PDF:** todo va en UN HTML autocontenido (CSS inline o `<style>`, SVG inline, fuentes con fallback). Nada de recursos externos que el PDF pierda.
- **`@media print`:** conserva el fondo dark y el gradiente (declara `-webkit-print-color-adjust: exact; print-color-adjust: exact;`). Que el PDF no salga en blanco.
- **Drive-friendly:** el archivo se abre solo, sin dependencias, sin CDN caídos. Un doble clic y se ve perfecto.
- **Saltos de página limpios:** usa `page-break-inside: avoid` en tarjetas y bloques para que no se corten feo al imprimir.
- **Sin scroll infinito ni JS necesario para leer:** el contenido es legible aunque el JS no corra.

---

## 6 · MD + HTML EN CADA CARPETA

Norma del pipeline Zenith: cada etapa entrega DOS archivos.

- **`.md`** → para que la IA lo lea y los siguientes agentes hereden el contexto. Denso, plano, sin maquetar.
- **`.html`** → print-to-PDF estético para el humano, con todo el branding de estas guidelines.

El `.md` es el cerebro (heredable); el `.html` es la cara (presentable). Nunca entregues solo uno.

---

## 7 · CHECKLIST DE MARCA (antes de dar por bueno un HTML)

- [ ] Fondo `#050510`, tarjetas `#0B0B17`.
- [ ] Acentos cian `#00E5CF` y purple `#B845FF` bien usados (no en párrafos largos).
- [ ] Gradiente firma cian→purple en al menos un elemento protagonista.
- [ ] Fraunces en titulares, Inter en cuerpo, JetBrains Mono en datos/etiquetas.
- [ ] Fallbacks de fuentes declarados.
- [ ] Favicon montaña SVG inline presente.
- [ ] Footer "Hecho con Método Zenith™" en su sitio.
- [ ] Tagline visible o disponible.
- [ ] Texto en español de España, tono experto-cercano, sin emojis.
- [ ] HTML autocontenido (CSS + SVG inline, sin dependencias externas).
- [ ] `print-color-adjust: exact` y `page-break-inside: avoid` aplicados.
- [ ] Abre perfecto desde Drive con doble clic.

---

## REGLA DE ORO

> **Todo entregable Zenith respira marca: dark + cian + purple, Fraunces para el alma, footer "Hecho con Método Zenith™" siempre, y el principio print-friendly + drive-friendly intacto. Si un HTML no se ve idéntico impreso en PDF o compartido en Drive, no está terminado. De la cima se ve mejor el avatar.**
