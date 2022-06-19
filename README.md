[![Test Multiple Python Versions](https://github.com/twolf789/python-devops/actions/workflows/main.yml/badge.svg)](https://github.com/twolf789/python-devops/actions/workflows/main.yml)
# python-devops
Python DevOps Work

# Create a project scaffold

Create development environment that is cloud-based:

### Colab Notebook

* Integrates very deeply into GitHub, so we can start building cloud-based solutions very quickly.
This is an example of how to use [colab](https://github.com/twolf789/python-devops/blob/main/getting_started_python.ipynb)

### GitHub Codespaces

Build out Python project scaffold:

* [Makefile](https://github.com/twolf789/python-devops/blob/main/Makefile) - it keeps track of very complex things, so that we would be able to reproduce them at will.
(Use `make install` to install the modules that are written in 'requirements.txt').
* [requirements.txt](https://github.com/twolf789/python-devops/blob/main/requirements.txt)
* [test_library.py](https://github.com/twolf789/python-devops/blob/main/test_devopslib.py)
* [python_library.py](https://github.com/twolf789/python-devops/tree/main/devopslib)
* Dockerfile
* command-line-tool
* Microservice

1. Install virtualenv using pip: `pip install virtualenv` 
2. Create a virtualenv: `virtualenv ~/.venv`
3. Edit your '~/.bashrc': `source ~/.venv/Scripts/activate`
4. Clone project, and then run `make all`

A little explanation about why using virtual environment:
After sourcing our new Virtual Environment-
Use `which python` - To make sure we're using the Python Virtualenv that we've just created.
We can use: `pip freeze | less` - using this command, we can check which python modules are installed on our new Python env (There will be 0 at the beginning).
This way, we can now download the Python modules that we want for this project without mixing them with our primary Python environment.




### AWS CloudShell
### AWS Cloud9


## Command-Lines Tools

## Microservices

## Containerized Continuous Delivery
