FROM debian:12-slim
RUN apt update && apt install -y nodejs npm
WORKDIR /workspace/sql-import
COPY sql-import/package.json package.json
RUN npm install
COPY sql-import .
CMD ["/workspace/sql-import/run.sh"]