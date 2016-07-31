# mc-docker
Run Minecraft server using Docker

## How to use

* Custom OP list in `ops.txt`
* Build image using:
```
docker build -t minecraft .
```
* Start minecraft
```
docker run -d -v /path/to/store/data:/data -p 25565:25565 -p 25575:25575 minecraft
```

## Author

* [Xu Cheng](https://xuc.me)

## License

MIT License.
