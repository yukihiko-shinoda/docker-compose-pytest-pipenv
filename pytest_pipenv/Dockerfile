# These building steps are arranged with:
# - Dockerfile used to develop Pipenv
#   @see https://github.com/pypa/pipenv/blob/a44b9828bd9a4b780bd0404fa133e544da576436/Dockerfile
# - Dockerfile best practices
#   @see https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
# - VS Code Developing inside a Container standards
#   @see https://code.visualstudio.com/docs/remote/containers

# -- Install Pipenv:
# @see https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run
FROM heroku/heroku:18-build
# libenchant1c2a: Since pyenchant in Pipfile.lock of Pipenv project depends on
RUN apt-get update && apt-get install -y \
    python3.7-dev \
    libffi-dev -y \
    libenchant1c2a \
 && rm -rf /var/lib/apt/lists/*
RUN curl --silent https://bootstrap.pypa.io/get-pip.py | python3.7

# Backwards compatility.
RUN rm -fr /usr/bin/python3 && ln /usr/bin/python3.7 /usr/bin/python3

RUN pip3 install pipenv

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
# Python, don't write bytecode!
ENV PYTHONDONTWRITEBYTECODE 1

COPY ./entrypoint.sh /usr/bin/entrypoint
RUN chmod +x /usr/bin/entrypoint
WORKDIR /workspace
ENTRYPOINT ["entrypoint"]
CMD ["pipenv", "run", "tests"]
