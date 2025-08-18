Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D4BB29F2A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Aug 2025 12:32:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3657C8479B;
	Mon, 18 Aug 2025 10:32:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ovxIvxlOjQkm; Mon, 18 Aug 2025 10:32:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B489C8479D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755513163;
	bh=SKjW02mQHxOyH3ni2AK/ZJsMF139fEYWbaWyhAHyIOs=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=94oSl0OXNIgUEijem9Q1gHNFhw2p6QQ8qwfFLQOy5ZjBPfuwy1HNsp4q5q6382BEI
	 i6wNpfO2f4AYbjBZ3yoXiCTdCdHDH76H4ONBbEdpKud9C/nXi1xmwbJxHossEWnC3Q
	 cb8z0EOazzCPx4FaZOA6PF/C6MLaNF7wX2a6yJvHNCr4P8jyZ8sDhAwT+oWaofq0UY
	 Fz/cocR+dq6eAa2ardA/c7Fu8imfZOgHklFB66nMo0Pjaj/pSRV2Mb9yzxY2sTNV+9
	 /arUI8AqkySRWLQg4BUfBybDNNQhTOVqbA3XIqnNEVm3x+YuPaDXjX84Mk+CLP7Stm
	 3Rh97uU/yrKiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B489C8479D;
	Mon, 18 Aug 2025 10:32:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 854A075
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 10:32:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7757161B51
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 10:32:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lFP8VLRjTACL for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Aug 2025 10:32:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org DDF7C61B4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDF7C61B4F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DDF7C61B4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Aug 2025 10:32:38 +0000 (UTC)
Received: from [141.14.220.42] (g42.guest.molgen.mpg.de [141.14.220.42])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C49FA60213AD0;
 Mon, 18 Aug 2025 12:32:19 +0200 (CEST)
Message-ID: <9e39b816-54c0-4f56-bf7b-96a20f98b942@molgen.mpg.de>
Date: Mon, 18 Aug 2025 12:32:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, richardcochran@gmail.com,
 Joshua Hay <joshua.a.hay@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250818112027.31222-1-anton.nadezhdin@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250818112027.31222-1-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] idpf: add HW timestamping
 statistics
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

Dear Anton, dear Milena,


Thank you for your patch.

Am 18.08.25 um 13:20 schrieb Anton Nadezhdin:
> From: Milena Olech <milena.olech@intel.com>
> 
> Add HW timestamping statistics support - through implementing get_ts_stats.
> Timestamp statistics include correctly timestamped packets, discarded,
> skipped and flushed during PTP release.
> 
> Most of the stats are collected per vport, only requests skipped due to
> lack of free latch index are collected per Tx queue.

Should you resend it’d be great, if you added instructions how to test 
the patch.

> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Co-developed-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf.h        | 17 +++++++
>   .../net/ethernet/intel/idpf/idpf_ethtool.c    | 51 +++++++++++++++++++
>   drivers/net/ethernet/intel/idpf/idpf_ptp.c    | 11 +++-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  4 ++
>   4 files changed, 82 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h
> index f4c0eaf9bde3..5951ede8c7ea 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf.h
> @@ -256,6 +256,21 @@ enum idpf_vport_flags {
>   	IDPF_VPORT_FLAGS_NBITS,
>   };
>   
> +/**
> + * struct idpf_tstamp_stats - Tx timestamp statistics
> + * @stats_sync: See struct u64_stats_sync
> + * @packets: Number of packets successfully timestamped by the hardware
> + * @discarded: Number of Tx skbs discarded due to cached PHC
> + *	       being too old to correctly extend timestamp
> + * @flushed: Number of Tx skbs flushed due to interface closed
> + */
> +struct idpf_tstamp_stats {
> +	struct u64_stats_sync stats_sync;
> +	u64_stats_t packets;
> +	u64_stats_t discarded;
> +	u64_stats_t flushed;
> +};
> +
>   struct idpf_port_stats {
>   	struct u64_stats_sync stats_sync;
>   	u64_stats_t rx_hw_csum_err;
> @@ -322,6 +337,7 @@ struct idpf_fsteer_fltr {
>    * @tx_tstamp_caps: Capabilities negotiated for Tx timestamping
>    * @tstamp_config: The Tx tstamp config
>    * @tstamp_task: Tx timestamping task
> + * @tstamp_stats: Tx timestamping statistics
>    */
>   struct idpf_vport {
>   	u16 num_txq;
> @@ -372,6 +388,7 @@ struct idpf_vport {
>   	struct idpf_ptp_vport_tx_tstamp_caps *tx_tstamp_caps;
>   	struct kernel_hwtstamp_config tstamp_config;
>   	struct work_struct tstamp_task;
> +	struct idpf_tstamp_stats tstamp_stats;
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> index 0eb812ac19c2..d56a4157ad5f 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> @@ -1685,6 +1685,56 @@ static int idpf_get_ts_info(struct net_device *netdev,
>   	return err;
>   }
>   
> +/**
> + * idpf_get_ts_stats - Collect HW tstamping statistics
> + * @netdev: network interface device structure
> + * @ts_stats: HW timestamping stats structure
> + *
> + * Collect HW timestamping statistics including successfully timestamped
> + * packets, discarded due to illegal values, flushed during releasing PTP and
> + * skipped due to lack of the free index.
> + */
> +static void idpf_get_ts_stats(struct net_device *netdev,
> +			      struct ethtool_ts_stats *ts_stats)
> +{
> +	struct idpf_vport *vport;
> +	unsigned int start;
> +
> +	idpf_vport_ctrl_lock(netdev);
> +	vport = idpf_netdev_to_vport(netdev);
> +	do {
> +		start = u64_stats_fetch_begin(&vport->tstamp_stats.stats_sync);
> +		ts_stats->pkts = u64_stats_read(&vport->tstamp_stats.packets);
> +		ts_stats->lost = u64_stats_read(&vport->tstamp_stats.flushed);
> +		ts_stats->err = u64_stats_read(&vport->tstamp_stats.discarded);
> +	} while (u64_stats_fetch_retry(&vport->tstamp_stats.stats_sync, start));
> +
> +	for (u16 i = 0; i < vport->num_txq_grp; i++) {

Does the counting variable (also below) need to be fixed size, that 
means, why can’t `unsigned int` or `size_t` be used? [1]

> +		struct idpf_txq_group *txq_grp = &vport->txq_grps[i];
> +
> +		for (u16 j = 0; j < txq_grp->num_txq; j++) {
> +			struct idpf_tx_queue *txq = txq_grp->txqs[j];
> +			struct idpf_tx_queue_stats *stats;
> +			u64 ts;
> +
> +			if (!txq)
> +				continue;
> +
> +			stats = &txq->q_stats;
> +			do {
> +				start = u64_stats_fetch_begin(&txq->stats_sync);
> +
> +				ts = u64_stats_read(&stats->tstamp_skipped);
> +			} while (u64_stats_fetch_retry(&txq->stats_sync,
> +						       start));
> +
> +			ts_stats->lost += ts;
> +		}
> +	}
> +
> +	idpf_vport_ctrl_unlock(netdev);
> +}
> +
>   static const struct ethtool_ops idpf_ethtool_ops = {
>   	.supported_coalesce_params = ETHTOOL_COALESCE_USECS |
>   				     ETHTOOL_COALESCE_USE_ADAPTIVE,
> @@ -1711,6 +1761,7 @@ static const struct ethtool_ops idpf_ethtool_ops = {
>   	.set_ringparam		= idpf_set_ringparam,
>   	.get_link_ksettings	= idpf_get_link_ksettings,
>   	.get_ts_info		= idpf_get_ts_info,
> +	.get_ts_stats		= idpf_get_ts_stats,
>   };
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> index ee21f2ff0cad..142823af1f9e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.c
> @@ -618,8 +618,13 @@ u64 idpf_ptp_extend_ts(struct idpf_vport *vport, u64 in_tstamp)
>   
>   	discard_time = ptp->cached_phc_jiffies + 2 * HZ;
>   
> -	if (time_is_before_jiffies(discard_time))
> +	if (time_is_before_jiffies(discard_time)) {
> +		u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
> +		u64_stats_inc(&vport->tstamp_stats.discarded);
> +		u64_stats_update_end(&vport->tstamp_stats.stats_sync);
> +
>   		return 0;
> +	}
>   
>   	return idpf_ptp_tstamp_extend_32b_to_64b(ptp->cached_phc_time,
>   						 lower_32_bits(in_tstamp));
> @@ -853,10 +858,14 @@ static void idpf_ptp_release_vport_tstamp(struct idpf_vport *vport)
>   
>   	/* Remove list with latches in use */
>   	head = &vport->tx_tstamp_caps->latches_in_use;
> +	u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
>   	list_for_each_entry_safe(ptp_tx_tstamp, tmp, head, list_member) {
> +		u64_stats_inc(&vport->tstamp_stats.flushed);
> +
>   		list_del(&ptp_tx_tstamp->list_member);
>   		kfree(ptp_tx_tstamp);
>   	}
> +	u64_stats_update_end(&vport->tstamp_stats.stats_sync);
>   
>   	spin_unlock_bh(&vport->tx_tstamp_caps->latches_lock);
>   
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> index 4f1fb0cefe51..8a2e0f8c5e36 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl_ptp.c
> @@ -521,6 +521,10 @@ idpf_ptp_get_tstamp_value(struct idpf_vport *vport,
>   	list_add(&ptp_tx_tstamp->list_member,
>   		 &tx_tstamp_caps->latches_free);
>   
> +	u64_stats_update_begin(&vport->tstamp_stats.stats_sync);
> +	u64_stats_inc(&vport->tstamp_stats.packets);
> +	u64_stats_update_end(&vport->tstamp_stats.stats_sync);
> +
>   	return 0;
>   }


Kind regards,

Paul


[1]: https://notabs.org/coding/smallIntsBigPenalty.htm
