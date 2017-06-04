PYENV:=`which pyenv`

install:
	$(PYENV) install 3.6.0

init:
	$(PYENV) virtualenv 3.6.0 positively
	pip install -r requirements.txt -c constraints.txt

update_lib:
	pip install -r requirements.txt -c constraints.txt
	pip freeze > constraints.txt

run:
	python app.py
