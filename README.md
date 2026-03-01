# Awesome OpenClaw Skills

A curated collection of battle-tested [OpenClaw (Claude Code)](https://github.com/anthropics/claude-code) Skills, built and verified in real-world workflows.

> All Skills in this repo are personally created and stress-tested by [@JackyCSer](https://github.com/JackyCSer). If a Skill is here, it works.

## Skills

| Skill | Description |
|-------|-------------|
| [web-scraper-jina-ai](web-scraper-jina-ai/) | Scrape any webpage via Jina AI Reader. Returns clean Markdown. Supports JS-rendered pages, paywall bypass, and X/Twitter scraping. |

## Installation

### Method 1: Clone & Copy (Recommended)

```bash
git clone https://github.com/JackyCSer/awesome-openclaw-skills.git
```

Then copy the Skill you want into your Claude Code skills directory:

```bash
# Global install — available in all projects
cp -r awesome-openclaw-skills/web-scraper-jina-ai/ ~/.claude/skills/

# Project-level install — available in current project only
cp -r awesome-openclaw-skills/web-scraper-jina-ai/ .claude/skills/
```

### Method 2: Download Individual Skill

If you only need one Skill, download its folder directly and place it in:

| Scope | Path |
|-------|------|
| Personal (all projects) | `~/.claude/skills/<skill-name>/` |
| Project-specific | `<project>/.claude/skills/<skill-name>/` |

### Verify Installation

Open Claude Code and ask:

```
What skills are available?
```

You should see the installed Skill in the list.

## Usage

Once installed, Claude Code **automatically invokes** the Skill when it's relevant to your conversation. For example, if you ask Claude to scrape a JS-rendered webpage, it will use `web-scraper-jina-ai` without you having to do anything.

You can also invoke a Skill directly with the `/` command:

```
/web-scraper-jina-ai https://example.com/article
```

## Skill Structure

Each Skill follows the standard OpenClaw Skill format:

```
skill-name/
  SKILL.md        # Skill definition and instructions
  scripts/        # Helper scripts (optional)
  LICENSE.txt     # License
```

## Contributing

Found a bug or have an improvement? PRs and Issues are welcome.

## License

Each Skill has its own license. See the `LICENSE.txt` in each Skill directory. Default: [Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0).
