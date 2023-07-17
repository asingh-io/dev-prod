FROM fedora:37

env HOME /home/aks

RUN dnf -y clean all
RUN dnf -y update || echo "Issue with RPM db, Ignore it!"

RUN dnf -y install curl git ansible

ARG TAGS
# RUN addgroup --gid 1000 aks
RUN adduser -m aks
USER aks
WORKDIR /home/aks

# COPY . . 
# CMD ["sh", "-c", "ansible-playbook $TAGS local.yaml"

CMD ["/bin/bash"]
