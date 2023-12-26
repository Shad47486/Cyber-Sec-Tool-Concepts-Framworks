 [-]
   @version: 1
   Category: Process Creation
   Channel: Security
   CommandLine: "C:\windows\System32\Wbem\WMIC.exe" /node:WORKSTATION6 process call create "net user /add A1berto paw0rd1"
   EventID: 4688
   EventReceivedTime: 2022-02-14 08:06:03
   EventTime: 2022-02-14 08:06:01
   EventType: AUDIT_SUCCESS
   ExecutionProcessID: 4
   Hostname: James.browne
   Keywords: -9214364837600035000
   MandatoryLabel: S-1-16-12288
   Message: A new process has been created.

Creator Subject:
	Security ID:		S-1-5-21-4020993649-1037605423-417876593-1104
	Account Name:		James
	Account Domain:		Cybertees
	Logon ID:		0x2CC013

Target Subject:
	Security ID:		S-1-0-0
	Account Name:		-
	Account Domain:		-
	Logon ID:		0x0

Process Information:
	New Process ID:		0x24d4
	New Process Name:	C:\Windows\System32\wbem\WMIC.exe
	Token Elevation Type:	%%1937
	Mandatory Label:		S-1-16-12288
	Creator Process ID:	0x255c
	Creator Process Name:	C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
	Process Command Line:	"C:\windows\System32\Wbem\WMIC.exe" /node:WORKSTATION6 process call create "net user /add A1berto paw0rd1"

Token Elevation Type indicates the type of token that was assigned to the new process in accordance with User Account Control policy.

Type 1 is a full token with no privileges removed or groups disabled.  A full token is only used if User Account Control is disabled or if the user is the built-in Administrator account or a service account.

Type 2 is an elevated token with no privileges removed or groups disabled.  An elevated token is used when User Account Control is enabled and the user chooses to start the program using Run as administrator.  An elevated token is also used when an application is configured to always require administrative privilege or to always require maximum privilege, and the user is a member of the Administrators group.

Type 3 is a limited token with administrative privileges removed and administrative groups disabled.  The limited token is used when User Account Control is enabled, the application does not require administrative privilege, and the user does not choose to start the program using Run as administrator.
   NewProcessId: 0x24d4
   NewProcessName: C:\Windows\System32\wbem\WMIC.exe
   Opcode: Info
   OpcodeValue: 0
   ParentProcessName: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
   ProcessId: 0x255c
   ProviderGuid: {54849625-5478-4994-A5BA-3E3B0328C30D}
   RecordNumber: 73272
   Severity: INFO
   SeverityValue: 2
   SourceModuleName: eventlog
   SourceModuleType: im_msvistalog
   SourceName: Microsoft-Windows-Security-Auditing
   SubjectDomainName: Cybertees
   SubjectLogonId: 0x2cc013
   SubjectUserName: James
   SubjectUserSid: S-1-5-21-4020993649-1037605423-417876593-1104
   TargetDomainName: -
   TargetLogonId: 0x0
   TargetUserName: -
   TargetUserSid: S-1-0-0
   Task: 13312
   ThreadID: 1512
   TokenElevationType: %%1937
   Version: 2
   host: cybertees.net
   port: 60427
   tags: [ [+]
   ]
   timestamp: 2022-02-14T12:06:03.849Z 
