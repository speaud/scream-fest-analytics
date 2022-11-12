FROM jupyter/minimal-notebook

ARG PACKAGE_NAME

ENV GRANT_SUDO yes
USER root
RUN sudo apt-get update -y

# @note `libpq-dev` required for Python packages: `sqlalchemy` and `psycopg2`
RUN sudo apt-get install -y libpq-dev curl

ENV PYTHONPATH "${PYTHONPATH}:/home/app/src"

RUN chmod 775 /home/jovyan
RUN mkdir -p /home/app/src/$PACKAGE_NAME && chmod 775 /home/app

COPY setup.py /home/app/
RUN cd /home/app && pip3 install --quiet --no-cache-dir .[develop,test]

USER jovyan

EXPOSE 8888

CMD ["sh","-c", "jupyter notebook", "-ContentManager.allow_hidden=true"]
