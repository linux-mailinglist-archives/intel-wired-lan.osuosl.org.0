Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C1AC05E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 09:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25C0960BE7;
	Thu, 22 May 2025 07:38:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lb5wYV68CbL7; Thu, 22 May 2025 07:38:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9E4C760C01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747899527;
	bh=+JHNBemro0zidpRKFjqFBA2iSJY1Hzd5IdcnEapvTUo=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gcWqghUu4EQYiBNfRZ2lRtACo+tychYbRI8suXK4565BrJXDGdOKp3ggo42iG193t
	 IbxV1AJamiB1Ee/UQO2i+WRJAmGK865FrNQab+ZG3Bukbk0D96gAzSIZkEskJHR3RB
	 IKjIEbm72seVVPihISoF3gsMVPzglwF9mUEWe04MAOhGkqkIaN+orHDn6d1alEA7c9
	 xK7p7lvmwTJKsB0E680ZYJHRGa2e0ZHsCSNZnsQ7Jf7BM8KMI/nV7F3RqxPOq+2+Dj
	 PgNuUG+7ObuiOdjXPOizoDeBZApiI8ikU6mY7K6Yf4ZmFy6n/ybuA6djYXN4dr1IeZ
	 PSrwfVrGOZ8Bg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E4C760C01;
	Thu, 22 May 2025 07:38:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 770C469
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:38:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CB0441E5B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 07:38:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cb3KPbopuBaI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 07:38:44 +0000 (UTC)
X-Greylist: delayed 601 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 22 May 2025 07:38:43 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A0DC041A6C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0DC041A6C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=87.98.177.69;
 helo=6.mo582.mail-out.ovh.net; envelope-from=mateusz.kusiak@3mdeb.com;
 receiver=<UNKNOWN> 
Received: from 6.mo582.mail-out.ovh.net (6.mo582.mail-out.ovh.net
 [87.98.177.69])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0DC041A6C
 for <intel-wired-lan@osuosl.org>; Thu, 22 May 2025 07:38:43 +0000 (UTC)
Received: from director4.ghost.mail-out.ovh.net (unknown [10.109.148.116])
 by mo582.mail-out.ovh.net (Postfix) with ESMTP id 4b30814bScz1SPZ
 for <intel-wired-lan@osuosl.org>; Thu, 22 May 2025 07:21:05 +0000 (UTC)
Received: from ghost-submission-5b5ff79f4f-gjvgj (unknown [10.110.178.153])
 by director4.ghost.mail-out.ovh.net (Postfix) with ESMTPS id 1E829C5710;
 Thu, 22 May 2025 07:21:04 +0000 (UTC)
Received: from 3mdeb.com ([37.59.142.100])
 by ghost-submission-5b5ff79f4f-gjvgj with ESMTPSA
 id obw/MWDQLmgeAAAAAFawOA
 (envelope-from <mateusz.kusiak@3mdeb.com>); Thu, 22 May 2025 07:21:04 +0000
X-OVh-ClientIp: 213.192.77.249
Message-ID: <203b3dac-87dc-451a-92d9-bcbc0e0a7a4f@3mdeb.com>
Date: Thu, 22 May 2025 09:21:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
From: Mateusz Kusiak <mateusz.kusiak@3mdeb.com>
To: intel-wired-lan@osuosl.org
Cc: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Ovh-Tracer-Id: 15015282636864391976
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeffedrtddtgdehfeegucdltddurdegfedvrddttddmucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepkfffgggfhffuvfevtgfgsehtkeertddtvdejnecuhfhrohhmpeforghtvghushiiucfmuhhsihgrkhcuoehmrghtvghushiirdhkuhhsihgrkhesfehmuggvsgdrtghomheqnecuggftrfgrthhtvghrnhepgfehgefftedtieeufeeuffduleelvdevleeuueefkeeuvdeiuddtuddvhfdvtdevnecuffhomhgrihhnpeefmhguvggsrdgtohhmnecukfhppeduvdejrddtrddtrddupddvudefrdduledvrdejjedrvdegledpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepmhgrthgvuhhsiidrkhhushhirghkseefmhguvggsrdgtohhmpdhnsggprhgtphhtthhopedupdhrtghpthhtohepihhnthgvlhdqfihirhgvugdqlhgrnhesohhsuhhoshhlrdhorhhgpdfovfetjfhoshhtpehmohehkedvmgdpmhhouggvpehsmhhtphhouhht
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=+JHNBemro0zidpRKFjqFBA2iSJY1Hzd5IdcnEapvTUo=; 
 c=relaxed/relaxed; d=3mdeb.com; h=From; s=ovhmo3617313-selector1;
 t=1747898465; v=1;
 b=Bq8qyuTUstKU1e4fmNCrZJdlQqi/8+rKTJ0pVZslLw08DNr9gYRo1dBy9wg7muCq3E01KKBb
 GoI5Lju9AgIUYz8Ybx+AKVWczYzSvSDvToXF+84saTHuSN2QCNpKy/JGDX+ONIWxpnGgnEbCfRP
 JcmRCfU7HKYQavXWP5Osb/33CQadGZ+9wOZxrqnCp2bfDtFaXdUjV4YXcV3qy70+RVNJjSAG30Q
 wwc2IEeOMcb3ITNbfleWfPtlqTEGAMHAqE92Enboc1e4ZC0Tz/WBmUEWIAZQylDoXIVubAA9U91
 GPpptdIdJrb8Qaoigw8NTJP7XkGVs6gX2iT1nd4i68BYQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=3mdeb.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=3mdeb.com header.i=@3mdeb.com header.a=rsa-sha256
 header.s=ovhmo3617313-selector1 header.b=Bq8qyuTU
X-Mailman-Original-Authentication-Results: garm.ovh; auth=pass
 (GARM-100R003fce41f46-cc3a-4d5c-a822-12c083f17f70,
 50EB85E9F7B4B09E1669540411D450753CC3A93E) smtp.auth=mateusz.kusiak@3mdeb.com
Subject: [Intel-wired-lan] igc: Multiple failed link-ups on boot
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

Hello,
I was wondering I could get some help understanding the igc/i225 combo.

The issue I'm having is during boot-time, the i225 fails to establish link 
multiple times and it takes a long time (2.5s) for successful link up. I know 
this because I enabled debug logs in igc driver. I retested this on newest 
6.14.7 kernel and a few switches/routers and the result seems to be the same. Is 
this behavior expected?

Log:

[    4.544381] igc 0000:01:00.0: PCIe PTM not supported by PCIe bus/controller
[    4.578713] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Timeout is 
expired after a phy reset
[    4.579619] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Masking 
off all interrupts
[    4.599721] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Issuing a 
global reset to MAC
[    4.599961] igc 0000:01:00.0 (unnamed net_device) (uninitialized): PHC added
[    4.607852] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Masking 
off all interrupts
[    4.627957] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Issuing a 
global reset to MAC
[    4.627962] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
Programming MAC Address into RAR[0]
[    4.627967] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Clearing 
RAR[1-15]
[    4.628015] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Zeroing 
the MTA
[    4.628041] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Zeroing 
the UTA
[    4.628059] igc 0000:01:00.0 (unnamed net_device) (uninitialized): After 
fix-ups FlowControl is now = 3
[    4.628061] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
Reconfiguring auto-neg advertisement params
[    4.628597] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
autoneg_advertised af
[    4.628598] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
10mb Half duplex
[    4.628599] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
10mb Full duplex
[    4.628600] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
100mb Half duplex
[    4.628600] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
100mb Full duplex
[    4.628601] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
1000mb Full duplex
[    4.628602] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Advertise 
2500mb Full duplex
[    4.628679] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Auto-Neg 
Advertising de1
[    4.629139] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Restarting 
Auto-Neg
[    4.630941] igc 0000:01:00.0 (unnamed net_device) (uninitialized): Unable to 
establish link!!!
[    4.630942] igc 0000:01:00.0 (unnamed net_device) (uninitialized): 
Initializing the Flow Control address, type and timer regs
[    4.633280] igc 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth (5.0 GT/s 
PCIe x1 link)
[    4.642420] igc 0000:01:00.0 eth0: MAC: <REDACTED>
[    4.871840] igc 0000:01:00.0 eth0: changing MTU from 1500 to 9000
[    4.871856] igc 0000:01:00.0 eth0: Masking off all interrupts
[    4.891959] igc 0000:01:00.0 eth0: Issuing a global reset to MAC
[    4.891964] igc 0000:01:00.0 eth0: Programming MAC Address into RAR[0]
[    4.891968] igc 0000:01:00.0 eth0: Clearing RAR[1-15]
[    4.892016] igc 0000:01:00.0 eth0: Zeroing the MTA
[    4.892042] igc 0000:01:00.0 eth0: Zeroing the UTA
[    4.892060] igc 0000:01:00.0 eth0: After fix-ups FlowControl is now = 3
[    4.892063] igc 0000:01:00.0 eth0: Reconfiguring auto-neg advertisement params
[    4.892599] igc 0000:01:00.0 eth0: autoneg_advertised af
[    4.892600] igc 0000:01:00.0 eth0: Advertise 10mb Half duplex
[    4.892600] igc 0000:01:00.0 eth0: Advertise 10mb Full duplex
[    4.892601] igc 0000:01:00.0 eth0: Advertise 100mb Half duplex
[    4.892602] igc 0000:01:00.0 eth0: Advertise 100mb Full duplex
[    4.892602] igc 0000:01:00.0 eth0: Advertise 1000mb Full duplex
[    4.892603] igc 0000:01:00.0 eth0: Advertise 2500mb Full duplex
[    4.892680] igc 0000:01:00.0 eth0: Auto-Neg Advertising de1
[    4.893139] igc 0000:01:00.0 eth0: Restarting Auto-Neg
[    4.894945] igc 0000:01:00.0 eth0: Unable to establish link!!!
[    4.894946] igc 0000:01:00.0 eth0: Initializing the Flow Control address, 
type and timer regs
[    4.923528] igc 0000:01:00.0 eth0: Timeout is expired after a phy reset
[    4.923853] igc 0000:01:00.0 eth0: After fix-ups FlowControl is now = 3
[    4.923857] igc 0000:01:00.0 eth0: Reconfiguring auto-neg advertisement params
[    4.924395] igc 0000:01:00.0 eth0: autoneg_advertised af
[    4.924397] igc 0000:01:00.0 eth0: Advertise 10mb Half duplex
[    4.924398] igc 0000:01:00.0 eth0: Advertise 10mb Full duplex
[    4.924400] igc 0000:01:00.0 eth0: Advertise 100mb Half duplex
[    4.924402] igc 0000:01:00.0 eth0: Advertise 100mb Full duplex
[    4.924404] igc 0000:01:00.0 eth0: Advertise 1000mb Full duplex
[    4.924405] igc 0000:01:00.0 eth0: Advertise 2500mb Full duplex
[    4.924485] igc 0000:01:00.0 eth0: Auto-Neg Advertising de1
[    4.924946] igc 0000:01:00.0 eth0: Restarting Auto-Neg
[    4.926752] igc 0000:01:00.0 eth0: Unable to establish link!!!
[    4.926754] igc 0000:01:00.0 eth0: Initializing the Flow Control address, 
type and timer regs
[    4.926828] igc 0000:01:00.0 eth0: Set default MAC address filter: address 
<REDACTED>
[    4.926830] igc 0000:01:00.0 eth0: MAC address filter set in HW: index 0
[    7.036586] igc 0000:01:00.0 eth0: Flow Control = FULL.
[    7.036590] igc 0000:01:00.0 eth0: 100 Mbs,
[    7.036591] igc 0000:01:00.0 eth0: Full Duplex
[    7.036593] igc 0000:01:00.0 eth0: hw->fc.current_mode = 3
[    7.036596] igc 0000:01:00.0 eth0: 100 Mbs,
[    7.036597] igc 0000:01:00.0 eth0: Full Duplex
[    7.036604] igc 0000:01:00.0 eth0: 100 Mbs,
[    7.036605] igc 0000:01:00.0 eth0: Full Duplex
[    7.036607] igc 0000:01:00.0 eth0: NIC Link is Up 100 Mbps Full Duplex, Flow 
Control: RX/TX

Thanks,
Mateusz

-- 
Mateusz Kusiak
Junior Embedded Systems Developer
https://3mdeb.com | @3mdeb_com

