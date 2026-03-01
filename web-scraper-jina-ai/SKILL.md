---
name: web-scraper-jina-ai
description: Web Scraping Tool Scrapes content from any webpage via Jina AI Reader and returns clean Markdown. Supports JS-rendered pages, paywall bypass, and X/Twitter scraping. Use this Skill when web_fetch fails to retrieve content (JS pages, blank pages) or when you need to scrape Twitter/X or premium articles. Chinese 网页抓取工具：通过 Jina AI Reader 抓取任意网页内容，返回干净的 Markdown。支持 JS 渲染页面、付费墙绕过、X/推特抓取。当 web_fetch 抓不到内容（JS 页面、空白页）或需要抓取推特/付费文章时使用此 Skill。
---

# Web Scraper — 网页内容抓取

## How It Works

Prepend `https://r.jina.ai/` to any URL. Jina renders the page (including JavaScript), extracts the main content, and returns clean Markdown.

## Usage

### Via CLI (recommended for speed)

```bash
# Basic fetch
curl -s "https://r.jina.ai/https://example.com/article"

# With headers for better results
curl -s "https://r.jina.ai/https://example.com/article" \
  -H "Accept: text/markdown" \
  -H "X-No-Cache: true"
```

### Via web_fetch

```
web_fetch("https://r.jina.ai/https://example.com/article")
```

## When to Use Jina Reader vs web_fetch

| Scenario | Use |
|----------|-----|
| Static HTML page | `web_fetch` (faster, no external dependency) |
| JavaScript-rendered page (SPA, React, etc.) | **Jina Reader** |
| Paywall / login-gated content | **Jina Reader** (bypasses many paywalls) |
| X/Twitter posts and threads | **Jina Reader** (extracts tweet text, author, timestamps) |
| Need structured metadata (title, author, date) | **Jina Reader** (returns Title + URL Source header) |
| GitHub README / docs | `web_fetch` (works fine for static content) |
| Very long pages (need truncation control) | `web_fetch` (has maxChars parameter) |

## Output Format

Jina returns content with a header block:

```
Title: Article Title Here
URL Source: https://original-url.com/article
Markdown Content:
# Article Title
...clean markdown content...
```

## Options (HTTP Headers)

| Header | Value | Purpose |
|--------|-------|---------|
| `Accept` | `text/markdown` | Force markdown output |
| `X-No-Cache` | `true` | Bypass Jina cache, get fresh content |
| `X-With-Links-Summary` | `true` | Append all links at the end |
| `X-With-Images-Summary` | `true` | Append all images at the end |
| `X-Target-Selector` | CSS selector | Extract only specific page elements |
| `X-Wait-For-Selector` | CSS selector | Wait for element before extracting |

## Practical Patterns

### Fetch an article
```bash
curl -s "https://r.jina.ai/https://techcrunch.com/2026/02/28/some-article"
```

### Fetch a tweet/X post
```bash
curl -s "https://r.jina.ai/https://x.com/sama/status/1234567890"
```

### Fetch with fresh content (no cache)
```bash
curl -s "https://r.jina.ai/https://example.com" -H "X-No-Cache: true"
```

### Extract specific section
```bash
curl -s "https://r.jina.ai/https://example.com" -H "X-Target-Selector: article.main"
```

## Limits

- Free tier: no API key needed, rate-limited (~20 req/min)
- For heavy use: get API key at https://jina.ai/reader and pass via `Authorization: Bearer <key>`
- Max content length: ~100K characters per page
- Some heavily protected sites may still block extraction

## Search Mode

Jina also supports search (alternative to Brave/Tavily):
```bash
curl -s "https://s.jina.ai/your+search+query"
```
Returns search results in Markdown format. Useful as a backup search when other APIs are rate-limited.
