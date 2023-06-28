FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade pip \
  && pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "./server.py", "--host", "0.0.0.0", "--port", "9999", "--prefix", "/logs"]