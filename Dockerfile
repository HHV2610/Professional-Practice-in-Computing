FROM python:3.11-slim

RUN apt-get update && apt-get install -y git

COPY .github/scripts/entrypoint.sh /entrypoint.sh
COPY .github/scripts/frequency.py /frequency.py
COPY .github/scripts/update_readme.sh /update_readme.sh

RUN chmod +x /entrypoint.sh /update_readme.sh

ENTRYPOINT ["/entrypoint.sh"]
