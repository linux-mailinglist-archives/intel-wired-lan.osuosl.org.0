Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6569B8428ED
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jan 2024 17:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A9274167E;
	Tue, 30 Jan 2024 16:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A9274167E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706631310;
	bh=Pt2G85xCI5GbrpHwZ4S8pT9zu5XQJXhfbmOH/5CWF6U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5+7qijusIdZnIyMZir/nTT9tCLORkhvCcGl3PbjcdzuJ+qLPbAjAThqBpfbRqpFv6
	 4QeKVTL32wiBXbcIRq9BHWAOxQldjWtNOUJQ5baCEQJBQBiFOYA6HlRJem0rWIxhlR
	 vMPLCgO6DpZbfO6yuejZhMiwaw7oYIu/bRFRz1BdhLgWfGPYOqRTx4cTIrhNwC1KEj
	 OtBJQU5GZoH7AlwRRDZhkOt9Gm8Iip0hSessrzN3l4hAIxYRmS2LdLK0baz6n3z//V
	 244Xbp5BHR3w8z8lnjQ4Rrv9SyWFdZ7CPvl6XvA1Yeea7z6N7pKor3UrTjw5m5mVFT
	 xMJTbCXTcMS3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMI2K0NQI6XR; Tue, 30 Jan 2024 16:15:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3237441B48;
	Tue, 30 Jan 2024 16:15:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3237441B48
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6232E1BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 16:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A0D641A05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 16:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A0D641A05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pfpu33zpvgyp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jan 2024 16:14:59 +0000 (UTC)
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CB6E4167E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jan 2024 16:14:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CB6E4167E
Received: from [141.14.220.34] (g34.guest.molgen.mpg.de [141.14.220.34])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 75AC661E5FE01;
 Tue, 30 Jan 2024 17:14:24 +0100 (CET)
Message-ID: <47eea378-6b76-46a7-b70e-52bc61f5e9f0@molgen.mpg.de>
Date: Tue, 30 Jan 2024 17:14:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Seth Forshee <sforshee@kernel.org>
References: <ZbkE7Ep1N1Ou17sA@do-x1extreme>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <ZbkE7Ep1N1Ou17sA@do-x1extreme>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-wired-lan] i40e XDP program stops transmitting after
 link down/up
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Seth,


Thank you for bring this up.

Am 30.01.24 um 15:17 schrieb Seth Forshee:
> I got a inquiry from a colleague about a behavior he's seeing with i40e
> but not with other NICs. The interfaces are bonded with a XDP
> load-balancer program attached to them. After 'ip link set ethX down; ip
> link set ethX up' on one of the interfaces the XDP program on that
> interface is no longer transmitting packets. He found that tx starts
> again after running 'sudo ethtool -t ethX'.
> 
> There's a 'i40e 0000:d8:00.1: VSI seid 391 XDP Tx ring 0 disable
> timeout' message in dmesg when disabling the interface. I've included
> the relevant portions from dmesg below.
> 
> This was first observed with a 6.1 kernel, but we've confirmed that the
> behavior is the same in 6.7. I realize the firmware is pretty old, so
> far our attempts to update the NVM have failed.

Does that mean, the problem didn’t happen before Linux 6.1? If so, if 
you have the reproducer and the time, bisecting the issue is normally 
the fastest way to solve the issue.


Kind regards,

Paul


> [    0.000000] Linux version 6.7.0 (root@616a530b3729) (gcc (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0, GNU ld (GNU Binutils for Ubuntu) 2.38) #2 SMP Thu Jan 25 10:37:21 EST 2024
> ...
> [    9.038171] i40e: Intel(R) Ethernet Connection XL710 Network Driver
> [    9.044447] i40e: Copyright (c) 2013 - 2019 Intel Corporation.
> ...
> [    9.064833] i40e 0000:d8:00.0: fw 7.0.50775 api 1.8 nvm 7.00 0x80004c97 1.2154.0 [8086:1583] [8086:0002]
> ...
> [    9.320886] i40e 0000:d8:00.0: MAC address: xx:xx:xx:xx:xx:xx
> [    9.327030] i40e 0000:d8:00.0: FW LLDP is enabled
> [    9.344331] i40e 0000:d8:00.0 eth0: NIC Link is Up, 40 Gbps Full Duplex, Flow Control: None
> [    9.355552] i40e 0000:d8:00.0: PCI-Express: Speed 8.0GT/s Width x8
> [    9.374074] i40e 0000:d8:00.0: Features: PF-id[0] VFs: 64 VSIs: 66 QP: 32 RSS FD_ATR FD_SB NTUPLE DCB VxLAN Geneve PTP VEPA
> ...
> [    9.401522] i40e 0000:d8:00.1: fw 7.0.50775 api 1.8 nvm 7.00 0x80004c97 1.2154.0 [8086:1583] [8086:0002]
> ...
> [    9.652066] i40e 0000:d8:00.1: MAC address: xx:xx:xx:xx:xx:xx
> [    9.658040] i40e 0000:d8:00.1: FW LLDP is enabled
> [    9.688622] i40e 0000:d8:00.1 eth1: NIC Link is Up, 40 Gbps Full Duplex, Flow Control: None
> [    9.699822] i40e 0000:d8:00.1: PCI-Express: Speed 8.0GT/s Width x8
> [    9.719259] i40e 0000:d8:00.1: Features: PF-id[1] VFs: 64 VSIs: 66 QP: 32 RSS FD_ATR FD_SB NTUPLE DCB VxLAN Geneve PTP VEPA
> [    9.401522] i40e 0000:d8:00.1: fw 7.0.50775 api 1.8 nvm 7.00 0x80004c97 1.2154.0 [8086:1583] [8086:0002]
> ...
> [   13.948968] i40e 0000:d8:00.0: FW LLDP is disabled, attempting SW DCB
> [   13.956753] i40e 0000:d8:00.0: SW DCB initialization succeeded.
> [   13.970005] i40e 0000:d8:00.0: FW LLDP is disabled
> ...
> [   14.113004] i40e 0000:d8:00.1: FW LLDP is disabled, attempting SW DCB
> [   14.120800] i40e 0000:d8:00.1: SW DCB initialization succeeded.
> [   14.133940] i40e 0000:d8:00.1: FW LLDP is disabled
> ...
> [   14.267874] bonding: bond0 is being created...
> [   14.979070] i40e 0000:d8:00.1 eth1: set new mac address xx:xx:xx:xx:xx:xx
> [   14.994445] bond0: (slave eth1): Enslaving as a backup interface with an up link
> [   14.994681] i40e 0000:d8:00.0 eth0: set new mac address xx:xx:xx:xx:xx:xx
> [   15.010359] bond0: (slave eth0): Enslaving as a backup interface with an up link
> [   15.912874] i40e 0000:d8:00.0: Stop LLDP AQ command failed =0x1
> [   15.944842] i40e 0000:d8:00.1: Stop LLDP AQ command failed =0x1
> [   41.262871] 8021q: 802.1Q VLAN Support v1.8
> [   41.262890] 8021q: adding VLAN 0 to HW filter on device eth0
> [   41.262902] 8021q: adding VLAN 0 to HW filter on device eth1
> [   41.262914] 8021q: adding VLAN 0 to HW filter on device bond0
> [   48.272456] i40e 0000:d8:00.0: FW LLDP is disabled, attempting SW DCB
> [   48.280233] i40e 0000:d8:00.0: SW DCB initialization succeeded.
> [   48.307415] i40e 0000:d8:00.0: User requested queue count/HW max RSS count:  12/32
> [   48.440266] i40e 0000:d8:00.1: FW LLDP is disabled, attempting SW DCB
> [   48.448025] i40e 0000:d8:00.1: SW DCB initialization succeeded.
> [   48.475051] i40e 0000:d8:00.1: User requested queue count/HW max RSS count:  12/32
> [   58.935900] i40e 0000:d8:00.0: FW LLDP is disabled, attempting SW DCB
> [   58.945123] i40e 0000:d8:00.0: SW DCB initialization succeeded.
> [   59.131772] i40e 0000:d8:00.1: FW LLDP is disabled, attempting SW DCB
> [   59.139560] i40e 0000:d8:00.1: SW DCB initialization succeeded.
> [  336.363825] i40e 0000:d8:00.1: VSI seid 391 XDP Tx ring 0 disable timeout
> [  336.603619] bond0: (slave eth1): link status definitely down, disabling slave
> [  345.464976] 8021q: adding VLAN 0 to HW filter on device eth1
> [  345.547358] bond0: (slave eth1): link status definitely up, 40000 Mbps full duplex
> [  345.547379] bond0: active interface up!
