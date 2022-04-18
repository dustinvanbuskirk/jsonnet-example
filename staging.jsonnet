local staging = import 'staging.libsonnet';

staging {
  name: 'test-service',
  image: 'dustinvanbuskirk/test-service:1.0.0.0-38edh73',
  hostname: 'test-service.staging.dvb.com',
  replicas: 2,
  enable_alb:: true,
  enable_hpa: true,
  hpa: {
    minReplicas: 2,
    maxReplicas: 6,
    cpu: 50,
    memory: 50,
  },
}
