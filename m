Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F472A5A9F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 00:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B78AE2051F;
	Tue,  3 Nov 2020 23:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tPEJC02EYUl4; Tue,  3 Nov 2020 23:40:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2F1421505;
	Tue,  3 Nov 2020 23:40:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 564D61BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5322786CEC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9mKSstu0NxAZ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 23:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62BFC867CF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:40:23 +0000 (UTC)
IronPort-SDR: 5aRR6yVgrrO1f4HIjLKnDJ5P5eZrGkcwpq6VGjujwUng6a5NMbVSjEXxhZ9sR8+S6m1tYFscdi
 aBtiJvRusgPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="156916703"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="156916703"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:40:22 -0800
IronPort-SDR: RvmVrkM28XUq1k3NHyYMwRV/a4ncCfrp9nnamoGH5DBOIOB9lGQ41yFcogq4eA6lRNsgtw+C7s
 W/4r0C8W3Svg==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="305975217"
Received: from anemani-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.38.187])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:40:22 -0800
MIME-Version: 1.0
In-Reply-To: <20201102180700.GJ6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-8-andre.guedes@intel.com>
 <20201102180700.GJ6427@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 03 Nov 2020 15:40:21 -0800
Message-ID: <160444682187.10323.11872975494131598005@anemani-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v3 7/9] igc: Add initial XDP support
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

Quoting Maciej Fijalkowski (2020-11-02 10:07:00)
> >  static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> >  {
> >       unsigned int total_bytes = 0, total_packets = 0;
> > @@ -1912,8 +1974,10 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> >               union igc_adv_rx_desc *rx_desc;
> >               struct igc_rx_buffer *rx_buffer;
> >               ktime_t timestamp = 0;
> > +             struct xdp_buff xdp;
> 
> I'm wondering if this patch should zero-init the xdp_buff. There are two
> pointers that are left untouched below (rxq/txq) so maybe bpf prog would
> get some weird behavior if it would be touching them.

I see your point. While rxq is set by the next patch txq is not. I took a look
at ice, i40e, ixgbe, and they don't seem to zero-init neither set txq so maybe
that's OK.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
