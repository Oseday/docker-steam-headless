(Get-ECRLoginCommand -Region eu-central-1).Password | docker login --username AWS --password-stdin 704287512994.dkr.ecr.eu-central-1.amazonaws.com
docker build -f .\Dockerfile.debian -t sts/head .
docker tag sts/head:latest 704287512994.dkr.ecr.eu-central-1.amazonaws.com/sts/head:latest
docker push 704287512994.dkr.ecr.eu-central-1.amazonaws.com/sts/head:latest