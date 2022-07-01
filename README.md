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
Is the CLI of AWS.

### AWS Cloud9
Is an environment in AWS -> this whole repo can be cloned to this environment. Makefile makes it easier to set-up all the dependencies.

## Command-Lines Tools
The 'fire' Python module is being used in the 'hello.py' file and makes it as a CLI tool.
The tool takes an beverage as an argument and delivers the output. The backend of the 'hello.py' file is located in the file named 'devopslib/randomfruit.py'.
The command used to run the 'hello.py' file with the 'fire' Python module: `python3 hello.py --beverage milk`.

## Lambda and Step Functions
<img width="1115" alt="Screen Shot 2022-06-29 at 0 07 53" src="https://user-images.githubusercontent.com/98260230/176636456-9be60ced-9e21-411e-b581-4c3977419207.png">
As we can see in the picture above, we've created two lambda Python functions. Then we configured Step Functions - The first lambda function, recieves input, process the input, then delivers an output. The output of the first function is being automatically delivered to the second function as an input, it processes it and delivers output.

## Microservices and API
The file 'main.py' gets its backend from the 'devopslib/logic.py' file. Using the 'FastAPI' Python library, it makes the code that's located in 'logic.py' to act as an API.
First, the command `python -m textblob.download_corpora` needs to be run. Then, we can start using the API we created. 'http://127.0.0.1/'.

## Containerized Continuous Delivery
<Elaborate about the dockerfile and the amazon ecr integration with AWS App Runner>.

## To run the container and start the application.
`docker run -p 127.0.0.1:8080:8080 <image-id>`
