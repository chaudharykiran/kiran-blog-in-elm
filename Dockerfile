# Note: `linux/amd64` is a workaround, because elm compiler is not available for `linux/arm64` yet.
# See https://github.com/elm/compiler/issues/2283 for details
# Upd: 0.19.1-6 claims to support arm64, but this Docker build fails.
FROM --platform=linux/amd64 node:20.13-alpine
WORKDIR /app

# Copy source code
COPY . .

# Install Elm compiler
RUN npm install -g elm@0.19.1
# Install Elm Land
RUN npm install -g elm-land@0.20.1
# Install htt-server for serving the app
RUN npm install -g http-server

# build the app
RUN elm-land build

# Expost the port that http-server will use
EXPOSE 8080

# Run http-server to server dist folder
CMD ["http-server", "dist", "-p", "8080"]

