
Ephemeral-It changes
## to get a contsnat extenral IP address  to VM Instance:
we need to go to 
VPC->network -> reserved external ip address and then assign VM instance to that IP so that when you stop the instance of that partiicular instance the network or external IP will wtill show the result
## Statiic IP addresses
* Static IP can be switthced to anaother VM instance in same project
* Static IP remains attached even iif you stop the instance. You have to manually detach it
* 
Spot VMs are Compute Engine virtual machine (VM) instances that are priced lower than standard Compute Engine VMs and provide no guarantee of availability. Spot VMs offer the same machine types and options as standard VMs.

Note: For better availability, use smaller machine types.
You can use Spot VMs in your clusters and node pools to run stateless, batch, or fault-tolerant workloads that can tolerate disruptions caused by the ephemeral nature of Spot VMs.

## premtable and spot instances 
spot instances has no time limit 
premtable instances has time limit of 24 hours these are llow priced engines bulit for fault tolerance systems.
