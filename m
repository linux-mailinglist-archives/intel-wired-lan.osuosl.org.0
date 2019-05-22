Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB7F26612
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2019 16:40:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3578684974;
	Wed, 22 May 2019 14:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jo6YHp6ZTruR; Wed, 22 May 2019 14:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCEB28499E;
	Wed, 22 May 2019 14:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 12B181BF408
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 14:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0E2C684973
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 14:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xmHLISNOEQKp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2019 14:40:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from caffeine.csclub.uwaterloo.ca (caffeine.csclub.uwaterloo.ca
 [129.97.134.17])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 15EA384A5F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2019 14:40:01 +0000 (UTC)
Received: by caffeine.csclub.uwaterloo.ca (Postfix, from userid 20367)
 id 76006460279; Wed, 22 May 2019 10:39:56 -0400 (EDT)
Date: Wed, 22 May 2019 10:39:56 -0400
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20190522143956.quskqh33ko2wuf47@csclub.uwaterloo.ca>
References: <20190516183407.qswotwyjwtjqfdqm@csclub.uwaterloo.ca>
 <20190516183705.e4zflbli7oujlbek@csclub.uwaterloo.ca>
 <CAKgT0UfSa-dM2+7xntK9tB7Zw5N8nDd3U1n4OSK0gbWbkNSKJQ@mail.gmail.com>
 <CAKgT0Ucd0s_0F5_nwqXknRngwROyuecUt+4bYzWvp1-2cNSg7g@mail.gmail.com>
 <20190517172317.amopafirjfizlgej@csclub.uwaterloo.ca>
 <CAKgT0UdM28pSTCsaT=TWqmQwCO44NswS0PqFLAzgs9pmn41VeQ@mail.gmail.com>
 <20190521151537.xga4aiq3gjtiif4j@csclub.uwaterloo.ca>
 <CAKgT0UfpZ-ve3Hx26gDkb+YTDHvN3=MJ7NZd2NE7ewF5g=kHHw@mail.gmail.com>
 <20190521175456.zlkiiov5hry2l4q2@csclub.uwaterloo.ca>
 <CAKgT0UcR3q1maBmJz7xj_i+_oux_6FQxua9DOjXQSZzyq6FhkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKgT0UcR3q1maBmJz7xj_i+_oux_6FQxua9DOjXQSZzyq6FhkQ@mail.gmail.com>
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
Cc: e1000-devel@lists.sourceforge.net, Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 21, 2019 at 04:22:17PM -0700, Alexander Duyck wrote:
> So we are either using 0 bits of the LUT or we are just not performing
> hashing because this is somehow being parsed into a type that doesn't
> support it.
> 
> I have attached 2 more patches we can test. The first enables hashing
> on what are called "OAM" packets, The thing is we shouldn't be
> identifying these packets as "OAM", Operations Administration &
> Management, as normally it would have to be recognized as a tunnel
> first and then have a specific flag set in either the GENEVE or
> VXLAN-GPE header. The second patch will dump the contents of the
> HREGION registers. They should all be 0, however I thought it best to
> dump the contents and verify that since I know that these registers
> can be used to change the traffic class of a given packet type and if
> we are encountering that it might be moving it to an uninitialized TC
> which would be using queue offset 0 with 0 bits of the LUT.
> 
> These last 2 patches would pretty much eliminate the entire RSS
> subsystem. If we don't see HREGION values set and the OAM flags have
> no effect I can only assume there is something going on with the
> parser in the NIC since it isn't recognizing the packet type.
> 
> Thanks.
> 
> - Alex

OK I applied those two patches and get this:

i40e: Intel(R) Ethernet Connection XL710 Network Driver - version 2.1.7-k
i40e: Copyright (c) 2013 - 2014 Intel Corporation.
i40e 0000:3d:00.0: fw 3.10.52896 api 1.6 nvm 4.00 0x80001577 1.1767.0
i40e 0000:3d:00.0: The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.
i40e 0000:3d:00.0: MAC address: a4:bf:01:4e:0c:87
i40e 0000:3d:00.0: PFQF_HREGION[7]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[6]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[5]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[4]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[3]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[2]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[1]: 0x00000000
i40e 0000:3d:00.0: PFQF_HREGION[0]: 0x00000000
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
i40e 0000:3d:00.0: flow_type: 27 input_mask:0x00000000002c0000
i40e 0000:3d:00.0: flow_type: 26 input_mask:0x00000000002c0000
i40e 0000:3d:00.0: flow type: 36 update input mask from:0x0006060000000000, to:0x0001801800000000
i40e 0000:3d:00.0: flow type: 35 update input mask from:0x0006060000000000, to:0x0001801800000000
i40e 0000:3d:00.0: flow type: 34 update input mask from:0x0006060780000000, to:0x0001801f80000000
i40e 0000:3d:00.0: flow type: 33 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 32 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 31 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 30 update input mask from:0x0006060600000000, to:0x0001801e00000000
i40e 0000:3d:00.0: flow type: 29 update input mask from:0x0006060600000000, to:0x0001801e00000000

So seems the regions are all 0.

All ipsec packets still hitting queue 0.

-- 
Len Sorensen
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
