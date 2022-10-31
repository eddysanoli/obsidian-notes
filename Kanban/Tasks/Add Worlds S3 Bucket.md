# Add Worlds S3 Bucket
Created on: 2022-10-31

---

## Description

I created an ansible playbook that transfers the minecraft and terraria worlds to the instance that's running the servers. However, the minecraft server is almost 1GB, so its getting kind of ridiculous having to wait up to 30 minutes for the worlds to load. I want to link a "worlds" s3 bucket to the gaming server, so that no data transfer cap alerts are raised.

----

## Notes

[[2022-10-31]]
I could probably have the discord bot receive a file and then upload it to the S3 bucket. Then I could add another command that allows us to select the world that we want to play in.


