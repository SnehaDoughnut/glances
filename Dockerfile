FROM ubuntu:16.04
RUN apt-get update && apt-get install python-pip python-dev -y
RUN pip install --upgrade pip
RUN pip install glances
ENV IP_ADDR=""
#WORKDIR /usr/local/bin/
EXPOSE 61209
EXPOSE 61208
COPY entrypoint.sh /bin/
RUN chmod 777 /bin/entrypoint.sh
#CMD python -m glances -C /glances/conf/glances.conf $GLANCES_OPT
#ENTRYPOINT ["python","-m","glances"]
ENTRYPOINT ["/bin/entrypoint.sh"]
