Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8FC16AD3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Oct 2025 20:53:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48CCA40693;
	Tue, 28 Oct 2025 19:53:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 416BSyPXPFPh; Tue, 28 Oct 2025 19:53:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9DF5F406A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761681215;
	bh=DAMPeRTfP7F9Ux9fsemk1hmoAVSXfpNUBAJiUp8zNkw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ed7cQZu2/ISraHsm5f+1vOhVV7BJSy/X3Be6jrP1uXpD1HtMbr3bIX+4l6Glh6sXk
	 HWAMIXXdXmgYdxHJz4+LdourYkSdf/fe1z//LGF+maDLEctHwv/FJAIKVsDrWlKSIx
	 3PRwX3E4HPI62cgGT4vLaFY1WwWiGkRVroYFIsmki7VQOV7Bbo7F3WVa4N+EBd8Ljc
	 Qz92dz1PX8Aab7JveQyqvtbCwiozHd7HEyfQrg6MZTMFjHmmMCSvh+pLdgpmF+iPuK
	 Lc6zJJeAdwvUZPOwUtqH7F70IpKRqo4Z2gXSG/F6fQlPYTS1xtkbbxgD3Y2ip1EEK/
	 vn7rx/kCcaq3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9DF5F406A0;
	Tue, 28 Oct 2025 19:53:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id AC0C922F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 19:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A14AF40688
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 19:53:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QPb3XQksoFkp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Oct 2025 19:53:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 09F904066A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 09F904066A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 09F904066A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Oct 2025 19:53:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 33B9F408F1;
 Tue, 28 Oct 2025 19:53:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9C24C4CEE7;
 Tue, 28 Oct 2025 19:53:30 +0000 (UTC)
Date: Tue, 28 Oct 2025 19:53:28 +0000
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <aQEfOEwOlG8SVMrh@horms.kernel.org>
References: <20251006162053.3550824-1-aleksander.lobakin@intel.com>
 <aP-cgMiJ-y_PX7Xa@horms.kernel.org>
 <5800be3b-9347-452e-97df-d0e7d939fadf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5800be3b-9347-452e-97df-d0e7d939fadf@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761681213;
 bh=50jNbJSIfsjrwnURWYy7zkQMXptHmNshM9nR/RRLDjU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=izqZ1AVPcpfpqu/CHG6bJBdKPzx5yQwDBl/FuRhKqhr1jZwdTaMSl/Z4oZLbrsDVn
 ypm58/lPN4cvzD1KPRx/N5fhxVcOBVsqgK93TJm2iJ5ME5DQHWa2SLg+vzmHyeeA9H
 zZpImkGB5l68gjgLsHR+f2FWOWoL00X+JyPvkFccEr0SXmT8cJhEhmkbQ0YSekBjke
 lAVkoBchC9V5OBIeh2T9JAitm8spFr6gfjHXtEiszLzk/iG/2XCVQHQljMcarP0zQS
 BYnRa/glKB2XggJ0vQR2xYS+Iz97zZiqaTjnvcNmS9NUQY2uG3NPO3TDjnoBtLKpll
 Mj6KQkfnjRkUg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=izqZ1AVP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: implement configurable
 header split for regular Rx
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 27, 2025 at 06:18:01PM +0100, Alexander Lobakin wrote:
> From: Simon Horman <horms@kernel.org>
> Date: Mon, 27 Oct 2025 16:23:28 +0000
> 
> > On Mon, Oct 06, 2025 at 06:20:53PM +0200, Alexander Lobakin wrote:
> >> Add second page_pool for header buffers to each Rx queue and ability
> >> to toggle the header split on/off using Ethtool (default to off to
> >> match the current behaviour).
> >> Unlike idpf, all HW backed up by ice doesn't require any W/As and
> >> correctly splits all types of packets as configured: after L4 headers
> >> for TCP/UDP/SCTP, after L3 headers for other IPv4/IPv6 frames, after
> >> the Ethernet header otherwise (in case of tunneling, same as above,
> >> but after innermost headers).
> >> This doesn't affect the XSk path as there are no benefits of having
> >> it there.
> >>
> >> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> >> ---
> >> Applies on top of Tony's next-queue, depends on Michał's Page Pool
> >> conversion series.
> >>
> >> Sending for review and validation purposes.
> >>
> >> Testing hints: traffic testing with and without header split enabled.
> >> The header split can be turned on/off using Ethtool:
> >>
> >> sudo ethtool -G <iface> tcp-data-split on (or off)
> > 
> > Nice, I'm very pleased to see this feature in the pipeline for the ice driver.
> 
> This is a prereq for io_uring/devmem support in ice which I'm currently
> finishing :>
> 
> (I know it's a bit overdue already, but I couldn't find a free time slot
>  earlier to implement this)

Great, I'm very pleased to hear io_uring/devmem support is in the pipeline.

> 
> > 
> > ...
> > 
> >> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > 
> > ...
> > 
> >> @@ -836,6 +858,20 @@ bool ice_alloc_rx_bufs(struct ice_rx_ring *rx_ring, unsigned int cleaned_count)
> >>  		 */
> >>  		rx_desc->read.pkt_addr = cpu_to_le64(addr);
> >>  
> >> +		if (!hdr_fq.pp)
> >> +			goto next;
> >> +
> >> +		addr = libeth_rx_alloc(&hdr_fq, ntu);
> >> +		if (addr == DMA_MAPPING_ERROR) {
> >> +			rx_ring->ring_stats->rx_stats.alloc_page_failed++;
> >> +
> >> +			libeth_rx_recycle_slow(fq.fqes[ntu].netmem);
> >> +			break;
> >> +		}
> >> +
> >> +		rx_desc->read.hdr_addr = cpu_to_le64(addr);
> >> +
> >> +next:
> > 
> > Is performance the reason that a goto is used here, rather than, say, putting
> > the conditional code in an if condition? Likewise in ice_clean_rx_irq?
> 
> Not the performance, but the thing that I can avoid introducing +1
> indentation level for 9 lines. I don't like big `if` blocks.
> IIRC there's no strong rule regarding this?
> 
> (same for ice_clean_rx_irq)

Ok. I'd lean towards an if condition. But I don't feel strongly about it.

> 
> > 
> >>  		rx_desc++;
> >>  		ntu++;
> >>  		if (unlikely(ntu == rx_ring->count)) {
> >> @@ -933,14 +969,16 @@ static int ice_clean_rx_irq(struct ice_rx_ring *rx_ring, int budget)
> >>  		unsigned int size;
> >>  		u16 stat_err_bits;
> >>  		u16 vlan_tci;
> >> +		bool rxe;
> >>  
> >>  		/* get the Rx desc from Rx ring based on 'next_to_clean' */
> >>  		rx_desc = ICE_RX_DESC(rx_ring, ntc);
> >>  
> >> -		/* status_error_len will always be zero for unused descriptors
> >> -		 * because it's cleared in cleanup, and overlaps with hdr_addr
> >> -		 * which is always zero because packet split isn't used, if the
> >> -		 * hardware wrote DD then it will be non-zero
> >> +		/*
> >> +		 * The DD bit will always be zero for unused descriptors
> >> +		 * because it's cleared in cleanup or when setting the DMA
> >> +		 * address of the header buffer, which never uses the DD bit.
> >> +		 * If the hardware wrote the descriptor, it will be non-zero.
> >>  		 */
> > 
> > The update to this comment feels like it could be a separate patch.
> > (I know, I often say something like that...)
> 
> But this update is tied closely to the header split itself. Before this
> patch, this update would make no sense as there are no header buffers.
> After this patch, this comment will be outdated already without this
> update :D

Thanks for the clarification, I was expecting you would say something like
that.

I think everything I mentioned in my previous email was
covered by your response. So feel free to add:

Reviewed-by: Simon Horman <horms@kernel.org>

