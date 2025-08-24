#!/bin/bash
# Docker cleanup utilities

echo "🧹 Cleaning up Docker system..."
docker system prune -af --volumes

echo "✅ Done."
