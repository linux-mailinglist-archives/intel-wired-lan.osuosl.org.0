Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F9448F049
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 20:10:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C69EA83466;
	Fri, 14 Jan 2022 19:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgRKAkoApT6P; Fri, 14 Jan 2022 19:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D330083396;
	Fri, 14 Jan 2022 19:10:38 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D73091BF363
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 19:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C3FB783396
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 19:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJthbBu6BKRd for <intel-wired-lan@osuosl.org>;
 Fri, 14 Jan 2022 19:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0806831AE
 for <intel-wired-lan@osuosl.org>; Fri, 14 Jan 2022 19:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642187432; x=1673723432;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lBQUQX7/jobF6RXbmZGC7t7PVSfbGHd/eB+wc+NLBf0=;
 b=diUYgPflnnhHZg3LWvIcRVrBc9pMNXvmmYZSYLOHuK/V9IAdHh6g5Sq1
 BBx2u6Rl/5qwqW23de4h2qBq4jKqhMLabW4lWDpxo8WogQLVUNeRKP1iJ
 S57SiBgMwZaIYHeggd6yTqBw/m9/Kp+SzVgAwaIFiCM+WfM/bdxbau/ap
 Y4fWVAcB+sAtUzIGOmRNEwkwTkAYXgZojh0BEyc7CaP74bm+wU4l3guVR
 bKjOu+m2Wof8Ov6Qp4V9A/RIi2xKdaBOV55AkTYGyi4++pCQ6NhQ0oe4J
 heJD+mf3KwWNJwIVx5u5x5WuUrS4bHdmtTJ8Cxooxyz9pVC6BiKFdLoII g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="305041989"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="305041989"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 11:10:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="766009415"
Received: from ombarre-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.114.118])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 11:10:31 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Corinna Vinschen <vinschen@redhat.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org
In-Reply-To: <20220114165106.1085474-2-vinschen@redhat.com>
References: <20220114165106.1085474-1-vinschen@redhat.com>
 <20220114165106.1085474-2-vinschen@redhat.com>
Date: Fri, 14 Jan 2022 11:10:29 -0800
Message-ID: <87czku6sm2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH 1/2 net-next v3] igc: avoid kernel
 warning when changing RX ring parameters
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Corinna Vinschen <vinschen@redhat.com> writes:

> Calling ethtool changing the RX ring parameters like this:
>
>   $ ethtool -G eth0 rx 1024
>
> on igc triggers the "Missing unregister, handled but fix driver" warning in
> xdp_rxq_info_reg().
>
> igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
> reset the xdp_rxq_info member before calling igc_setup_rx_resources().
> This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.
>
> Make sure to unregister the xdp_rxq_info structure first in
> igc_setup_rx_resources.  Move xdp_rxq_info handling down to bethe last
> action, thus allowing to remove the xdp_rxq_info_unreg call in the error path.
>
> Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 20 +++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2f17f36e94fd..97144f6db36e 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -505,14 +505,6 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  	u8 index = rx_ring->queue_index;
>  	int size, desc_len, res;
>  
> -	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> -			       rx_ring->q_vector->napi.napi_id);
> -	if (res < 0) {
> -		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> -			   index);
> -		return res;
> -	}
> -
>  	size = sizeof(struct igc_rx_buffer) * rx_ring->count;
>  	rx_ring->rx_buffer_info = vzalloc(size);
>  	if (!rx_ring->rx_buffer_info)
> @@ -534,10 +526,20 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  	rx_ring->next_to_clean = 0;
>  	rx_ring->next_to_use = 0;
>  
> +	/* XDP RX-queue info */
> +	if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
> +		xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
> +	res = xdp_rxq_info_reg(&rx_ring->xdp_rxq, ndev, index,
> +			       rx_ring->q_vector->napi.napi_id);
> +	if (res < 0) {
> +		netdev_err(ndev, "Failed to register xdp_rxq index %u\n",
> +			   index);
> +		return res;

Here and in the igb patch, it should be 'goto err', no?

Another suggestion is to add the warning that Lennert reported in the
commit message (the comment from Maciej in that other thread).

Apart from that, I think this is cleaner than what I had proposed.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
