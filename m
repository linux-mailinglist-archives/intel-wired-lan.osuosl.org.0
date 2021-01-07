Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 301952ED75C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Jan 2021 20:19:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E00B4874D3;
	Thu,  7 Jan 2021 19:19:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uaga63vHALMi; Thu,  7 Jan 2021 19:19:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF9FD874D0;
	Thu,  7 Jan 2021 19:19:03 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA801BF41A
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 19:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8802886D1C
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 19:19:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9aAEqD5isrCW for <intel-wired-lan@osuosl.org>;
 Thu,  7 Jan 2021 19:19:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7BDF686B77
 for <intel-wired-lan@osuosl.org>; Thu,  7 Jan 2021 19:19:00 +0000 (UTC)
IronPort-SDR: 3IvybbF+s/QEK/ZTwa9UWTErgzx8eDmVqUToTxP2kXMKNHDg4M4zbvFEbXQY3JNSCB5WQxSOkH
 cLFfDcEo/i8w==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="157262542"
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="157262542"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2021 11:19:00 -0800
IronPort-SDR: VPdsLBrjigMTVKBkpKNSyWNNLUihYH+98RrFqc3KjjlrQOJMUfL5vV36aSxpb/tgG46dga5BoQ
 EsdDv+3BY4xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,329,1602572400"; d="scan'208";a="362075884"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga002.jf.intel.com with ESMTP; 07 Jan 2021 11:18:59 -0800
Date: Thu, 7 Jan 2021 20:10:14 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Vedang Patel <vedang.patel@intel.com>
Message-ID: <20210107191014.GA36516@ranger.igk.intel.com>
References: <20210107185654.1826-1-vedang.patel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210107185654.1826-1-vedang.patel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net v1] igc: Don't clear the large
 buffer bit before memory release
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jan 07, 2021 at 10:56:54AM -0800, Vedang Patel wrote:
> When XDP is enabled, it uses large buffers to accomodate headroom and
> tailroom required by XDP infrastructure. But, it clears the large buffer
> bit before unmapping the buffer.
> 
> dma_unmap_page_attrs() (called by igc_clean_rx_ring_page_shared()) needs
> size of the buffer to unmap. If the large buffer bit is cleared before
> calling igc_clean_rx_ring_page_shared(), all of the memory won't be
> unmapped.
> 
> Fixes: 2e739318416b ("igc: Add initial XDP support")
> 
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 0bcdf05d03f0..b96b745fdb65 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -418,13 +418,13 @@ static void igc_clean_rx_ring_xsk_pool(struct igc_ring *ring)
>   */
>  static void igc_clean_rx_ring(struct igc_ring *ring)
>  {
> -	clear_ring_uses_large_buffer(ring);
> -
>  	if (ring->xsk_pool)
>  		igc_clean_rx_ring_xsk_pool(ring);
>  	else
>  		igc_clean_rx_ring_page_shared(ring);

This code is not yet upstreamed AFAICT. Probably you should ask Andre to
include this fix onto igc's AFXDP support?

>  
> +	clear_ring_uses_large_buffer(ring);
> +
>  	ring->next_to_alloc = 0;
>  	ring->next_to_clean = 0;
>  	ring->next_to_use = 0;
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
