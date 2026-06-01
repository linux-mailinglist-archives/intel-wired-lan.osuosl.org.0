Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IjoDJtOHWrDYgkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:19:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC0A61C420
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Jun 2026 11:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B658412D6;
	Mon,  1 Jun 2026 09:19:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KNqdqf3Us9Eo; Mon,  1 Jun 2026 09:19:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02689412DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780305559;
	bh=FRuJ/bTreyTUvoele0tt6dA2haaqR/nwmFpgSiNZgOE=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q6HhdyxyxirfA6p12yPsv3Cd4iBfrV9mUvO6YGyKGfOoh4RWcq4EFTVKX+8fUQXju
	 NeDI+AfuSLWNY2gvHlOLCys2tJPwjtHV67/W0Dn5+2QfBG2RvCcvPAgiUthpnMhxTj
	 GFyk+ejJ24kAE9RoQFxftF5ORDb5kcbJSd0/VVHe3RCVrwYFaMjw/+Yk9QblM00izU
	 Sbma1WNGFjASnQplG1Z7jWCf7KFDy+p/nzZpqOPA+FYJz1/UGrp0jVJi64DhW7YOIZ
	 BgCKXXyHnvH/c2UmrDMIFksm+CictfWe+9ZEU5D61LpTfQuX0CVQ8aALcyj853NEEK
	 M0z34N4eCD/7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02689412DE;
	Mon,  1 Jun 2026 09:19:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id A81552AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9A2EC412CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HVvSJibaP26z for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jun 2026 09:19:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 89602412B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 89602412B7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89602412B7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jun 2026 09:19:16 +0000 (UTC)
X-CSE-ConnectionGUID: uBtPonIGQFCyfDKEnvuf6Q==
X-CSE-MsgGUID: K2xq8wJeRiyC5mCRyFV6JQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84948307"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="84948307"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:19:15 -0700
X-CSE-ConnectionGUID: yAwssWEbRYOo/Yw4Utq+IA==
X-CSE-MsgGUID: 777dSKA9Q1moknFX8mAvDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="243619328"
Received: from unknown (HELO [10.217.160.157]) ([10.217.160.157])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:19:12 -0700
Message-ID: <f8a922da-8463-48b1-8e4b-a6bda0767d32@linux.intel.com>
Date: Mon, 1 Jun 2026 11:19:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Dawei Feng <dawei.feng@seu.edu.cn>, anthony.l.nguyen@intel.com
Cc: przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 jesse.brandeburg@intel.com, sln@onemain.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, jianhao.xu@seu.edu.cn, stable@vger.kernel.org,
 Zilin Guan <zilin@seu.edu.cn>
References: <20260527110205.1780595-1-dawei.feng@seu.edu.cn>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260527110205.1780595-1-dawei.feng@seu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780305556; x=1811841556;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wcQZubXFj92w5s2C5QPjxynJFvtcWsTj+RW8zM8eY3s=;
 b=GtdnsfURuPQqFjeDaI4naPJc0x7logSVgd/qBVqjf6DIKSVeYCIMNlWn
 NisyXHn++5Lx1EmfmpL0N6ir8I1Wfu4iiKWAb6v9Fu5WZcKIKrcdPnOt7
 VmB1H2Sz2RQCEmbBIkRaJn2uLDu+OXyB01S+7i/XhBhGT+n3bg+apqi9E
 RKFqrebwH2ZpyjY1sB8J7Q8UViU1u9TwcZqVccuMoJ8JytbrOpDTX+/fC
 L21qOWCLXcF53G4TjweXNvr8mcmX7TVCGVKjHsSMz2zPRNzSMq/MAHy72
 kMq5Ftr4Xj5aNCzhSq7PSHAzqcIMDGfCEzvosfOZZeMzKjFRCsOafzJfa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GtdnsfUR
Subject: Re: [Intel-wired-lan] [PATCH net] i40e: fix netdev leak in
 i40e_vsi_setup() error paths
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
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:dawei.feng@seu.edu.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jesse.brandeburg@intel.com,m:sln@onemain.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jianhao.xu@seu.edu.cn,m:stable@vger.kernel.org,m:zilin@seu.edu.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[seu.edu.cn:email,linux.intel.com:mid,intel.com:email,osuosl.org:dkim];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2DC0A61C420
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 27/05/2026 13:02, Dawei Feng wrote:
> i40e_config_netdev() allocates vsi->netdev for main and VMDQ VSIs. If
> i40e_netif_set_realnum_tx_rx_queues(), i40e_devlink_create_port(), or
> register_netdev() fails, i40e_vsi_setup() goes to err_netdev without
> releasing the netdev. The existing cleanup only frees the netdev after a
> successful register_netdev(), so these error paths leak the allocation.
> 
> Reorder the error paths at err_netdev to ensure proper cleanup of the
> allocated device.
> 
> The bug was first flagged by an experimental analysis tool we are
> developing for kernel memory-management bugs while analyzing
> v6.13-rc1. The tool is still under development and is not yet publicly
> available. Manual inspection confirms that the bug is still
> present in v7.1-rc5.
> 
> An x86_64 allyesconfig build showed no new warnings. As we do not have an
> Intel Ethernet Controller XL710 family adapter to test with, no runtime
> testing was able to be performed.
> 
> Fixes: 41c445ff0f48 ("i40e: main driver core")
> Cc: stable@vger.kernel.org
> 
> Signed-off-by: Zilin Guan <zilin@seu.edu.cn>
> Signed-off-by: Dawei Feng <dawei.feng@seu.edu.cn>

We could introduce additional goto label for i40e_config_netdev() instead of
if condition, but the latter is probably safer in this case (without splitting
the different VSI types setup to functions).

Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>

> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 6d4f9218dc68..1ced01b0cc09 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -14491,13 +14491,15 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
>  	if (vsi->netdev_registered) {
>  		vsi->netdev_registered = false;
>  		unregister_netdev(vsi->netdev);
> -		free_netdev(vsi->netdev);
> -		vsi->netdev = NULL;
>  	}
>  err_dl_port:
>  	if (vsi->type == I40E_VSI_MAIN)
>  		i40e_devlink_destroy_port(pf);
>  err_netdev:
> +	if (vsi->netdev) {
> +		free_netdev(vsi->netdev);
> +		vsi->netdev = NULL;
> +	}
>  	i40e_aq_delete_element(&pf->hw, vsi->seid, NULL);
>  err_vsi:
>  	i40e_vsi_clear(vsi);

