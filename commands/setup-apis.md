---
name: setup-apis
description: Asistente paso a paso para conectar APIs y MCPs OPCIONALES (Apify, Reddit PRAW, YouTube Data API, Meta Ad Library, DataForSEO MCP, Firecrawl MCP). NO es obligatorio para usar el plugin (funciona out-of-the-box con WebSearch + WebFetch nativos). Solo útil si quieres research masivo / scraping pro / análisis competencia a escala. Detecta qué APIs ya tienes configuradas y guía la conexión de las que falten.
argument-hint: "[opcional: apify | praw | youtube | meta | mcp | all]"
---

# /setup-apis · Asistente de APIs opcionales

## QUÉ HACE

Te ayuda a conectar APIs/MCPs OPCIONALES que mejoran el rendimiento del plugin:

- **Apify** (scraping masivo profesional)
- **PRAW** (Reddit API oficial)
- **YouTube Data API v3** (alternativa para YouTube)
- **Meta Ad Library API** (oficial · vs scraping)
- **MCPs externos** (DataForSEO, Firecrawl, Notion, Google Drive)

⚠️ **NO es obligatorio.** El plugin funciona al 100% sin ninguna de estas APIs (todo se hace con WebSearch + WebFetch nativos de Claude Code).

## CUÁNDO USARLO

- **Solo si** uno de estos casos aplica:
  - Haces +5 proyectos/mes y necesitas más velocidad de research
  - WebFetch no te trae suficientes datos (rate limiting)
  - Quieres scrapear TikTok / Instagram (donde WebFetch falla)
  - Tu cliente paga premium y quiere data masiva

- **NO lo uses si:**
  - Es tu primera vez con el plugin (empieza simple)
  - Haces 1-5 proyectos/mes (sobra con out-of-the-box)
  - No quieres pagar por APIs

## CÓMO USARLO

### Modo asistido (recomendado)

```
/setup-apis
```

Te hace 3 preguntas:
1. ¿Cuántos proyectos al mes estimas? (1-5 / 5-20 / +20)
2. ¿Qué te preocupa más? (velocidad / completitud / escala)
3. ¿Cuánto presupuesto tienes para APIs? ($0 / $50 / $200+)

Y te recomienda **exactamente qué APIs configurar** y te guía paso a paso.

### Setup directo de una API específica

```
/setup-apis apify       # Solo Apify
/setup-apis praw        # Solo Reddit PRAW
/setup-apis youtube     # Solo YouTube Data API
/setup-apis meta        # Solo Meta Ad Library
/setup-apis mcp         # Lista de MCPs recomendados
/setup-apis all         # Configurar todas en cascada
```

### Verificar qué ya está configurado

```
/setup-apis --status
```

Te muestra tabla:

```
✓ APIFY_TOKEN        → configurado (en .env)
✗ REDDIT_CLIENT_ID   → no configurado
✗ YOUTUBE_API_KEY    → no configurado
✗ META_AD_TOKEN      → no configurado
```

## CÓMO FUNCIONA INTERNAMENTE

### Para cada API:

1. **Verifica** si ya está configurada (lee `.env` del plugin)
2. **Explica** qué hace y cuánto cuesta
3. **Pregunta** si quieres configurarla
4. **Abre el link** de registro automáticamente (`open URL`)
5. **Te pide pegar el token** que obtuviste
6. **Guarda** en `.env` con permisos seguros (600)
7. **Verifica** la conexión con un test API
8. **Confirma** que todo funciona

## EJEMPLO DE USO

```
Usuario: /setup-apis

Asistente:
"Hola. Antes de configurar APIs, dime:

1. ¿Cuántos proyectos al mes estimas?
   a) 1-5 (casual)
   b) 5-20 (regular)
   c) +20 (agencia)

2. ¿Qué te preocupa más?
   a) Velocidad de generación
   b) Completitud de los datos
   c) Escala (cientos de competidores)

3. ¿Presupuesto mensual para APIs externas?
   a) $0 (solo gratis)
   b) Hasta $50
   c) +$200"

Usuario: "1-5 proyectos, completitud, $0 gratis"

Asistente:
"Perfecto. Para tu caso, mi recomendación es:

✅ NO configures ninguna API.

El plugin funciona perfecto out-of-the-box con WebSearch + WebFetch nativos
de Claude Code. Para 1-5 proyectos/mes y presupuesto $0, NO compensa
configurar Apify ni ninguna otra API.

Solo si en el futuro notas que research-reddit o research-youtube te
devuelven datos limitados, vuelve a /setup-apis y configuramos PRAW
(Reddit API · gratis).

¿Algo más?"
```

```
Usuario: /setup-apis apify

Asistente:
"🕷️ Setup de Apify (scraping masivo profesional)

Apify te permite hacer research a escala industrial:
- Scrape de cientos de subreddits de Reddit en minutos
- Scrape de TikTok / Instagram (que WebFetch no puede)
- Scrape de Biblioteca de Anuncios Meta sin rate limits

💰 Precio: plan gratis (~$5 créditos/mes · suficiente para 5-10 proyectos)
          plan Starter $49/mes (volumen pro)

¿Quieres configurarlo ahora? (sí / no)"

Usuario: sí

Asistente:
"Voy a abrir https://apify.com/sign-up en tu navegador.

[ejecuta: open https://apify.com/sign-up]

Pasos:
1. Crea tu cuenta (puede ser con Google · gratis)
2. Una vez dentro, ve a Settings → Integrations → API tokens
3. Click 'Create new token'
4. Copia el token (formato: apify_api_xxxxxxxxxxx)

Cuando lo tengas, pégalo aquí y lo guardo en tu .env:"

Usuario: apify_api_abcd1234567

Asistente:
"✓ Token recibido. Validando...

[ejecuta: python3 -c 'from apify_client import ApifyClient; ...']

✅ Conexión OK · usuario: zenithmetodo
✅ Plan: Free (5,000 unidades disponibles)
✅ Token guardado en ${CLAUDE_PLUGIN_ROOT}/.env (permisos 600)

LISTO. Los agentes 36-research-reddit, 37-research-youtube y 40-competidor-spy
ahora detectarán Apify automáticamente y lo usarán para scraping masivo
cuando WebFetch no sea suficiente."
```

## ARCHIVO .env GENERADO

El comando guarda los tokens en `${CLAUDE_PLUGIN_ROOT}/.env` con este formato:

```bash
# Zenith Crea Ofertas™ · APIs opcionales
# NUNCA subas este archivo a Git (ya está en .gitignore)

# Apify (scraping masivo)
APIFY_TOKEN=apify_api_xxxxxxxxxxxxx

# Reddit PRAW (opcional)
REDDIT_CLIENT_ID=tu_client_id
REDDIT_CLIENT_SECRET=tu_client_secret
REDDIT_USER_AGENT=zenith-crea-ofertas/2.0.0

# YouTube Data API v3 (opcional)
YOUTUBE_API_KEY=tu_api_key

# Meta Ad Library API (opcional)
META_AD_LIBRARY_TOKEN=tu_token
```

## SEGURIDAD

- El `.env` se guarda con permisos `600` (solo lectura/escritura para tu usuario)
- Está incluido en `.gitignore` (nunca se sube a GitHub)
- Los tokens NUNCA se muestran en outputs ni en logs
- Si te roban un token, regenera el nuevo y actualiza `.env`

## MCPS RECOMENDADOS

Para los que quieran ir aún más allá, el comando también puede sugerirte instalar MCPs:

| MCP | Para qué | Comando |
|---|---|---|
| `@mendable/firecrawl-mcp` | Mejor scraping vía Firecrawl | `claude mcp add firecrawl` |
| `@apify/actors-mcp-server` | Apify directamente como MCP | `claude mcp add apify` |
| `dataforseo-mcp` | SERP analysis + competitive intelligence pro | `claude mcp add dataforseo` |
| `google-drive` | Subir HTMLs generados a Drive del cliente | `claude mcp add google-drive` |
| `notion` | Guardar outputs en Notion | `claude mcp add notion` |

## DOCS COMPLETOS

Ver [EXTERNAL_SERVICES.md](../EXTERNAL_SERVICES.md) para tabla completa de servicios + cuándo usar cada uno.

## OPTIMIZACIÓN DE COSTES (PARA EL CLIENTE)

Este comando es **conversacional** · usa Sonnet (model: sonnet).
Coste estimado por ejecución: <1k tokens.

NO instala nada que el cliente no quiera. Pide confirmación ANTES de cada acción.

---

*Filosofía Zenith™: "El mejor power-up es el que NO necesitas configurar."*
