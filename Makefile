go:
	docker build -t kubespy-port-demo-go . -f go.Dockerfile
node:
	docker build -t kubespy-port-demo-node . -f node.Dockerfile