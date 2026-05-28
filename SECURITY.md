# 🔒 Política de Seguridad · Zenith Crea Ofertas™

> *De la cima se ve mejor el avatar · y también las brechas.*

La seguridad del plugin · de los datos del usuario · y del pipeline de creación de ofertas es **innegociable**. Si encuentras una vulnerabilidad · lee esta política antes de hacer nada público.

---

## 📦 Versiones soportadas

Damos soporte de seguridad activo a las siguientes versiones del plugin:

| Versión   | Soportada       | Estado                          |
|-----------|-----------------|---------------------------------|
| `2.0.x`   | ✅ Sí           | Versión actual · soporte activo |
| `1.x.x`   | ⚠️ Crítico solo | Solo parches críticos · 6 meses |
| `< 1.0`   | ❌ No           | EOL · migra a la última         |

> Recomendamos **siempre** trabajar con la última versión `main`. Si reportas un bug sobre una versión antigua · la primera respuesta será "actualiza y vuelve a probar".

---

## 🚨 Cómo reportar una vulnerabilidad

### ❌ Lo que NO debes hacer

- **No abras un issue público** describiendo la vulnerabilidad.
- **No la publiques** en redes sociales ni en grupos antes de avisar.
- **No la explotes** contra usuarios reales del plugin.

### ✅ Lo que SÍ debes hacer

Reporta de forma **privada y responsable** por una de estas vías:

#### Vía 1 · Email cifrado (preferido)

📧 **`impactodigitalformacionbrasil@gmail.com`**

Asunto sugerido: `[SECURITY] Zenith Crea Ofertas · <resumen corto>`

Incluye:
1. **Descripción clara** de la vulnerabilidad.
2. **Pasos para reproducir** (lo más detallados posible).
3. **Versión del plugin** afectada.
4. **Impacto estimado** (qué datos · qué accesos · qué se puede romper).
5. **Posible mitigación** si la conoces.
6. **Tu nombre / handle** para acreditarte (si lo deseas).

#### Vía 2 · GitHub Security Advisories (recomendado para repos públicos)

Si el repositorio está publicado en GitHub:
1. Ve a **`Security` → `Advisories`** en el repo.
2. Click en **"Report a vulnerability"**.
3. Rellena el formulario.

Ese canal es completamente privado entre tú y los mantenedores.

---

## ⏱️ Tiempos de respuesta esperados

Nos comprometemos a:

| Acción                                  | Tiempo objetivo            |
|-----------------------------------------|----------------------------|
| **Acuse de recibo** del reporte         | < 48 horas                 |
| **Triaje inicial** (clasificar severidad) | < 5 días hábiles          |
| **Parche o mitigación** para criticidad alta | < 14 días                |
| **Parche** para criticidad media/baja   | < 30 días                  |
| **Disclosure público coordinado**       | Tras parche · acordado contigo |

Si la severidad es **crítica** (RCE · exposición de credenciales · ejecución arbitraria) movemos cielo y tierra para resolverlo en menos de 7 días.

---

## 🎯 Alcance · ¿qué consideramos vulnerabilidad?

### ✅ Dentro de scope

- Ejecución de código arbitrario vía agentes · commands · templates.
- Inyección de prompts maliciosos que escapen del contexto del agente.
- Exposición no intencionada de credenciales o claves API que el usuario haya configurado.
- Path traversal o lectura/escritura fuera del directorio del proyecto.
- Templates HTML que ejecuten JS no esperado en el contexto de Cmd+P.
- Validación insuficiente en `setup-apis` o `setup-crea-ofertas`.

### ❌ Fuera de scope

- Vulnerabilidades en Claude Code (Anthropic) · en Node.js · o en cualquier dependencia externa → repórtalo upstream.
- Issues de copywriting · UX · diseño de oferta → eso son `bug_report` · no security.
- Quejas sobre el rendimiento de los modelos LLM.
- Comportamientos esperados que no te gusten estéticamente.

---

## 🏆 Reconocimiento

Si tu reporte es válido y termina en un parche · serás añadido a un **Security Hall of Fame** en `CONTRIBUTORS.md` (con tu permiso · y con el handle que prefieras).

No tenemos programa de bug bounty monetario en este momento.

---

## 🔑 Clave PGP (opcional · para reportes ultra-sensibles)

> Si quieres cifrar tu reporte · pide la clave PGP por email primero. Te responderemos con la huella verificable.
>
> **Placeholder fingerprint** · `FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF FFFF`

---

## 🛡️ Buenas prácticas para usuarios

Mientras esperamos tu reporte (o por costumbre · si usas el plugin):

1. **No subas tu carpeta `.env`** ni credenciales al repo cuando hagas un PR.
2. **Revisa los agentes que invocas** antes de darles `allowed-tools: Bash` en proyectos sensibles.
3. **Audita los HTML generados** antes de imprimirlos · si vienen de un fork de terceros.
4. **Mantén Claude Code actualizado** (`claude --update` o el método que uses).
5. **Aísla proyectos cliente** en carpetas distintas · no mezcles datos.

---

## 📜 Política de disclosure coordinado

1. Reportas la vulnerabilidad en privado.
2. Confirmamos · clasificamos · parcheamos.
3. **Acordamos contigo una fecha de disclosure** (típicamente 90 días post-parche o cuando una mayoría de usuarios haya actualizado).
4. Publicamos un **Security Advisory** con CVE si aplica · agradeciéndote.
5. Tú puedes publicar tu writeup técnico tras esa fecha.

---

*Hecho con Método Zenith™ · seguridad como capa cero del producto.*
