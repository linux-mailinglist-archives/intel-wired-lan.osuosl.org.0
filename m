Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hDhKHZhHRWrq9woAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 19:00:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB596F0159
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 19:00:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=TAkyo3Yh;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5167A418C7;
	Wed,  1 Jul 2026 17:00:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jcf1hyGr7fpS; Wed,  1 Jul 2026 17:00:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9136140932
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782925203;
	bh=PaapEG/0w2F/ZCT3Yos1qIyYlCxFdKMOGlwcZerx/iQ=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TAkyo3YhXk6YytT1vJ/p5FGYY1E9BWpdr4qffpEhBv7FdIf5pRl26YmDyUDTtFuk4
	 coC6JvaFSNRsnnakvdwER6tfVDSxuDV29YIC16WKxc72LSHgHvhJF6341LjJW7FeZV
	 rTX8yLPm88gysSL2FyTHcGwRDbBdOOFVJfmFcYeExiMLqdGCzPqGHtOI1rG4vXzlsE
	 /VO/Arsm/llBRkT/oZ4Bakhtqsm3dVxzklJIVHAMKI5mdJbMIfDZegxhyAbTe54rWa
	 42UNUSfio29+wWm73kB7L8c1HVaD+cbmDftYOv6MBmZLCU8htc4yyfKCJNlNG69m3J
	 jxXL+gJn/ahbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9136140932;
	Wed,  1 Jul 2026 17:00:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8924B127
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 17:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EE3240296
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 17:00:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ACRHBGwJbhZr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 17:00:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=ecree.xilinx@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4EFD640277
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EFD640277
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EFD640277
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 17:00:00 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-493bfe9f886so4845755e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jul 2026 10:00:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782925198; x=1783529998;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=PaapEG/0w2F/ZCT3Yos1qIyYlCxFdKMOGlwcZerx/iQ=;
 b=L82wiwZrqLkBWw2JV/CKOh1ti77bJAuXdyq65N1ILzfyI5lQvjEb2E1Caryrlrjy0q
 xEywHl7PP+efbj/k0RRDnA6u/kZeQhY6f44/6x6wYQGCNESF8xXP4NJQjEPYI9B45yJB
 uYk5znx7XJw1PViVm3CMO2rXIL/QzU0Lz2Yj9wEchFt1ViC18Eg/ClmMdB9aFOE3Xf6i
 gsy3RIdvh0XgW4vfliaqkCDbe+4KT1x674feGw371E2U7LDzdcnXPq9MTMtchW7DvrCm
 U3pB0iyp+AVkQYCaej6VfvrCYamy7FNpx9JiyKxx+9hmjQBP7/95BUJkLBYQzZyVi6EV
 Ju4w==
X-Forwarded-Encrypted: i=1;
 AFNElJ8Fyy/XpJVNJrkoQ5cN4BOSgevvWoNO4t6bGINRQVOQwKDm6FtU14aOV2bhpjOOmrjmBax5PYJo82/2sn8yn2k=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxzl7NRTkEoFiyZzmsuawiaQxq/hgsTrTgCXzwhK8f5FUxo5USV
 eurjiGhH5IxlfY+BwAGgg0f/Tnn72RNMqqteGjH9Upa0MyRlybE8oI3C
X-Gm-Gg: AfdE7cnvS6BVm1vkuxpSexcYkm9b0AwA2E0M10fUSu8elBdvwCJzpgaX5KJuqdbih4u
 q7m4O5iGh0FtgT9V2ETg17u3CjpJRTwFCwzQHVyYM1UVb4VJ3HeejgJuHi5N46hThw0YGIAmSW/
 bm3qQAegTpxQHx1AsiEjVI2CpcLuGPhcMah5YqCUw+b+Rp7FfvPM72DseMR+SEJEdvD/NN2nChh
 yQe/DtyQjb0f+EnaWyInA3Wbw7EM3Uk+luRs1tvCNj2v2VN7rpRXfoN+0E7LLy28IqGXJRKykxE
 A54M80yJQjf347Z2QqZgnXcE5UsEn02JP5S1o6D0PlYcRR1F8DwHSKZhnq+W0T0B5qbggVxmWUh
 iyab0RsAXw/fy0OJ3YdVTYBZFvfidh/cs9uPawOtfV1QDxzRmKKMa6yb5t3+XqjhUAdilrxs9PM
 98iedAsfNGK8iBAmzjh7Qwb+Ekla1RL72gtQYdCz1OnAwUF0ib7INre8foNji+xWwuKGtsjVxEN
 wA=
X-Received: by 2002:a05:600c:8590:b0:492:6f9b:572e with SMTP id
 5b1f17b1804b1-493c2baeeeamr29176415e9.37.1782925198152; 
 Wed, 01 Jul 2026 09:59:58 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493be4c9f78sm92659965e9.5.2026.07.01.09.59.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jul 2026 09:59:57 -0700 (PDT)
Message-ID: <df6a8720-fa5e-490b-bfb5-817ba53ff59b@gmail.com>
Date: Wed, 1 Jul 2026 17:59:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Mike Rapoport (Microsoft)" <rppt@kernel.org>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Manish Chopra <manishc@marvell.com>,
 Paolo Abeni <pabeni@redhat.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-net-drivers@amd.com,
 netdev@vger.kernel.org
References: <20260701-b4-drivers-ethernet-v1-0-58776615db6e@kernel.org>
 <20260701-b4-drivers-ethernet-v1-4-58776615db6e@kernel.org>
Content-Language: en-GB
From: Edward Cree <ecree.xilinx@gmail.com>
In-Reply-To: <20260701-b4-drivers-ethernet-v1-4-58776615db6e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782925198; x=1783529998; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PaapEG/0w2F/ZCT3Yos1qIyYlCxFdKMOGlwcZerx/iQ=;
 b=PEZ9gaUl59Mw5soYsTiocrTgaDJENSyUR966m+MgFqNDB6OncRzlkU64jbCde0X8gT
 0066IZdbRmPY0tVeW8H1rxoV6FLeah94Ug09AXRAGRUtNZnVtTrNvSwhpy1EDj55Tor/
 5c4Nx/E0mkaR2RP2Afgm5mAA/OifRi4poRx9AkIjbAtDiPi6jKSHIIxY/jRrqwMUzReW
 KUKBwVKDOFHntCyz3k/9AtSNzY62mPvzHSQdCNZIm+OiYFGM44GvYf6mCCWLuK7KRNNh
 ddEq6SfzwMGC90uS+7rsipLLP8fyHCSQOcLgkZp4+WSc6R6zJZ309SiX4q1p0znAVDIe
 s1Fw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=PEZ9gaUl
Subject: Re: [Intel-wired-lan] [PATCH 4/4] sfc: use kmalloc() to allocate
 logging buffer
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
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ecreexilinx@gmail.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ecreexilinx@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AB596F0159

On 01/07/2026 14:57, Mike Rapoport (Microsoft) wrote:
> efx_mcdi_init() allocates a logging buffer for MCDI firmware
> communication diagnostics.
> 
> This buffer can be allocated with kmalloc() as there's nothing special
> about it to go directly to the page allocator.
> 
> kmalloc() provides a better API that does not require ugly casts and
> kfree() does not need to know the size of the freed object.
> 
> Performance difference between kmalloc() and __get_free_pages() is not
> measurable as both allocators take an object/page from a per-CPU list for
> fast path allocations.
> 
> For the slow path the performance is anyway determined by the amount of
> reclaim involved rather than by what allocator is used.
> 
> Replace use of __get_free_page() with kmalloc() and free_page() with
> kfree().
> 
> Link: https://lore.kernel.org/all/635405e4-9423-4a25-a6e7-e03c8ea0bcbe@redhat.com
> Signed-off-by: Mike Rapoport (Microsoft) <rppt@kernel.org>

Reviewed-by: Edward Cree <ecree.xilinx@gmail.com>

> ---
>  drivers/net/ethernet/sfc/mcdi.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/sfc/mcdi.c b/drivers/net/ethernet/sfc/mcdi.c
> index e65db9b70724..b806d3d90c42 100644
> --- a/drivers/net/ethernet/sfc/mcdi.c
> +++ b/drivers/net/ethernet/sfc/mcdi.c
> @@ -7,6 +7,7 @@
>  #include <linux/delay.h>
>  #include <linux/moduleparam.h>
>  #include <linux/atomic.h>
> +#include <linux/slab.h>
>  #include "net_driver.h"
>  #include "nic.h"
>  #include "io.h"
> @@ -71,7 +72,7 @@ int efx_mcdi_init(struct efx_nic *efx)
>  	mcdi->efx = efx;
>  #ifdef CONFIG_SFC_MCDI_LOGGING
>  	/* consuming code assumes buffer is page-sized */
> -	mcdi->logging_buffer = (char *)__get_free_page(GFP_KERNEL);
> +	mcdi->logging_buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
>  	if (!mcdi->logging_buffer)
>  		goto fail1;
>  	mcdi->logging_enabled = mcdi_logging_default;
> @@ -112,7 +113,7 @@ int efx_mcdi_init(struct efx_nic *efx)
>  	return 0;
>  fail2:
>  #ifdef CONFIG_SFC_MCDI_LOGGING
> -	free_page((unsigned long)mcdi->logging_buffer);
> +	kfree(mcdi->logging_buffer);
>  fail1:
>  #endif
>  	kfree(efx->mcdi);
> @@ -138,7 +139,7 @@ void efx_mcdi_fini(struct efx_nic *efx)
>  		return;
>  
>  #ifdef CONFIG_SFC_MCDI_LOGGING
> -	free_page((unsigned long)efx->mcdi->iface.logging_buffer);
> +	kfree(efx->mcdi->iface.logging_buffer);
>  #endif
>  
>  	kfree(efx->mcdi);
> 

