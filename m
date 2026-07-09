Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mifuM2NiT2qhfgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 10:57:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCFC72E908
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 10:57:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=pWvCa6ZU;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C71E60E30;
	Thu,  9 Jul 2026 08:57:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zRf6EVKfrjQl; Thu,  9 Jul 2026 08:57:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 217A660E31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783587424;
	bh=S1+yy/gd7YMU7fv3ekMbZ9lG3UnAJb6KKGIYZA0P0io=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=pWvCa6ZUDibLKpDCLvwweW4k+WXSrElVUxMHNq5F27+TshXWDmR2xCbJY+rjOZ2fY
	 iFBE0krEzO/RBq0MNe2JmcEbhyY47lYlAytueu07FjesARlICP2Ucz1U03YMHWNd0L
	 shyYpRdBskT2JQxNFb+42dSB2i9lWyJOTcJ1EofVfVm/sOnNOoumMtCcePw2D+OtCG
	 XcPljiI4KlD21g3F+XPYGbEh63vjCkf9PUDI9uQkfklIge8OwtE2C9+akFN5385b6+
	 bKovaysOeFVRa5BUdjqzI1gF6QzOr5ipQ3JguCyIcVbF3KZxxG+0eemWS82X3PkDna
	 07TqpXXYaNztg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 217A660E31;
	Thu,  9 Jul 2026 08:57:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 223ED320
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 08:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 13C8180DA8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 08:57:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hgLfvDgjfLPh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2026 08:57:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 80FC280BCC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80FC280BCC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 80FC280BCC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 08:57:00 +0000 (UTC)
X-CSE-ConnectionGUID: XMY+E90QRFSkfoj9rC2jNQ==
X-CSE-MsgGUID: UvhfewT/SsiQx5M8clZ1mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="95635555"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="95635555"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 01:56:58 -0700
X-CSE-ConnectionGUID: A3bHZUQ0Ru6ensSW7bzRNw==
X-CSE-MsgGUID: OsAiCe0KTTS8kcqsM7afJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="253433070"
Received: from mszycik-desk.igk.intel.com (HELO [10.217.160.239])
 ([10.217.160.239])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 01:56:55 -0700
Message-ID: <95ce1e0a-125a-4688-a611-76e3731150a4@linux.intel.com>
Date: Thu, 9 Jul 2026 10:56:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Cc: Ivan Vecera <ivecera@redhat.com>, Alice Michael
 <alice.michael@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20260708125755.706263-1-poros@redhat.com>
 <20260708125755.706263-2-poros@redhat.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260708125755.706263-2-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783587420; x=1815123420;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FBz5uQJLwd+dmQJk3GQgUqgAPz7OmVKJ4pojIYBkSmo=;
 b=gyONyuhjAC9BwCX3PBZ44RZfwawG17bE1yI7c07sL92QrblL6lGCdlop
 tSa2EnZymKZE1uxD0uAeemOqUW1lUwmbc7qy/4Y9RgVZSCXqP0OGSU5gw
 9ofZ5tUz/kHv50odMPqCJGyIOZRPCFA5IjO6OW0t0U48Lu3azAyi881f9
 dl1VPhRX8OzqYR3uBZovOo7HcGuENpZCih4j+lgBtIssROwAnvIyhfxYa
 5XIarY6xR8OjhYnx1HuCA1gLbKQrRaNXnyowE+A2jwYH9+l7wCLQVy31R
 lFoYI1L+n3JsUtXLVu6nCjxRrGkbey9WrU3ShyDxgWzpTMM5pd/YDEBiA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gyONyuhj
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/2] ice: skip per-VLAN
 promisc rules when default VSI Rx rule is set
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:alice.michael@intel.com,m:przemyslaw.kitszel@intel.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:martyna.szapar-mudlaw@linux.intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5BCFC72E908



On 08/07/2026 14:57, Petr Oros wrote:
> When an ice port in a vlan-filtering bridge goes promiscuous (typical for
> bond slaves), the driver installs a per-VLAN ICE_SW_LKUP_PROMISC_VLAN rule
> for every VID on top of the broad ICE_SW_LKUP_DFLT VSI Rx rule. Each rule
> consumes one of the ~32K Flow Lookup Unit (FLU) entries the device shares
> across PFs, so a wide trunk (vid 2-4094) over several PFs overruns the
> pool: firmware rejects further Add Switch Rules with ENOSPC (AQ 0x10) and
> the DFLT Rx rule itself fails to install:
> 
>   ice 0000:5c:00.1: Failed to set VSI 14 as the default forwarding
>                     VSI, error -5
>   ice 0000:5c:00.1 ens1f1: Error -5 setting default VSI 14 Rx rule
> 
> Once a switch context is overrun the retries can also come back as ENOENT
> (AQ 0x2), which has misled triage toward a perceived recipe binding defect
> rather than a capacity issue.
> 
> The DFLT rule already catches every packet on the port regardless of VLAN
> tag, so the per-VLAN promisc expansion is redundant while it is installed.
> Skip it at the two sites that drive it, ice_set_promisc() and
> ice_vlan_rx_add_vid(), keyed on ice_is_vsi_dflt_vsi() rather than the
> netdev IFF_PROMISC flag so a failed or LAG-suppressed DFLT install still
> falls back to the per-VLAN rules.
> 
> IFF_ALLMULTI and IFF_PROMISC can reach ice_vsi_sync_fltr() in separate
> passes (a bridge join sets them through separate calls), so the allmulti
> pass may expand the per-VID rules before the DFLT rule exists. Drop those
> now-redundant rules right after ice_set_dflt_vsi() installs the DFLT rule;
> ice_vsi_exit_dflt_promisc() reinstates them when promisc is cleared.
> 
> ice_vsi_sync_fltr() subscribed multicast promiscuity only inside the
> "default VSI not yet in use" branch, so a promiscuous VSI that finds the
> default VSI rule already present (owned by another VSI, or preserved
> across a switchdev session) ended up in unicast promisc with no multicast
> subscription. Issue ice_set_promisc(ICE_MCAST_PROMISC_BITS) whenever the
> netdev is promiscuous; it is idempotent and returns 0 if the rule is
> already present.
> 
> Fixes: 1273f89578f2 ("ice: Fix broken IFF_ALLMULTI handling")
> Signed-off-by: Petr Oros <poros@redhat.com>

LGTM
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> ---
> v4 (review comments from Marcin Szycik):
> - Reworded the ice_clear_promisc() and the per-VID cleanup comments.
> - Flipped the ice_vsi_clear_vlan_mc_promisc() guard to an early return to
>   reduce indentation, and noted that the clear is best-effort.
> No functional change.
> 
> v3: https://lore.kernel.org/all/20260701133601.2118382-2-poros@redhat.com/
> v2: https://lore.kernel.org/all/20260622113428.2565255-2-poros@redhat.com/
> v1: https://lore.kernel.org/all/89efbea9831175e6f57e9fe8557f7a0e48e050b7.1781786935.git.poros@redhat.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 109 +++++++++++++++++-----
>  1 file changed, 88 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index b43d420ece99ca..f1fef26eeadac9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -274,7 +274,8 @@ static int ice_set_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  	if (vsi->type != ICE_VSI_PF)
>  		return 0;
>  
> -	if (ice_vsi_has_non_zero_vlans(vsi)) {
> +	/* skip per-VID expansion; the DFLT Rx rule already covers every VID */
> +	if (ice_vsi_has_non_zero_vlans(vsi) && !ice_is_vsi_dflt_vsi(vsi)) {
>  		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
>  		status = ice_fltr_set_vlan_vsi_promisc(&vsi->back->hw, vsi,
>  						       promisc_m);
> @@ -304,9 +305,20 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  		return 0;
>  
>  	if (ice_vsi_has_non_zero_vlans(vsi)) {
> -		promisc_m |= (ICE_PROMISC_VLAN_RX | ICE_PROMISC_VLAN_TX);
> +		u8 vlan_promisc_m = promisc_m | ICE_PROMISC_VLAN_RX |
> +				    ICE_PROMISC_VLAN_TX;
> +		int vid0_status;
> +
> +		/* the vid=0 rule may be in either recipe (the recipe used to
> +		 * set it is not recorded), so clear both; clearing an absent
> +		 * rule returns 0
> +		 */
>  		status = ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
> -							 promisc_m);
> +							 vlan_promisc_m);
> +		vid0_status = ice_fltr_clear_vsi_promisc(&vsi->back->hw,
> +							 vsi->idx, promisc_m, 0);
> +		if (!status)
> +			status = vid0_status;
>  	} else {
>  		status = ice_fltr_clear_vsi_promisc(&vsi->back->hw, vsi->idx,
>  						    promisc_m, 0);
> @@ -317,6 +329,61 @@ static int ice_clear_promisc(struct ice_vsi *vsi, u8 promisc_m)
>  	return status;
>  }
>  
> +/**
> + * ice_vsi_exit_dflt_promisc - drop the default VSI Rx rule on promisc off
> + * @vsi: the VSI leaving promiscuous mode
> + *
> + * For an IFF_ALLMULTI VSI with VLANs the per-VID multicast rules are
> + * reinstated before the default rule is cleared so coverage never lapses;
> + * the then redundant vid=0 rule is dropped best-effort. The callees log
> + * their own failures, so error returns are not re-logged here.
> + *
> + * Return: 0 on success, negative on error with the default rule left in place.
> + */
> +static int ice_vsi_exit_dflt_promisc(struct ice_vsi *vsi)
> +{
> +	struct ice_vsi_vlan_ops *vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
> +	struct net_device *netdev = vsi->netdev;
> +	struct ice_hw *hw = &vsi->back->hw;
> +	bool restore_mc;
> +	int err;
> +
> +	restore_mc = (vsi->current_netdev_flags & IFF_ALLMULTI) &&
> +		     ice_vsi_has_non_zero_vlans(vsi);
> +
> +	if (restore_mc) {
> +		err = ice_fltr_set_vlan_vsi_promisc(hw, vsi,
> +						    ICE_MCAST_VLAN_PROMISC_BITS);
> +		if (err && err != -EEXIST)
> +			return err;
> +	}
> +
> +	err = ice_clear_dflt_vsi(vsi);
> +	if (err)
> +		return err;
> +
> +	if (netdev->features & NETIF_F_HW_VLAN_CTAG_FILTER)
> +		vlan_ops->ena_rx_filtering(vsi);
> +
> +	if (restore_mc)
> +		ice_fltr_clear_vsi_promisc(hw, vsi->idx, ICE_MCAST_PROMISC_BITS,
> +					   0);
> +
> +	return 0;
> +}
> +
> +/* Drop the per-VID multicast promisc rules made redundant by the default
> + * VSI Rx rule; best-effort, a leftover is harmless while that rule stands.
> + */
> +static void ice_vsi_clear_vlan_mc_promisc(struct ice_vsi *vsi)
> +{
> +	if (!ice_vsi_has_non_zero_vlans(vsi))
> +		return;
> +
> +	ice_fltr_clear_vlan_vsi_promisc(&vsi->back->hw, vsi,
> +					ICE_MCAST_VLAN_PROMISC_BITS);
> +}
> +
>  /**
>   * ice_vsi_sync_fltr - Update the VSI filter list to the HW
>   * @vsi: ptr to the VSI
> @@ -429,30 +496,31 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>  				err = 0;
>  				vlan_ops->dis_rx_filtering(vsi);
>  
> -				/* promiscuous mode implies allmulticast so
> -				 * that VSIs that are in promiscuous mode are
> -				 * subscribed to multicast packets coming to
> -				 * the port
> +				/* a prior allmulti pass may have added per-VID
> +				 * rules now covered by the DFLT rule
>  				 */
> -				err = ice_set_promisc(vsi,
> -						      ICE_MCAST_PROMISC_BITS);
> -				if (err)
> -					goto out_promisc;
> +				ice_vsi_clear_vlan_mc_promisc(vsi);
>  			}
> +
> +			/* Promiscuous mode implies allmulticast. Subscribe
> +			 * the VSI to all multicast even when the default VSI
> +			 * rule is already in use and the block above is
> +			 * skipped (it may be owned by another VSI, or
> +			 * preserved across a switchdev session); the unicast
> +			 * catch-all does not cover the multicast subscription.
> +			 */
> +			err = ice_set_promisc(vsi, ICE_MCAST_PROMISC_BITS);
> +			if (err)
> +				goto out_promisc;
>  		} else {
>  			/* Clear Rx filter to remove traffic from wire */
>  			if (ice_is_vsi_dflt_vsi(vsi)) {
> -				err = ice_clear_dflt_vsi(vsi);
> +				err = ice_vsi_exit_dflt_promisc(vsi);
>  				if (err) {
> -					netdev_err(netdev, "Error %d clearing default VSI %i Rx rule\n",
> -						   err, vsi->vsi_num);
>  					vsi->current_netdev_flags |=
>  						IFF_PROMISC;
>  					goto out_promisc;
>  				}
> -				if (vsi->netdev->features &
> -				    NETIF_F_HW_VLAN_CTAG_FILTER)
> -					vlan_ops->ena_rx_filtering(vsi);
>  			}
>  
>  			/* disable allmulti here, but only if allmulti is not
> @@ -3676,10 +3744,9 @@ int ice_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
>  	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state))
>  		usleep_range(1000, 2000);
>  
> -	/* Add multicast promisc rule for the VLAN ID to be added if
> -	 * all-multicast is currently enabled.
> -	 */
> -	if (vsi->current_netdev_flags & IFF_ALLMULTI) {
> +	/* skip the per-VID rule when the DFLT Rx rule already covers this VID */
> +	if ((vsi->current_netdev_flags & IFF_ALLMULTI) &&
> +	    !ice_is_vsi_dflt_vsi(vsi)) {
>  		ret = ice_fltr_set_vsi_promisc(&vsi->back->hw, vsi->idx,
>  					       ICE_MCAST_VLAN_PROMISC_BITS,
>  					       vid);

