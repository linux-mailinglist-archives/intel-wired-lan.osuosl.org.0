Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0307525398
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 May 2019 17:15:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE1CB87B5D;
	Tue, 21 May 2019 15:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zAJtGXkK9Q65; Tue, 21 May 2019 15:15:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D438087B84;
	Tue, 21 May 2019 15:15:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48A201BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 15:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4105985FD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 15:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6FxihGJ4CxOY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 May 2019 15:15:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E53C985B99
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 May 2019 15:15:42 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id C7A46460279; Tue, 21 May 2019 11:15:37 -0400 (EDT)
Date: Tue, 21 May 2019 11:15:37 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190521151537.xga4aiq3gjtiif4j@csclub.uwaterloo.ca>
References: <20190513165547.alkkgcsdelaznw6v@csclub.uwaterloo.ca>
 <CAKgT0Uf_nqZtCnHmC=-oDFz-3PuSM6=30BvJSDiAgzK062OY6w@mail.gmail.com>
 <20190514163443.glfjva3ofqcy7lbg@csclub.uwaterloo.ca>
 <CAKgT0UdPDyCBsShQVwwE5C8fBKkMcfS6_S5m3T7JP-So9fzVgA@mail.gmail.com>
 <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
 <20190516183705.e4zflbli7oujlbek@csclub.uwaterloo.ca>
 <CAKgT0UfSa-dM2+7xntK9tB7Zw5N8nDd3U1n4OSK0gbWbkNSKJQ@mail.gmail.com>
 <CAKgT0Ucd0s_0F5_nwqXknRngwROyuecUt+4bYzWvp1-2cNSg7g@mail.gmail.com>
 <20190517172317.amopafirjfizlgej@csclub.uwaterloo.ca>
 <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
From: lsorense@csclub.uwaterloo.ca (Lennart Sorensen)
Subject: Re: [Intel-wired-lan] i40e X722 RSS problem with NAT-Traversal
 IPsec packets
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, May 17, 2019 at 03:20:02PM -0700, Alexander Duyck wrote:
> I was hoping it would work too. It seemed like it should have been the
> answer since it definitely didn't seem right. Now it has me wondering
> about some of the other code in the driver.
> 
> By any chance have you run anything like DPDK on any of the X722
> interfaces on this system recently? I ask because it occurs to me that
> if you had and it loaded something like a custom parsing profile it
> could cause issues similar to this.

I have never used DPDK on anything.  I was hoping never to do so. :)

This system has so far booted Debian (with a 4.19 kernel) and our own OS
(which has a 4.9 kernel).

> A debugging step you might try would be to revert back to my earlier
> patch that only displayed the input mask instead of changing it. Once
> you have done that you could look at doing a full power cycle on the
> system by either physically disconnecting the power, or using the
> power switch on the power supply itself if one is available. It is
> necessary to disconnect the motherboard/NIC from power in order to
> fully clear the global state stored in the device as it is retained
> when the system is in standby.
> 
> What I want to verify is if the input mask that we have ran into is
> the natural power-on input mask of if that is something that was
> overridden by something else. The mask change I made should be reset
> if the system loses power, and then it will either default back to the
> value with the 6's if that is it's natural state, or it will match
> what I had if it was not.
> 
> Other than that I really can't think up too much else. I suppose there
> is the possibility of the NVM either setting up a DCB setting or
> HREGION register causing an override that is limiting the queues to 1.
> However, the likelihood of that should be really low.

Here is the register dump after a full power off:

40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
i40e: Copyright (c) 2013 - 2014 Intel Corporation.
i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
i40e 0000:3d:00.1: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
i40e 0000:3d:00.1: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
i40e 0000:3d:00.1: MAC address: a4:bf:01:4e:0c:88
i40e 0000:3d:00.1: flow_type: 63 input_mask:0x0000000000004000
i40e 0000:3d:00.1: flow_type: 46 input_mask:0x0007fff800000000
i40e 0000:3d:00.1: flow_type: 45 input_mask:0x0007fff800000000
i40e 0000:3d:00.1: flow_type: 44 input_mask:0x0007ffff80000000
i40e 0000:3d:00.1: flow_type: 43 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 42 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 41 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 40 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 39 input_mask:0x0007fffe00000000
i40e 0000:3d:00.1: flow_type: 36 input_mask:0x0006060000000000
i40e 0000:3d:00.1: flow_type: 35 input_mask:0x0006060000000000
i40e 0000:3d:00.1: flow_type: 34 input_mask:0x0006060780000000
i40e 0000:3d:00.1: flow_type: 33 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 32 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 31 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 30 input_mask:0x0006060600000000
i40e 0000:3d:00.1: flow_type: 29 input_mask:0x0006060600000000
i40e 0000:3d:00.1: Features: PF-id[1] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA
i40e 0000:3d:00.1 eth2: NIC Link is Up, 1000 Mbps Full Duplex, Flow Control: None

Pretty sure that is identical to before.

If I dump the registers after doing the update I see this (just did a
reboot this time, not a power cycle):

i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
i40e: Copyright (c) 2013 - 2014 Intel Corporation.
i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
i40e 0000:3d:00.0: flow_type: 63 input_mask:0x0000000000004000
i40e 0000:3d:00.0: flow_type: 46 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type: 45 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type: 44 input_mask:0x0007ffff80000000
i40e 0000:3d:00.0: flow_type: 43 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 42 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 41 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 40 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 39 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type: 36 input_mask:0x0006060000000000
i40e 0000:3d:00.0: flow_type: 35 input_mask:0x0006060000000000
i40e 0000:3d:00.0: flow_type: 34 input_mask:0x0006060780000000
i40e 0000:3d:00.0: flow_type: 33 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 32 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 31 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 30 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow_type: 29 input_mask:0x0006060600000000
i40e 0000:3d:00.0: flow type: 36 update input mask from:0x0006060000000000, to:0x0001801800000000
i40e 0000:3d:00.0: flow type: 35 update input mask from:0x0006060000000000, to:0x0001801800000000
i40e 0000:3d:00.0: flow type: 34 update input mask from:0x0006060780000000, to:0x0001801f80000000
i40e 0000:3d:00.0: flow type: 33 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 32 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 31 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 30 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 29 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow_type after update: 63 input_mask:0x0000000000004000
i40e 0000:3d:00.0: flow_type after update: 46 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type after update: 45 input_mask:0x0007fff800000000
i40e 0000:3d:00.0: flow_type after update: 44 input_mask:0x0007ffff80000000
i40e 0000:3d:00.0: flow_type after update: 43 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type after update: 42 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type after update: 41 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type after update: 40 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type after update: 39 input_mask:0x0007fffe00000000
i40e 0000:3d:00.0: flow_type after update: 36 input_mask:0x0001801800000000
i40e 0000:3d:00.0: flow_type after update: 35 input_mask:0x0001801800000000
i40e 0000:3d:00.0: flow_type after update: 34 input_mask:0x0001801f80000000
i40e 0000:3d:00.0: flow_type after update: 33 input_mask:0x0001801e00000000
i40e 0000:3d:00.0: flow_type after update: 32 input_mask:0x0001801e00000000
i40e 0000:3d:00.0: flow_type after update: 31 input_mask:0x0001801e00000000
i40e 0000:3d:00.0: flow_type after update: 30 input_mask:0x0001801e00000000
i40e 0000:3d:00.0: flow_type after update: 29 input_mask:0x0001801e00000000
i40e 0000:3d:00.0: Features: PF-id[0] VSIs: 34 QP: 12 TXQ: 13 RSS VxLAN Geneve VEPA

So at least it appears the update did apply.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
