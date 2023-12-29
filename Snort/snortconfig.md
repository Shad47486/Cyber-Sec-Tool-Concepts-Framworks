# Snort.config files is the main configuration file

- local.rules is the user-generated rules file
  - Can look more into it: sudo gedit /etc/snort/snort.conf

## Step 1: setting the network variables

- Section manages the scope of the detection and rule path
- Tag names:
  - HOME_NET
    - Where we are protecting
  - EXTERNAL_NET
    - This field is the external network, so we need to keep it as 'any' or '!$HOME_NET'.
  - RULE_PATH
    - Hardcoded Rule path
  - SO_RULE_PATH
    - Rules come with REGISTERED PEOPLE & SUBSCRIBER RULES
  - PREPROC_RULE_PATH
    - Rules come with REGISTERED PEOPLE & SUBSCRUBER RULES

### Step 2: configure the decoder

- This section is where you manage the IPS mode of the snort
  - Single nodes IPS installation model works best, with "afpacket" mode
    - ***UNCOMMENT THE TAG NAMES BY REMOVING THE # TO MAKE IT OPERABLE ****
- Tag name:
  - #config daq:
    - IPS mode selection
      - EX: #config daq: afpacket
  - #config daq_mode:
    - Activating the inline mode
        EX: #config daq_mode: inline
  - #config logdir:
    - Hardcoded default log path.
      - EX: #config logdir: /var/logs/snort
- 6 DAQs avalible in SNORT:
  - Pcap: Default mode, known as Sniffer mode.
  - Afpacket: Inline mode, known as IPS mode.
  - Ipq: Inline mode on Linux by using Netfilter. It replaces the snort_inline patch.  
  - Nfq: Inline mode on Linux.
  - Ipfw: Inline on OpenBSD and FreeBSD by using divert sockets, with the pf and ipfw firewalls.
  - Dump: Testing mode of inline and normalisation.
    - MOST POPULAR MODE ARE THE DEFAULT (PCAP) & INLINE/IPS (Afpacket)

#### Step 6: Configure output plugins

- This section manages the outputs of the IDS/IPS actions, such as logging and alerting format details.
- The default action prompts everything in the console application, so configuring this part will help you use the Snort more efficiently.

##### Step 7: Customise ur ruleset

- #site specific rules
  - Hardcoded local and user-generated rules path.
    - include $RULE_PATH/local.rules
- #include $RULE_PATH/
  - Hardcoded default/downloaded rules path.
    - include $RULE_PATH/rulename

MAKE SURE TO UNCOMMENT THE # OPERATOR TO ACTIVIATE IT