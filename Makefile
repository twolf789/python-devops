install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
post-install:
	python -m textblob.download_corpora
lint:
	pylint --disable=R,C *.py devopslib
test:
	python -m pytest -vv --cov=devopslib test_*.py
format:
	black *.py devopslib/*.py
deploy:
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 759706068230.dkr.ecr.us-east-1.amazonaws.com
	docker build -t devops-python .
	docker tag devops-python:latest 759706068230.dkr.ecr.us-east-1.amazonaws.com/devops-python:latest
	docker push 759706068230.dkr.ecr.us-east-1.amazonaws.com/devops-python:latest
all: install post-install lint test format deploy

	