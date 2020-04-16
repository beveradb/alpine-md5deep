# alpine-md5deep
Minimal alpine docker image for md5deep binary

# Usage

Workdir is /opt and entrypoint is md5deep command, so all you need to do is volume mount the dir you want a hash for to /opt and pass whatever args you want.

### Print md5 sums for all files in current local directory (recursively):
```
docker run --rm -v `pwd`:/opt beveradb/alpine-md5deep -rls .
```

### Get single md5 sum for recursive contents of current local directory:
```
docker run --rm -v `pwd`:/opt --entrypoint=sh beveradb/alpine-md5deep -c 'md5deep -rls . | md5deep'
```

### Print md5deep help text:
```
docker run --rm beveradb/alpine-md5deep -hh
```

### Everything else:
http://md5deep.sourceforge.net

