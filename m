Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 445602E03B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 02:13:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EBCE386896;
	Tue, 22 Dec 2020 01:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKm7oHN4Ft15; Tue, 22 Dec 2020 01:13:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2B7D1868CE;
	Tue, 22 Dec 2020 01:13:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C17DB1BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B9D1823115
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iCsuUKGswU4b for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 01:13:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 23DF2230F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 01:13:49 +0000 (UTC)
IronPort-SDR: y0emI68iw0lnBpV5R9Ab/6UctNLXUrLj5ZjPajlqBueLD96Ev0aYj7DyN1AnNMA0P/eLlZsk//
 Pq6AKETzf+xQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="155594677"
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="155594677"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:49 -0800
IronPort-SDR: lo2mZJ/Gvt6CjRm6gkkUZn4ijNdD/xjmvO2QCHfOglK35R9sabRPInXilJuH2LQW+wTnrqvrJs
 3xHzKXs7JEZQ==
X-IronPort-AV: E=Sophos;i="5.78,437,1599548400"; d="scan'208";a="457034879"
Received: from bgdudka-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.1.108])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 17:13:48 -0800
MIME-Version: 1.0
In-Reply-To: <20201221230905.GD2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-9-andre.guedes@intel.com>
 <20201221230905.GD2943@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 21 Dec 2020 17:13:48 -0800
Message-ID: <160859962833.45139.11189791470425967959@bgdudka-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 08/10] igc: Replace IGC_TX_FLAGS_XDP
 flag by an enum
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

Quoting Maciej Fijalkowski (2020-12-21 15:09:05)
> > @@ -191,10 +191,18 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
> >       while (i != tx_ring->next_to_use) {
> >               union igc_adv_tx_desc *eop_desc, *tx_desc;
> >  
> > -             if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
> > +             switch (tx_buffer->type) {
> > +             case IGC_TX_BUFFER_TYPE_XDP:
> >                       xdp_return_frame(tx_buffer->xdpf);
> > -             else
> > +                     break;
> > +             case IGC_TX_BUFFER_TYPE_SKB:
> >                       dev_kfree_skb_any(tx_buffer->skb);
> > +                     break;
> > +             default:
> > +                     netdev_warn_once(tx_ring->netdev,
> > +                                      "Unknown tx buffer type\n");
> > +                     break;
> > +             }
> 
> nit: you've been doing some effort in order to reduce the code duplication
> as much as it's possible, yet here you introduce duplicated code for that
> desc cleanup :p maybe add a little helper for that as well?

Note that the handling in IGC_TX_BUFFER_TYPE_SKB case is different in
igc_clean_tx_irq(): dev_kfree_skb_any() vs napi_consume_skb().
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
