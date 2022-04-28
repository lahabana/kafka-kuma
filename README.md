# Kafka Kuma

Example Kafka cluster on top of [Kuma](https://kuma.io).

We're running a ZK less (because we're lazy) on top of Kuma.
The main setup complexity is using VirtualOutbound to get VIPs for individual pods (see k8s/00-kuma.yaml).
Once you have individual vips/hostnames you can set up advertised listeners and bootstrap quite easily.

## Usage

If you already have a k8s cluster with Kuma running just do: `kubectl apply -k k8s`
If you want to start an example cluster on GCP and install Kuma use: `./setup.sh`
