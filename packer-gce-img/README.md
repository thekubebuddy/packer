# Packer GCE VM image build with saltstack provisioner


* Building the image
```bash
# passing "-force" if image already built then it will recreate it
packer build -force -var image_name="packer-sample-img-v1" build.json
```
* Firewall rule on port 22 needs to be configured within the network for the IP address.
* The current build.json uses the salt-stack provisioner.