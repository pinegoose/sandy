# sandy

Dev container with Node.js, Go, Python, and Claude Code pre-installed.

## Install

```bash
ln -sf "$HOME/dev/sandy/sandy" /usr/local/bin/sandy
```

## Usage

```bash
sandy ./my-project   # mount a specific directory
sandy               # mount current directory
```

Builds the Docker image on first run (cached after that), then drops you into a bash shell at `/workspace`.

### Exposed ports

| Port | Typical use       |
|------|-------------------|
| 3000 | React / Next.js   |
| 5173 | Vite              |
| 8080 | Go HTTP server    |
| 8000 | Python HTTP server|
