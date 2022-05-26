FROM  golang:alpine

# Chnage working dir and copy all project files
WORKDIR /GoViolin
COPY . ./

# Initialize module to build the whole app
RUN go mod init

# Build the app
RUN go build -v -o app
