FROM google/cloud-sdk:260.0.0-slim

RUN curl -L -o /usr/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 && chmod +x /usr/bin/jq

COPY entrypoint.sh /entrypoint.sh
COPY gcrgc.sh /gcrgc.sh
RUN chmod +x gcrgc.sh

ENTRYPOINT [ "/entrypoint.sh" ]
