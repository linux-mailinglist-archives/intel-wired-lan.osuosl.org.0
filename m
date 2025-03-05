Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A6FA4FD6C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Mar 2025 12:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 24D1181A58;
	Wed,  5 Mar 2025 11:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d8bU_bRs2mzw; Wed,  5 Mar 2025 11:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D823081A5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741173531;
	bh=9nTF2idz03oDCETO4wg/vxsKxaZ+V8UfJLxb0IH7nT8=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=rxDgFYAr+ekHZJl9ztdstHlIXJP4oXioHIe8PaomsvOWvTCuuJvwh7N5mbelW2Cru
	 kKz5OZxh5C/pLD+w5PrPuJ//Xmt2XWQ41JRytcZ+JZO9XIx348yrvdc/38ubkbF5Bf
	 MmEqJGUODrXSrN92k4y6pFppTwIid8GiwpBGGDPTe7sjRefCRBH/bV8Ej3we2t690u
	 WMM3fbKe+TkdTwQNIV2naehWNl8SJUWy5oVxfYJio1fLjxiTb2nAl1WwHEiBUKqRQZ
	 ZRNAPEFHBLaVnXjVVSk29HyfzK40EjL/e1/lTWBCmyTCwg8XVT6C4KfFVQgqLP3WLW
	 yTkWS9s7P8oiw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D823081A5F;
	Wed,  5 Mar 2025 11:18:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 23E3FE2E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0804D60720
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Mar 2025 11:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gs6Kbmw-QDM7 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Mar 2025 11:18:47 +0000 (UTC)
X-Greylist: delayed 1142 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 05 Mar 2025 11:18:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 70AA16066E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70AA16066E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=46.105.73.110;
 helo=18.mo582.mail-out.ovh.net; envelope-from=mateusz.kusiak@3mdeb.com;
 receiver=<UNKNOWN> 
Received: from 18.mo582.mail-out.ovh.net (18.mo582.mail-out.ovh.net
 [46.105.73.110])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 70AA16066E
 for <intel-wired-lan@osuosl.org>; Wed,  5 Mar 2025 11:18:45 +0000 (UTC)
Received: from director2.ghost.mail-out.ovh.net (unknown [10.108.2.141])
 by mo582.mail-out.ovh.net (Postfix) with ESMTP id 4Z78hF1Qz1z1Y6F
 for <intel-wired-lan@osuosl.org>; Wed,  5 Mar 2025 10:59:40 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-v6rj2 (unknown [10.110.113.115])
 by director2.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 90D391FEB2;
 Wed,  5 Mar 2025 10:59:40 +0000 (UTC)
Received: from 3mdeb.com ([37.59.142.107])
 by ghost-submission-5b5ff79f4f-v6rj2 with ESMTPSA
 id dbAqEJwuyGdSPgAA3MBQLQ
 (envelope-from <mateusz.kusiak@3mdeb.com>); Wed, 05 Mar 2025 10:59:40 +0000
X-OVh-ClientIp: 213.192.77.249
Message-ID: <e55a2f7e-484b-4f00-8840-5776ab0e7b1c@3mdeb.com>
Date: Wed, 5 Mar 2025 11:59:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Mateusz Kusiak <mateusz.kusiak@3mdeb.com>
To: intel-wired-lan@osuosl.org
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 3358559425017973544
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddutdegieegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfhffuvfevtgfgsehtkeertddtvdejnecuhfhrohhmpeforghtvghushiiucfmuhhsihgrkhcuoehmrghtvghushiirdhkuhhsihgrkhesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepgfehgefftedtieeufeeuffduleelvdevleeuueefkeeuvdeiuddtuddvhfdvtdevnecuffhomhgrihhnpeefmhguvggsrdgtohhmnecukfhppeduvdejrddtrddtrddupddvudefrdduledvrdejjedrvdegledpfeejrdehledrudegvddruddtjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepmhgrthgvuhhsiidrkhhushhirghkseefmhguvggsrdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnhesohhsuhhoshhlrdhorhhgpdfovfetjfhoshhtpehmohehkedvmgdpmhhouggvpehsmhhtphhouhht
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=9nTF2idz03oDCETO4wg/vxsKxaZ+V8UfJLxb0IH7nT8=; 
 c=relaxed/relaxed; d=3mdeb.com; h=From; s=ovhmo3617313-selector1;
 t=1741172381; v=1;
 b=Y3SRSdiRQCpldldEGZdqVn6NDHXo4VTX8LZqD1CZ7u5yjiRjGPyDwpNPqtSTJyenkeTnlDfj
 L2Ede69xuKuoN08YaTJ5/lO4YqsA4SMKFUGFWaLTcW+KMgyQddWM7Yf61ykE5zq6WWLiff/wG7o
 uy0z5fShWvrAa34/ZaqZH+rlR+moEChd3XVTLCQwpf+7okaV/Wm9d8SK837F/hDAYNMlvPrAEK4
 5Qz6fU8Onqy8sdcHOd2XJ1edIOKDtOlglMG7hG8dFpeinoFmQLCUD9N2Mn4FE10Mejon4DvPgaf
 pAIS7K55b/RFpJe0mCFdECOKjS69dj1dMLB+sV4mqiz9Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=3mdeb.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=3mdeb.com header.i=@3mdeb.com header.a=rsa-sha256
 header.s=ovhmo3617313-selector1 header.b=Y3SRSdiR
X-Mailman-Original-Authentication-Results: garm.ovh; auth=pass
 (GARM-107S001b34b9ec9-6182-46db-99f0-3c06de99fb86,
 29030959DFAD01814B2CE9C49F757AC15632A5B7) smtp.auth=mateusz.kusiak@3mdeb.com
Subject: [Intel-wired-lan] igc: high init to link up time on I255
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,
I'm trying to figure out what's taking igc/I255 so long to establish link. I 
enabled debug logs hoping I'd find something meaningful. Here they are (output 
of "dmesg | grep igc"):

[    0.628173] calling  igc_init_module+0x0/0x3b @ 1
[    0.628234] igc 0000:01:00.0: PCIe PTM not supported by PCIe bus/controller
[    0.654818] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Timeout is 
expired after a phy reset
[    0.655717] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Masking 
off all interrupts
[    0.675821] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Issuing a 
global reset to MAC
[    0.676061] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
[    0.676067] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Masking 
off all interrupts
[    0.696170] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Issuing a 
global reset to MAC
[    0.696175] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
Programming MAC Address into RAR[0]
[    0.696179] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Clearing 
RAR[1-15]
[    0.696227] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Zeroing 
the MTA
[    0.696252] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Zeroing 
the UTA
[    0.696270] igc 0000:01:00.0 (unnamed net_device) (uninitialized): After 
fix-ups FlowControl is now = 3
[    0.696272] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
Reconfiguring auto-neg advertisement params
[    0.696808] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
autoneg_advertised af
[    0.696809] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
10mb Half duplex
[    0.696809] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
10mb Full duplex
[    0.696810] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
100mb Half duplex
[    0.696810] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
100mb Full duplex
[    0.696811] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
1000mb Full duplex
[    0.696811] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
2500mb Full duplex
[    0.696888] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Auto-Neg 
Advertising de1
[    0.697348] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Restarting 
Auto-Neg
[    0.699152] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Unable to 
establish link!!!
[    0.699153] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
Initializing the Flow Control address, type and timer regs
[    0.701455] igc 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth (5.0 GT/s 
PCIe x1 link)
[    0.701457] igc 0000:01:00.0 eth0: MAC: <REDACTED>
[    0.701469] initcall igc_init_module+0x0/0x3b returned 0 after 71577 usecs
[    1.094704] igc 0000:01:00.0 eth0: changing MTU from 1500 to 9000
[    1.094720] igc 0000:01:00.0 eth0: Masking off all interrupts
[    1.114868] igc 0000:01:00.0 eth0: Issuing a global reset to MAC
[    1.114871] igc 0000:01:00.0 eth0: Programming MAC Address into RAR[0]
[    1.114875] igc 0000:01:00.0 eth0: Clearing RAR[1-15]
[    1.114923] igc 0000:01:00.0 eth0: Zeroing the MTA
[    1.114948] igc 0000:01:00.0 eth0: Zeroing the UTA
[    1.114967] igc 0000:01:00.0 eth0: After fix-ups FlowControl is now = 3
[    1.114969] igc 0000:01:00.0 eth0: Reconfiguring auto-neg advertisement params
[    1.115505] igc 0000:01:00.0 eth0: autoneg_advertised af
[    1.115505] igc 0000:01:00.0 eth0: Advertise 10mb Half duplex
[    1.115506] igc 0000:01:00.0 eth0: Advertise 10mb Full duplex
[    1.115506] igc 0000:01:00.0 eth0: Advertise 100mb Half duplex
[    1.115506] igc 0000:01:00.0 eth0: Advertise 100mb Full duplex
[    1.115507] igc 0000:01:00.0 eth0: Advertise 1000mb Full duplex
[    1.115508] igc 0000:01:00.0 eth0: Advertise 2500mb Full duplex
[    1.115585] igc 0000:01:00.0 eth0: Auto-Neg Advertising de1
[    1.116044] igc 0000:01:00.0 eth0: Restarting Auto-Neg
[    1.117847] igc 0000:01:00.0 eth0: Unable to establish link!!!
[    1.117847] igc 0000:01:00.0 eth0: Initializing the Flow Control address, 
type and timer regs
[    1.162956] igc 0000:01:00.0 eth0: Timeout is expired after a phy reset
[    1.172645] igc 0000:01:00.0 eth0: After fix-ups FlowControl is now = 3
[    1.172647] igc 0000:01:00.0 eth0: Reconfiguring auto-neg advertisement params
[    1.173183] igc 0000:01:00.0 eth0: autoneg_advertised af
[    1.173183] igc 0000:01:00.0 eth0: Advertise 10mb Half duplex
[    1.173184] igc 0000:01:00.0 eth0: Advertise 10mb Full duplex
[    1.173184] igc 0000:01:00.0 eth0: Advertise 100mb Half duplex
[    1.173185] igc 0000:01:00.0 eth0: Advertise 100mb Full duplex
[    1.173185] igc 0000:01:00.0 eth0: Advertise 1000mb Full duplex
[    1.173185] igc 0000:01:00.0 eth0: Advertise 2500mb Full duplex
[    1.173262] igc 0000:01:00.0 eth0: Auto-Neg Advertising de1
[    1.173721] igc 0000:01:00.0 eth0: Restarting Auto-Neg
[    1.175529] igc 0000:01:00.0 eth0: Unable to establish link!!!
[    1.175529] igc 0000:01:00.0 eth0: Initializing the Flow Control address, 
type and timer regs
[    1.175616] igc 0000:01:00.0 eth0: Set default MAC address filter: address 
<REDACTED>
[    1.175685] igc 0000:01:00.0 eth0: MAC address filter set in HW: index 0
[    3.747284] igc 0000:01:00.0 eth0: Flow Control = FULL.
[    3.747287] igc 0000:01:00.0 eth0: 1000 Mbs,
[    3.747288] igc 0000:01:00.0 eth0: Full Duplex
[    3.747290] igc 0000:01:00.0 eth0: hw->fc.current_mode = 3
[    3.747293] igc 0000:01:00.0 eth0: 1000 Mbs,
[    3.747293] igc 0000:01:00.0 eth0: Full Duplex
[    3.747301] igc 0000:01:00.0 eth0: 1000 Mbs,
[    3.747301] igc 0000:01:00.0 eth0: Full Duplex
[    3.747303] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full Duplex, Flow 
Control: RX/TX

Is it normal for auto-negotiation to fail multiple times at the beginning? Is it 
some kind of setup procedure or is it out of the ordinary?

Total time for initialization + link up is about ~3.2 seconds, I wonder if this 
is normal and if it can be further reduced? I'm aiming for init to link up speed 
only, interface speed does not matter to me.

Thanks,
Mateusz

-- 
Mateusz Kusiak
Junior Embedded Systems Developer
https://3mdeb.com | @3mdeb_com

