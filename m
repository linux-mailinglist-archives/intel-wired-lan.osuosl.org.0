Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 96972388FCE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 May 2021 16:05:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F82D40666;
	Wed, 19 May 2021 14:05:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 08Ta09v0JmK6; Wed, 19 May 2021 14:05:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B5594040A;
	Wed, 19 May 2021 14:05:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D4BA1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 12:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 275CB40639
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 12:24:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Wcd3fQhPrcB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 May 2021 12:24:27 +0000 (UTC)
X-Greylist: delayed 00:27:22 by SQLgrey-1.8.0
Received: from qasl.de (qasl.de [IPv6:2a01:4f8:121:3169::2])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EDD040633
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 May 2021 12:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=qasl.de;
 s=dk2048-2021; h=Content-Transfer-Encoding:Content-Type:Message-ID:Subject:To
 :From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k8psLFuuaIPBQ/JMRaP75Wh1KvaeErJl+C24B907icc=; b=O6bvV3uMVI7lzCwmjDDPDbvUxf
 HMWNcVQ5S8RCBQoOu7wJN9s2sva0G+TWwMtLpTX8NGelZ+50Xi90ouBd7DxWut3wLGKAAev1EKOCG
 RrTeiZTCcEahN+6QWXNdIsOB8gHcMtMUOkMSBVQntUWvlfou701Z/vZDSILxWTE0ue0rVSdHdyfxh
 GswrZ2oH68zTNGJ8wsdv+ujmT19wElk2Tg4v/dl/5nyJQEEzYKmDbNokZtqr2GdDyDZPeDAPPPTR4
 AWRoI9BwHodEyMiYbxq2zfAJc5s9RWMR57mcsgz4hU+Uh3MpyAQQuLRpifAwYhowRmP/oyfPGg95h
 2skCXyWg==;
Received: from localhost ([::1]:35886) by qasl.de with esmtpa (Exim 4.94.2)
 (envelope-from <idl0r@qasl.de>) id 1ljKov-0006Bf-37
 for intel-wired-lan@lists.osuosl.org; Wed, 19 May 2021 13:57:01 +0200
MIME-Version: 1.0
Date: Wed, 19 May 2021 13:57:01 +0200
From: Christian Ruppert <idl0r@qasl.de>
To: intel-wired-lan@lists.osuosl.org
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <181a441c7019d51ac1284523793b8d1c@qasl.de>
X-Sender: idl0r@qasl.de
X-Mailman-Approved-At: Wed, 19 May 2021 14:05:05 +0000
Subject: [Intel-wired-lan] igb firmware 1.63 broken / flapping on switch
 reboot - update or downgrade possible?
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi List,

Problem: If we reboot a Switch that is connected to igb interfaces (we 
use bonding), the interface will flapp several times during the reboot 
of the switch
Setup: 2x 1GE I350 (igb) connected to 2x Juniper EX3330 for example
It's a active/backup Bonding with MIIMON being disabled and ARP check 
being configured

What we have figured out so far, it seems to be a bug in firmware 1.63 
while a system with 1.61 seems to work just fine:

We have a bunch of systems with:
02:00.0 Ethernet controller: Intel Corporation I350 Gigabit Network 
Connection (rev 01)
	Subsystem: Super Micro Computer Inc Device 1521
	Kernel driver in use: igb
	Kernel modules: igb
02:00.1 Ethernet controller: Intel Corporation I350 Gigabit Network 
Connection (rev 01)
	Subsystem: Super Micro Computer Inc Device 1521
	Kernel driver in use: igb
	Kernel modules: igb

Lets pick 2 of those systems, first the good one:
# ethtool -i net0
driver: igb
version: 5.6.0-k
firmware-version: 1.61, 0x8000090e
expansion-rom-version:
bus-info: 0000:02:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

# uname -r
3.10.0-1160.25.1.el7.x86_64

CentOS 7.9

# dmesg
[627590.997603] igb 0000:02:00.0 net0: igb: net0 NIC Link is Down
[627598.277441] bond0: link status definitely down for interface net0, 
disabling it
[627598.278062] bond0: making interface net1 the new active one
[627598.278536] device net0 left promiscuous mode
[627598.279109] device net1 entered promiscuous mode
[627856.894229] igb 0000:02:00.0 net0: igb: net0 NIC Link is Up 1000 
Mbps Full Duplex, Flow Control: RX/TX
[627859.970951] bond0: link status definitely up for interface net0
[627859.971577] bond0: making interface net0 the new active one
[627859.972127] device net1 left promiscuous mode
[627859.972801] device net0 entered promiscuous mode


That's the complete switch reboot and that is how it's supposed to be.

Now the broken one (we have multiple broken ones, all the same firmware 
version):
# ethtool -i net0
driver: igb
version: 5.6.0-k
firmware-version: 1.63, 0x80000a05
expansion-rom-version:
bus-info: 0000:01:00.0
supports-statistics: yes
supports-test: yes
supports-eeprom-access: yes
supports-register-dump: yes
supports-priv-flags: yes

# uname -r
3.10.0-1160.25.1.el7.x86_64

CentOS 7.9

# dmesg[451689.477836] igb 0000:01:00.0 net0: igb: net0 NIC Link is Down
[451697.112000] bond0: link status definitely down for interface net0, 
disabling it
[451697.113060] bond0: making interface net1 the new active one
[451697.113906] device net0 left promiscuous mode
[451697.114840] device net1 entered promiscuous mode
[451742.241325] bond0: link status definitely up for interface net0
[451742.242276] bond0: making interface net0 the new active one
[451742.243065] device net1 left promiscuous mode
[451742.243976] device net0 entered promiscuous mode
[451751.265579] bond0: link status definitely down for interface net0, 
disabling it
[451751.266503] bond0: making interface net1 the new active one
[451751.267300] device net0 left promiscuous mode
[451751.268166] device net1 entered promiscuous mode
[451817.443511] bond0: link status definitely up for interface net0
[451817.444428] bond0: making interface net0 the new active one
[451817.445216] device net1 left promiscuous mode
[451817.446100] device net0 entered promiscuous mode
[451826.467777] bond0: link status definitely down for interface net0, 
disabling it
[451826.468836] bond0: making interface net1 the new active one
[451826.469702] device net0 left promiscuous mode
[451826.470534] device net1 entered promiscuous mode
[451856.548666] bond0: link status definitely up for interface net0
[451856.549534] bond0: making interface net0 the new active one
[451856.550283] device net1 left promiscuous mode
[451856.551142] device net0 entered promiscuous mode
[451865.572959] bond0: link status definitely down for interface net0, 
disabling it
[451865.573892] bond0: making interface net1 the new active one
[451865.574671] device net0 left promiscuous mode
[451865.575504] device net1 entered promiscuous mode
[451874.597227] bond0: link status definitely up for interface net0
[451874.598273] bond0: making interface net0 the new active one
[451874.599057] device net1 left promiscuous mode
[451874.599901] device net0 entered promiscuous mode
[451883.621550] bond0: link status definitely down for interface net0, 
disabling it
[451883.622382] bond0: making interface net1 the new active one
[451883.623136] device net0 left promiscuous mode
[451883.623898] device net1 entered promiscuous mode
[451886.629557] bond0: link status definitely up for interface net0
[451886.630416] bond0: making interface net0 the new active one
[451886.631178] device net1 left promiscuous mode
[451886.632051] device net0 entered promiscuous mode
[451895.653860] bond0: link status definitely down for interface net0, 
disabling it
[451895.654792] bond0: making interface net1 the new active one
[451895.655548] device net0 left promiscuous mode
[451895.656372] device net1 entered promiscuous mode
[451898.661903] bond0: link status definitely up for interface net0
[451898.662789] bond0: making interface net0 the new active one
[451898.663582] device net1 left promiscuous mode
[451898.664464] device net0 entered promiscuous mode
[451907.686173] bond0: link status definitely down for interface net0, 
disabling it
[451907.687090] bond0: making interface net1 the new active one
[451907.687864] device net0 left promiscuous mode
[451907.688700] device net1 entered promiscuous mode
[451919.718549] bond0: link status definitely up for interface net0
[451919.719403] bond0: making interface net0 the new active one
[451919.720165] device net1 left promiscuous mode
[451919.721040] device net0 entered promiscuous mode
[451928.742836] bond0: link status definitely down for interface net0, 
disabling it
[451928.743834] bond0: making interface net1 the new active one
[451928.744601] device net0 left promiscuous mode
[451928.745452] device net1 entered promiscuous mode
[451949.799426] bond0: link status definitely up for interface net0
[451949.800297] bond0: making interface net0 the new active one
[451949.801080] device net1 left promiscuous mode
[451949.801978] device net0 entered promiscuous mode
[451954.463872] igb 0000:01:00.0 net0: igb: net0 NIC Link is Up 1000 
Mbps Full Duplex, Flow Control: RX/TX

This is the same reboot as on the good one. It's the same switch they're 
connected to. The same bonding config etc. So it doesn't seem to be 
related to the bonding.
# cat /proc/net/bonding/bond0
Ethernet Channel Bonding Driver: v3.7.1 (April 27, 2011)

Bonding Mode: fault-tolerance (active-backup)
Primary Slave: net0 (primary_reselect always)
Currently Active Slave: net0
MII Status: up
MII Polling Interval (ms): 0
Up Delay (ms): 0
Down Delay (ms): 0
ARP Polling Interval (ms): 3000
ARP IP target/s (n.n.n.n form): 192.168.99.105

Slave Interface: net0
MII Status: up
Speed: 1000 Mbps
Duplex: full
Link Failure Count: 9
Permanent HW addr: 0c:c4:7a:ab:f2:30
Slave queue ID: 0

Slave Interface: net1
MII Status: up
Speed: 1000 Mbps
Duplex: full
Link Failure Count: 1
Permanent HW addr: 0c:c4:7a:ab:f2:31
Slave queue ID: 0


Is it possible to upgrade the firmware? Is there a more recent one at 
all? I couldn't find any info about that nor a changelog or something 
else so far. We'd do even a downgrade to get that fixed.
The firmware doesn't seem to be included into the driver so I would 
assume there's an external package for it?

-- 
Regards,
Christian Ruppert
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
