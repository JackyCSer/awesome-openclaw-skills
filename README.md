# Awesome OpenClaw Skills

A curated collection of battle-tested [OpenClaw](https://github.com/openclaw/openclaw) / [Claude Code](https://github.com/anthropics/claude-code) Skills, built and verified in real-world workflows.

> All Skills in this repo are personally created and stress-tested by [@JackyCSer](https://github.com/JackyCSer). If a Skill is here, it works.

## Skills

| Skill | Description |
|-------|-------------|
| [web-scraper-jina-ai](web-scraper-jina-ai/) | Scrape any webpage via Jina AI Reader. Returns clean Markdown. Supports JS-rendered pages, paywall bypass, and X/Twitter scraping. |

## Installation & Usage

### OpenClaw (Recommended)

The easiest way — just send this message to your OpenClaw agent via **WhatsApp / Telegram / Feishu / Discord** or any connected chat platform:

> Please Install the `web-scraper-jina-ai` Skill from this GitHub repo: https://github.com/JackyCSer/awesome-openclaw-skills
>
> Steps:
> 1. Clone the repo: `git clone https://github.com/JackyCSer/awesome-openclaw-skills.git`
> 2. Copy the Skill to your skills directory: `cp -r awesome-openclaw-skills/web-scraper-jina-ai/ ~/.openclaw/skills/`
> 3. Clean up: `rm -rf awesome-openclaw-skills`
> 4. Restart the gateway to load the new Skill

OpenClaw will handle the rest automatically. Once installed, the Skill will be **auto-invoked** when relevant, or you can trigger it manually via slash command.

<details>
<summary>Manual install (alternative)</summary>

```bash
git clone https://github.com/JackyCSer/awesome-openclaw-skills.git

# Global install — available across all agents
cp -r awesome-openclaw-skills/web-scraper-jina-ai/ ~/.openclaw/skills/

# Workspace install — available in current workspace only
cp -r awesome-openclaw-skills/web-scraper-jina-ai/ <workspace>/skills/
```

Restart the OpenClaw gateway to pick up the new Skill.

</details>

### Claude Code

Copy the Skill folder into your Claude Code skills directory:

```bash
git clone https://github.com/JackyCSer/awesome-openclaw-skills.git

# Global install — available in all projects
cp -r awesome-openclaw-skills/web-scraper-jina-ai/ ~/.claude/skills/

# Project-level install — available in current project only
cp -r awesome-openclaw-skills/web-scraper-jina-ai/ .claude/skills/
```

Once installed, Claude Code will **automatically invoke** the Skill when it's relevant to your conversation. You can also invoke it directly with the `/` command:

```
/web-scraper-jina-ai https://example.com/article
```

### Verify Installation

Ask your agent:

```
What skills are available?
```

You should see the installed Skill in the list.

## Skill Structure

Each Skill follows the standard OpenClaw Skill format:

```
skill-name/
  SKILL.md        # Skill definition and instructions
  scripts/        # Helper scripts (optional)
```

## Contributing

Found a bug or have an improvement? PRs and Issues are welcome.

## License

[Apache 2.0](LICENSE.txt)
