# Aruba Central
- You'll probably end up in "airheads" when you search for aruba help.

## Introduction
- Aruba is cloud managed
- Flexible and cost-effective cloud networking
![[Pasted image 20220427084117.png]]
	- AOS 10 will be cloud dependent.
- Context bar: You can filter functionality given the context, so sometimes some options wont be available because of the usage of one specific filter.
- Two types of account
	- Admin / Service provider: Someone in aruba has an admin role, while all other users have a read only account that's able to see whathever the admin is doing
- Standalone vs Multiple Service Provided:
	- Central campus: Something like a university campus
	- MSP: We'll get loggings in the central PC and can manage all of the customers from there.
![[Pasted image 20220427085639.png]]
![[Pasted image 20220427090327.png]]
![[Pasted image 20220427090520.png]]
- The groups are basically cookie cutter base configurations

![[Pasted image 20220427095648.png]]
- IAP: Instant access points
- VC: Virtual Controller. If you lose track of a VC, you can input the name of an IAP and it will forward you to its associated VC.
- SW Config: Radius proxy (Optionally DHCP server)

![[Pasted image 20220427100140.png]]
![[Pasted image 20220427100200.png]]
- Aruba central: Its not a full service app but can work for some easier tasks

![[Pasted image 20220427100536.png]]
- Licenses are not stackable. You either buy foundation or advanced, not both

![[Pasted image 20220427100722.png]]

![[Pasted image 20220427110024.png]]
![[Pasted image 20220427110200.png]]
- Network role of the gateways: Mobility (AOS10) and Branch (AOS8). These two are supposedly two different things, but actually they are mostly the same thing.
	- Mobility is optimized for LAN
	- Branch is optimized for WAN
- Type of switches used in this group: Why use one switch separetely or both? Depends on the type of switch that you use. If you are only using CX switches, you select CX only.

![[Pasted image 20220427110818.png]]
![[Pasted image 20220427110948.png]]

## IAP and Switch Configuration
![[Pasted image 20220427111611.png]]
- We have to use a group filter to see the configuration settings

![[Pasted image 20220427111719.png]]
- Country code can be set in a site by site basis

![[Pasted image 20220427111954.png]]
- The name and address are not that relevant. If you are dealing with VC's, just choose an address inside the relevant range.

![[Pasted image 20220427112356.png]]
- Enterprise: TLS, radius server
- Personal: Preshared keys
- Open: As a wifi professional, the instructor doesnt recommend an open system in any circumstance.
- Network based: Everybody that is assigned to this SSID will be allowed access.

![[Pasted image 20220427112800.png]]
![[Pasted image 20220427113100.png]]
We can customize the login page for guest users, including colors and the placement of buttons.

![[Pasted image 20220427113410.png]]
- Key management allows you to share pre-shared keys.
- Use external captive portal to manage long running contracts with clients.

![[Pasted image 20220427114910.png]]
- When uploading a CSV file, we have to make sure that the column with the values is formatted as text, that way an IP range will be interpreted verbatim. If you dont set it to text, Excel might format the column as a date.
![[Pasted image 20220427115157.png]]
- If you want to add variables to your devices, just add columns to the CSV file. Also, if you just want to modify a specific column, set the "modified" column to a "Y" to reference which ones are supposed to be updated once you upload them

## Visual RF & Topology
![[Pasted image 20220428081348.png]]
- Why install a drop ceiling and carpet in a building that has a network infrastructure? It's mainly for sound dampening.}
- We can put the access point in two places:
	- Hanging from the bottom of the drop ceiling. That will create a great signal bubble below the access point, but the signal going to the top of the ceiling will get attenuated because the signal crosses the actual ceiling pads and then bounces among all the electrical and metal components found above the ceiling
	- Inside the drop ceiling. That causes greater attenuation because the signal first bounces off the surrounding elements before coming out the drop ceiling.

- Worst place to put an access point: Behind a mirror. There, the signal will bounce off the mirror (sometimes it will manage to make something pass through the mirror) and it will return back to the AP dropping off logarithmically and even causing interference with itself.
- Someone decided that it's best to lose some data frames from time to time, rather than acknowledge each data frame.
- The human voice works very similarly to wifi. We can communicate more easily in a quiet conference room, than in a crowded bar. The noise floor in a bar will require a higher "communication rate" (or you talking louder).
- Receive Signal Strength / Noise Floor -> Modulation Encoding Scheme -> Data Rate: The easier it is for devices to communicate between them, the better MCS you can get and the higher data rate (you can get accross more info)
- Dont listen when they say: Take your square footage and divide it by a factor to get your AP count. AP count is generally more dependant on the number of clients (people that will use the wifi) and the type of traffic.
- Safe measurement -65: Sweetspot where you get 256 QAM on a 20MHz channel. 
![[Pasted image 20220428090313.png]]
- Microwaves will crush your signal strength by increasing the noise floor.

![[Pasted image 20220428092800.png]]
- For a good guestimation for the AP count you can use your square footage divided by 1500.
- Play around with the deployment type slider and see which one is the best one.

![[Pasted image 20220428092842.png]]
- Dont pay too much attention to these automatic calculators, they are generally ambiguous on what any of it means.
- Heatmap: Displays the coverage of all the access points given the CAD file for the building layout.

![[Pasted image 20220428101856.png]]
- IAP clusters are effectively the same as an IAP swarm

## Application Presence and Analytics

![[Pasted image 20220428104059.png]]
- WebCC: Some poor individual had to go through the entire 

- Client health: Aggretation of factors that affect the health of the signal (the data rate, noise floor, etc).
![[Pasted image 20220428110238.png]]
- Passing by the entrance: 