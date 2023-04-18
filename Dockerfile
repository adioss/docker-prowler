FROM python:buster
RUN addgroup --gid 1000 prowler
RUN useradd -u 1000 -g 1000 prowler
RUN mkdir -p /home/prowler/.aws
RUN chown -R prowler: /home/prowler
WORKDIR /home/prowler

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install prowler

USER prowler

ENTRYPOINT ["/usr/local/bin/prowler"]
