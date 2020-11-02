FROM jupyter/scipy-notebook

RUN pip install git+https://github.com/studyproject-mlds/study-project.git

WORKDIR /home/jovyan/work

RUN study-project init
