Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9951493B6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Jan 2020 06:45:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E478883C2;
	Sat, 25 Jan 2020 05:45:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMEAFESd5CMU; Sat, 25 Jan 2020 05:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76308883E6;
	Sat, 25 Jan 2020 05:45:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5AD111BF340
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 05:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 561878706F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 05:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-KDa7N4mqkY for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Jan 2020 05:45:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail3.candelatech.com (mail2.candelatech.com [208.74.158.173])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EDB38706C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Jan 2020 05:45:26 +0000 (UTC)
Received: from [192.168.1.47] (unknown [50.34.171.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id C671DA99;
 Fri, 24 Jan 2020 21:45:25 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com C671DA99
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1579931126;
 bh=3xnaApL5UpZZ++0xybiq1v/mwdLa9dLsU3on1iMIQPs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=WcCCHgT7VN6cr2cPyh9Ol7dSM3cYKY58jTdyStuLKnDcAn91DN8oQbceHWhvuzAjH
 DicereAeT5g5Gp3BB34+3BURQW2C5FQiH9fCkJYzAXFQv8766V1WxHlRzu1P4gs8hS
 JecNvofWt6hHhydsq59o07JMm9t4XsbtvkKRrkqs=
To: "Fujinaka, Todd" <todd.fujinaka@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
References: <9c5158a4-8c45-f45c-636e-7ea75d40eabf@candelatech.com>
 <9B4A1B1917080E46B64F07F2989DADD69B09BD46@ORSMSX115.amr.corp.intel.com>
From: Ben Greear <greearb@candelatech.com>
Message-ID: <97e04320-3d4d-471a-f32a-2923f60c0173@candelatech.com>
Date: Fri, 24 Jan 2020 21:45:24 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <9B4A1B1917080E46B64F07F2989DADD69B09BD46@ORSMSX115.amr.corp.intel.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I don't even know how to update firmware on the 10G NIC.

It happened once, reboot made the problem go away, so it's mostly
just a curiosity at this point.

Thanks,
Ben

On 01/24/2020 04:55 PM, Fujinaka, Todd wrote:
> Was the firmware updated or edited somehow?
>
> Or is this a card that's been running and started randomly generating errors?
>
> Todd Fujinaka
> Software Application Engineer
> Datacenter Engineering Group
> Intel Corporation
> todd.fujinaka@intel.com
>
> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ben Greear
> Sent: Friday, January 24, 2020 11:31 AM
> To: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] ixgbe: "Warning firmware error detected FWSM: 0xFFFFFFFF"
>
> Hello,
>
> Anyone know what this problem means?
>
> # dmesg|grep ixg
> [    3.840480] ixgbe: Intel(R) 10 Gigabit PCI Express Network Driver - version 5.1.0-k
> [    3.840481] ixgbe: Copyright (c) 1999-2016 Intel Corporation.
> [    4.535677] ixgbe 0000:01:00.0: Multiqueue Enabled: Rx Queue count = 8, Tx Queue count = 8 XDP Queue count = 0
> [    4.633347] ixgbe 0000:01:00.0: 31.504 Gb/s available PCIe bandwidth (8 GT/s x4 link)
> [    4.745337] ixgbe 0000:01:00.0: MAC: 4, PHY: 0, PBA No: H86377-005
> [    4.745338] ixgbe 0000:01:00.0: 9c:69:b4:60:e4:a6
> [    4.904379] ixgbe 0000:01:00.0: Intel(R) 10 Gigabit Network Connection
> [    4.904413] libphy: ixgbe-mdio: probed
> [    5.610158] ixgbe 0000:01:00.1: Multiqueue Enabled: Rx Queue count = 8, Tx Queue count = 8 XDP Queue count = 0
> [    5.709523] ixgbe 0000:01:00.1: 31.504 Gb/s available PCIe bandwidth (8 GT/s x4 link)
> [    5.823067] ixgbe 0000:01:00.1: MAC: 4, PHY: 0, PBA No: H86377-005
> [    5.823071] ixgbe 0000:01:00.1: 9c:69:b4:60:e4:a7
> [    5.986413] ixgbe 0000:01:00.1: Intel(R) 10 Gigabit Network Connection
> [    5.986444] libphy: ixgbe-mdio: probed
> [    5.987671] ixgbe 0000:01:00.0 enp1s0f0: renamed from eth0
> [    5.995744] ixgbe 0000:01:00.1 enp1s0f1: renamed from eth1
> [   10.086982] ixgbe 0000:01:00.0 eth2: renamed from enp1s0f0
> [   10.098434] ixgbe 0000:01:00.1 eth3: renamed from enp1s0f1
> [   30.868089] ixgbe 0000:01:00.0: registered PHC device on eth2
> [   31.327796] ixgbe 0000:01:00.1: registered PHC device on eth3
> [   47.567801] ixgbe 0000:01:00.0: Adapter removed
> [   47.571172] ixgbe 0000:01:00.0: Warning firmware error detected FWSM: 0xFFFFFFFF
> [   47.571188] ixgbe 0000:01:00.0: Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for
> details on firmware recovery mode.
> [   47.588245] ixgbe 0000:01:00.0: removed PHC on eth2
> [   48.056546] ixgbe 0000:01:00.1: Adapter removed
> [   48.059916] ixgbe 0000:01:00.1: Warning firmware error detected FWSM: 0xFFFFFFFF
> [   48.059932] ixgbe 0000:01:00.1: Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for
> details on firmware recovery mode.
> [   48.076589] ixgbe 0000:01:00.1: removed PHC on eth3
>
> Thanks,
> Ben
>

-- 
Ben Greear <greearb@candelatech.com>
Candela Technologies Inc  http://www.candelatech.com
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
