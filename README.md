# Tharun Kumar — Portfolio Website

A single-page portfolio website with a dynamic project system. Built with vanilla HTML, CSS, and JavaScript.

## Setup

1. Clone or download this repository
2. Open `index.html` in a browser, or deploy to GitHub Pages

**For local development with projects:** Projects are loaded via `fetch()`, which requires a local server:

```bash
# Using Python
python3 -m http.server 8000

# Using Node.js
npx serve .
```

Then open `http://localhost:8000`

## How to Add a New Project

### Option 1: Use the helper script

```bash
./add-project.sh my-project-name
```

Then:
1. Edit `projects/my-project-name/info.json` with your project details
2. Add a `thumbnail.png` (1280x720 recommended) to the folder
3. Add `"my-project-name"` to the array in `projects/projects.json`
4. Push to GitHub — done!

### Option 2: Manual

1. Create a folder inside `projects/` (e.g., `projects/my-new-project/`)
2. Add an `info.json` file:

```json
{
  "title": "My Project",
  "category": "Web Design",
  "description": "A brief description of the project.",
  "tags": ["Tag1", "Tag2"],
  "thumbnail": "thumbnail.png",
  "screenshots": ["screenshots/1.png"],
  "liveUrl": "https://example.com",
  "githubUrl": "https://github.com/...",
  "date": "2026-01",
  "featured": false,
  "order": 99
}
```

3. Add a `thumbnail.png` to the same folder
4. Add the folder name to `projects/projects.json`

### info.json Fields

| Field | Required | Description |
|-------|----------|-------------|
| `title` | Yes | Project name |
| `category` | Yes | Category label (e.g., "Web Design", "No-Code App", "AI Art") |
| `description` | Yes | 1-2 sentence description |
| `tags` | Yes | Array of tech/skill tags |
| `thumbnail` | Yes | Thumbnail filename in same folder |
| `screenshots` | No | Array of screenshot paths for the modal gallery |
| `liveUrl` | No | Live project URL |
| `githubUrl` | No | GitHub repository URL |
| `date` | Yes | YYYY-MM format for sorting (newest first) |
| `featured` | No | `true` shows a Featured badge |
| `order` | No | Manual sort priority (lower = first) |

## Deployment

This site is ready to deploy on GitHub Pages. Push to a repo and enable Pages in Settings.

## Tech Stack

- HTML, CSS, JavaScript (single file)
- Google Fonts (Syne + DM Sans)
- No frameworks or dependencies
