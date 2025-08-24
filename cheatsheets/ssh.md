# SSH Cheatsheet

- Change user password:
  \`\`\`bash
  passwd
  \`\`\`

- Copy SSH key to server:
  \`\`\`bash
  ssh-copy-id user@server
  \`\`\`

- Config file (~/.ssh/config):
  \`\`\`
  Host myserver
      HostName 1.2.3.4
      User root
      IdentityFile ~/.ssh/id_rsa
  \`\`\`
