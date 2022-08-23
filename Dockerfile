# FROM python
# WORKDIR python_project 
# COPY ./python_project/ .
# RUN pip install -r requirement.txt
# CMD python app.py 

FROM python:3.7
WORKDIR /app
COPY ./python_project .
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python3" ,"app.py"]