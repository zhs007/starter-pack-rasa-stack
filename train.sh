docker build -t rasa-demo .

mkdir models
mkdir models/current

docker run -v $PWD/models:/app/rasa-demo/models rasa-demo make train-nlu
docker run -v $PWD/models:/app/rasa-demo/models rasa-demo make train-core