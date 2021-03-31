# Packer GCE VM image build


* Building the image
```bash
# passing "-force" if image already built 
packer build -force -var image_name="packer-sample-img-v1" build.json
```
* Firewall rule on port 22 needs to be configured within the network for the IP address.
* The current build.json uses the salt-stack provisioner.