# sandy

Dev container with Node.js, Go, Python, and Claude Code pre-installed.

## Install

```bash
curl -fsSL https://raw.githubusercontent.com/pinegoose/sandy/master/install.sh | sh
```

## Usage

```bash
cd my-project
sandy init    # create sandy-compose.yml and .sandy.env
sandy up      # start the container (default command)
sandy shell   # open a shell in the running container
sandy down    # stop the container
sandy rebuild # rebuild the image from scratch and start
sandy destroy # stop, remove volumes, and remove sandy-compose.yml
sandy update  # update sandy to the latest version
```

### Project mounting

Your project directory is mounted at `/workspace` inside the container. Run dev servers on the host — file changes are visible in both directions.
