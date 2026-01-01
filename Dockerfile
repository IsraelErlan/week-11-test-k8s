FROM python:3.11

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY main.py /app/main.py

EXPOSE 8080

CMD [ "streamlit", "run", "main.py", "--server.port=8080", "--server.address=0.0.0.0"]