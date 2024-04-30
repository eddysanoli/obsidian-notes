![[Pasted image 20221101142336.png]]
- Live tools: Press a button and something happens right away. You don't have to know anything about how to do something at the CLI
- Dashboard Intelligence: Not a feature, but a suite of design principles to inform you when you should configure stuff
![[Pasted image 20221101142539.png]]
- Live tools vs configuration updates:
	- Live tools: Inmediate
	- Configuration updates: Not inmediate. Depends on physical devices applying the changes.
![[Pasted image 20221101142718.png]]
- Topology: What devices are connected to each other. Uses CDP to do it. Nothing fancy
- Packet capture: Meraki tries to make information accessible, but some times you need to look at the actual ones and zeroes going around. So you can connect Wireshark to Meraki in order to monitor. Things like switches, cameras, and others are able to use this.
- Event and Change Log: Per network basis. Not an error log, just a list of changes that have happened on the network of choice. You can see who made the changes and the date in which the changes happened.
![[Pasted image 20221101143334.png]]
- A way to convert customer requests like: "My wireless isn't working", into problems that an engineer can understand and more easily solve.
![[Pasted image 20221101143509.png]]
- VPN Status: It will basically tell you why different sources of traffic are going to WAN1 or WAN2
- Uplink performance: Can monitor things like Latency, Jitter and others
![[Pasted image 20221101143654.png]]
![[Pasted image 20221101143928.png]]
- Dashboard: Most popular and fully featured. Allows you to do almost everything in the dashboard in bulk if something is a really big undertaking.
- Captive portal: By default you can setup a very simple splash screen using the default splash screen that Meraki offers. But if you prefer to get a bit more granular, you can use the captive portal API
![[Pasted image 20221101144758.png]]
- You can go into "support/get help" and then gain access the documentation.
- You can also open a new case and then voice your complaints or opinion. Then you can open the case and see in chronological order your interactions with support.
![[Pasted image 20221101145341.png]]
- A firewall can kill its own downstream traffic through the Layer 3
- Template network: You can setup a template for common settings that are going to be shared by multiple sites. You can then create a new network using the template network as a base and if you ever change the template, you will basically apply the change to all the child networks.
- Firmware: You can check the latest firmware versions under organizations/firmware upgrades. You can also schedule the firmware upgrade for multiple devices in batch or device by device.
	- You can use the "Select and upgrade strategy for your wireless APs" option in the firmware upgrade menu and use it to "minimize client downtime". This way you can deploy new firmware on your devices on production without taking them down at all.
- Network-wide/Topology: Represents the infrastructure of your current network. Cameras appear as cammeras, lines are switches and dots are APs. Colors are used to signal the status, with green being online and working, yellow is alerting and red is completely offline.
	- Can investigate at Level 2: APs, switches and cameras
	- Can investigate at Level 3: Networking layer like subnets and stuff.
- Meraki insight: Troubleshoot problems that exists in your network
	- You can choose an application and see the status for said application across your entire organization and then go into each network to see which sites are the ones that are having problems.
	- 








