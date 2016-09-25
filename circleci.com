deployment:
  push_to_server:
    branch: master
    commands:
      - rsync -avz resources/public/ coliny@194.135.84.40:html/
