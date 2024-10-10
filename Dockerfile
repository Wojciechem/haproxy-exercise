# syntax=docker/dockerfile:1.8.1
FROM haproxy:2.8 as haproxy
COPY .ops/*.cfg /usr/local/etc/haproxy/
COPY .ops/hosty.map /usr/local/etc/haproxy/hosty.map
COPY .ops/*.txt /usr/local/etc/haproxy/

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-f", "/usr/local/etc/haproxy/backends-k8s.cfg", "-f", "/usr/local/etc/haproxy/frontends.cfg"]