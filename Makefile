install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello

format:
	black *.py

lint:
	pylint --disable=R,C,W1203 hello.py

all: install lint test format