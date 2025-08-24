# Ubuntu Server Setup Notes

- Update packages:
  \`\`\`bash
  sudo apt update && sudo apt upgrade -y
  \`\`\`

- Add user:
  \`\`\`bash
  adduser newuser
  usermod -aG sudo newuser
  \`\`\`
