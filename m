Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gOd6IqfrjmkCGAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 10:15:19 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4F7134576
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Feb 2026 10:15:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B789940BE8;
	Fri, 13 Feb 2026 09:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M4_jaQ1VF_VB; Fri, 13 Feb 2026 09:15:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 400D0418D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770974116;
	bh=/aI/RvPXff0zxejNuXeAMJ8AfzV6hcKsLWaEIxM3Ns4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=70HwTmrq9jvzP3Qo6HjSoDkcfU+6Z53vOK+V81Z1XXieX/MMWLhXZrpjKg/LkWSl5
	 LRVDV4xpoZe63AOPT/VsK/Qpixs4pmZKYR5OXpeZaEYsJhEvy+F/5rQMw+xaQMREBq
	 OKNkstuURg2XdmnnSyOzCP0kzoDB5XNjJieVvXQWVMnGvygJta0P9w36Jd+13HkOlw
	 2tOxpbjbyegnK6ShjHWb0lRi8F4tLAlnAqhcqi3NkzYIVffzd+HeNKkxQl7DssdTDH
	 APBEIX1nADfsjGZIgswdHOxEu6jIqtNBIZxCdqHGuKugRgCCGpg00v+gbj3jvFG3Hy
	 clNhuS+kV/2HQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 400D0418D4;
	Fri, 13 Feb 2026 09:15:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 6B8B5EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 09:15:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5947540BE8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 09:15:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id izzzrGFrP7iF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Feb 2026 09:15:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 96A10408DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96A10408DE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96A10408DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Feb 2026 09:15:13 +0000 (UTC)
X-CSE-ConnectionGUID: CZeC8c0JRQOUvgQ3/ECNmA==
X-CSE-MsgGUID: 5ICL4gEHSkCyY+8t+XdZMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11699"; a="97615129"
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="97615129"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:15:13 -0800
X-CSE-ConnectionGUID: OH9LAOpQRcurjb6pGRoQyg==
X-CSE-MsgGUID: e/cLSZzoTsutbJxI4EFLEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,288,1763452800"; d="scan'208";a="212118474"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.18.23])
 ([10.246.18.23])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2026 01:15:09 -0800
Message-ID: <adfbee71-f472-4218-bf67-2eb26a0802d4@linux.intel.com>
Date: Fri, 13 Feb 2026 10:15:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Li Li <boolli@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Decotigny <decot@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
References: <20260123065806.3858623-1-boolli@google.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260123065806.3858623-1-boolli@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770974113; x=1802510113;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/pIuplh8SFOc8oTb32weFrdni83fxcjvjDU8Z3xFPJU=;
 b=R/3bv5beFJ/RA09wwHYuyhvy70XhQ1y4ysrBoxjS8xT7zMW0kaY9AqaU
 +J8AMNge7+xwg5BWf9mPZkWJgni8SHw0pMmUMrE0hyv0CmiJ4gZCzpAMZ
 s8iGknfjYudGxIUkG7xe0nDBXxxWGIfjg8S/do1lbg+uBG4ZDxc6KAuus
 0J8w8+MskZBg7EveBTHrS7tAfOpnNsdRc0IChDfAkCwlLwkC0MgDM4T2v
 Xbi3+O4HRisWpDkO0kEbjorKaTYcLJ06kE98vvgxmI/2SG3yX81J+xkbC
 ZvYSISqHf2pGCc4X89in+SY2GaCBlzvvspPYPruRCFLmzVoojFtzubSvk
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=R/3bv5be
Subject: Re: [Intel-wired-lan] [PATCH v2] idpf: nullify pointers after they
 are freed
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
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:kuba@kernel.org,m:edumazet@google.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:decot@google.com,m:anjali.singhai@intel.com,m:sridhar.samudrala@intel.com,m:brianvv@google.com,m:emil.s.tantilov@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim,linux.intel.com:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AA4F7134576
X-Rspamd-Action: no action



On 23.01.2026 07:58, Li Li via Intel-wired-lan wrote:
> rss_data->rss_key needs to be nullified after it is freed.
> Checks like "if (!rss_data->rss_key)" in the code could fail
> if it is not nullified.
> 
> Tested: built and booted the kernel.
> 
> Fixes: 83f38f210b85 ("idpf: Fix RSS LUT NULL pointer crash on early ethtool operations")
> Signed-off-by: Li Li <boolli@google.com>

Please add iwl-net for fixes, i.e. [PATCH iwl-net v2] in title.

Marcin

> ---
> Changes in v2:
>  - Remove the line to nullify vport->q_vector_idxs as it is not
>    necessary.
> 
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 131a8121839bd..f63ab58428d2e 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1308,6 +1308,7 @@ static struct idpf_vport *idpf_vport_alloc(struct idpf_adapter *adapter,
>  
>  free_rss_key:
>  	kfree(rss_data->rss_key);
> +	rss_data->rss_key = NULL;
>  free_vector_idxs:
>  	kfree(vport->q_vector_idxs);
>  free_vport:

