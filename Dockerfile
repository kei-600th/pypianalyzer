# Dockerfile
FROM python:3.9

# Poetryをインストール
RUN pip install poetry

# 作業ディレクトリの設定
WORKDIR /app

# プロジェクトファイルをコピー
COPY pyproject.toml poetry.lock* /app/

# Poetryを使用して依存関係をインストール
RUN poetry config virtualenvs.create false \
    && poetry install --no-dev --no-interaction --no-ansi

# アプリケーションのソースコードをコピー
COPY . /app/

# アプリケーションの実行
CMD ["tail", "-f", "/dev/null"]

