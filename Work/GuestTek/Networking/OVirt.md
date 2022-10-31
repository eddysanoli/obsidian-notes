1. Change the hosts file, with 
2. Credentials are "admin" and 1ns2deout@2022
3. The newest R730 servers have different drives, but sync up their contents.

## Notes
- The machines split into different servers
- Eventually we will need to do some load balancing
- Under the storage options "data" consists of the cluster storage.
- If we need to give a VM a public IP, we can use the PIP_V991 network
- Bond 1: Backend cluster or the "Gluster"
- For VMs, we can use templates to reuse the configuration of previous VMs, to create replicas. The template can be downloaded as a .ova file.
- We can console into the VMs, by using the program "Virtual Manager" or "Virt Manager". Dont use VNC, use SPICE. VNC doesnt work.
- We can "version" VM states, by using snapshots. You can also preview the snapshot, before you commit.
- If we are having issues, we can go to events and check the events from a specific event.
- You can attach a CD-ROM, and then provide an .ISO file if you need it.
- Uses ansible and playbooks
- It has built-in graphana, but they discovered that recently