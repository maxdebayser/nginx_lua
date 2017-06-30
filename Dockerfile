FROM debian:stretch-slim

MAINTAINER Max de Bayser mbayser@br.ibm.com

WORKDIR /
ADD setup.sh /root
RUN /bin/bash /root/setup.sh

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
