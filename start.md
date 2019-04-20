

docker run -v $PWD/models:/app/rasa-demo/models -it rasa-demo bash

python -m rasa_core_sdk.endpoint --actions actions
python -m rasa_core.run -d models/current/dialogue -u models/current/nlu --endpoints endpoints.yml