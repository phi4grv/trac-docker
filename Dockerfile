FROM python:2

ENV trac_version=1.4.3

RUN pip install Trac==$trac_version

# Don't declare a volume because it prevents downstream images from pre-initializing an env
#VOLUME /trac

EXPOSE 80

ENTRYPOINT ["tracd"]
CMD ["-s", "/trac"]
