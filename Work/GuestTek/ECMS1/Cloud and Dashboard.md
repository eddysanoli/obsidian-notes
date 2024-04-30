# Cloud and Dashboard


- Meraki was created because the networking was becoming more and more complex in the 2000s
- Main guys of cloud managed infrastructure. Their bread and butter: APs
![[Pasted image 20221101101643.png]]
![[Pasted image 20221101102129.png]]
- Single pane of glass: See through and find everything in a single place (the dashboard)
![[Pasted image 20221101102609.png]]
- Security: Your traffic does not go to the cloud for monitoring
- Reliability: Our devices retain their configuration in themselves. What doesn't work is that when new settings are pushed in the dashboard, they won't be able to be reconfigured.
- Future proof: New features won't be locked behind new types of devices. New features are managed via licensing, and through firmware updates
![[Pasted image 20221101104317.png]]
- Per device licensing: Allows you to track individual licenses for multiple devices
- Co Termination: All devices share a single license, so if a single device has a license with 3 months left, and you buy a new license for 12, the total licenses will be mushed together to 12 months (the previous 3 months won't matter.)
![[Pasted image 20221101105737.png]]
- Enterprise: Basic functionalities. 90% of what people want to do. Firewalling, routing, APs manage SSIDs.
- Content filtering is done via Talos
![[Pasted image 20221101110448.png]]
- When hovering over a menu option, you will have almost always 2 columns:
	- Monitor: Single devices
	- Configure: Network Wide

- Organization -> Licensing: Licenses that we have available. Filterable. The MAC addresses of licensed devices. Filter by device. You can move licenses around if the licensing is managed in a per device basis. If it uses the "co-termination", the licensing will have a single page and show the license that you currently have right now.