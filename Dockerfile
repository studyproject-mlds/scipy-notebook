FROM jupyter/scipy-notebook

ENV NB_USER_CUSTOM=study-project

USER root
RUN echo $NB_USER:$NB_USER_CUSTOM | chpasswd
RUN usermod -a -G sudo $NB_USER
RUN ln -s /home/$NB_USER /home/$NB_USER_CUSTOM

USER $NB_USER

WORKDIR /home/$NB_USER_CUSTOM/work

RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install --user

RUN pip install jupyter_nbextensions_configurator

RUN jupyter nbextensions_configurator enable --user

USER root

RUN cp /etc/sudoers /root/sudoers.bak
RUN echo "$NB_USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN echo 'alias _sudo="/usr/bin/sudo"' >> /home/$NB_USER/.bashrc
RUN echo 'alias sudo="sudo -s PATH=\$PATH"' >> /home/$NB_USER/.bashrc

USER $NB_USER

RUN pip install git+https://github.com/studyproject-mlds/study-project.git

RUN study-project init

RUN sed -i -r "s/^# (c.NotebookApp.allow_password_change = True)$/\1/" /home/jovyan/.jupyter/jupyter_notebook_config.py

