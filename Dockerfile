FROM ubuntu:16.04
RUN apt-get update && apt-get install python-pip python-dev -y
RUN pip install --upgrade pip
RUN pip install glances bottle
#ENV IP_ADDR=""
#WORKDIR /glances
EXPOSE 61209
EXPOSE 61208
COPY entrypoint.sh /
RUN chmod 777 /entrypoint.sh
COPY glances.conf /glances/conf/
#RUN python -m glances -C /glances/conf/glances.conf $GLANCES_OPT
#ENTRYPOINT ["python","-m","glances"]
ENTRYPOINT ["/entrypoint.sh"]
