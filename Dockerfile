# Start from the official n8n image (based on Alpine Linux)
FROM n8nio/n8n

# Switch to the root user to install software
USER root

# Use Alpine's package manager (apk) to add FFmpeg
RUN apk update && apk add ffmpeg

# Switch back to the standard node user to run n8n
USER node
