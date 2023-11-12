img_name_and_tag=$1
docker build -t ${img_name_and_tag} .
gcloud auth configure-docker me-west1-docker.pkg.dev
docker tag ${img_name_and_tag} me-west1-docker.pkg.dev/devconnect-project/batchen-artifacts/${img_name_and_tag}
docker push me-west1-docker.pkg.dev/devconnect-project/batchen-artifacts/${img_name_and_tag}