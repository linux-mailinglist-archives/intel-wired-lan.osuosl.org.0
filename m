Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TVkqBZl6S2p4SAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 11:51:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3A70EC94
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 11:51:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=4HvWkz0X;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A09F240A51;
	Mon,  6 Jul 2026 09:51:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Kfkgc0DvSxqa; Mon,  6 Jul 2026 09:51:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68F4640A80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783331475;
	bh=BYBZhplRdudVjZ0tSfbfUivOx27YdDhCEs3BTVtXds4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4HvWkz0XhNo0IpusQp0sWGeFPuXtAu7rQ66KHiMu8rfE48y/GJL9OSRO3u/NP+c44
	 S7L1sY9/tM+2YssozEtmfzk+IHwJXpQscxXzK6GoK5gIGFbG5KuQL5uTiEeB4J/TtK
	 3Ih3jU4t0KVwwJEfZ5eN7Sv+9OyKiAYRtJ/SZA2DB9gCEnBYwM7K14IanAi0OZcbWg
	 WajD6MmNxsjUSCRnQGwL+Sdzw70+mwgDkpVL8jgObDKyy4YoPsmU80KmIAlimbywEm
	 foGCsHfLlbtevPYd6/QMlpf2aRw27ULsAS/AntamndZq0h03223x9FarKRKA76XRqY
	 Ud/VRHt8dJqPA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68F4640A80;
	Mon,  6 Jul 2026 09:51:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id F1A71F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 09:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFF1A40142
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 09:51:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q4GhUb1s6Wa3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 09:51:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F042C400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F042C400AE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F042C400AE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 09:51:11 +0000 (UTC)
X-CSE-ConnectionGUID: tXHQIeHsQH+EK0qvmQAFRg==
X-CSE-MsgGUID: Hq0xcaDsQGiE32478Ehvsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="83824465"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="83824465"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 02:51:11 -0700
X-CSE-ConnectionGUID: z9CLoUOsTy2VFlZjUx6WyQ==
X-CSE-MsgGUID: w0LGO3M/SGmg5pUekZArgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="276884555"
Received: from unknown (HELO [10.217.160.239]) ([10.217.160.239])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 02:51:08 -0700
Message-ID: <a0fd140e-9c0a-4cee-a692-2e697bd4762f@linux.intel.com>
Date: Mon, 6 Jul 2026 11:51:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: xuanqiang.luo@linux.dev, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Xuanqiang Luo <luoxuanqiang@kylinos.cn>
References: <20260703104132.47419-1-xuanqiang.luo@linux.dev>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260703104132.47419-1-xuanqiang.luo@linux.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783331473; x=1814867473;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1cw2dtvKWTaAGRljDiJTLFfP1+KQjkYN/p7W+Z6InYo=;
 b=UAyoKqrczH8LX1VNgx3ZLfD65VLgfeuHxuuA253cnHNCnz7sq5Z4f1yl
 MitPolkHmNyzTrMQQ2zYxmIlj3yTYQr5ZvJvwFAPEjUXvK2/2VWuqfAO6
 zpQPvGLPKCWRBKA103KADk/diipzg4OFqy3RtEdhJgmSDr6qPIwE0HfJk
 3vvOchl/u+7EcUvs8NHlAI2MBN7/SAChHrE1FycgeF3qPKZvqLPW3miu7
 nCdRjTYaP0FTr4C64zsJRiFXF9TfS0ClHltHz21tf+7xSXK9fJ59+79+3
 fl6emBdE933xnyszu86//D003TXLSnCYxeWJ1n5W83wx/x5ezpkz2QQHK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UAyoKqrc
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] idpf: fix lan_regs leak on
 core init failure
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
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xuanqiang.luo@linux.dev,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:luoxuanqiang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:email,kylinos.cn:email,linux.intel.com:mid,linux.intel.com:from_mime,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5A3A70EC94



On 03/07/2026 12:41, xuanqiang.luo@linux.dev wrote:
> From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> 
> idpf_vc_core_init() gets the LAN memory region layout before mapping the
> regions and allocating vport resources. Both layout paths allocate
> hw->lan_regs, but later error paths return without freeing it.
> 
> idpf_vc_core_deinit() does not cover these paths because it returns unless
> IDPF_VC_CORE_INIT is set, and that bit is set only after core init
> succeeds.
> 
> Free hw->lan_regs on the post-allocation error paths and clear the
> pointer and region count.
> 
> Fixes: 6aa53e861c1a ("idpf: implement get LAN MMIO memory regions")
> Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index be66f9b2e101c..da49bb7b7e671 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -3479,6 +3479,7 @@ static int idpf_vport_params_buf_alloc(struct idpf_adapter *adapter)
>   */
>  int idpf_vc_core_init(struct idpf_adapter *adapter)
>  {
> +	struct idpf_hw *hw = &adapter->hw;
>  	int task_delay = 30;
>  	u16 num_max_vports;
>  	int err = 0;
> @@ -3550,15 +3551,18 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
>  	if (err) {
>  		dev_err(&adapter->pdev->dev, "Failed to map BAR0 region(s): %d\n",
>  			err);
> -		return -ENOMEM;
> +		err = -ENOMEM;
> +		goto err_lan_regs;
>  	}
>  
>  	pci_sriov_set_totalvfs(adapter->pdev, idpf_get_max_vfs(adapter));
>  	num_max_vports = idpf_get_max_vports(adapter);
>  	adapter->max_vports = num_max_vports;
>  	adapter->vports = kzalloc_objs(*adapter->vports, num_max_vports);
> -	if (!adapter->vports)
> -		return -ENOMEM;
> +	if (!adapter->vports) {
> +		err = -ENOMEM;
> +		goto err_lan_regs;
> +	}
>  
>  	if (!adapter->netdevs) {
>  		adapter->netdevs = kzalloc_objs(struct net_device *,
> @@ -3624,6 +3628,10 @@ int idpf_vc_core_init(struct idpf_adapter *adapter)
>  err_netdev_alloc:
>  	kfree(adapter->vports);
>  	adapter->vports = NULL;
> +err_lan_regs:
> +	kfree(hw->lan_regs);
> +	hw->lan_regs = NULL;
> +	hw->num_lan_regs = 0;
>  	return err;
>  
>  init_failed:

Does this apply? struct idpf_hw was removed in 9f4334ac4a5a ("idpf: refactor
idpf to use libie control queues") [1].

[1] https://lore.kernel.org/intel-wired-lan/20260608144127.2751230-10-larysa.zaremba@intel.com/

Thanks,
Marcin
