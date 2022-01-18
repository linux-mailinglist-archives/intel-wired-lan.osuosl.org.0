Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A3890492961
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 16:06:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3620060E2D;
	Tue, 18 Jan 2022 15:06:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pU6H8TwNBEzA; Tue, 18 Jan 2022 15:06:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B2BB60B9E;
	Tue, 18 Jan 2022 15:06:51 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7620E1BF263
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 15:06:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6403F60E2B
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 15:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RR9yZTaCfLkc for <intel-wired-lan@osuosl.org>;
 Tue, 18 Jan 2022 15:06:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BBE9560B9E
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 15:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642518405; x=1674054405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fTOmNya/6DlRR/nDzVZoqL6U/jkPgnd3eTRAy2z98tA=;
 b=Oy3Hoq0TrFGXVq+fMi5T8vGcZVhg3OL0N+T7BhJdfV0Koklbggmun9rT
 Pr2Epz8wK6gcXRjskORaXWJ4mBRvVFXv0bceHlILZYbPLwZNoYOM0xd5E
 NYmT0uHafTEy9FNiZBn+KC+z/ht3Q6aIUOgnEXVKcIcF6xx+KAfJQmIaJ
 sasBRkuDydVA5CusfyahkJYdpoXz5q+pnVnMiFpRDXtoE6IMwBWIeDg5k
 kjiQJSQdD/exvX3du2OO8zqbI9vVylx5yrtyui5lhkyKWVPSWuffVKrOb
 5S9LTDhP3wi1mb71/FmxNMWQ1f1abibcZ4Y6UAgk4GPDiLHBqK2TGI2HJ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="269214760"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="269214760"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 07:06:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="578425150"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jan 2022 07:06:43 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 20IF6gW5018998; Tue, 18 Jan 2022 15:06:42 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Corinna Vinschen <vinschen@redhat.com>
Date: Tue, 18 Jan 2022 16:05:12 +0100
Message-Id: <20220118150512.25541-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220117182915.1283151-3-vinschen@redhat.com>
References: <20220117182915.1283151-1-vinschen@redhat.com>
 <20220117182915.1283151-3-vinschen@redhat.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 2/3 net-next v5] igb: refactor XDP
 registration
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
Cc: intel-wired-lan@osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Corinna Vinschen <vinschen@redhat.com>
Date: Mon, 17 Jan 2022 19:29:14 +0100

> On changing the RX ring parameters igb uses a hack to avoid a warning
> when calling xdp_rxq_info_reg via igb_setup_rx_resources.  It just
> clears the struct xdp_rxq_info content.
> 
> Change this to unregister if we're already registered instead.  Align
> code to the igc code.
> 
> Fixes: 9cbc948b5a20c ("igb: add XDP support")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_ethtool.c |  4 ----
>  drivers/net/ethernet/intel/igb/igb_main.c    | 12 +++++++++---
>  2 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 51a2dcaf553d..2a5782063f4c 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -965,10 +965,6 @@ static int igb_set_ringparam(struct net_device *netdev,
>  			memcpy(&temp_ring[i], adapter->rx_ring[i],
>  			       sizeof(struct igb_ring));
>  
> -			/* Clear copied XDP RX-queue info */
> -			memset(&temp_ring[i].xdp_rxq, 0,
> -			       sizeof(temp_ring[i].xdp_rxq));
> -
>  			temp_ring[i].count = new_rx_count;
>  			err = igb_setup_rx_resources(&temp_ring[i]);
>  			if (err) {
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 38ba92022cd4..cea89d301bfd 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4352,7 +4352,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>  {
>  	struct igb_adapter *adapter = netdev_priv(rx_ring->netdev);
>  	struct device *dev = rx_ring->dev;
> -	int size;
> +	int size, res;
>  
>  	size = sizeof(struct igb_rx_buffer) * rx_ring->count;
>  
> @@ -4376,9 +4376,15 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>  	rx_ring->xdp_prog = adapter->xdp_prog;
>  
>  	/* XDP RX-queue info */
> -	if (xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> -			     rx_ring->queue_index, 0) < 0)
> +	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> +		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> +	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, rx_ring->netdev,
> +			       rx_ring->queue_index, 0);
> +	if (res < 0) {
> +		dev_err(dev, "Failed to register xdp_rxq index %u\n",
> +			rx_ring->queue_index);
>  		goto err;

Error path always returns -ENOMEM, even in this case, and reports
that it failed to allocate memory for rings. Handle this correctly
and return `res` instead and without one more error message?

> +	}

As I mentioned a bit above, `res` is unused here as an error code,
only to test the value on < 0. Does it make sense to add a new
variable?

>  
>  	return 0;
>  
> -- 
> 2.27.0

Thanks,
Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
