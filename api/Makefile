PYENV:=`which pyenv`

init:
	$(PYENV) virtualenv 3.6.0 positively
	pip install -r requirements.txt -c constraints.txt

install:
	$(PYENV) install 3.6.0

run:
	python lib/app.py
