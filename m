Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D52D29645E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 20:05:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CA6620774;
	Thu, 22 Oct 2020 18:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6YKlI63ZemKs; Thu, 22 Oct 2020 18:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9E88520455;
	Thu, 22 Oct 2020 18:04:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 439AE1BF57B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 18:04:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39AB286B2C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 18:04:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n8vqkuDo8tQ7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 18:04:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E6B986978
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 18:04:54 +0000 (UTC)
IronPort-SDR: 1Ss14j8CHcg/IwI6MMLZ+Cbc57LLCtFM59S7Fj0gqtWvdVWIxWmXTxSTwuUu72XIcFxf4sN0BG
 wN48E+Bj9NDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="229203563"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="229203563"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 11:04:50 -0700
IronPort-SDR: g0ZZpdggIc6Cv45VV8j+uiCWrHWVamnpXc86YTvoKOzyQcIAA+MxjVw+qBY7sg27C49OYSM8T3
 Ck6fDyzb832A==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="524365750"
Received: from skottana-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.166.52])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 11:04:50 -0700
MIME-Version: 1.0
In-Reply-To: <20201022095310.GB61349@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-7-andre.guedes@intel.com>
 <20201021142349.GB58344@ranger.igk.intel.com>
 <160331861110.64680.5464177597166949008@lsachorn-mobl.amr.corp.intel.com>
 <20201022095310.GB61349@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 22 Oct 2020 11:04:49 -0700
Message-ID: <160338988934.80318.13500288333733608305@skottana-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 6/9] igc: Add Initial XDP support
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

Hi Maciej,

Quoting Maciej Fijalkowski (2020-10-22 02:53:10)
> > > > @@ -1932,24 +1939,37 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> > > >  
> > > >               rx_buffer = igc_get_rx_buffer(rx_ring, size);
> > > >  
> > > > -             if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> > > > -                     void *pktbuf = page_address(rx_buffer->page) +
> > > > -                                    rx_buffer->page_offset;
> > > > +             pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
> > > >  
> > > > +             if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> > > >                       timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> > > >                                                       pktbuf);
> > > >                       pkt_offset = IGC_TS_HDR_LEN;
> > > >                       size -= IGC_TS_HDR_LEN;
> > > >               }
> > > >  
> > > > -             /* retrieve a buffer from the ring */
> > > > -             if (skb)
> > > > +             if (!skb) {
> > > > +                     struct igc_adapter *adapter = q_vector->adapter;
> > > > +
> > > > +                     xdp.data = pktbuf + pkt_offset;
> > > > +                     xdp.data_end = xdp.data + size;
> > > > +                     xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
> > > 
> > > This needs some fixing. You're saying that build_skb() can't be currently
> > > used which means that the headroom given for XDP will always be zero.
> > > 
> > > You need to either teach igc_rx_offset to return XDP_PACKET_HEADROOM for
> > > case when ring is not using build_skb() or make build_skb() usable.
> > 
> > The xdp headroom doesn't seem to be required to support XDP_PASS, XDP_DROP and
> > XDP_ABORTED actions, which is the goal of this patch. That was the rationale to
> > not change igc_rx_offset() in this patch.
> > 
> > The igc_rx_offset() helper is updated in the next patch which adds support for
> > XDP_TX action since it requires xdp headroom.
> 
> Sorry when I wrote that I haven't looked at next patch.
> The thing is that you can have a bpf program that will do the
> encapsulation and return XDP_PASS for example. For encapsulation you need
> to provide a headroom.

Understood, thanks for the example. I was not aware of the encapsulation +
XDP_PASS case. I'll fix this in the v2.

> > > > @@ -3881,6 +3901,11 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
> > > >       int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
> > > 
> > > I think I was mentioning it with igb xdp review, shouldn't we take double
> > > vlan header into account?
> > 
> > Good question. It seems like we should take it into consideration when updating
> > adapter->max_frame_size later in the igc_change_mtu(). However, note that in
> > the code added below, we check 'new_mtu', not 'max_frame', so with or without
> > double tagging it should do the right thing.
> 
> Hm yeah but I think it should be fixed anyway even without xdp being in
> picture?

Agreed. I can provide a separate patch soon.

Cheers,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
