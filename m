Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lJ0BBWc5RmqCMAsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 12:11:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C16C6F5AEE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 12:11:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=YhayJrps;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 359C160DA5;
	Thu,  2 Jul 2026 10:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JFQ-xNzYHxwD; Thu,  2 Jul 2026 10:11:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E3F460DA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782987105;
	bh=XAwLKFAvbqbH0OIqn2t1ZBN4ljJcB/PSOp+tNLGlo3g=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YhayJrpsbmQ9akCsJLrvCqFrr1j9Yt/mYP7N5iRqdHkynK7C7edVMwr3ikOxvuU3s
	 VF7N1uoICnKvSx2a+a66wc49l7UH5Bn03iKHz1lFXHa+tU/4okmJpxXmJ6DIgn39X0
	 aznV6cTWNIJ9zCjo5H2EN+w7IPoCN+m8dKuhVKM3DgGbRLyBIg/3dY93kvv7TiMtsR
	 +2ESWlCLnvqlqcXFnrKYj2rWfBcl+TjORlO/WdIynlG/6tPxeokmymfVNrVEqJxaVh
	 5bOpYpi7nx80Yxd7tcLGa48IwRymWqBXmwaXwi186cNFNrGoscn0Q+H2AA45iKcQui
	 sW6oTOjyTZwIQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E3F460DA0;
	Thu,  2 Jul 2026 10:11:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 279B64B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 10:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15E36413DC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 10:11:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gLR9PJdKyt7h for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 10:11:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 18EF9413D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18EF9413D7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 18EF9413D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 10:11:42 +0000 (UTC)
X-CSE-ConnectionGUID: D7Dd/ykbRVKa37CBw/mZ1Q==
X-CSE-MsgGUID: nkadDLRISLm57iU6WPPzSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="71259942"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="71259942"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 03:11:42 -0700
X-CSE-ConnectionGUID: ZHtSMcqsQSGeidej7WRwqw==
X-CSE-MsgGUID: u3sBzwdjRVaTDlUlIzeQrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="282897638"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.94.248.198])
 ([10.94.248.198])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 03:11:39 -0700
Message-ID: <4cb7b4e0-05fa-4653-adbd-436f81f34072@linux.intel.com>
Date: Thu, 2 Jul 2026 12:11:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Michal Schmidt <mschmidt@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
References: <20260701104141.9740-1-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260701104141.9740-1-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782987103; x=1814523103;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2/6+NR0ckUilWDAFxIfCLRQs1vyJZOc6bGiA25HjdxI=;
 b=f3u36pd3CrYpbxYki9aIaXX8BkTZD9kLaJ/KuhUsbQEMpvT1Vl/rLi3W
 c7+t+CaSzR9uqZweMRJgbp6LlogjzfLwcWYEntd9SekT21WaJTtdYj+jw
 nkxj3+VGQNqvdQS9MHN/zbR9n0teKHRRz2UgvXnxrML9/HH1jbsOtim79
 H/hFWEWPyz0EAblHVb4L1bZBTYQg1z3U5Kss/03vj05lN+rGErQsWbYu8
 MIgIKqyH1UD3LrR4+LINI3HQXFd+StNCOZze5hcuDtaRUDU2UYINoUebR
 JHYklktKmgLVFsRd92H6fvyF6ZcF+d33DNCwE7i2JyMPv/96vKobtKfSb
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f3u36pd3
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: move
 ice_vsi_realloc_stat_arrays() up
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:mschmidt@redhat.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:piotr.kwapulinski@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C16C6F5AEE



On 01.07.2026 12:41, Przemek Kitszel wrote:
> Move ice_vsi_realloc_stat_arrays() up, to allow calling it from
> ice_vsi_cfg_def() by the next commit.
> 
> Fix kdoc for touched code. One line break removed, "int i" scope
> minimized to the loop, no changes otherwise.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 119 +++++++++++------------
>  1 file changed, 59 insertions(+), 60 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 8cdc4fda89e9..e48ee5940f17 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -2303,6 +2303,65 @@ static int ice_vsi_cfg_tc_lan(struct ice_pf *pf, struct ice_vsi *vsi)
>  	return 0;
>  }
>  
> +/**
> + * ice_vsi_realloc_stat_arrays - Frees unused stat structures or alloc new ones
> + * @vsi: VSI pointer
> + * Return: 0 on success or -ENOMEM on allocation failure.
> + */
> +static int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
> +{
> +	u16 req_txq = vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> +	u16 req_rxq = vsi->req_rxq ? vsi->req_rxq : vsi->alloc_rxq;
> +	struct ice_ring_stats **tx_ring_stats;
> +	struct ice_ring_stats **rx_ring_stats;
> +	struct ice_vsi_stats *vsi_stat;
> +	struct ice_pf *pf = vsi->back;
> +	u16 prev_txq = vsi->alloc_txq;
> +	u16 prev_rxq = vsi->alloc_rxq;
> +
> +	vsi_stat = pf->vsi_stats[vsi->idx];
> +
> +	if (req_txq < prev_txq) {
> +		for (int i = req_txq; i < prev_txq; i++) {
> +			if (vsi_stat->tx_ring_stats[i]) {
> +				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
> +				WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
> +			}
> +		}
> +	}
> +
> +	tx_ring_stats = vsi_stat->tx_ring_stats;
> +	vsi_stat->tx_ring_stats =
> +		krealloc_array(vsi_stat->tx_ring_stats, req_txq,
> +			       sizeof(*vsi_stat->tx_ring_stats),
> +			       GFP_KERNEL | __GFP_ZERO);
> +	if (!vsi_stat->tx_ring_stats) {
> +		vsi_stat->tx_ring_stats = tx_ring_stats;
> +		return -ENOMEM;
> +	}
> +
> +	if (req_rxq < prev_rxq) {
> +		for (int i = req_rxq; i < prev_rxq; i++) {
> +			if (vsi_stat->rx_ring_stats[i]) {
> +				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
> +				WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
> +			}
> +		}
> +	}
> +
> +	rx_ring_stats = vsi_stat->rx_ring_stats;
> +	vsi_stat->rx_ring_stats =
> +		krealloc_array(vsi_stat->rx_ring_stats, req_rxq,
> +			       sizeof(*vsi_stat->rx_ring_stats),
> +			       GFP_KERNEL | __GFP_ZERO);
> +	if (!vsi_stat->rx_ring_stats) {
> +		vsi_stat->rx_ring_stats = rx_ring_stats;
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * ice_vsi_cfg_def - configure default VSI based on the type
>   * @vsi: pointer to VSI
> @@ -3011,66 +3070,6 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
>  	}
>  }
>  
> -/**
> - * ice_vsi_realloc_stat_arrays - Frees unused stat structures or alloc new ones
> - * @vsi: VSI pointer
> - */
> -static int
> -ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
> -{
> -	u16 req_txq = vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> -	u16 req_rxq = vsi->req_rxq ? vsi->req_rxq : vsi->alloc_rxq;
> -	struct ice_ring_stats **tx_ring_stats;
> -	struct ice_ring_stats **rx_ring_stats;
> -	struct ice_vsi_stats *vsi_stat;
> -	struct ice_pf *pf = vsi->back;
> -	u16 prev_txq = vsi->alloc_txq;
> -	u16 prev_rxq = vsi->alloc_rxq;
> -	int i;
> -
> -	vsi_stat = pf->vsi_stats[vsi->idx];
> -
> -	if (req_txq < prev_txq) {
> -		for (i = req_txq; i < prev_txq; i++) {
> -			if (vsi_stat->tx_ring_stats[i]) {
> -				kfree_rcu(vsi_stat->tx_ring_stats[i], rcu);
> -				WRITE_ONCE(vsi_stat->tx_ring_stats[i], NULL);
> -			}
> -		}
> -	}
> -
> -	tx_ring_stats = vsi_stat->tx_ring_stats;
> -	vsi_stat->tx_ring_stats =
> -		krealloc_array(vsi_stat->tx_ring_stats, req_txq,
> -			       sizeof(*vsi_stat->tx_ring_stats),
> -			       GFP_KERNEL | __GFP_ZERO);
> -	if (!vsi_stat->tx_ring_stats) {
> -		vsi_stat->tx_ring_stats = tx_ring_stats;
> -		return -ENOMEM;
> -	}
> -
> -	if (req_rxq < prev_rxq) {
> -		for (i = req_rxq; i < prev_rxq; i++) {
> -			if (vsi_stat->rx_ring_stats[i]) {
> -				kfree_rcu(vsi_stat->rx_ring_stats[i], rcu);
> -				WRITE_ONCE(vsi_stat->rx_ring_stats[i], NULL);
> -			}
> -		}
> -	}
> -
> -	rx_ring_stats = vsi_stat->rx_ring_stats;
> -	vsi_stat->rx_ring_stats =
> -		krealloc_array(vsi_stat->rx_ring_stats, req_rxq,
> -			       sizeof(*vsi_stat->rx_ring_stats),
> -			       GFP_KERNEL | __GFP_ZERO);
> -	if (!vsi_stat->rx_ring_stats) {
> -		vsi_stat->rx_ring_stats = rx_ring_stats;
> -		return -ENOMEM;
> -	}
> -
> -	return 0;
> -}
> -
>  /**
>   * ice_vsi_rebuild - Rebuild VSI after reset
>   * @vsi: VSI to be rebuild

