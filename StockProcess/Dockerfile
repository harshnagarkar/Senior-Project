from python:3.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENV PYTHONUNBUFFERED=0
COPY . .
EXPOSE 80
# CMD [ "python","-u", "./stocksend.py" ]
CMD [ "python","-u","./stockprocess.py" ]
