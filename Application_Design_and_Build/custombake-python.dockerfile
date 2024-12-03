
FROM python:3.13-bookworm

LABEL version="3.14"
LABEL maintainer="divs.divs09@gmail.com"

ADD print-temperature.py .

CMD ["python", "./print-temperature.py"]