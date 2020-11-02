FROM jupyter/scipy-notebook

RUN pip install git+https://github.com/studyproject-mlds/study-project.git

WORKDIR /home/jovyan/work

RUN study-project init

RUN pip install jupyter_nbextensions_configurator

RUN jupyter nbextensions_configurator enable --user

