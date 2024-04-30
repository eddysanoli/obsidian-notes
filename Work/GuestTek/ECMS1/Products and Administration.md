# Section 2: Products and Administration

![[Pasted image 20221101123201.png]]
![[Pasted image 20221101123541.png]]
- Location analytics: Can analyze who is a repeat visitor, who is just passing by, and then send the data to a third party for analysis. A yoga studio uses the meraki APs and the scanning API to create push notifications in their app, that checks when was the last time that you were at the studio and then show you something like: "Hey, welcome back. How about 25% off to get you back to speed".
- For content filtering for your APs you need an advanced license. The good thing about this, is that you can filter the traffic in a per SSID basis
![[Pasted image 20221101123847.png]]
- You can RDP into devices and make changes remotely
- SD-WAN and Traffic shaping: Getting your traffic out to the internet and hopefully automatically
	- Uplink: Primary uplink and choose if you are load balancing. If you choose to load balance it will use the ratio between WAN1 and WAN2 to send a certain amount of traffic to one place or another.
- Switches
	- Virtual stacking: Aggregate all your ports and configure them in groups
- Wireless
	- Firewall and traffic shaping: Firewall rules and traffic rules in a per SSID basis
		- Set rules to deny traffic on a per device basis.
- Systems Manager: You can manage all the devices inside of your network and see info about the device like:
	- Where its geolocated
	- Serial number
	- Operating system
	- Disc storage
	- Bluetooth MAC address
	- You can even send a notification
- Cameras:
	- Live feed with "motion based events". The yellow blocks show sections of the video where motion was detected. 
	- You can drag and create a small selection on top of the video to say: "Here is where I want to look for movement". And it will filter the video to show you clips where detection of movement in that region of the video was found.
	- With a higher tier license you can even gain access to an API endpoint that exposes the coordinates of detected elements in the camera feed
- Environmental Sensors
	- You can add a supported sensor and then configure "alert conditions" to send those alerts through an email, a phone call or a webhook.