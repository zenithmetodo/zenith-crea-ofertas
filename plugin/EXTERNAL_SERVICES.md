# 🔌 Servicios externos · Zenith Crea Ofertas™

Lista completa de **qué APIs, MCPs y herramientas externas usa el plugin** · qué es **obligatorio** vs **opcional** · cómo configurar cada uno.

---

## ✅ TL;DR (la respuesta corta)

> **El plugin funciona al 100% SIN configurar ninguna API externa.**
>
> Todo se hace con las herramientas nativas de Claude Code (WebSearch + WebFetch + Bash + Read + Write + Edit + Grep).
>
> Las APIs opcionales son **power-ups** que MEJORAN ciertos agentes (research masivo · scraping pro · etc.), pero el pipeline base funciona sin ellas.

---

## 📋 Tabla resumen

| Servicio | ¿Obligatorio? | ¿Para qué? | Cómo configurar |
|---|---|---|---|
| **WebSearch** (Claude Code nativo) | ✅ Sí · ya incluido | Research Reddit/YouTube | Viene con Claude Code |
| **WebFetch** (Claude Code nativo) | ✅ Sí · ya incluido | Scrape de páginas concretas | Viene con Claude Code |
| **Bash** (Claude Code nativo) | ✅ Sí · ya incluido | Ejecutar scripts (Whisper, ffmpeg) | Viene con Claude Code |
| **Python 3.10+** | ✅ Sí · auto-instala | Runtime para Whisper | `install.sh` lo instala |
| **ffmpeg** | ✅ Sí · auto-instala | Procesar audio/vídeo (Whisper) | `install.sh` lo instala |
| **Whisper (openai-whisper)** | ✅ Sí · auto-instala | Transcribir vídeos MP4 del usuario | `install.sh` lo instala |
| **jq** | ✅ Sí · auto-instala | Procesamiento JSON | `install.sh` lo instala |
| **BeautifulSoup + requests** | ✅ Sí · auto-instala | Scraping web ligero | `install.sh` lo instala |
| **Apify** | 🟡 OPCIONAL | Scraping masivo profesional (Reddit/YouTube/TikTok/Meta) | Ver sección Apify abajo |
| **PRAW (Reddit API)** | 🟡 OPCIONAL | Alternativa avanzada para Reddit | Ver sección PRAW abajo |
| **YouTube Data API v3** | 🟡 OPCIONAL | Alternativa avanzada para YouTube | Ver sección YouTube abajo |
| **Meta Ad Library API** | 🟡 OPCIONAL | API oficial Meta Ads (vs scraping) | Ver sección Meta abajo |
| **Hotmart API** | 🟡 OPCIONAL | Conexión con Hotmart para vender | NO incluido aún (v3.0) |
| **MCP servers extra** | 🟡 OPCIONAL | Conectores adicionales | Ver sección MCP abajo |

---

## ✅ LO QUE FUNCIONA OUT-OF-THE-BOX (sin configurar nada)

Después de ejecutar `bash install.sh` (que ya hace todo automáticamente), TIENES:

### Pipeline completo Zenith funcional
- `/zenith-crea-oferta` → 17 etapas → oferta completa
- 41 agentes ejecutándose con Opus/Sonnet/Haiku según complejidad
- 18 HTMLs estéticos generados automáticamente
- Avatar deep + Research Reddit + Research YouTube + Competencia → **TODO funciona con WebSearch + WebFetch nativos**

### Los 3 agentes que usan internet
1. **36-research-reddit** → usa WebSearch (busca subreddits) + WebFetch (extrae posts)
2. **37-research-youtube** → usa WebSearch (busca canales/vídeos) + WebFetch (extrae comentarios)
3. **40-competidor-spy** → usa WebSearch + WebFetch (Biblioteca Anuncios Meta + landing pages competidores)

**Sin API key. Sin configuración. Sin pagos extra.**

---

## 🟡 POWER-UPS OPCIONALES

Estos servicios MEJORAN el rendimiento pero NO son obligatorios.

---

### 🕷️ Apify (scraping masivo profesional)

**¿Cuándo lo necesito?**
- Si haces research a escala industrial (cientos de subreddits / canales por proyecto)
- Si los agentes de research te devuelven "datos limitados" porque WebFetch no escaló
- Si quieres scraping de TikTok / Instagram (donde WebFetch falla por JavaScript)

**¿Cuándo NO lo necesito?**
- Si usas el plugin para 1-5 proyectos al mes (WebSearch + WebFetch sobran)
- Si tu cliente tiene presupuesto limitado

**Precio Apify:** plan gratis (~$5 de créditos/mes) · plan starter $49/mes

**Cómo conectar (paso a paso):**

```bash
# 1. Crear cuenta gratuita
open https://apify.com/sign-up

# 2. Obtener API token
# Apify Console → Settings → Integrations → API tokens → Create new

# 3. Guardar token en .env del plugin
echo "APIFY_TOKEN=apify_api_xxxxxxxxxxxxx" >> ~/.claude/skills/zenith-crea-ofertas/.env

# 4. Instalar SDK Python (opcional · si quieres scripts personalizados)
pip3 install --user apify-client

# 5. Verificar conexión
python3 -c "from apify_client import ApifyClient; c=ApifyClient('$APIFY_TOKEN'); print(c.user().get())"
```

**Actors recomendados de Apify** (para los agentes Zenith):

| Actor | Para qué agente | Coste aprox |
|---|---|---|
| `clockworks/free-tiktok-scraper` | research-youtube (extender a TikTok) | Free tier |
| `apify/reddit-scraper-lite` | research-reddit (subreddits masivos) | ~$0.50/1k posts |
| `compass/Instagram-search-scraper` | competidor-spy (perfiles Instagram) | ~$0.50/1k perfiles |
| `apify/facebook-ads-scraper` | competidor-spy (Biblioteca Anuncios) | ~$0.50/1k ads |
| `apify/youtube-channel-scraper` | research-youtube (canales completos) | Free tier para low volume |

**Una vez configurado**, los agentes detectan automáticamente que `APIFY_TOKEN` está disponible y lo prefieren sobre WebFetch para research masivo.

---

### 🤖 PRAW (Reddit API oficial · alternativa a Apify)

**¿Cuándo lo necesito?**
- Alternativa gratuita a Apify para Reddit
- Necesitas extraer +1000 posts/mes de un subreddit específico

**Cómo conectar:**

```bash
# 1. Crear app en Reddit
open https://www.reddit.com/prefs/apps

# 2. Click "create another app"
#    - Name: zenith-crea-ofertas
#    - Type: script
#    - redirect URI: http://localhost:8080

# 3. Copia client_id y client_secret

# 4. Guardar en .env
cat >> ~/.claude/skills/zenith-crea-ofertas/.env << EOF
REDDIT_CLIENT_ID=tu_client_id
REDDIT_CLIENT_SECRET=tu_client_secret
REDDIT_USER_AGENT=zenith-crea-ofertas/2.0.0
EOF

# 5. Instalar PRAW
pip3 install --user praw

# 6. Verificar
python3 -c "import praw; r=praw.Reddit(client_id='$REDDIT_CLIENT_ID', client_secret='$REDDIT_CLIENT_SECRET', user_agent='$REDDIT_USER_AGENT'); print(r.subreddit('python').display_name)"
```

---

### 🎬 YouTube Data API v3 (alternativa para YouTube)

**¿Cuándo lo necesito?**
- Si quieres extraer +100 vídeos de un canal específico
- Si necesitas comentarios estructurados (JSON limpio)

**Cómo conectar:**

```bash
# 1. Crear proyecto en Google Cloud Console
open https://console.cloud.google.com/

# 2. Habilitar YouTube Data API v3
# APIs & Services → Library → buscar "YouTube Data API v3" → Enable

# 3. Crear API key
# APIs & Services → Credentials → Create credentials → API key

# 4. Restringir API key a YouTube Data API v3 (recomendado)

# 5. Guardar en .env
echo "YOUTUBE_API_KEY=tu_api_key" >> ~/.claude/skills/zenith-crea-ofertas/.env
```

**Cuota gratis:** 10,000 unidades/día (≈100 búsquedas + 1,000 detalles vídeo).

---

### 📘 Meta Ad Library API (oficial · alternativa al scraping)

**¿Cuándo lo necesito?**
- Si haces audit de competencia a gran escala (cientos de competidores)
- Si quieres datos estructurados de impressions / spend / demografía

**Cómo conectar:**

```bash
# 1. Crear cuenta de Meta for Developers
open https://developers.facebook.com/

# 2. Verificar identidad (obligatorio para Ad Library API)
# Settings → Identity verification

# 3. Crear app
# My Apps → Create App → Type: Other → Use cases: Other

# 4. Obtener access token
# App Dashboard → Tools → Graph API Explorer → Generate Token

# 5. Guardar en .env
echo "META_AD_LIBRARY_TOKEN=tu_token" >> ~/.claude/skills/zenith-crea-ofertas/.env
```

**Nota:** la API tiene límites estrictos. Para uso casual, el scraping vía WebFetch es más simple.

---

## 🔧 MCP servers compatibles

El plugin funciona perfectamente con cualquier MCP server que conectes a Claude Code. Algunos MCPs útiles que potencian el plugin:

### MCP recomendados (opcionales)

| MCP | Mejora a qué agente | Cómo instalar |
|---|---|---|
| **DataForSEO MCP** | research-reddit + research-youtube + competidor-spy | `claude mcp add dataforseo-mcp` |
| **Firecrawl MCP** | Cualquier agente que use WebFetch (mejor scraping) | `claude mcp add @mendable/firecrawl-mcp` |
| **Apify MCP** | research masivo · scraping pro | `claude mcp add @apify/actors-mcp-server` |
| **Notion MCP** | guardar outputs en Notion del cliente | `claude mcp add notion` |
| **Google Drive MCP** | subir HTMLs directamente a Drive del cliente | `claude mcp add google-drive` |

### Cómo instalar un MCP

```bash
# En Claude Code, en cualquier conversación:
/mcp install <nombre-mcp>

# O manualmente editando ~/.claude/settings.json:
{
  "mcpServers": {
    "apify": {
      "command": "npx",
      "args": ["-y", "@apify/actors-mcp-server"],
      "env": {
        "APIFY_TOKEN": "tu_token"
      }
    }
  }
}
```

---

## 📦 Hotmart / Stripe / PayPal (Checkout · v3.0 roadmap)

**Estado actual:** NO integrado en v2.0.0.

**Próxima versión (v3.0):** agentes para:
- `hotmart-checkout-config` · auto-configurar producto en Hotmart
- `stripe-checkout-config` · auto-configurar producto en Stripe
- `payment-link-generator` · generar links de pago en 1 click

Por ahora, el cliente conecta el checkout manualmente con la ayuda del HTML `10-oferta-completa.html` que ya tiene los CTAs con placeholders `{{CTA_URL}}`.

---

## 🚦 Mi recomendación práctica

### Para empezar (1-5 ofertas/mes)
```
✅ install.sh (auto-instala todo)
✅ Usar como viene · sin configurar APIs extra
```

### Para escala media (5-20 ofertas/mes)
```
✅ install.sh
🟡 + Apify (plan gratis o starter $49/mes)
```

### Para agencia / volumen alto (+20 ofertas/mes)
```
✅ install.sh
✅ Apify ($49-$199/mes según volumen)
✅ DataForSEO MCP (para SERP analysis pro)
🟡 + YouTube Data API (cuota gratis suele bastar)
🟡 + Meta Ad Library API (si haces competitive intelligence pro)
```

---

## 🆘 Troubleshooting

### "Los agentes de research devuelven pocos datos"

**Causa probable:** WebFetch tiene límites y algunos sitios bloquean scraping.

**Solución 1 (gratis):** Aceptar los límites · funciona bien para 1-5 proyectos
**Solución 2 (pago):** Conectar Apify (sección arriba)

### "research-youtube no encuentra los comentarios de un vídeo"

**Causa probable:** YouTube carga comentarios con JavaScript · WebFetch no los ve.

**Solución 1:** Pegar manualmente la URL del vídeo al agente
**Solución 2:** Conectar YouTube Data API
**Solución 3:** Conectar Apify (actor youtube-comments-scraper)

### "competidor-spy no me trae los anuncios de Meta"

**Causa probable:** Biblioteca de Anuncios Meta tiene rate limiting estricto.

**Solución 1:** Esperar 30 min y reintentar
**Solución 2:** Conectar Meta Ad Library API oficial
**Solución 3:** Conectar Apify (actor facebook-ads-scraper)

---

## 📞 Soporte

- Issues: https://github.com/zenithmetodo/zenith-crea-ofertas/issues
- Email: `impactodigitalformacionbrasil@gmail.com`
- Docs: [README.md](README.md) · [INSTALL.md](INSTALL.md) · [QUICKSTART.md](docs/QUICKSTART.md)

---

*Filosofía Zenith™: "El mejor power-up es el que NO necesitas configurar. Si funciona con WebSearch, no metas Apify."*
