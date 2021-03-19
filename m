Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE93341B2E
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 12:10:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C45E86071A;
	Fri, 19 Mar 2021 11:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DbIFzrpI42Nf; Fri, 19 Mar 2021 11:10:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADD056070B;
	Fri, 19 Mar 2021 11:10:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B10B21BF2EF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 11:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C65C83B8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 11:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8b0fnuxKFbA7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 11:10:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 61BF483B84
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 11:10:34 +0000 (UTC)
IronPort-SDR: NNhwefeTdTnru4ywi/jKX1nQtRiCtEoqsyTwComToFT+gZtu7wdoJDYBcA1jUe/Om8ZXoCkKLp
 6Oct6XoUp/Lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="169175016"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="169175016"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 04:10:33 -0700
IronPort-SDR: eRA8x2hCruZJRbpyVLUMZuywMgsyuy1HzAmtZLSB8FfhX1FamHAAmcsNY71otI6h4D4gvO+DeQ
 dmG15Tx5hXJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="441280951"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Mar 2021 04:10:32 -0700
Date: Fri, 19 Mar 2021 12:00:23 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20210319110023.GA20353@ranger.igk.intel.com>
References: <20210319094410.3633-1-magnus.karlsson@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319094410.3633-1-magnus.karlsson@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH intel-net] i40e: fix receiving of
 single packets in xsk zero-copy mode
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Sreedevi Joshi <sreedevi.joshi@intel.com>, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 19, 2021 at 10:44:10AM +0100, Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Fix so that single packets are received immediately instead of in
> batches of 8. If you sent 1 pss to a system, you received 8 packets

pps?

> every 8 seconds instead of 1 packet every second. The problem behind
> this was that the work_done reporting from the Tx part of the driver
> was broken. The work_done reporting in i40e controls not only the
> reporting back to the napi logic but also the setting of the interrupt
> throttling logic. When Tx or Rx reports that it has more to do,
> interrupts are throttled or coalesced and when they both report that
> they are done, interrupts are armed right away. If the wrong work_done
> value is returned, the logic will start to throttle interrupts in a
> situation where it should have just enabled them. This leads to the
> undesired batching behavior seen in user-space.
> 
> Fix this by returning the correct boolean value from the Tx xsk
> zero-copy path. Return true if there is nothing to do or if we got
> fewer packets to process than we asked for. Return false if we got as
> many packets as the budget since there might be more packets we can
> process.
> 
> Fixes: 3106c580fb7c ("i40e: Use batched xsk Tx interfaces to increase performance")
> Reported-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> index fc32c5019b0f..12ca84113587 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -471,7 +471,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>  
>  	nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, descs, budget);
>  	if (!nb_pkts)
> -		return false;
> +		return true;
>  
>  	if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
>  		nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> @@ -488,7 +488,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
>  
>  	i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
>  
> -	return true;
> +	return nb_pkts < budget;
>  }
>  
>  /**
> 
> base-commit: c79a707072fe3fea0e3c92edee6ca85c1e53c29f
> -- 
> 2.29.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
