# 🆘 Soporte · Zenith Crea Ofertas™

> *De la cima se ve mejor el avatar · y desde aquí te ayudamos a llegar.*

¿Tienes una duda · un bloqueo · o algo no te funciona? Tranqui. Aquí tienes **todas las vías de soporte** del plugin · ordenadas de la más rápida a la más profunda.

---

## 🚀 Empieza por aquí

Antes de abrir cualquier canal · invierte 2 minutos en estos pasos. Resuelven el 80% de los casos:

1. **Lee el `README.md`** · está pensado para que cualquier persona empiece en menos de 10 minutos.
2. **Revisa `INSTALL.md`** si la duda es de instalación o setup.
3. **Mira `EXTERNAL_SERVICES.md`** si tu fallo viene de Reddit · YouTube · APIs externas.
4. **Comprueba `CHANGELOG.md`** · puede que el bug ya esté arreglado en la última versión.
5. **Busca en issues cerradas** · alguien casi seguro ya ha tenido tu mismo problema.

---

## 🎯 Elige el canal según tu caso

### 🐛 Tienes un bug · algo NO funciona

→ Abre una **issue** con la plantilla `🐛 Bug report` en GitHub Issues.

Necesitamos:
- Pasos para reproducir.
- Versión del plugin.
- Sistema operativo.
- Logs.

> No abras un bug si lo tuyo es realmente una pregunta. Usa Discussions.

---

### ✨ Quieres una feature nueva

→ Abre una **issue** con la plantilla `✨ Feature request` en GitHub Issues.

> Si lo que quieres es un **agente nuevo** · usa la plantilla `🤖 Propuesta de nuevo agente`.

---

### 💬 Es una pregunta / duda general

→ Abre un hilo en **GitHub Discussions**.

[**Ir a Discussions →**](https://github.com/zenithmetodo/zenith-crea-ofertas/discussions)

Discussions es perfecto para:
- "¿Cómo se usa el agente X?"
- "¿Cuál es la diferencia entre `/crea-oferta-1pct` y `/zenith-crea-oferta`?"
- "¿Puedo usar el plugin sin Reddit API?"
- "¿Alguien tiene un example de oferta para nicho `<X>`?"
- "Me gustaría compartir mi oferta creada con Zenith para feedback."

---

### 🔒 Es una vulnerabilidad de seguridad

→ **No abras issue pública** · lee primero **[`SECURITY.md`](./SECURITY.md)**.

📧 Reporta a `impactodigitalformacionbrasil@gmail.com` con asunto `[SECURITY] ...`.

---

### 🤝 Quieres contribuir código

→ Lee **[`CONTRIBUTING.md`](./CONTRIBUTING.md)** y luego abre un PR.

Si el cambio es grande · abre primero una issue para discutir el approach.

---

### 📧 Caso privado · no encaja en ningún canal público

→ Email directo · solo cuando no sea posible vía pública.

📬 `impactodigitalformacionbrasil@gmail.com`

> ⚠️ La respuesta por email puede tardar más que en Discussions. Lo público escala mejor para todo el mundo.

---

## 📚 Documentación de referencia

| Archivo                       | Para qué                                                    |
|-------------------------------|-------------------------------------------------------------|
| **`README.md`**               | Visión global · qué es · cómo empezar                       |
| **`INSTALL.md`**              | Instalación paso a paso (macOS · Linux · Windows)           |
| **`SKILL.md`**                | Documentación completa del skill · agentes · arquitectura   |
| **`EXTERNAL_SERVICES.md`**    | APIs externas · Reddit · YouTube · setup                    |
| **`CONTRIBUTING.md`**         | Cómo contribuir · formato de agentes · proceso              |
| **`SECURITY.md`**             | Política de seguridad · reportar vulnerabilidades           |
| **`CODE_OF_CONDUCT.md`**      | Reglas de convivencia                                       |
| **`CHANGELOG.md`**            | Cambios entre versiones                                     |

---

## ❓ FAQ rápido

### ¿Por qué no responde el `auditor-completo`?

Probablemente te falta algún archivo en el pipeline. El auditor lee TODO lo generado · si falta `06-mecanismo-problema.json` por ejemplo · se queda esperando. Vuelve a ejecutar el pipeline completo o el comando individual que falte.

### ¿Puedo saltarme la fase de discovery?

**No.** La regla innegociable #5 lo prohíbe. Cada agente lee `brief.json` antes de actuar. Sin discovery no hay coherencia.

### ¿Funciona sin las APIs de Reddit / YouTube?

Sí · pero pierdes los agentes `36-research-reddit` y `37-research-youtube`. El pipeline core funciona perfectamente sin esas APIs. Lee `EXTERNAL_SERVICES.md` para detalles.

### El HTML no me imprime bien a PDF · ¿qué hago?

Comprueba:
1. Abres con un navegador moderno (Chrome · Firefox · Safari recientes).
2. Margen "Ninguno" en el diálogo de impresión.
3. "Gráficos de fondo" activado.
4. Tamaño "A4" o "Carta" según tu región.

Si tras eso sigue rompiéndose · abre un bug con screenshot.

### ¿Puedo usar el plugin con un modelo distinto a opus?

Sí · pero **los agentes opus están pensados para razonamiento profundo**. Cambiarlos a haiku probablemente baje la calidad de la oferta. Si quieres ahorrar · valora desactivar agentes opcionales antes que degradar los críticos.

### ¿Hay versión gratuita / pago?

El plugin es **open source · 100% gratuito**. Solo pagas tu uso normal de Claude Code (Anthropic) según tu plan.

### ¿Puedo usarlo para clientes / cobrar por ofertas hechas con Zenith?

**Sí.** Licencia MIT · úsalo comercialmente sin problema. Si te ayuda a cerrar clientes · nos encanta saberlo en Discussions.

---

## 🕒 Tiempos de respuesta esperados

| Canal                          | Tiempo objetivo            |
|--------------------------------|----------------------------|
| Issues (bug + feature)         | < 5 días hábiles           |
| Discussions                    | < 7 días (comunidad ayuda) |
| Pull requests                  | < 7 días (review inicial)  |
| Email                          | < 10 días hábiles          |
| Security advisories            | < 48 horas (acuse)         |

Estos son objetivos · no SLAs. Es un proyecto open source · ten paciencia.

---

## 🌟 ¿Quieres ayudar a la comunidad?

Si dominas el plugin · puedes:

- 🙌 Responder dudas en **Discussions**.
- 📝 Mejorar la documentación con PRs.
- 🎨 Compartir tus **examples** de ofertas creadas.
- 🤖 Proponer **agentes nuevos** si detectas un gap.
- 🐦 Compartir el plugin en tus redes (te lo agradecemos un montón).

---

*Hecho con Método Zenith™ · subir a la cima es más fácil acompañado.*
