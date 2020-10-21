Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B811B2954B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 00:16:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 735B787155;
	Wed, 21 Oct 2020 22:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nJcbEMqLHfNG; Wed, 21 Oct 2020 22:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D33BC87149;
	Wed, 21 Oct 2020 22:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 720BC1BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E5718711D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sst2kzHOdNHr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 22:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B19A87103
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:16:52 +0000 (UTC)
IronPort-SDR: ozdh8+xwjqRHjSESgniVx7Wi2ESIziOs+fYCTN5TR+YmOZp2AMm+mLHbhZGhitWIuEvaxXrPc/
 SSKGuYsi2olg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="147300787"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="147300787"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 15:16:52 -0700
IronPort-SDR: e926iuFj+u1gpjWStewioMewKCilEAvFp02W5YJGscAAl8dzjW66Umn/ZpkJ29YD+x9zd67Za4
 EyQOfjT6bbyg==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="321165374"
Received: from lsachorn-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.138.249])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 15:16:51 -0700
MIME-Version: 1.0
In-Reply-To: <20201021142349.GB58344@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-7-andre.guedes@intel.com>
 <20201021142349.GB58344@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed, 21 Oct 2020 15:16:51 -0700
Message-ID: <160331861110.64680.5464177597166949008@lsachorn-mobl.amr.corp.intel.com>
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

Thank you for your review.

Quoting Maciej Fijalkowski (2020-10-21 07:23:49)
> On Thu, Oct 08, 2020 at 07:53:46PM -0700, Andre Guedes wrote:
> > This patch adds the initial XDP support to the igc driver. For now,
> > only XDP_PASS, XDP_DROP, XDP_ABORT actions are supported. Upcoming
> 
> s/XDP_ABORT/XDP_ABORTED

Good catch, I'll fix it.

> > @@ -1592,11 +1593,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
> >  
> >  static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
> >                                        struct igc_rx_buffer *rx_buffer,
> > -                                      unsigned int size, int pkt_offset,
> > +                                      struct xdp_buff *xdp,
> >                                        ktime_t timestamp)
> >  {
> > -     void *va = page_address(rx_buffer->page) + rx_buffer->page_offset +
> > -                pkt_offset;
> > +     void *va = xdp->data;
> > +     unsigned int size = xdp->data_end - xdp->data;
> >       unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
> >       unsigned int headlen;
> >       struct sk_buff *skb;
> 
> RCT

We can move 'va' declaration around, but note that 'size' is utilized to
calculate 'truesize' so the RCT won't be perfect still.

> > @@ -1932,24 +1939,37 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> >  
> >               rx_buffer = igc_get_rx_buffer(rx_ring, size);
> >  
> > -             if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> > -                     void *pktbuf = page_address(rx_buffer->page) +
> > -                                    rx_buffer->page_offset;
> > +             pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
> >  
> > +             if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> >                       timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> >                                                       pktbuf);
> >                       pkt_offset = IGC_TS_HDR_LEN;
> >                       size -= IGC_TS_HDR_LEN;
> >               }
> >  
> > -             /* retrieve a buffer from the ring */
> > -             if (skb)
> > +             if (!skb) {
> > +                     struct igc_adapter *adapter = q_vector->adapter;
> > +
> > +                     xdp.data = pktbuf + pkt_offset;
> > +                     xdp.data_end = xdp.data + size;
> > +                     xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
> 
> This needs some fixing. You're saying that build_skb() can't be currently
> used which means that the headroom given for XDP will always be zero.
> 
> You need to either teach igc_rx_offset to return XDP_PACKET_HEADROOM for
> case when ring is not using build_skb() or make build_skb() usable.

The xdp headroom doesn't seem to be required to support XDP_PASS, XDP_DROP and
XDP_ABORTED actions, which is the goal of this patch. That was the rationale to
not change igc_rx_offset() in this patch.

The igc_rx_offset() helper is updated in the next patch which adds support for
XDP_TX action since it requires xdp headroom.

> > +                     xdp_set_data_meta_invalid(&xdp);
> 
> What about xdp.frame_sz?

Same as above.

> > @@ -3881,6 +3901,11 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
> >       int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
> 
> I think I was mentioning it with igb xdp review, shouldn't we take double
> vlan header into account?

Good question. It seems like we should take it into consideration when updating
adapter->max_frame_size later in the igc_change_mtu(). However, note that in
the code added below, we check 'new_mtu', not 'max_frame', so with or without
double tagging it should do the right thing.

> > +     if (igc_xdp_is_enabled(adapter) && new_mtu > ETH_DATA_LEN) {
> > +             netdev_dbg(netdev, "Jumbo frames not supported with XDP");
> > +             return -EINVAL;
> > +     }
> > +

[...]

> > +struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> > +                              struct xdp_buff *xdp)
> > +{
> > +     struct bpf_prog *prog;
> > +     int res;
> > +     u32 act;
> > +
> > +     rcu_read_lock();
> > +
> > +     prog = READ_ONCE(adapter->xdp_prog);
> > +     if (!prog)
> > +             goto unlock;
> 
> res will be uninitialized if you hit this goto.

Good catch, I'll fix it.

Best,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
