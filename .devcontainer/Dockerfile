# syntax=docker/dockerfile:1

ARG VARIANT="20"
FROM mcr.microsoft.com/devcontainers/javascript-node:${VARIANT}

# Install some generally useful tools
RUN wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | sudo gpg --dearmor -o /usr/share/keyrings/cli.cloudfoundry.org.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/cli.cloudfoundry.org.gpg] https://packages.cloudfoundry.org/debian stable main" | sudo tee /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN apt-get update && apt-get -y install --no-install-recommends curl git cf8-cli

# Install SAP CAP SDK globally
USER node
RUN npm install -g @sap/cds-dk
RUN npm install -g @cap-js/mcp-server
RUN npm install -g mbt

# Make environment look as much like the BAS version as possible
RUN mkdir /home/node/projects
RUN echo 'export PS1="\[\e]0;\w\a\]\[\033[33;1m\]\u: \[\033[36m\]\$(basename \w) \$\[\033[m\] "' >> /home/node/.bashrc

WORKDIR /home/node
