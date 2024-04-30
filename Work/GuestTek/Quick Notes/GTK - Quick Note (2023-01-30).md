# What to Change on the Switch Config Generator
2023-01-30

Description: Abdul went through Opus's switch config generator. Here are the notes on the different things that need to be changed.
Tags: #guesttek #opus

------

## Switch Config Generator

### Port Page

- [ ] 6100 - 6400 Series CX Switches
	- We could try to give the user the option to simply select the number of ports that they want on the switch, and given that select the model or give them a prompt to select the model
	- For the Marriott GPNS port preset, it would be better to add an "SRX" or a (General) "Firewall" button.
	- We need the available aruba CX models that are generally used by GuestTek 
- [ ] UI
	- Make the "Port Presets" tab more obvious
	- Make it more obvious or explain that you can also change the type of port that you want when you click on the dropdown arrow on each of the names. 
	- Make the port table span the entire width of the table 
	- Make more obvious if possible, that no ports are left on the current switch in case someone is trying to use them. Maybe add a graphic or something of the ports that have been enabled
- [ ] Table data changes:
	- We need to check if the OVI-eth0 and OVI-eth1 VLANs are correct
	- Check if the MarriottRouter-ISP and MarriottRouter-WAN are required as separate things as both are basically synonyms
	- The VLAN used for MarriottRouter-WAN should be 903, but needs to be confirmed first.
 - [ ] When you go back to the switch ports page, the switch model automatically resets. I need to store that decision as well
 - [ ] Abdul kept going back and forth in the config generator. After a couple of moves, the port page just displayed two rows on its table, despite the model selected by the user. He had to reset the page data to get the behavior to go back to normal. A bug that I have to track down and squash.
 - [ ] The table columns and rows are shifted. I need to fix that, it bothers me so much.
 
### Config Preview
- [x] `user admin group administrators password ciphertext put_password_here`: This command should not use an already existing password. It should allow the user to copy the password, and then hash it (since the currently used password is encrypted). If we paste the password directly we need to replace `ciphertext` with `plaintext`
- [x] `radius-server host 10.144.175.129 key ciphertext`: The same thing should be done here as for the admin password. We should ask the user for the password and then put it in `plaintext` in the file. 
	- The plaintext password that's generally used is `JAr5frAr`
	- The IP used in the host field, consists of whatever the OVI Management address is
- [ ] `aaa authentication port-access reject-role unauth-vlan`: Should include the failover VLAN somewhere, but its nowhere to be seen.
- [ ] `aaa accounting all-mgmt default start-stop group GKT-Radius`: They generally use `aaa accounting port-access` so it needs to be checked in order to see the things included as part of `all-mgmt`
	- Abdul checked it and said that this is fine, but 
- [ ] Not sure if the `aaa authentication` section of the config lacks something else. In any case, we might need to checkout the "page 60 of the Juniper Switch configuration" doc
- [x] `vsf split-detect mgmt` and `vsf member 1, 2, 3, ...` are not supposed to be found when the switch is not in a stack. 
	- [ ] Its not even recommended to include this section, as this process actually requires a bit of back and forth between the configuration and the actual device, so it probably is better left as a manual process that the user is meant to add later on.
	 - [ ] Seems like this is already implemented (its the thing that changes the interface number depending on the amount of switches in a VSF stack)
 - [ ] The ACL section of the switch config might need some tweaking. Need to check with abdul before actually changing something.
- [ ] `spanning-tree`: 
	- [x] Config changes depending on the type of switch. For a core switch, it is going to have priority 0 (`spanning-tree priority 0`). If you set an IDF switch with priority 0, it will compete with the core one and cause trouble.
	- [ ] When enabling the `spanning-tree`, we can also add protections for different things like "admin-edge-port", "BPDU protection" and "loop protection". For those I have to go and look at the docs and check the different sections to include each part in the config. Low priority
- [x] Certain `interface` lines are joined together. Like instead of `vlan trunk allowed 90 \n`, you have `vlan trunk allowed 90 interface 1/1/2`, when `interface 1/1/2` should be in a new line.
	- Cannot find the source for this. No idea. 
- [x] Remove this line: `port-access role role1`
- [x] `port-access role unauth-vlan \n vlan access 2250`: The 2250 number is probably because of our lab, generally its 1050 by default. The script simply has this as a default parameter, when it should take the value of the failover VLAN, and use the number as the `vlan access` value.
- [ ] In an interface, it should show:
	- [x] `vlan access vlan_number`. Right now instead of `vlan_number` we are displaying `vlan_name`.
	- [x] `vlan trunk native`: Right now it appears as `vlan trunk native Filter`. That `Filter` part shouldn't be there, instead you should put there the "untagged vlan" and under it, you put `vlan trunk allowed` and then list all of the "tagged vlans"
	- [x] The ACL settings for an interface shouldn't look like `apply access-list ip True in`. It should look like this:  `apply access-list ip "ACL_NAME" in`
	- [x] `ip-pim`: This command shouldnt appear by itself, instead to configure PIM stuff, you need to do `ip igmp ...` to get pim settings to work.
		- Core switches: 
			```
		   interface vlan VLAN_NUMBER
		   ip address VLAN_IP
		   ip pim-sparse enable
		   ip pim-sparse ip-addr any
		   ip igmp enable
		   ip igmp version 2 strict
		   ```
	 - [ ] For VLANs 90 and 100, no IGMP configuration should be required, the IGMP settings should go somewhere else.
- [x] `snmp-server system-description AUTOMATION-IDF8`:  Instead of `AUTOMATION-...`, we should have here whatever the hostname was set to as. `AUTOMATION` is the lab.
- [x] `snmp-server system-location`: Give the user a field to specify the SNMP system location.  We can discuss which options to include, or the ability for the user to actually input the option themselves.
- [x] `snmp-server host 10.144.175.129trap version v3 user gtkadmin`: 
	- [x] This IP (10.144.175.129) should be the management IP or the OVI Management IP.  
	- [x] Here we are listing the user, but not the password, that must be made as well.
- [x] `snmpv3 user gtkadmin auth md5 auth-pass`: Needs to be changed to use a plaintext password instead of an encrypted one - `snmpv3 user gtkadmin auth md5 auth-pass plaintext dijipAD10efr priv des priv-pass plaintext Gu35tt3k4dmin`. 
	- Its best if I just go into the configuration document and copy and paste the configuration that they use there (I think Abdul wrote the document itself.)

### Notes
- Port Access VLAN vs. Trunk: When a port is labeled VLAN access something, that means that that specific port will only work with that specific VLAN. In a Trunk port, you tell it the number of the management VLAN to which the access points will be connected to, and then in the `vlan trunk allowed num, num num`  you specify the things that you want the APs to be connected to.

### Commands in Test Switch

- `ssh admin@10.144.175.135`: Connect to test switch.
- `sho int brief`: Show you all the ports on the switch. You can display the ports that are in use (up. If not in use it will show down). We can play with ports that are down.
- `user admin password plaintext 1ns2deout`: Change the password of the current device.