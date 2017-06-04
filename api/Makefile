.PHONY: install run

install:
	pip install -r requirements.txt -c constraints.txt

update_lib:
	pip install -r requirements.txt -c constraints.txt
	pip freeze > constraints.txt

run:
	python app.py
