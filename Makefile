all: bump clean sdist test upload

NAME:=$(shell python setup.py --name)
VERSION:=$(shell python setup.py --version | sed 's/+/-/g')

bump:
	python bump.py html2texttg/version.py

sdist: bump
	rm -fr dist
	python setup.py sdist

upload: clean sdist
	twine upload dist/*

test:
	python -m unittest

clean:
	rm -fr *.egg-info .tox dist build

develop: clean
	python -m venv venv
	env/bin/pip install -Ue '.[develop]'
