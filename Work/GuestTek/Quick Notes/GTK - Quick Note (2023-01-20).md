# Config Generator Changes
2023-01-20

Description: The config generator from Opus is a mess. I need to get it fixed and Abdul will be helping me.
Tags: #guesttek #opus

------

## Notes

### Configuration for Aruba CX

![[Pasted image 20230120121934.png]]
For CX switches we use .254 as the default route

- Line numbers are not working. Seems like it s
- Core Switch VLANs are okay
- The models for the Aruba CX switches should be in the in this page ( just the 6000 series): [Link](https://www.arubanetworks.com/en-ca/products/switches/core-and-data-center/)
	- The main model used by guestTek is the 6400.
- Port preset for firewall or cisco OSX
	- Not sure if the OVM vlans for eth0 and eth1 are correct
 - Different port presets for ASA and SRX
 - MarriottRouter-ISP  and MarriottRouter-WAN are the same for the MarriottRouter port preset
 
#### Final Config
 - Ask for the username and password instead of setting up a default value
 - SNMP Server historical counters monitor: Not sure if used or not
 - Radius server should have a different key or secret: `radius-server host key plaintext password`
 - logging and SSH settings are okay
 - vsf stacking settings are not very useful  
 - The ACL might need some work
 - Spanning tree: When its a core switch its going to be priority 0, 
 - Switch model in Port page not remembering the switch model
 - 

