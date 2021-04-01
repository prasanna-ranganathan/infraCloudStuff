## Troubleshooting

### Part 1
I ve sshed in to the docker container

`docker run -it infracloudio/csvserver bash`

I've tried reverse engineering the container to see the different layers

`docker history --no-trunc 8cb989ef80b5`

`docker inspect infracloudio/csvserver`

basically found that `./csvserver` GO binary file required a filename called `./csvserver inputdata` and which runs on port `9030`.

```
docker run -v `pwd`/inputdata:/csvserver/inputdata infracloudio/csvserver
```

