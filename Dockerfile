FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

RUN apt-get update

RUN apk add --no-cache  python3

RUN python3 -m ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools wheel && \
    python3 -m venv /opt/venv

# Add venv to path
ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt ./
RUN pip install -r requirements.txt --no-cache-dir

RUN mkdir workspace
WORKDIR /workspace


# Bundle app source
COPY n8n_cerimibau /workspace/n8n_cerimibau
COPY applications /workspace/applications


# Switch back to node user
USER node

#CMD ["cd", "/workspace"]
