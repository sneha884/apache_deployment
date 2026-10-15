
#!/bin/bash
set -e

# Update package lists
sudo apt update

# Install Apache
sudo apt install apache2 -y

# Enable and start Apache
sudo systemctl enable --now apache2

# Deploy a sample webpage
echo "<h1>Apache Deployment Successful!</h1>" | sudo tee /var/www/html/index.html

# Verify deployment
curl -f http://localhost

echo "Apache deployment completed successfully!"

