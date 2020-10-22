Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B883D295C5B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 12:02:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3A45420535;
	Thu, 22 Oct 2020 10:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Br69BYl9NED; Thu, 22 Oct 2020 10:02:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E07120531;
	Thu, 22 Oct 2020 10:02:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90CD11BF834
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 10:02:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C626870A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 10:02:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onWrolv2IhZP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Oct 2020 10:02:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4DD7486C90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Oct 2020 10:02:43 +0000 (UTC)
IronPort-SDR: uvPIguXb/0n97SzyDzGJrpaDNkIZBAS5IWihihmRM9W2nMlL/tpozPmYNSHD5i1VFGK6dCkFwc
 OoXfVMtAitfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="167599611"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="167599611"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 03:02:42 -0700
IronPort-SDR: mu9aPl0m3tfnOoZmaL8nNEDKf+/qDRel+JvtzWmRm31TxrVRA7Zuc+6RO8ToRQo8UZ6q4ggWq3
 7sZ+ogV3hkGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="332899828"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 22 Oct 2020 03:02:39 -0700
Date: Thu, 22 Oct 2020 11:53:10 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201022095310.GB61349@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-7-andre.guedes@intel.com>
 <20201021142349.GB58344@ranger.igk.intel.com>
 <160331861110.64680.5464177597166949008@lsachorn-mobl.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160331861110.64680.5464177597166949008@lsachorn-mobl.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Wed, Oct 21, 2020 at 03:16:51PM -0700, Andre Guedes wrote:
> Hi Maciej,
> 
> Thank you for your review.
> 
> Quoting Maciej Fijalkowski (2020-10-21 07:23:49)
> > On Thu, Oct 08, 2020 at 07:53:46PM -0700, Andre Guedes wrote:
> > > This patch adds the initial XDP support to the igc driver. For now,
> > > only XDP_PASS, XDP_DROP, XDP_ABORT actions are supported. Upcoming
> > 
> > s/XDP_ABORT/XDP_ABORTED
> 
> Good catch, I'll fix it.
> 
> > > @@ -1592,11 +1593,11 @@ static struct sk_buff *igc_build_skb(struct igc_ring *rx_ring,
> > >  
> > >  static struct sk_buff *igc_construct_skb(struct igc_ring *rx_ring,
> > >                                        struct igc_rx_buffer *rx_buffer,
> > > -                                      unsigned int size, int pkt_offset,
> > > +                                      struct xdp_buff *xdp,
> > >                                        ktime_t timestamp)
> > >  {
> > > -     void *va = page_address(rx_buffer->page) + rx_buffer->page_offset +
> > > -                pkt_offset;
> > > +     void *va = xdp->data;
> > > +     unsigned int size = xdp->data_end - xdp->data;
> > >       unsigned int truesize = igc_get_rx_frame_truesize(rx_ring, size);
> > >       unsigned int headlen;
> > >       struct sk_buff *skb;
> > 
> > RCT
> 
> We can move 'va' declaration around, but note that 'size' is utilized to
> calculate 'truesize' so the RCT won't be perfect still.

Right, but va/size misorder was the thing that caught my attention.

> 
> > > @@ -1932,24 +1939,37 @@ static int igc_clean_rx_irq(struct igc_q_vector *q_vector, const int budget)
> > >  
> > >               rx_buffer = igc_get_rx_buffer(rx_ring, size);
> > >  
> > > -             if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> > > -                     void *pktbuf = page_address(rx_buffer->page) +
> > > -                                    rx_buffer->page_offset;
> > > +             pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
> > >  
> > > +             if (igc_test_staterr(rx_desc, IGC_RXDADV_STAT_TSIP)) {
> > >                       timestamp = igc_ptp_rx_pktstamp(q_vector->adapter,
> > >                                                       pktbuf);
> > >                       pkt_offset = IGC_TS_HDR_LEN;
> > >                       size -= IGC_TS_HDR_LEN;
> > >               }
> > >  
> > > -             /* retrieve a buffer from the ring */
> > > -             if (skb)
> > > +             if (!skb) {
> > > +                     struct igc_adapter *adapter = q_vector->adapter;
> > > +
> > > +                     xdp.data = pktbuf + pkt_offset;
> > > +                     xdp.data_end = xdp.data + size;
> > > +                     xdp.data_hard_start = pktbuf - igc_rx_offset(rx_ring);
> > 
> > This needs some fixing. You're saying that build_skb() can't be currently
> > used which means that the headroom given for XDP will always be zero.
> > 
> > You need to either teach igc_rx_offset to return XDP_PACKET_HEADROOM for
> > case when ring is not using build_skb() or make build_skb() usable.
> 
> The xdp headroom doesn't seem to be required to support XDP_PASS, XDP_DROP and
> XDP_ABORTED actions, which is the goal of this patch. That was the rationale to
> not change igc_rx_offset() in this patch.
> 
> The igc_rx_offset() helper is updated in the next patch which adds support for
> XDP_TX action since it requires xdp headroom.

Sorry when I wrote that I haven't looked at next patch.
The thing is that you can have a bpf program that will do the
encapsulation and return XDP_PASS for example. For encapsulation you need
to provide a headroom.

> 
> > > +                     xdp_set_data_meta_invalid(&xdp);
> > 
> > What about xdp.frame_sz?
> 
> Same as above.
> 
> > > @@ -3881,6 +3901,11 @@ static int igc_change_mtu(struct net_device *netdev, int new_mtu)
> > >       int max_frame = new_mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
> > 
> > I think I was mentioning it with igb xdp review, shouldn't we take double
> > vlan header into account?
> 
> Good question. It seems like we should take it into consideration when updating
> adapter->max_frame_size later in the igc_change_mtu(). However, note that in
> the code added below, we check 'new_mtu', not 'max_frame', so with or without
> double tagging it should do the right thing.

Hm yeah but I think it should be fixed anyway even without xdp being in
picture?

> 
> > > +     if (igc_xdp_is_enabled(adapter) && new_mtu > ETH_DATA_LEN) {
> > > +             netdev_dbg(netdev, "Jumbo frames not supported with XDP");
> > > +             return -EINVAL;
> > > +     }
> > > +
> 
> [...]
> 
> > > +struct sk_buff *igc_xdp_run_prog(struct igc_adapter *adapter,
> > > +                              struct xdp_buff *xdp)
> > > +{
> > > +     struct bpf_prog *prog;
> > > +     int res;
> > > +     u32 act;
> > > +
> > > +     rcu_read_lock();
> > > +
> > > +     prog = READ_ONCE(adapter->xdp_prog);
> > > +     if (!prog)
> > > +             goto unlock;
> > 
> > res will be uninitialized if you hit this goto.
> 
> Good catch, I'll fix it.
> 
> Best,
> Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
