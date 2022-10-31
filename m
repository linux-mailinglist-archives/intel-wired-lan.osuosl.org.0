Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCD96132FE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 10:47:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3523860B2A;
	Mon, 31 Oct 2022 09:47:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3523860B2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667209631;
	bh=/Lioeh2DDTnDqg8x3gd8yEsRYV1vg8wqmwo808jNy9g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TDrS6gV4QQMtMthEzMmrHoCHkifNnh24UdPwYLBhXs/6StDkLKAqtEkjOpcU2hCQ7
	 gnGn/+R+hheLKmBhBT9Qb1naU1iBW/hxxdiQvI49hxIo/Gljwlj3Wts3iE4+Qc86j/
	 bFF95U8AvkZZXdMxzuwknRUwnFsXXKMHM2wnkAZYHf4gLinl2ZgPrf8k/kz9z8LIJf
	 eeeIMPhcSY9tNLenGcHeB++FYEqkgmFsFQlMO3F2dKap1yT092PUnl093JiK1+s+of
	 sTK4Qp3BVF1cTUlCkUaWNbuqcsl3dLJakEL6Pkqdu0Da4pNC8kmlasj6gn24eAMS/3
	 b/E0ninFOJTDA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 18Y0ymJ3I4DK; Mon, 31 Oct 2022 09:47:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCB5A60A66;
	Mon, 31 Oct 2022 09:47:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCB5A60A66
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E3B91BF358
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 09:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1571881287
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 09:47:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1571881287
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id efvdwXhculeM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 09:47:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2BDF80CD0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C2BDF80CD0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 09:47:01 +0000 (UTC)
Received: from [141.14.220.45] (g45.guest.molgen.mpg.de [141.14.220.45])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 9220361EA1932;
 Mon, 31 Oct 2022 10:46:58 +0100 (CET)
Message-ID: <d73f08d9-c0f0-0023-454c-7f085c456bc5@molgen.mpg.de>
Date: Mon, 31 Oct 2022 10:46:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
To: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
References: <20221027152401.30801-1-benjamin.mikailenko@intel.com>
 <20221027152401.30801-2-benjamin.mikailenko@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20221027152401.30801-2-benjamin.mikailenko@intel.com>
Subject: Re: [Intel-wired-lan] [net-next,
 v3 1/2] ice: Accumulate HW and Netdev statistics over reset
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Benjamin,


Thank you for the patch.

Am 27.10.22 um 17:24 schrieb Benjamin Mikailenko:
> Resets happen with or without user interaction. For example, incidents
> such as TX hang or a reconfiguration of parameters will result in a reset.

Are these resets logged somewhere?

> During reset, hardware and software statistics were set to zero. This
> created an issue for the user where a reset happens in the background,
> statistics set to zero, and the user checks statistics expecting them to
> be populated.
> 
> To ensure this doesn't happen, keep accumulating stats over reset.

Are there users, which expect the statistics to be set to 0 after a reset?

Also, `rtnl_link_stats64` (`include/uapi/linux/if_link.h`) contains more 
fields than rx/tx packets/bytes. Do they need to be adapted too?

> 1. Remove function calls which reset hardware and netdev statistics.
> 2. Do not rollover statistics in ice_stat_update40 during reset.
> 
> Signed-off-by: Benjamin Mikailenko <benjamin.mikailenko@intel.com>
> ---

Do you have an overview, what changed between v1 and v3?

>   drivers/net/ethernet/intel/ice/ice.h         |  1 +
>   drivers/net/ethernet/intel/ice/ice_dcb_lib.c |  3 ++
>   drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +++++
>   drivers/net/ethernet/intel/ice/ice_main.c    | 30 +++++++++++++++++---
>   4 files changed, 37 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 001500afc4a6..e0ed2f1cc434 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -358,6 +358,7 @@ struct ice_vsi {
>   
>   	/* VSI stats */
>   	struct rtnl_link_stats64 net_stats;
> +	struct rtnl_link_stats64 net_stats_prev;
>   	struct ice_eth_stats eth_stats;
>   	struct ice_eth_stats eth_stats_prev;
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> index 5e6d168bac48..4f3a848f4e99 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
> @@ -874,6 +874,9 @@ void ice_update_dcb_stats(struct ice_pf *pf)
>   	prev_ps = &pf->stats_prev;
>   	cur_ps = &pf->stats;
>   
> +	if (ice_is_reset_in_progress(pf->state))
> +		pf->stat_prev_loaded = false;
> +
>   	for (i = 0; i < 8; i++) {
>   		ice_stat_update32(hw, GLPRT_PXOFFRXC(port, i),
>   				  pf->stat_prev_loaded,
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 938ba8c215cb..a5945319b62e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -1795,11 +1795,15 @@ void ice_update_eth_stats(struct ice_vsi *vsi)
>   {
>   	struct ice_eth_stats *prev_es, *cur_es;
>   	struct ice_hw *hw = &vsi->back->hw;
> +	struct ice_pf *pf = vsi->back;
>   	u16 vsi_num = vsi->vsi_num;    /* HW absolute index of a VSI */
>   
>   	prev_es = &vsi->eth_stats_prev;
>   	cur_es = &vsi->eth_stats;
>   
> +	if (ice_is_reset_in_progress(pf->state))
> +		vsi->stat_offsets_loaded = false;
> +
>   	ice_stat_update40(hw, GLV_GORCL(vsi_num), vsi->stat_offsets_loaded,
>   			  &prev_es->rx_bytes, &cur_es->rx_bytes);
>   
> @@ -3279,6 +3283,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
>   			goto err_vectors;
>   
>   		ice_vsi_map_rings_to_vectors(vsi);
> +
> +		vsi->stat_offsets_loaded = false;
>   		if (ice_is_xdp_ena_vsi(vsi)) {
>   			ret = ice_vsi_determine_xdp_res(vsi);
>   			if (ret)
> @@ -3315,6 +3321,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
>   		if (ret)
>   			goto err_vectors;
>   
> +		vsi->stat_offsets_loaded = false;
>   		break;
>   	case ICE_VSI_CHNL:
>   		if (test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 189160dacad9..ac893ce39e5e 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -6487,6 +6487,7 @@ ice_update_vsi_tx_ring_stats(struct ice_vsi *vsi,
>    */
>   static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
>   {
> +	struct rtnl_link_stats64 *net_stats, *stats_prev;
>   	struct rtnl_link_stats64 *vsi_stats;
>   	u64 pkts, bytes;
>   	int i;
> @@ -6526,10 +6527,28 @@ static void ice_update_vsi_ring_stats(struct ice_vsi *vsi)
>   
>   	rcu_read_unlock();
>   
> -	vsi->net_stats.tx_packets = vsi_stats->tx_packets;
> -	vsi->net_stats.tx_bytes = vsi_stats->tx_bytes;
> -	vsi->net_stats.rx_packets = vsi_stats->rx_packets;
> -	vsi->net_stats.rx_bytes = vsi_stats->rx_bytes;
> +	net_stats = &vsi->net_stats;
> +	stats_prev = &vsi->net_stats_prev;
> +
> +	/* clear prev counters after reset */
> +	if (vsi_stats->tx_packets < stats_prev->tx_packets ||
> +	    vsi_stats->rx_packets < stats_prev->rx_packets) {

Why not unconditionally clear it?

> +		stats_prev->tx_packets = 0;
> +		stats_prev->tx_bytes = 0;
> +		stats_prev->rx_packets = 0;
> +		stats_prev->rx_bytes = 0;
> +	}
> +
> +	/* update netdev counters */
> +	net_stats->tx_packets += vsi_stats->tx_packets - stats_prev->tx_packets;
> +	net_stats->tx_bytes += vsi_stats->tx_bytes - stats_prev->tx_bytes;
> +	net_stats->rx_packets += vsi_stats->rx_packets - stats_prev->rx_packets;
> +	net_stats->rx_bytes += vsi_stats->rx_bytes - stats_prev->rx_bytes;
> +
> +	stats_prev->tx_packets = vsi_stats->tx_packets;
> +	stats_prev->tx_bytes = vsi_stats->tx_bytes;
> +	stats_prev->rx_packets = vsi_stats->rx_packets;
> +	stats_prev->rx_bytes = vsi_stats->rx_bytes;
>   
>   	kfree(vsi_stats);
>   }
> @@ -6591,6 +6610,9 @@ void ice_update_pf_stats(struct ice_pf *pf)
>   	prev_ps = &pf->stats_prev;
>   	cur_ps = &pf->stats;
>   
> +	if (ice_is_reset_in_progress(pf->state))
> +		pf->stat_prev_loaded = false;
> +
>   	ice_stat_update40(hw, GLPRT_GORCL(port), pf->stat_prev_loaded,
>   			  &prev_ps->eth.rx_bytes,
>   			  &cur_ps->eth.rx_bytes);



Kind regards,

Paul
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
