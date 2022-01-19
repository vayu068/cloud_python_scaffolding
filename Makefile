install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python -m pytest -vv test_hello.py
	
format:
	black *.py

all: install lint test
