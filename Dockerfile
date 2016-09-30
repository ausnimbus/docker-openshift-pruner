FROM  openshift/base-centos7

MAINTAINER AusNimbus <support@ausnimbus.com.au>

LABEL io.k8s.display-name="OpenShift Pruner" \
      io.k8s.description="Prunes old builds, deployments and images."

RUN curl -O https://ausnimbus.s3.amazonaws.com/client-tools/oc-linux.tar.gz && \
    tar -xzf oc-linux.tar.gz -C /usr/local/bin && \
    chmod 755 /usr/local/bin/oc

COPY pruner /usr/bin/

USER 1001
CMD ["pruner"]
