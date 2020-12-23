Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021202E20D6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Dec 2020 20:27:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 702778730A;
	Wed, 23 Dec 2020 19:27:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h81QuRtyAzxl; Wed, 23 Dec 2020 19:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 455768721C;
	Wed, 23 Dec 2020 19:27:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D26CC1BF405
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 19:27:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC84F20417
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 19:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fuvkJ4YnNCuz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Dec 2020 19:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 9CF04203F7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Dec 2020 19:27:12 +0000 (UTC)
IronPort-SDR: CflvwfFmuguV7oNR9TodobWZcORnXZioIAXPvJfPZK/5/DN+joqYGDrE/Oe/NBVCKZ0kJRjX1H
 gTYClFkA8wJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9844"; a="240147278"
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="240147278"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 11:27:06 -0800
IronPort-SDR: qT9NkIzIfOau3ediyUJ2lqig9Lz5qpMU5w8FVJCXGtg0IZLqNSJ6hpomx7LvFLRUZ0AHTNYL8Q
 6WN1t7XHjsag==
X-IronPort-AV: E=Sophos;i="5.78,442,1599548400"; d="scan'208";a="565419269"
Received: from eburton-mobl.amr.corp.intel.com (HELO localhost)
 ([10.209.148.11])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2020 11:27:05 -0800
MIME-Version: 1.0
In-Reply-To: <20201222205925.GA10157@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-10-andre.guedes@intel.com>
 <20201222131428.GG2943@ranger.igk.intel.com>
 <160865901948.65485.17595669491129234170@ticela-az-003.amr.corp.intel.com>
 <20201222205925.GA10157@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed, 23 Dec 2020 11:27:04 -0800
Message-ID: <160875162462.73444.8887896326456165945@gstoner1-mobl1.amr.corp.intel.com>
User-Agent: alot/0.9.1
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

Quoting Maciej Fijalkowski (2020-12-22 12:59:25)
> > > > +static int igc_xdp_enable_pool(struct igc_adapter *adapter,
> > > > +                            struct xsk_buff_pool *pool, u16 queue_id)
> > > > +{
> > > > +     struct net_device *ndev = adapter->netdev;
> > > > +     struct device *dev = &adapter->pdev->dev;
> > > > +     struct igc_ring *rx_ring;
> > > > +     struct napi_struct *napi;
> > > > +     bool needs_reset;
> > > > +     u32 frame_size;
> > > > +     int err;
> > > > +
> > > > +     if (queue_id >= adapter->num_rx_queues)
> > > > +             return -EINVAL;
> > > > +
> > > > +     frame_size = xsk_pool_get_rx_frame_size(pool);
> > > > +     if (frame_size < ETH_FRAME_LEN + VLAN_HLEN * 2) {
> > > > +             /* For now, when XDP is enabled, the driver doesn't support
> > > > +              * frames that span over multiple buffers. The max frame size
> > > > +              * considered here is the ethernet frame size + vlan double
> > > > +              * tagging.
> > > > +              */
> > > 
> > > I don't really follow that. You check if chunk size is less than
> > > ETH_FRAME_LEN + VLAN_HLEN * 2. chunk size will be at least 2k if I recall
> > > correctly. How is that related to fragmented buffers?
> > 
> > Note that the code above checks the xsk frame size, not chunk size.
> > 
> > Yes, the chunk mim size is 2k indeed. However, if I'm reading the code
> > correctly, the umem headroom can have an arbitrary value defined by the user
> > (see xdp_umem_reg()). In this case, the xsk frame size could potentially be
> > less than the ethernet frame size.
> 
> Ok I see. So you actually meant that for lower frame size given to HW we
> would start to fragment the frames?

Yes.

> Comment was a bit unclear, hence my confusion.

I'll try to make that comment more clear in the v2.

> Anyway, I feel like this is something generic that should be checked
> earlier at xsk code? Meaning, when we actually create the umem with user
> provided config at setsockopt?

Yeah, that might be a good idea. For now, I'll keep the check in the driver
since it doesn't work properly with smaller sizes. In the future, if we have
that check in xsk layer, we can remove it from the driver.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
