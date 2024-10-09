# syntax=docker/dockerfile:1.8.1
FROM haproxy:2.8 as haproxy
COPY .ops/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY .ops/hosty.map /usr/local/etc/haproxy/hosty.map
COPY .ops/*.txt /usr/local/etc/haproxy/

