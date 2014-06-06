#### Build:

```
docker build --tag="elasticsearch" .
```

#### Run:

```
docker run --detach=true --publish=49200:9200 --publish=49300:9300 elasticsearch
```

(I like to use the long version of the parameters because it's easier for me remember what they mean.)
