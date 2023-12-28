# Event ID 1: Process Creation
## This is used to look for any processes that have created
    ## Helps to look for known suspicious processes or proesses with typos that would be considered an anomoly 

<RuleGroup name="" groupRelation="or">
	<ProcessCreate onmatch="exclude">
	 	<CommandLine condition="is">C:\Windows\system32\svchost.exe -k appmodel -p -s camsvc</CommandLine>
	</ProcessCreate>
</RuleGroup>

## Event ID 3: Network Connection
## This will look for events that occur remotely. 
    ## Will include Files & sources of suspicious binaries as well as open ports
    ## Event Will use the image and destinationPort XML tags

<RuleGroup name="" groupRelation="or">
	<NetworkConnect onmatch="include">
	 	<Image condition="image">nmap.exe</Image>
	 	<DestinationPort name="Alert,Metasploit" condition="is">4444</DestinationPort>
	</NetworkConnect>
</RuleGroup>


## Event ID 7: Image Loaded
## This event will look for DLLs loaded by processes, which is useful when hunting for DLL Injection and DLL Hijacking attacks. 
    ## Rec To exercise caution when using this EventID as it causes a high system load.
    ## Event Will use the image, Signed, Imageloaded, & signature XML tags.

<RuleGroup name="" groupRelation="or">
	<ImageLoad onmatch="include">
	 	<ImageLoaded condition="contains">\Temp\</ImageLoaded>
	</ImageLoad>
</RuleGroup>

## Event ID 8: CreateRemoteThread
## This will monitor For processes injecting code into other proesses
    ## used for legitimate tasks and applications
        ## Could be used by malware to hide malicious activity
        ## Event Will use the SoureImage, TargetImage, StartAddress, & StartFunction XML Tags.

<RuleGroup name="" groupRelation="or">
	<CreateRemoteThread onmatch="include">
	 	<StartAddress name="Alert,Cobalt Strike" condition="end with">0B80</StartAddress>
	 	<SourceImage condition="contains">\</SourceImage>
	</CreateRemoteThread>
</RuleGroup>

## Event ID 11: File Created
## This will log Events when files are created or overwritten the endpoint. 
    ## This could be used to identify file names & signatures of files that are written to disk. 
        ## Event Uses TargetFilenameXML tags
<RuleGroup name="" groupRelation="or">
	<FileCreate onmatch="include">
	 	<TargetFilename name="Alert,Ransomware" condition="contains">HELP_TO_SAVE_FILES</TargetFilename>
	</FileCreate>
</RuleGroup>

## Event ID 12 / 13 / 14: Registry Event
## This looks for changes or modifications to the registry 
## Malicious Activity from the registry can include peristence & credential abuse.
    ## Event uses Target Object XML Tags
<RuleGroup name="" groupRelation="or">
	<RegistryEvent onmatch="include">
	 	<TargetObject name="T1484" condition="contains">Windows\System\Scripts</TargetObject>
	</RegistryEvent>
</RuleGroup>

## Event ID 15: FileCreateStreamHash
## This looks for any files created in an ADS (Alternate Data Stream). 
    ## Common Technique used by advesary/threat to hide malware.
        #Event uses TargetFilename XML tags.

<RuleGroup name="" groupRelation="or">
	<FileCreateStreamHash onmatch="include">
	 	<TargetFilename condition="end with">.hta</TargetFilename>
	</FileCreateStreamHash>
</RuleGroup> 

## Event ID 22: DNS Event
## This will log all DNS querues & events for analysis
    ## Common way to deal with these events is to exclude all trusted domains that you know will be very common "noise" in ur evn
        ## Once you get rid of the noise you can then look for DNS anomalies
            ## Event Uses QueryName XML tags

<RuleGroup name="" groupRelation="or">
	<DnsQuery onmatch="exclude">
	 	<QueryName condition="end with">.microsoft.com</QueryName>
	</DnsQuery>
</RuleGroup> 