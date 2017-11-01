from jupyterhub/jupyterhub

MAINTAINER Erik Hornberger

# Install Miniconda silently
RUN wget http://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -p $HOME/miniconda
RUN export PATH="$HOME/miniconda/bin:$PATH"

# Install common python packages
RUN conda install jupyter numpy matplotlib

# Add a default user
RUN adduser default_user --disabled-password --gecos ""
RUN echo "default_user:insecurepassword" | chpasswd

CMD ["jupyterhub", "-f", "/srv/jupyterhub/jupyterhub_config.py"]