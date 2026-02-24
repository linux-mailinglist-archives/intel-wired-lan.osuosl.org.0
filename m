Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIcuJMB3nWmAQAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 11:04:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E604185172
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Feb 2026 11:04:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4561E80AE5;
	Tue, 24 Feb 2026 10:04:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOoKswdsQ6FD; Tue, 24 Feb 2026 10:04:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 968F680AFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771927485;
	bh=7D+1B4zQS79C36wfIjPgPWrlSj6bWsrO0JD2uPIj0TM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mQsJjkMzrRDuRWLoXApudanoSUAHiPn/mW3P2W7+Oh2MKSlQH3LFqyttliXC7gIfW
	 hAcj5xfopRcozxwCvlbW1rwdhDHgtUlQdeeMKey1lMgWq2R1xfRsdRApmF9anmpD2C
	 pLNcj8RlE5/AIe2xfJh5TLBQ85Az1U9StvYAOE2qGlAhiJPzGZuZ8gudGJD9+FwsDA
	 hTJPYiU+s3DrgbM6j7MWKHZOgsimIbUvrDDr2pA0EHbDK/Q5VahUR7x3hiy9nf0LV6
	 tIPQgOA5vd74tFHImCjX6TtA2ksv49ZUw3CZSVvs+XiHLn6v1ODrYQDuSUfxxeVTBf
	 worXLyMfDpCeA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 968F680AFE;
	Tue, 24 Feb 2026 10:04:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id ECF931B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 10:04:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DE15041C29
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 10:04:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C4rkwsVLmUDv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Feb 2026 10:04:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D8B6F41C24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8B6F41C24
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8B6F41C24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Feb 2026 10:04:41 +0000 (UTC)
Received: from [141.14.13.172] (g427.RadioFreeInternet.molgen.mpg.de
 [141.14.13.172])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A685C4C28871A7;
 Tue, 24 Feb 2026 11:03:47 +0100 (CET)
Message-ID: <15d16cb1-4b7e-48ff-97d2-7d1064ebfa42@molgen.mpg.de>
Date: Tue, 24 Feb 2026 11:03:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260223125157.819135-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: set max queues in
 alloc_etherdev_mqs()
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,molgen.mpg.de:mid];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.swiatkowski@linux.intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[mpg.de];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 9E604185172
X-Rspamd-Action: no action

Dear Michal,


Thank you for the patch.

Am 23.02.26 um 13:51 schrieb Michal Swiatkowski:
> When allocating netdevice using alloc_etherdev_mqs() the maximum
> supported queues number should be passed. The vsi->alloc_txq/rxq is
> storing current number of queues, not the maximum ones.
> 
> Use the same function for getting max Tx and Rx queues which is used
> during ethtool -l call to set maximum number of queues during netdev
> allocation.
> 
> Reproduction steps:
> $ethtool -l $pf # says current 16, max 64
> $ethtool -S $pf # fine
> $ethtool -L $pf combined 40 # crash
> 
> [491187.472594] Call Trace:
> [491187.472829]  <TASK>
> [491187.473067]  netif_set_xps_queue+0x26/0x40
> [491187.473305]  ice_vsi_cfg_txq+0x265/0x3d0 [ice]
> [491187.473619]  ice_vsi_cfg_lan_txqs+0x68/0xa0 [ice]
> [491187.473918]  ice_vsi_cfg_lan+0x2b/0xa0 [ice]
> [491187.474202]  ice_vsi_open+0x71/0x170 [ice]
> [491187.474484]  ice_vsi_recfg_qs+0x17f/0x230 [ice]
> [491187.474759]  ? dev_get_min_mp_channel_count+0xab/0xd0
> [491187.474987]  ice_set_channels+0x185/0x3d0 [ice]
> [491187.475278]  ethnl_set_channels+0x26f/0x340
> 
> Fixes: ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h         | 22 ++++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_ethtool.c | 18 ----------------
>   drivers/net/ethernet/intel/ice/ice_main.c    |  4 ++--
>   3 files changed, 24 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index f6a56a864459..725b130dd3a2 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -839,6 +839,28 @@ static inline void ice_tx_xsk_pool(struct ice_vsi *vsi, u16 qid)
>   	WRITE_ONCE(ring->xsk_pool, ice_get_xp_from_qid(vsi, qid));
>   }
>   
> +/**
> + * ice_get_max_txq - return the maximum number of Tx queues for in a PF
> + * @pf: PF structure
> + *
> + * Return: maximum number of Tx queues
> + */
> +static inline int ice_get_max_txq(struct ice_pf *pf)
> +{
> +	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_txq);
> +}
> +
> +/**
> + * ice_get_max_rxq - return the maximum number of Rx queues for in a PF
> + * @pf: PF structure
> + *
> + * Return: maximum number of Rx queues
> + */
> +static inline int ice_get_max_rxq(struct ice_pf *pf)
> +{
> +	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_rxq);
> +}
> +
>   /**
>    * ice_get_main_vsi - Get the PF VSI
>    * @pf: PF instance
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index a897a6b22495..a0b0416f5aea 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3780,24 +3780,6 @@ ice_get_ts_info(struct net_device *dev, struct kernel_ethtool_ts_info *info)
>   	return 0;
>   }
>   
> -/**
> - * ice_get_max_txq - return the maximum number of Tx queues for in a PF
> - * @pf: PF structure
> - */
> -static int ice_get_max_txq(struct ice_pf *pf)
> -{
> -	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_txq);
> -}
> -
> -/**
> - * ice_get_max_rxq - return the maximum number of Rx queues for in a PF
> - * @pf: PF structure
> - */
> -static int ice_get_max_rxq(struct ice_pf *pf)
> -{
> -	return min(num_online_cpus(), pf->hw.func_caps.common_cap.num_rxq);
> -}
> -
>   /**
>    * ice_get_combined_cnt - return the current number of combined channels
>    * @vsi: PF VSI pointer
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index fa4095037be5..863ac81eebce 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -4699,8 +4699,8 @@ static int ice_cfg_netdev(struct ice_vsi *vsi)
>   	struct net_device *netdev;
>   	u8 mac_addr[ETH_ALEN];
>   
> -	netdev = alloc_etherdev_mqs(sizeof(*np), vsi->alloc_txq,
> -				    vsi->alloc_rxq);
> +	netdev = alloc_etherdev_mqs(sizeof(*np), ice_get_max_txq(vsi->back),
> +				    ice_get_max_rxq(vsi->back));
>   	if (!netdev)
>   		return -ENOMEM;
>   

Should also some checks be added to `ethnl_set_channels()` to avoid crashes?

The commit looks good:

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

I am missing the mentioning of the crash in commit message 
title/summary, but I do not have a better suggestion right now.


Kind regards,

Paul
