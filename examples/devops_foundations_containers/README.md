# Devops Foundations - Containers

## gittea

```bash
# Download the application package
wget -O gitea-1.14.4-linux-amd64 https://dl.gitea.io/gitea/1.14.4/gitea-1.14.4-linux-amd64
chmod +x gitea-1.14.4-linux-amd64

# Build the image
docker build . -t gitea

# Run the container
docker run -d -p 3000:3000 gitea

# Interact with the container
curl -I http://localhost:3000
```