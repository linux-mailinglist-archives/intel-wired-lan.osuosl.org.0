Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2252954B8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Oct 2020 00:17:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 836348773C;
	Wed, 21 Oct 2020 22:17:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JiiZe4plTqB; Wed, 21 Oct 2020 22:17:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BC1087705;
	Wed, 21 Oct 2020 22:17:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 458141BF387
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:17:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41167876C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:17:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L9KIJDve4Nrr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Oct 2020 22:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2916D87165
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Oct 2020 22:17:06 +0000 (UTC)
IronPort-SDR: fuKEpBDhI99t1IUtQqC/VDgzl9qhWNmFFwsAvfcZX1h4+bbEzM3sWZ8hxZPTSQcCHNi3QKAVnl
 7pq0m9U5WW0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="146733069"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="146733069"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 15:17:05 -0700
IronPort-SDR: 4WSg/ayMutnXAPbfBZqJUnu9NMDySucmIblXR5eU2jWFIzmmKleuqvOYYz8xDGsgJ40S8e0Ked
 4bUUqBVnulVw==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="321165420"
Received: from lsachorn-mobl.amr.corp.intel.com (HELO localhost)
 ([10.212.138.249])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 15:17:04 -0700
MIME-Version: 1.0
In-Reply-To: <20201021145742.GC58344@ranger.igk.intel.com>
References: <20201009025349.4037-1-andre.guedes@intel.com>
 <20201009025349.4037-8-andre.guedes@intel.com>
 <20201021145742.GC58344@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Wed, 21 Oct 2020 15:17:04 -0700
Message-ID: <160331862448.64680.18381150586195546148@lsachorn-mobl.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH 7/9] igc: Add support for XDP_TX action
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

Quoting Maciej Fijalkowski (2020-10-21 07:57:42)
> On Thu, Oct 08, 2020 at 07:53:47PM -0700, Andre Guedes wrote:
> > This patch adds support for XDP_TX action which enables XDP programs to
> > transmit back receiving frames.
> > 
> > The main changes in igc_xdp.c are related to the transmission of the
> > packet (e.g. select the transmission queue, prepare buffer, prepare
> > descriptor) while the changes in igc_main.c are related to tx_buffer
> > management and XDP resources setup required to perform the XDP_TX
> > action.
> > 
> > By default, the driver uses rx buffers with 2 KB size. When XDP is
> > enabled, it uses larger buffers so we have enough space to accommodate
> > the headroom and tailroom required by XDP infrastructure. While the
> > driver had already code to handle larger buffers (IGC_RING_FLAG_RX_3K_
> > BUFFER flag), it was missing the set/clear helpers that enable/disable
> > that feature so this patch also introduces these missing helpers.
> 
> Ugh. This belongs to the previous patch.

Hope the reply on the previous patch clarifies why this is done in this patch
instead.

> > +/* This function requires __netif_tx_lock is held by the caller. */
> > +static int igc_xdp_init_tx_descriptor(struct igc_ring *ring,
> > +                                   struct xdp_frame *xdpf)
> > +{
> > +     struct igc_tx_buffer *buffer;
> > +     union igc_adv_tx_desc *desc;
> > +     u32 cmd_type, olinfo_status;
> > +     int err;
> > +
> > +     if (!igc_desc_unused(ring))
> > +             return -EBUSY;
> > +
> > +     buffer = &ring->tx_buffer_info[ring->next_to_use];
> > +     err = igc_xdp_init_tx_buffer(buffer, xdpf, ring);
> > +     if (err)
> > +             return err;
> > +
> > +     cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
> > +                IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
> > +                buffer->bytecount;
> > +     olinfo_status = buffer->bytecount << IGC_ADVTXD_PAYLEN_SHIFT;
> > +
> > +     desc = IGC_TX_DESC(ring, ring->next_to_use);
> > +     desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> > +     desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> > +     desc->read.buffer_addr = cpu_to_le64(dma_unmap_addr(buffer, dma));
> > +
> > +     netdev_tx_sent_queue(txring_txq(ring), buffer->bytecount);
> 
> So you're letting stack know that you sent a frame but that's not what is
> happening because you wait with bumping the tail until you are done with
> napi rx loop.
> 
> this probably should be called during the tx irq cleanup.

I see your point, and I think calling it during tx irq cleanup should work too.

The rationale to put it here was to keep it similar to ndo_start_xmit's flow
i.e. the stack is notified before packets are actually transmitted by
hardware. Also, if we do it in tx irq cleanup, we probably need to acquire
__netif_tx_lock to ensure we don't have a race conditions with ndo_start_xmit.

Let me know your thoughts here.

> > +
> > +     buffer->next_to_watch = desc;
> > +
> > +     ring->next_to_use = (ring->next_to_use + 1) % ring->count;
> 
> Please avoid modulos.

Sure, I'll do it. Just out of curiosity, why modulo operation should be
avoided?

> > +void igc_xdp_unregister_rxq_info(struct igc_ring *ring)
> > +{
> > +     xdp_rxq_info_unreg_mem_model(&ring->xdp_rxq);
> 
> xdp_rxq_info_unreg will call internally the xdp_rxq_info_unreg_mem_model
> so I think the call above is redundant.

Yep, you're right, this is redundant. I'll remove it.

Thanks,
Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
