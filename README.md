# About
SesDashboard is an Analytics UI for Amazon Simple Email Service.

With activity tracking tool you could check which email was successfully delivered or there we any problems. Also you will be able to view detailed events log like mail opens and clicks info. Useful for transactional mails.

SesDashboard is a free self-hosted solution which works as stand-alone app. No existing code needs to be changed.

# Documentation
Documentation available at https://sesdashboard.readthedocs.io/

### Screenshots
![SesDashboard Login Screen](docs/images/sesdashboard-login.png)
![SesDashboard Dashboard Screen](docs/images/sesdashboard-dashboard.png)
![SesDashboard Activity Screen](docs/images/sesdashboard-activity.png)
![SesDashboard Email Details](docs/images/sesdashboard-email-details.png)

# Building the Docker images

To build the Docker images, run the following command:

```bash

# Build the fpm image
docker buildx build \
    --platform linux/amd64 \
    -t nogara/sesdashboard \
    -f Dockerfile.fpm \
    --progress plain  .

# Build the nginx image
docker buildx build \
    --platform linux/amd64 \
    -t nogara/sesdashboard-nginx \
    -f Dockerfile.nginx \
    --progress plain  .

```
