# https://django-extensions.readthedocs.io/en/latest/
# https://django-debug-toolbar.readthedocs.io/en/latest/

run:
	./manage.py runserver

test:
	./manage.py test --keepdb

test_cov:
	coverage run --source='.' manage.py test && coverage html && coverage report

pep8:
	flake8 && pylint *.py

sh_p:
	./manage.py shell_plus --ipython

migrate:
	./manage.py migrate

load:
	./manage.py load_test_data

freeze:
	pip freeze > requirements.txt

nox:
	nox

get_settings:
	python manage.py print_settings

reset_db:
	./manage.py reset_db t_style

sqldiff:
	./manage.py sqldiff -a

valid_t:
	./manage.py validate_templates

startapp: ## c=<application name>
	python manage.py startapp $(c)
