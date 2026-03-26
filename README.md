# sandy

Dev container with Node.js, Go, Python, and Claude Code pre-installed.

## Install

```bash
./install.sh
```

Copies the Dockerfile to `~/.sandy/` and the `sandy` script to `/usr/local/bin/`.

## Usage

```bash
cd my-project
sandy init    # create sandy-compose.yml and .sandy.env
sandy up      # start the container (default command)
sandy shell   # open a shell in the running container
sandy down    # stop the container
sandy rebuild # rebuild the image from scratch and start
sandy destroy # stop, remove volumes, and remove sandy-compose.yml
```

### Exposed ports

| Port | Typical use        |
|------|--------------------|
| 3000 | React / Next.js    |
| 5173 | Vite               |
| 8080 | Go HTTP server     |
| 8000 | Python HTTP server |
