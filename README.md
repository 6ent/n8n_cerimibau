# Introduction 
TODO: Give a short introduction of your project. Let this section explain the objectives or the motivation behind this project. 

# Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:

## Standalone Running
### NBDEV Commands
Nbdev development idioms are utilzed to work with the notebooks. Detailed tutorial cann be found at https://nbdev.fast.ai/tutorials/tutorial.html.  Below are the few commands used to work with nbdev
- nbdev_clean: clean the notebook meta data
- nbdev_prepare: clean + run tests + export
- nbdev_export: export the notebooks into a pkg
- pip install -e .: install the pkg into the current working env

- Idioms
    - Always work within nbs folder never change anything in the pkg folder
    - Always ensure that the right version of the pkg is installed
    - Unit tests should be written below the cell it is testing and should never be exported

### Precommit Intsall
Precommit hooks are run before pushing the changes to the remote repo. Follow the below steps to install pre-commit hooks which are defined in the pre-commit-config file. 
- Copy pre-commit-config.yaml to .pre-commit-config.yaml
- run precommit install to install the hooks and activate them

## Application Running
### Local Run
Follow the follwing steps to run the code locally
- Create a local working python env
    ``` sh 
    $ python3.11 -m venv venv 
    ```
- Activate the working python env 
    ``` sh 
    $ source venv/bin/activate
    ```
- Install all the required packages 
    ``` sh 
    $ pip install -r requirements.txt A
    ```
- Install the pkg from the base repo address.
    ``` sh 
    $ nbdev_export
    $ nbdev_install or pip install -e . 
    ```
- In a new terminal run mlflow. This will run mlflow on port 5000
    ``` sh 
    $ mlflow ui --port 5000 
    ```
- Instiate env variables
    ``` sh 
    $ set -a && source .env 
    ```
- Run the script app in the application folder
- If you would like to debug run the app script in the debug mode and you should be able to look the intermediate results


### Docker:

´´´
sh
$ docker build -t $docker_image_name . 
$ docker compose -f docker_compose.yml up -d
´´´

1.	Installation process
2.	Software dependencies
3.	Latest releases
4.	API references

### tmux
- tmux a -t Chainlit/Jupyter
- tmux set -g terminal-overrides 'xterm*:smcup@:rmcup@'

# Build and Test
TODO: Describe and show how to build your code and run the tests. 

# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 

If you want to learn more about creating good readme files then refer the following [guidelines](https://docs.microsoft.com/en-us/azure/devops/repos/git/create-a-readme?view=azure-devops). You can also seek inspiration from the below readme files:
- [ASP.NET Core](https://github.com/aspnet/Home)
- [Visual Studio Code](https://github.com/Microsoft/vscode)
- [Chakra Core](https://github.com/Microsoft/ChakraCore)
