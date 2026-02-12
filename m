Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yIQWAWGijWlh5gAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 10:50:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A7412C069
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Feb 2026 10:50:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D6E061218;
	Thu, 12 Feb 2026 09:50:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pSFf-Q0ZRAMk; Thu, 12 Feb 2026 09:50:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DDC2361213
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770889821;
	bh=GaRWbtuwRVGSt6f9Jbj4P3CmD5ia9A95Bv3HROx3vSo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=HDb8VTii29eHu6yIAkA4e4uQIHjYJ6VtQflwyMJJAFCxiF6rqRmvD+EohEcmkuPVj
	 4vU2PXktqE/fi1i60DTLhMsZ1SNBNPMjxKOG0Auw7p0DQYZPNmAhFfbOF4DzzwvTv6
	 ni7mtqpVTqtGWrtSm+IE2yH/Dw46PlEQ7bC1T6UuuQXDxG42WPO1O6mGr3SepkYrp7
	 pPReBvpZh0mpJCY1NTumGTF+GUyDi/06/kSRJ1HPySXnUTWcbZSknZbEF5sowBVwmE
	 AAiZGtOrhJF3dsm9jsieobusPrPjLHQAK0ZLOdFn7yWz/WKilX+CULemQ3FgEzRCfy
	 sGLBH85WncmKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDC2361213;
	Thu, 12 Feb 2026 09:50:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 43D2F23D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 09:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3E09281063
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 09:50:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iDQJHCPX-mEn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Feb 2026 09:50:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7264A81045
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7264A81045
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7264A81045
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Feb 2026 09:50:19 +0000 (UTC)
X-CSE-ConnectionGUID: b3wRcCWPSRSmRrHdxzMPUw==
X-CSE-MsgGUID: N/U4Z+UgSVmgzwidpCCwNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="82782878"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="82782878"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 01:50:19 -0800
X-CSE-ConnectionGUID: khGUbtBfQzOmjeG1/MJmHw==
X-CSE-MsgGUID: tYbxTNxvSGuPd92sVt40hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="216708934"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 01:50:15 -0800
Date: Thu, 12 Feb 2026 10:47:11 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Petr Oros <poros@redhat.com>
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Message-ID: <aY2hnyXFM9wplF3i@mev-dev.igk.intel.com>
References: <cover.1770882260.git.poros@redhat.com>
 <a76096058dd9b6d0cccaa5c2c699458351d02cec.1770882260.git.poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a76096058dd9b6d0cccaa5c2c699458351d02cec.1770882260.git.poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770889819; x=1802425819;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uqYHV6WHUvhDsOBpe5pUyJM0Yd06seajXeuYOQbHbXI=;
 b=fDHiFy8K9aPFSwW4cpYx8sb5QPWHZgahAj5mIrs2sPwsnoOJvxntepHG
 T9o02/z1avK3/khZtCIafIWQBfHtS1YhN855fAVqwpUwHEVra6PT8ocyJ
 NMvq32htb8R+mVzCySPGoWxMI9IcOwFS8VYDa1Ay9C9WtjXr4czP6Xaa0
 k2QsI5tnQ7yv6GHeqDK0L+9X5Izj5eehQ+xmchr3k3VvJMXPEaJD6PR27
 vNLcoBBsHPrfqhgD4Pno137D/zhbo9k/PYuaa3AaEi9e07apZBiasxUek
 aSABWceG2G35HMsijOAIWFl7vDjRONlMXDnjQ4zOddH3/CKBTxZyPGdog
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fDHiFy8K
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] ice: fix inverted ready
 check for VF representors
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:michal.swiatkowski@linux.intel.com,m:wojciech.drewek@intel.com,m:horms@kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mev-dev.igk.intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59A7412C069
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 08:53:10AM +0100, Petr Oros wrote:
> Commit 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")
> refactored the VF readiness check into a generic repr->ops.ready()
> callback but implemented ice_repr_ready_vf() with inverted logic:
> 
>   return !ice_check_vf_ready_for_cfg(repr->vf);
> 
> ice_check_vf_ready_for_cfg() returns 0 on success, so the negation
> makes ready() return non-zero when the VF is ready. All callers treat
> non-zero as "not ready, skip", causing ndo_get_stats64, get_drvinfo,
> get_strings and get_ethtool_stats to always bail out in switchdev mode.
> 
> Remove the erroneous negation. The SF variant ice_repr_ready_sf() is
> already correct (returns !active, i.e. non-zero when not active).
> 
> Fixes: 0f00a897c9fcbd ("ice: check if SF is ready in ethtool ops")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_repr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
> index cb08746556a670..2a84f656405828 100644
> --- a/drivers/net/ethernet/intel/ice/ice_repr.c
> +++ b/drivers/net/ethernet/intel/ice/ice_repr.c
> @@ -315,7 +315,7 @@ ice_repr_reg_netdev(struct net_device *netdev, const struct net_device_ops *ops)
>  
>  static int ice_repr_ready_vf(struct ice_repr *repr)
>  {
> -	return !ice_check_vf_ready_for_cfg(repr->vf);
> +	return ice_check_vf_ready_for_cfg(repr->vf);
>  }
>  
>  static int ice_repr_ready_sf(struct ice_repr *repr)
> -- 
> 2.52.0
> 

Thanks for fixing
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
