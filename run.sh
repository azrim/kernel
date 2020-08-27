docker build . -t ci
docker run -e GITHUB_TOKEN="${GITHUB_TOKEN}" ci
