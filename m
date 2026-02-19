Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIKyAdMHl2lmtwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 13:53:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5945315EC40
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Feb 2026 13:53:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05DFF40024;
	Thu, 19 Feb 2026 12:53:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v8PbYwapLIet; Thu, 19 Feb 2026 12:53:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 804E24064C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771505616;
	bh=Bz6jKW8viJw9g3OWmmtX/CeSN06+uH8YUDBv1kHEpXk=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G9qs4gVGTno8jR9v6AFz28ZRPgLunhaHIqHPF2kr1qjclMF8pyd8YIRFdNFPt+6wh
	 RrLCjdXuiUXdu2K22gUxf36j0hn8cS5bTuo9PasWeGBS50YwDg+eVIdLmwELB93dzv
	 ePnWxixPC1YWQ3tmsqC0YC4LPqNhIX9rnysYhZMVKdH9jVReAw9aZINrlTIfOx1IEM
	 3D4mnMhiY0BII3Po4wGjRKpsNN1Zk25dS3pfd0FmnOtSi1wQcoItTycdk64Xylydvo
	 NG4lG3+is+yUGtLEz+LLK+VYuuvej3ZKVsNMsy/ikh6bTDV+ksVZYXFC8JwqGtopLe
	 UI2WJmdQ8uKpg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 804E24064C;
	Thu, 19 Feb 2026 12:53:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 9EC831CE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 12:53:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8459A40691
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 12:53:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r4rm6TaOLXsp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Feb 2026 12:53:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AFFA1404C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFFA1404C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFFA1404C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Feb 2026 12:53:34 +0000 (UTC)
X-CSE-ConnectionGUID: tYer9ND1RPiIBHMca4kaKQ==
X-CSE-MsgGUID: b6XGNjzMR5KauVCpgAbUUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11705"; a="72765875"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="72765875"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 04:53:33 -0800
X-CSE-ConnectionGUID: khK1/qZGTE2Cj3f2xIopWA==
X-CSE-MsgGUID: 7iOclODnQzqetEIeZgKamA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,299,1763452800"; d="scan'208";a="219511560"
Received: from unknown (HELO [10.217.181.1]) ([10.217.181.1])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 04:53:33 -0800
Message-ID: <650853a0-6fdb-42cb-9feb-c9166439bcaa@linux.intel.com>
Date: Thu, 19 Feb 2026 13:53:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
Cc: netdev@vger.kernel.org
References: <20260217130039.1802805-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260217130039.1802805-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771505614; x=1803041614;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=KvKfnnXRIGiSC2qzkC6wSjgCJkoB/qA7zqQFhWOs+0c=;
 b=PySoHfpMR88w75cr/TMfFShZN46iWxVehw6+3rgXdBcLOtpW5yESYp2a
 fsFqFQKHBZ2j/s8rAzBaBE+ttR8dEYr++o5YXK1MhgqZhK7P+8K3JO808
 7hgo+utuhQKNVrwgXOq7Tc43fkdN9Wc5hI8hv2gRPDxl/vkt5co/sgGPv
 x1I9T+QIYdf4mRVC2PfJYEx36gsE7jnP6pkxIuK39g7pQyp54Y89tGLLs
 LGBR/s5fCC0EiT79lG3XlqIXICLc0vFC/lCmp9aMZKQ0U4bKKxD58aMCz
 7SAcELgElgvDIFidgOpRdgKIa8OwkI4wYjnkKKWiJ/nsvPt8EN2iyYieD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PySoHfpM
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: implement symmetric
 RSS hash configuration
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
X-Spamd-Result: default: False [-0.61 / 15.00];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5945315EC40
X-Rspamd-Action: no action



On 17.02.2026 14:00, Aleksandr Loktionov wrote:
> The driver advertises symmetric RSS support via supported_input_xfrm
> but ice_set_rxfh() ignored the input_xfrm parameter, making it

s/ignored/ignores/

> impossible to configure symmetric hashing.
> 
> Fix ice_set_rxfh() to check rxfh->input_xfrm and call
> ice_set_rss_hfunc() with ICE_AQ_VSI_Q_OPT_RSS_HASH_SYM_TPLZ when
> RXH_XFRM_SYM_XOR is requested.
> 
> Modify ice_set_rss_vsi_ctx() to use vsi->rss_hfunc instead of
> hardcoding ICE_AQ_VSI_Q_OPT_RSS_HASH_TPLZ, and export it for
> use by ice_set_rxfh().
> 
> The kernel requires get_rxfh_fields() to report symmetric hash
> configurations when symmetric transforms are supported. Update
> ice_get_rxfh_fields() to return symmetric field configuration
> (src+dst IP and ports) for all flow types.
> 
> Tested with tools/testing/selftests/drivers/net/hw/rss_input_xfrm.py
> 
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> v1 -> v2 preserve valid symmetric RSS fields.
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 45 ++++++++++++++++----
>  drivers/net/ethernet/intel/ice/ice_lib.c     |  7 +--
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  1 +
>  3 files changed, 41 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> index c6bc29c..27c97ca 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> @@ -3008,14 +3008,18 @@ ice_set_rxfh_fields(struct net_device *netdev,
>  	return 0;
>  }
>  
> +#define ICE_RSS_ALLOWED_FIELDS	(RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3)
> +#define ICE_RSS_L3_PAIR		(RXH_IP_SRC | RXH_IP_DST)
> +#define ICE_RSS_L4_PAIR		(RXH_L4_B_0_1 | RXH_L4_B_2_3)
> +
>  static int
>  ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
>  {
>  	struct ice_netdev_priv *np = netdev_priv(netdev);
>  	struct ice_vsi *vsi = np->vsi;
>  	struct ice_pf *pf = vsi->back;
> +	u64 l3, l4, hash_flds;
>  	struct device *dev;
> -	u64 hash_flds;
>  	bool symm;
>  	u32 hdrs;
>  
> @@ -3037,8 +3041,10 @@ ice_get_rxfh_fields(struct net_device *netdev, struct ethtool_rxfh_fields *nfc)
>  
>  	hash_flds = ice_get_rss_cfg(&pf->hw, vsi->idx, hdrs, &symm);
>  	if (hash_flds == ICE_HASH_INVALID) {
> -		dev_dbg(dev, "No hash fields found for the given header type, vsi num = %d\n",
> +		/* Provide default symmetric hash fields when no config exists */
> +		dev_dbg(dev, "No RSS config for this flow, using symmetric defaults, vsi num = %d\n",
>  			vsi->vsi_num);
> +		nfc->data = RXH_IP_SRC | RXH_IP_DST | RXH_L4_B_0_1 | RXH_L4_B_2_3;

This is the same as ICE_RSS_ALLOWED_FIELDS, use it or:
#define ICE_RSS_DEFAULT_FIELDS ICE_RSS_ALLOWED_FIELDS

>  		return 0;
>  	}

Thanks,
Marcin

---8<---
