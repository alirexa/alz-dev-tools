# Docker Cheatsheet

- Cleanup:
  \`\`\`bash
  docker system prune -af --volumes
  \`\`\`

- List containers:
  \`\`\`bash
  docker ps -a
  \`\`\`

- Exec into container:
  \`\`\`bash
  docker exec -it <container_id> bash
  \`\`\`
