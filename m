Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 538E72E0A1C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Dec 2020 13:43:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEF7685FA7;
	Tue, 22 Dec 2020 12:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zeRBFqIQT-zr; Tue, 22 Dec 2020 12:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F077860C4;
	Tue, 22 Dec 2020 12:43:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AE7041BF34D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 12:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A68F187288
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 12:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J9MFmdwh-cxC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Dec 2020 12:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E6B387286
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Dec 2020 12:43:47 +0000 (UTC)
IronPort-SDR: 0dpW7/qN7Fe7i28M46adqkLfuFYcEwOfBc26iNS1r2zCcOFz9MCHxnClmGugbc95UJ4Qr3D+Uv
 pSZ7geO18zuA==
X-IronPort-AV: E=McAfee;i="6000,8403,9842"; a="176009113"
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="176009113"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2020 04:43:42 -0800
IronPort-SDR: QL+EG7rb3B+5MlkzzNEZG72ErlRqIQklEcvn8lD1rCwq4yyT3pLI3d/0UhHvG4gVRZmmQm4kkI
 PNZisUg9ViWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,438,1599548400"; d="scan'208";a="392312907"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga002.fm.intel.com with ESMTP; 22 Dec 2020 04:43:41 -0800
Date: Tue, 22 Dec 2020 13:33:14 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Andre Guedes <andre.guedes@intel.com>
Message-ID: <20201222123314.GF2943@ranger.igk.intel.com>
References: <20201217202415.77891-1-andre.guedes@intel.com>
 <20201217202415.77891-9-andre.guedes@intel.com>
 <20201221230905.GD2943@ranger.igk.intel.com>
 <160859962833.45139.11189791470425967959@bgdudka-mobl.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160859962833.45139.11189791470425967959@bgdudka-mobl.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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

On Mon, Dec 21, 2020 at 05:13:48PM -0800, Andre Guedes wrote:
> Quoting Maciej Fijalkowski (2020-12-21 15:09:05)
> > > @@ -191,10 +191,18 @@ static void igc_clean_tx_ring(struct igc_ring *tx_ring)
> > >       while (i != tx_ring->next_to_use) {
> > >               union igc_adv_tx_desc *eop_desc, *tx_desc;
> > >  
> > > -             if (tx_buffer->tx_flags & IGC_TX_FLAGS_XDP)
> > > +             switch (tx_buffer->type) {
> > > +             case IGC_TX_BUFFER_TYPE_XDP:
> > >                       xdp_return_frame(tx_buffer->xdpf);
> > > -             else
> > > +                     break;
> > > +             case IGC_TX_BUFFER_TYPE_SKB:
> > >                       dev_kfree_skb_any(tx_buffer->skb);
> > > +                     break;
> > > +             default:
> > > +                     netdev_warn_once(tx_ring->netdev,
> > > +                                      "Unknown tx buffer type\n");
> > > +                     break;
> > > +             }
> > 
> > nit: you've been doing some effort in order to reduce the code duplication
> > as much as it's possible, yet here you introduce duplicated code for that
> > desc cleanup :p maybe add a little helper for that as well?
> 
> Note that the handling in IGC_TX_BUFFER_TYPE_SKB case is different in
> igc_clean_tx_irq(): dev_kfree_skb_any() vs napi_consume_skb().

Yikes! Sorry, it was late.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
