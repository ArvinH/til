# Get pods you have

`kubectl -n ${namespace} get pods`

# Get pods yml (usefull when you have config error)

`kubectl -n ${namespace} get pod ${pod name} -o yaml`

# Get pods information

`kubectl describe pods ${pod name} -n ${namespace} | pbcopy`

# Port forwarding

`kubectl port-forward ${pod name} ${PORT} -n ${namespace}`

