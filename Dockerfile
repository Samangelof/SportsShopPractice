FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml poetry.lock ./
COPY README.md .
COPY sports_shop/ ./sports_shop

RUN pip install --upgrade pip \
  && pip install poetry \
  && poetry config virtualenvs.create false \
  && poetry install --no-interaction --no-ansi

COPY .env .
COPY sports_shop/start.py .

CMD ["python", "-u", "start.py"]
