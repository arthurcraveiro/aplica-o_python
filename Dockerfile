FROM python:3.8-slim-buster
WORKDIR /app
COPY . . 
RUN apt update && apt upgrade -y && pip3 install -r requirements.txt && apt clean 

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]



