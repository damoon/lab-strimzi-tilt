
all: strimzi.yaml namespace.yaml

strimzi.yaml:
	curl --fail strimzi.yaml -o https://strimzi.io/install/latest?namespace=kafka

namespace.yaml:
	kubectl create ns kafka --dry-run=client -o yaml > namespace.yaml
