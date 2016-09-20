#!/bin/sh

case $1 in
  "isuda")
    echo "go get -d"
    go get -d
    echo "go build -o isuda isuda.go type.go util.go"
    go build -o isuda isuda.go type.go util.go
    echo "./isuda"
    ./isuda
    ;;
  "isutar")
    echo "go get -d"
    go get -d
    echo "go build -o isutar isutar.go type.go util.go"
    go build -o isutar isutar.go type.go util.go
    echo "./isutar"
    ./isutar
    ;;
  *)
    echo "usage:"
    echo "\t$(basename ${0}) isuda\tLaunch isuda server"
    echo "\t$(basename ${0}) isutar\tLaunch isutar server"
    exit 1
    ;;
esac
