Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YP+SMDaJ6Gk6LgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 10:39:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 848064438FE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Apr 2026 10:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C03940698;
	Wed, 22 Apr 2026 08:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T6-3oZFJ_Vb6; Wed, 22 Apr 2026 08:39:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3E0F4081D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776847154;
	bh=8Gw4w2Dl7a6FO2pEPaCgqdLjYVopqglpNJ3OhQU//m0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rd7Tv1Bgs4wCDBXAcVUmvwQYpUgX/IWv7ODzm5qBGIh4J0HLPd7/cFJsKcI7ex3EF
	 Z2VzHMaaBgZHJUsZLtIZIXNJVxqzXZKuYF3xzS7RrGfkEyuB0qIbBEFx/yN2vJ1OAI
	 rIs8BsBv1XzYuRrEZd79LfWw1iNFjT+E5g9VoLAS1zrv5BnFQPdZ20cTsQFhi/S/9H
	 yXLmnubAXJ0Z0ITfEn650hUlcCq1DJfr0fNNndLaiDuFQvk7ZbE9X4uIr8fx/ODfeL
	 kYN8prezJNOzWlAnyp1uyzMMa9CsIQqqR12okkSWi3zgaY33fc4M2QWuWdZgUg4GQ2
	 4hyHYo5utdbVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3E0F4081D;
	Wed, 22 Apr 2026 08:39:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C1A59257
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 08:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BAFCA846CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 08:39:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ajAzvr7uxOCP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Apr 2026 08:39:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4FC9E846CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4FC9E846CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4FC9E846CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Apr 2026 08:39:11 +0000 (UTC)
X-CSE-ConnectionGUID: PWQx2eBNTgOgsKzbQBUkPA==
X-CSE-MsgGUID: Njh+X6o9S4KzY1PxeZsbhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="76827704"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="76827704"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 01:39:10 -0700
X-CSE-ConnectionGUID: bgQrZQfHQaazekliRtVgvg==
X-CSE-MsgGUID: TjLeu755Si6KxtFXz56UZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="227957981"
Received: from mohdfai2-mobl.gar.corp.intel.com (HELO [10.247.20.189])
 ([10.247.20.189])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 01:39:08 -0700
Message-ID: <dfdf4a8c-41cd-482f-baf6-64fe82698453@linux.intel.com>
Date: Wed, 22 Apr 2026 16:38:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Kohei Enju <kohei@enjuk.jp>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 kohei.enju@gmail.com, stable@vger.kernel.org
References: <20260415025226.114115-1-kohei@enjuk.jp>
Content-Language: en-US
From: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20260415025226.114115-1-kohei@enjuk.jp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776847151; x=1808383151;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=w73KMIQlHjPb+N1olkaiecVh/4Mf9dDmU8qVJtpkvSg=;
 b=OzpvqIxLaUY1Fy7FWxl/HVigYMNS+yQcluFXNbQhYyimXfI1UBqG/a7e
 EjrJjW89Eo/+5ebs5KNr6z9r5EKU7ERYjphG1MKSealICzFoYStRlV6pe
 4vv6XNhK3key+ojfVIoRJvmqrOdyhLvCZ51/iphQd5RUy+xtqU2SQKtvT
 nVyBSaWSnfXpxt3210QesP2Tqk36yW4JA24hMj8/V/TPiUv94ERfpgKt/
 UMwA1vwlo0h9ftjrllIAw7BixvUW9QFFL9UocfsXNE5oOhtYPVzERCyLG
 pQg6acuXRVEFtZ3ss0k/LDD4aZQT8vjDAoESgtfKI3+XPt2doKMPjQIWK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OzpvqIxL
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igc: fix potential skb
 leak in igc_fpe_xmit_smd_frame()
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
	FORGED_RECIPIENTS(0.00)[m:kohei@enjuk.jp,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:kohei.enju@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_SENDER(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[faizal.abdul.rahim@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 848064438FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 15/4/2026 10:52 am, Kohei Enju wrote:
> When igc_fpe_init_tx_descriptor() fails, no one takes care of an
> allocated skb, leaking it. [1]
> Use dev_kfree_skb_any() on failure.
> 
> Tested on an I226 adapter with the following command, while injecting
> faults in igc_fpe_init_tx_descriptor() to trigger the error path.
>   # ethtool --set-mm $DEV verify-enabled on tx-enabled on pmac-enabled on
> 
> [1]
> unreferenced object 0xffff888113c6cdc0 (size 224):
> ...
>    backtrace (crc be3d3fda):
>      kmem_cache_alloc_node_noprof+0x3b1/0x410
>      __alloc_skb+0xde/0x830
>      igc_fpe_xmit_smd_frame.isra.0+0xad/0x1b0
>      igc_fpe_send_mpacket+0x37/0x90
>      ethtool_mmsv_verify_timer+0x15e/0x300
> 
> Cc: stable@vger.kernel.org
> Fixes: 5422570c0010 ("igc: add support for frame preemption verification")
> Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> ---
> Changes:
>    v2:
>      - change to idiomatic style with goto (Simon)
>      - add Cc to stable (Alex)
>      - add reprodunction steps (Alex)
>    v1: https://lore.kernel.org/all/20260329145122.126040-1-kohei@enjuk.jp/
> ---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 8a110145bfee..02dd9f0290a3 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -109,10 +109,16 @@ static int igc_fpe_xmit_smd_frame(struct igc_adapter *adapter,
>   	__netif_tx_lock(nq, cpu);
>   
>   	err = igc_fpe_init_tx_descriptor(ring, skb, type);
> -	igc_flush_tx_descriptors(ring);
> +	if (err)
> +		goto err_free_skb_any;
>   
> +	igc_flush_tx_descriptors(ring);
>   	__netif_tx_unlock(nq);
> +	return 0;
>   
> +err_free_skb_any:
> +	__netif_tx_unlock(nq);
> +	dev_kfree_skb_any(skb);
>   	return err;
>   }
>   

Thanks for helping to fix this.

Reviewed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>


