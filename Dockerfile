FROM python:3.9-slim-buster

#set the work directory in the container
WORKDIR /app

COPY requirements.txt .

#Install the required python packages
RUN pip3 install --no-cache-dir -r requirements.txt 

#copy the application code to the working directory
COPY . .

#set the enviroment variable for flusk app
ENV FLASK_RUN_HOST=0.0.0.0

#Expose the port on which the flusk app will run 
EXPOSE 5000

#start the flusk app when the container is run
CMD ["flask","run"]
