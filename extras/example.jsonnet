local kp = (import 'operator/jsonnet/kube-prometheus.libsonnet') + {
  _config+:: {
    namespace: 'openshift-rook',
  },
};

{ ['prometheus-' + name]: kp.prometheus[name] for name in std.objectFields(kp.prometheus) } +
{ ['grafana-' + name]: kp.grafana[name] for name in std.objectFields(kp.grafana) }
