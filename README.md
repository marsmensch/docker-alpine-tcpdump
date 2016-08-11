[![](https://images.microbadger.com/badges/version/marsmensch/tcpdump.svg)](http://microbadger.com/images/marsmensch/tcpdump "Get your own version badge on microbadger.com")

docker-alpine-tcpdump
=======

A  #docker image with tcpdump using Alpine. https://hub.docker.com/r/marsmensch/tcpdump/

Usage
-----

There's a data volume available at `/data/` if you need one.

#### View help and version

    $ docker run --rm marsmensch/tcpdump

#### Examine the host network

    $ docker run --rm --net=host marsmensch/tcpdump

#### Examine the TCP traffic on the host network with Wireshark with filters or interface

    $ docker run --rm --net=host marsmensch/tcpdump -i eth2 port 8080   

#### Examine the TCP traffic on the host network with Wireshark

    $ docker run --rm --net=host marsmensch/tcpdump -i any -w - | wireshark -k -i -

#### Examine the traffic of Docker container `foo` with Wireshark

    $ docker run --rm --net=container:foo marsmensch/tcpdump -i any --immediate-mode -w - | wireshark -k -i -


Prior Art
---------

Heavily influnced by [corfr/tcpdump] and [crccheck/docker-tcpdump], which both did a great job of documenting how
to use TCPDump with Docker.

[TCPDump]: http://www.tcpdump.org/
[marsmensch/tcpdump]: https://hub.docker.com/r/marsmensch/tcpdump/
[corfr/tcpdump]: https://registry.hub.docker.com/u/corfr/tcpdump/
[crccheck/docker-tcpdump]: https://hub.docker.com/r/crccheck/tcpdump/
