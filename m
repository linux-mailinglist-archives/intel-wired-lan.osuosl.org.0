Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0991E2A5A9E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 00:40:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA9608753B;
	Tue,  3 Nov 2020 23:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1zMS7VujZMDo; Tue,  3 Nov 2020 23:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 415E187546;
	Tue,  3 Nov 2020 23:40:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65A431BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 609F386559
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJ1g1sFk5S72 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 23:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9813886549
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:00 +0000 (UTC)
IronPort-SDR: f/zIrSjOMl7o4aFkuy/vINCd1w6To0LjI/JHZgFSVhFxV0XLdmCijbumcvE9tFCsXEWXHjP/Ck
 qXhDiZLcBjOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156916681"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="156916681"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:39:59 -0800
IronPort-SDR: jh6BVm+u2P9ZWWLNQV8AD0KXMTI0hLx950+ENO0jDIyHTanUrNfWjljqIPtfgt/fODsosBoiLU
 +gzIFgIrtbwQ==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="305975133"
Received: from anemani-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.38.187])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:39:59 -0800
MIME-Version: 1.0
In-Reply-To: <20201102175617.GI6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-2-andre.guedes@intel.com>
 <20201102175617.GI6427@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 03 Nov 2020 15:39:58 -0800
Message-ID: <160444679837.10323.6569127492617330628@anemani-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v3 1/9] igc: Fix igc_ptp_rx_pktstamp()
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Maciej Fijalkowski (2020-11-02 09:56:17)
> > +void igc_ptp_rx_pktstamp(struct igc_q_vector *q_vector, u32 *va,
> >                        struct sk_buff *skb)
> >  {
> >       struct igc_adapter *adapter = q_vector->adapter;
> > -     __le64 *regval = (__le64 *)va;
> > -     int adjust = 0;
> > -
> > -     /* The timestamp is recorded in little endian format.
> > -      * DWORD: | 0          | 1           | 2          | 3
> > -      * Field: | Timer0 Low | Timer0 High | Timer1 Low | Timer1 High
> > +     u64 regval;
> > +     int adjust;
> > +
> > +     /* Timestamps are saved in little endian at the beginning of the packet
> > +      * buffer following the layout:
> > +      *
> > +      * | 0              | 1              | 2              | 3              |
> 
> Minor nit, I find DWORD comment helpful from previous version of this
> description.

Let me bring that comment back.

> 
> > +      * | Timer1 SYSTIML | Timer1 SYSTIMH | Timer0 SYSTIML | Timer0 SYSTIMH |
> 
> A dumb question from ptp/igc noob: why two timers?

i225 has 4 independent timers and software can select 2 of them to be sampled
when the packet is received. One use case I can think of is to help with
cross-timestamping in multiple clocks scenario so you could have a "global"
timestamp and a "local" timestamp for a single packet.

> > +      *
> > +      * SYSTIML holds the nanoseconds part while SYSTIMH holds the seconds
> > +      * part of the timestamp.
> >        */
> > -     igc_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb),
> > -                                le64_to_cpu(regval[0]));
> > -
> > -     /* adjust timestamp for the RX latency based on link speed */
> > -     if (adapter->hw.mac.type == igc_i225) {
> 
> if this check is not required here, then is it within
> igc_ptp_systim_to_hwtstamp?

It is not required in igc_ptp_systim_to_hwtstamp() either. As discussed in [1]
these checks will be cleaned up in a separate series.

> > +     /* Adjust timestamp for the RX latency based on link speed */
> > +     switch (adapter->link_speed) {
> > +     case SPEED_10:
> > +             adjust = IGC_I225_RX_LATENCY_10;
> > +             break;
> > +     case SPEED_100:
> > +             adjust = IGC_I225_RX_LATENCY_100;
> > +             break;
> > +     case SPEED_1000:
> > +             adjust = IGC_I225_RX_LATENCY_1000;
> > +             break;
> > +     case SPEED_2500:
> > +             adjust = IGC_I225_RX_LATENCY_2500;
> > +             break;
> > +     default:
> > +             adjust = 0;
> > +             netdev_warn_once(adapter->netdev, "Imprecise timestamp\n");
> 
> How is timestamp related to link speed? I mean, this warning is telling me
> that there is something wrong with the timestamp that hw put onto frame,
> not that link speed is cranky.

The timestamp is sampled at the beginning of the packet. Although the timestamp
logic is located as close as possible to the PHY interface, there is a latency
between the moment the PHY received the first bit of the packet and the moment
the timestamp logic samples. That latency depends on the link speed and is
specified in the datasheet so software can adjust it.

In this regards, i225 is similar to i210 so you can take a look at section
7.8.3.1 Capture Timestamp Mechanism from i210 datasheet for further details.

Best,
Andre

[1] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200519101644.8246-1-sasha.neftin@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
