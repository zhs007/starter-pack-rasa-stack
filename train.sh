docker build -t rasa-demo .

mkdir models
mkdir models/current

docker run -v $PWD/models:/app/rasa-demo/models rasa-demo python -m rasa_nlu.train -c nlu_config.yml --data data/test001/nlu_data.md -o models --fixed_model_name nlu --project current --verbose
docker run -v $PWD/models:/app/rasa-demo/models rasa-demo python -m rasa_core.train -d data/test001/domain.yml -s data/test001/stories.md -o models/current/dialogue -c policies.yml