# Meraki
## Unclaimed Devices
Devices that have been purchased but are not attached to a specific 

## Notes
- Organization: Entity that groups a bunch of networks
	- Settings: Name of the organization, password, type of signup
	- Configuration sync: If you are lazy, and you have a previous config that you want to copy over to another site
	- Administrators: Users and their permissions
	- License: Licenses and the number of access points (AP).
- Network: Groups multiple devices like a camera, a router, etc.
	- Group Policies: Policy for a specific 
- Security and SD-WAN:
	- Wired Status: Live data of the router, with a table of each connection and even things like the PSU model
	- Addressing and VLANS: 
		- We only use routed. 
		- We use the MAC Address because the IP changes all the time from VLAN to VLAN. 
		- If you dont click on save, its not going to apply changes
		- When creating a new network, switch to VLANs.
	- Firewall: 
		- No matter which vendor you use, its the same at the end of the day.
		- ![[Pasted image 20220317124838.png]] You have to include the first and last firewalls, but if you want to add another firewall, those have to be placed in between the first and last or you will cutoff access from every other device
- Switch:
	- We can include as many information as we want to make the table more readable.
	- If we try to modify ports that are "up", we get an alert that says that we are changing an Uplink port.
	- Update port: 
		- Voice VLAN: Access port and a special VLAN that hosts voice traffic. If its a VLAN voice, dont use Isolation. Use the VLAN 581.

- Wireless:
	- SSIDs: 
		- Edit settings:
			- If we use password protection, we have to use WPA2
			- Sign on with Meraki Cloud Authentication
			- Addressing and traffic, we use bridge mode
			- Vlan tagging: VLAN with tagging, gives the option to put the VLAN that you are going to be using
	- SSID Availability:
		- Per-AP availability: Use for some APs, and select the corresponding tag. We can add tags on Wireless/Access Points and then going into "Edit", "Tag" and then Add. Basically you tag and that is the SSID and then go into the SSID option to configure.

### Configuring a Site

DHCP
1. Enable the DHCP
2. Set the Lease time
3. DNS Server
4. Change VLAN 54, relay DHCP to another server and write the IP address.

------

## IMPORTANT
Inside the Guest-Tek Independent hotel theres a real hotel. Be really careful with it
![[Pasted image 20220317122653.png]]

