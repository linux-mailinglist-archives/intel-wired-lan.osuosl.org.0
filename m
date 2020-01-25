Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD745149267
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jan 2020 01:55:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 806BF87051;
	Sat, 25 Jan 2020 00:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U9vNnpLNyL0P; Sat, 25 Jan 2020 00:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B43A87053;
	Sat, 25 Jan 2020 00:55:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8600D1BF9BF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 00:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 81A20882AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 00:55:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CyihVStywTb0 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jan 2020 00:55:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE34F882AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 00:55:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 16:55:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,359,1574150400"; d="scan'208";a="426790427"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jan 2020 16:55:07 -0800
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jan 2020 16:55:06 -0800
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.220]) by
 ORSMSX162.amr.corp.intel.com ([169.254.3.134]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 16:55:06 -0800
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Ben Greear <greearb@candelatech.com>, intel-wired-lan
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] ixgbe: "Warning firmware error detected
 FWSM: 0xFFFFFFFF"
Thread-Index: AQHV0u4+KsKzEewDSEqTZgyo1YMQfaf6jcKQ
Date: Sat, 25 Jan 2020 00:55:05 +0000
Message-ID: <9B4A1B1917080E46B64F07F2989DADD69B09BD46@ORSMSX115.amr.corp.intel.com>
References: <9c5158a4-8c45-f45c-636e-7ea75d40eabf@candelatech.com>
In-Reply-To: <9c5158a4-8c45-f45c-636e-7ea75d40eabf@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] ixgbe: "Warning firmware error detected FWSM:
 0xFFFFFFFF"
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Was the firmware updated or edited somehow?

Or is this a card that's been running and started randomly generating errors?

Todd Fujinaka
Software Application Engineer
Datacenter Engineering Group
Intel Corporation
todd.fujinaka@intel.com

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ben Greear
Sent: Friday, January 24, 2020 11:31 AM
To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Subject: [Intel-wired-lan] ixgbe: "Warning firmware error detected FWSM: 0xFFFFFFFF"

Hello,

Anyone know what this problem means?

# dmesg|grep ixg
[    3.840480] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver - version 5.1.0-k
[    3.840481] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
[    4.535677] ixgbe 0000:01:00.0: Multiqueue Enabled: Rx Queue count = 8, Tx Queue count = 8 XDP Queue count = 0
[    4.633347] ixgbe 0000:01:00.0: 31.504 Gb/s available PCIe bandwidth (8 GT/s x4 link)
[    4.745337] ixgbe 0000:01:00.0: MAC: 4, PHY: 0, PBA No: H86377-005
[    4.745338] ixgbe 0000:01:00.0: 9c:69:b4:60:e4:a6
[    4.904379] ixgbe 0000:01:00.0: Intel(R) 10 Gigabit Network Connection
[    4.904413] libphy: ixgbe-mdio: probed
[    5.610158] ixgbe 0000:01:00.1: Multiqueue Enabled: Rx Queue count = 8, Tx Queue count = 8 XDP Queue count = 0
[    5.709523] ixgbe 0000:01:00.1: 31.504 Gb/s available PCIe bandwidth (8 GT/s x4 link)
[    5.823067] ixgbe 0000:01:00.1: MAC: 4, PHY: 0, PBA No: H86377-005
[    5.823071] ixgbe 0000:01:00.1: 9c:69:b4:60:e4:a7
[    5.986413] ixgbe 0000:01:00.1: Intel(R) 10 Gigabit Network Connection
[    5.986444] libphy: ixgbe-mdio: probed
[    5.987671] ixgbe 0000:01:00.0 enp1s0f0: renamed from eth0
[    5.995744] ixgbe 0000:01:00.1 enp1s0f1: renamed from eth1
[   10.086982] ixgbe 0000:01:00.0 eth2: renamed from enp1s0f0
[   10.098434] ixgbe 0000:01:00.1 eth3: renamed from enp1s0f1
[   30.868089] ixgbe 0000:01:00.0: registered PHC device on eth2
[   31.327796] ixgbe 0000:01:00.1: registered PHC device on eth3
[   47.567801] ixgbe 0000:01:00.0: Adapter removed
[   47.571172] ixgbe 0000:01:00.0: Warning firmware error detected FWSM: 0xFFFFFFFF
[   47.571188] ixgbe 0000:01:00.0: Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for 
details on firmware recovery mode.
[   47.588245] ixgbe 0000:01:00.0: removed PHC on eth2
[   48.056546] ixgbe 0000:01:00.1: Adapter removed
[   48.059916] ixgbe 0000:01:00.1: Warning firmware error detected FWSM: 0xFFFFFFFF
[   48.059932] ixgbe 0000:01:00.1: Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for 
details on firmware recovery mode.
[   48.076589] ixgbe 0000:01:00.1: removed PHC on eth3

Thanks,
Ben

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
