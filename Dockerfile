FROM python:3.12

WORKDIR /app

COPY . /app

RUN make install

COPY . .

EXPOSE 6767

CMD ["fastapi", "dev", "main.py", "--host", "0.0.0.0", "--port", "6767"]