Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 606634A4B0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Jan 2022 16:54:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E988183312;
	Mon, 31 Jan 2022 15:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vWtTQK5UbTb1; Mon, 31 Jan 2022 15:54:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D2B7082AA9;
	Mon, 31 Jan 2022 15:54:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82D7C1BF37A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 15:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 797AB41061
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 15:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSmP1IhXR_j4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Jan 2022 15:54:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C7D73408FB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Jan 2022 15:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643644466; x=1675180466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QSQmtIpB49hVUd9x8rslZkDhT/POH0AWRUXYW6gz07Y=;
 b=OG1aBYWhCIHOHhV0SdIO4yPhUM6+8PG9AkJ5tDX/4Bz5N0s6b6TOMAL+
 1M5fh7lF+OoE5wQltTp5fGMLqbkuJSvDi6nmIZ97HTiFLrrq2d7QYAABR
 N880gmeTZzQ50hxjRun8GfMNLZElbUZHJG23eCYszFkBFyB+vsS/W5w6b
 S4MAmQQrdUEnkzgMz7mX0wiP2zpvciklA3+sgJ4npmvJmnVEPzJTElYlz
 0PtUsxOSVNhECHgz8WTIHPmhVCElOiQc+twN4Bz5b9Km1BtMyb1BR8LVx
 uzkRPHBRq6uTu8tl+Ruv6O0agFrjM5N2i6XxtgY5E9D4PkiGEmvoCd5CI w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="231057479"
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="231057479"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2022 07:54:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,331,1635231600"; d="scan'208";a="534208873"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga007.fm.intel.com with ESMTP; 31 Jan 2022 07:54:23 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20VFsMkW025367; Mon, 31 Jan 2022 15:54:22 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 31 Jan 2022 16:52:33 +0100
Message-Id: <20220131155233.17962-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220131134921.13176-1-maciej.fijalkowski@intel.com>
References: <20220131134921.13176-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH intel-net] ice: avoid XDP checks in
 ice_clean_tx_irq()
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Mon, 31 Jan 2022 14:49:21 +0100

> Commit 9610bd988df9 ("ice: optimize XDP_TX workloads") introduced
> dedicated Tx IRQ cleaning routine dedicated for XDP rings. Currently it

  ^^^^^^^^^                         ^^^^^^^^^

dedicated-dedicated :z

> is impossible to call ice_clean_tx_irq() against XDP ring, so it is safe
> to drop ice_ring_is_xdp() calls in there.
> 
> Fixes: 1c96c16858ba ("ice: update to newer kernel API")
> Fixes: cc14db11c8a4 ("ice: use prefetch methods")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 7d8824b4c8ff..25a5a3f2d107 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -223,8 +223,7 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
>  	struct ice_tx_buf *tx_buf;
>  
>  	/* get the bql data ready */
> -	if (!ice_ring_is_xdp(tx_ring))
> -		netdev_txq_bql_complete_prefetchw(txring_txq(tx_ring));
> +	netdev_txq_bql_complete_prefetchw(txring_txq(tx_ring));
>  
>  	tx_buf = &tx_ring->tx_buf[i];
>  	tx_desc = ICE_TX_DESC(tx_ring, i);
> @@ -313,10 +312,6 @@ static bool ice_clean_tx_irq(struct ice_tx_ring *tx_ring, int napi_budget)
>  	tx_ring->next_to_clean = i;
>  
>  	ice_update_tx_ring_stats(tx_ring, total_pkts, total_bytes);
> -
> -	if (ice_ring_is_xdp(tx_ring))
> -		return !!budget;
> -
>  	netdev_tx_completed_queue(txring_txq(tx_ring), total_pkts, total_bytes);
>  
>  #define TX_WAKE_THRESHOLD ((s16)(DESC_NEEDED * 2))

For the code:

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>

> -- 
> 2.33.1

Thanks!
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
