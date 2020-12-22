Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8B72E0FA4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 22:10:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6D6B86984;
	Tue, 22 Dec 2020 21:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZzeD4tpnX-K; Tue, 22 Dec 2020 21:10:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 54EC88698E;
	Tue, 22 Dec 2020 21:10:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E08C1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 21:10:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 06D0187237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 21:10:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJB-s6SGxEf8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 21:10:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C683887236
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 21:10:03 +0000 (UTC)
IronPort-SDR: hC6o85M544RULJ1aaigW0r+y3A0ycRcy1XMy8wY9gnEJASxPVTLpLO1eXMFWi1BBwiH0vi4n1m
 dY7m5nrzNu4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9843"; a="175148826"
X-IronPort-AV: E=Sophos;i="5.78,440,1599548400"; d="scan'208";a="175148826"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 13:09:56 -0800
IronPort-SDR: dLw1g7XhP9t7BMnmFuZicFB7l5aXWXcnqEqlfdapm+z7FKWgxaLrbdBDo53YqrSQkUrRB21lrx
 5et4JYjdie2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,440,1599548400"; d="scan'208";a="457639597"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 22 Dec 2020 13:09:55 -0800
Date: Tue, 22 Dec 2020 21:59:25 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222205925.GA10157@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-10-andre.guedes@intel.com>
 <20201222131428.GG2943@ranger.igk.intel.com>
 <160865901948.65485.17595669491129234170@ticela-az-003.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160865901948.65485.17595669491129234170@ticela-az-003.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH 09/10] igc: Enable RX via AF_XDP
 zero-copy
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

On Tue, Dec 22, 2020 at 09:43:39AM -0800, Andre Guedes wrote:
> Quoting Maciej Fijalkowski (2020-12-22 05:14:28)
> > > +static int igc_clean_rx_irq_zc(struct igc_q_vector *q_vector, const int budget)
> > > +{
> > > +     struct igc_adapter *adapter = q_vector->adapter;
> > > +     struct igc_ring *ring = q_vector->rx.ring;
> > > +     u16 cleaned_count = igc_desc_unused(ring);
> > > +     int total_bytes = 0, total_packets = 0;
> > > +     struct bpf_prog *prog;
> > > +     bool failure = false;
> > > +     int xdp_status = 0;
> > > +
> > > +     rcu_read_lock();
> > > +
> > > +     prog = READ_ONCE(adapter->xdp_prog);
> > > +
> > > +     while (likely(total_packets < budget)) {
> > > +             union igc_adv_rx_desc *desc;
> > > +             struct igc_rx_buffer *bi;
> > > +             unsigned int size;
> > > +             int res;
> > > +
> > > +             desc = IGC_RX_DESC(ring, ring->next_to_clean);
> > > +             size = le16_to_cpu(desc->wb.upper.length);
> > > +             if (!size)
> > > +                     break;
> > > +
> > > +             /* This memory barrier is needed to keep us from reading
> > > +              * any other fields out of the rx_desc until we know the
> > > +              * descriptor has been written back
> > > +              */
> > > +             dma_rmb();
> > > +
> > > +             bi = &ring->rx_buffer_info[ring->next_to_clean];
> > > +
> > > +             if (igc_test_staterr(desc, IGC_RXDADV_STAT_TSIP)) {
> > > +                     /* FIXME: For now, if packet buffer contains timestamp
> > > +                      * information, we discard it. Once XDP infrastructe
> > 
> > nit: s/infrastructe/infrastructure
> 
> Thanks, I'll fix it in the v2.
> 
> > > +int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
> > > +{
> > > +     struct igc_adapter *adapter = netdev_priv(dev);
> > > +     struct igc_q_vector *q_vector;
> > > +     struct igc_ring *ring;
> > > +
> > > +     if (test_bit(__IGC_DOWN, &adapter->state))
> > > +             return -ENETDOWN;
> > > +
> > > +     if (!igc_xdp_is_enabled(adapter))
> > > +             return -ENXIO;
> > > +
> > > +     if (queue_id >= adapter->num_rx_queues)
> > > +             return -EINVAL;
> > > +
> > > +     ring = adapter->rx_ring[queue_id];
> > > +
> > > +     if (!ring->xsk_pool)
> > > +             return -ENXIO;
> > 
> > ring local variable feels a bit unnecessary.
> 
> It's just for the sake of code readability. I thought it reads better than:
> 
> 	if (!adapter->rx_ring[queue_id]->xsk_pool)
> 		return -ENXIO;

Yeah, okay then.

> 
> > > +static int igc_xdp_enable_pool(struct igc_adapter *adapter,
> > > +                            struct xsk_buff_pool *pool, u16 queue_id)
> > > +{
> > > +     struct net_device *ndev = adapter->netdev;
> > > +     struct device *dev = &adapter->pdev->dev;
> > > +     struct igc_ring *rx_ring;
> > > +     struct napi_struct *napi;
> > > +     bool needs_reset;
> > > +     u32 frame_size;
> > > +     int err;
> > > +
> > > +     if (queue_id >= adapter->num_rx_queues)
> > > +             return -EINVAL;
> > > +
> > > +     frame_size = xsk_pool_get_rx_frame_size(pool);
> > > +     if (frame_size < ETH_FRAME_LEN + VLAN_HLEN * 2) {
> > > +             /* For now, when XDP is enabled, the driver doesn't support
> > > +              * frames that span over multiple buffers. The max frame size
> > > +              * considered here is the ethernet frame size + vlan double
> > > +              * tagging.
> > > +              */
> > 
> > I don't really follow that. You check if chunk size is less than
> > ETH_FRAME_LEN + VLAN_HLEN * 2. chunk size will be at least 2k if I recall
> > correctly. How is that related to fragmented buffers?
> 
> Note that the code above checks the xsk frame size, not chunk size.
> 
> Yes, the chunk mim size is 2k indeed. However, if I'm reading the code
> correctly, the umem headroom can have an arbitrary value defined by the user
> (see xdp_umem_reg()). In this case, the xsk frame size could potentially be
> less than the ethernet frame size.

Ok I see. So you actually meant that for lower frame size given to HW we
would start to fragment the frames?

Comment was a bit unclear, hence my confusion.

Anyway, I feel like this is something generic that should be checked
earlier at xsk code? Meaning, when we actually create the umem with user
provided config at setsockopt?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
