# alpine-md5deep
Minimal alpine docker image for md5deep binary

# Usage

Workdir is /opt and entrypoint is md5deep command, so all you need to do is volume mount the dir you want a hash for to /opt and pass whatever args you want.

Print md5deep help text:
`docker run -it --rm beveradb/alpine-md5deep -hh`

Get md5 sum for current local directory (recursive):
`docker run -it --rm -v `pwd`:/opt beveradb/alpine-md5deep -r .`
