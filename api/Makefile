.PHONY: install run

install:
	pip install -r requirements.txt -c constraints.txt
	pip freeze > /tmp/after.txt
	diff -u constraints.txt /tmp/after.txt

run:
	python app.py

echo:
	echo 'hello'
