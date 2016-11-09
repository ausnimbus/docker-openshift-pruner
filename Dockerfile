FROM openshift/origin

MAINTAINER AusNimbus <support@ausnimbus.com.au>

ENV KUBECONFIG=/tmp/.kubeconfig

LABEL io.k8s.display-name="OpenShift Pruner" \
      io.k8s.description="Prunes old builds, deployments and images."

COPY pruner /usr/bin/

USER 1001
ENTRYPOINT ["pruner"]
