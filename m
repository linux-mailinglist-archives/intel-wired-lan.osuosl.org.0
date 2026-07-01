Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id keZYOP9HRWoJ+AoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 19:01:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BBD6F0198
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 19:01:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=v4Wh3OST;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB24161545;
	Wed,  1 Jul 2026 17:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gt6-zUEjAz8P; Wed,  1 Jul 2026 17:01:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E6C361546
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782925302;
	bh=9CayLh9sn6SyGJSkLYj3J5jM0EP4cWj8SDd1cZ9x18Y=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=v4Wh3OSTog7Q4ZEJeiLsUMfcEloiIMdMnMFxQgq4AEquZG8bw7KqHfukrFy6k8nMD
	 soPt1q5tAeTWiuHcFEkr0QIFUs5wQ+s7+pTZdFGY5fj1GaIkhQhOkjEy2VOXwGlAvq
	 LQpUncfzBhND3gwzDqU4K4JmTjU0hfmPukaDNEM/EGatNCQSnBdr7YxocaopYomm94
	 SPYsLrG0hkBoXM29CVXvTweOSsz/H0ZOIGo2AOF5fU7I/uF5rne8dB2RcoLwmSnmME
	 87LbA/LyNVMZjtbMzMaYN25HWuGadrM3LEgvH4EuCi96KCaLdQlsE0/enmuhbQDShT
	 dYV5lSftFnoog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E6C361546;
	Wed,  1 Jul 2026 17:01:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 832F22EB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 17:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 68F916153F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 17:01:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iAlmG4zbWohk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 17:01:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32c; helo=mail-wm1-x32c.google.com;
 envelope-from=ecree.xilinx@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28E4660E63
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28E4660E63
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28E4660E63
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 17:01:39 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 5b1f17b1804b1-493b27c7451so20719715e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Jul 2026 10:01:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782925297; x=1783530097;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=9CayLh9sn6SyGJSkLYj3J5jM0EP4cWj8SDd1cZ9x18Y=;
 b=YLIIyK4H5CIiA7kv6zE1JFUHPZBpIFyqF+Jb9L2UcRKiKIaBgQyw3Oo/0UHHR7o9YD
 J4D/IdkmL+eSCpDwXuwCUdyk7j0xVEro00frzvQKthThnRJHQPH1YNrP20qXbwnTqJZT
 yOS/xem8C/xRC92laHGKudzQ8V24JUrCyoKa6Dnt1PKUKibbEgydeIP+XClyPXh/EN+2
 RBrZiuOxdcUGaxvWqgLblYMs82btpfjeDaaYU4xZBYeuR6TqtG8Y+3qNrs+GmDlM2ury
 zU3UTlyqRfQk/byFtOI6wawZbjMc3ELjUfqn5POIGELAw+FCYTxQRwtke6vq50D7fcf+
 m0uw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/lkg5ocyeUqw1jlLBqetlDSN26D67DFxLsWUK5B6AhcIsLWAsG26YYeWd3ukkboXKgGJNqRZq/buskDmZSbSU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzCTeZttuXWbPdazqRgjAf3mbeUROAg86mVwWiBEuntILhDh9sy
 XJ/34HWlBcxTQP/rTi1n8uAVeoQGu3e50381WaTJJhUlScIRpJbgCBTO
X-Gm-Gg: AfdE7cmLS2XXGOMHj82ywjW2LORp0eVP6Xef/bDAjD/hT/DkazdHIA/V/DIZInrZMdA
 0KBnciXhSVcYtKSzpzIBccv7ZJGXGasl878MoBNsnsfsVAeml5ppTTJ0wvTioHNf0dnk8t6ybzK
 oqbUsNEAuA9u5tTXTZuy1cmjYJYkAtll7eKFWBjgReE6QON3t7FiGpuEuAPqJ9VuDA+1+IGTdij
 7j8AjwrqU7H6B96/WdvBoGhhyZ4cB7+/aDESKwFV9nCb5NEnkwOOeCA+6APhEXXbtf/lAXccGF0
 eud6M+9kHY8158MJMBfMKCkz99ZBM57NvLh7lVRVP1crTsJh8IKz/l2qp+zAu6vCoN5xZyg5fSb
 Nw7PSEd7NuqsDHp4TnPYqL45v/I6HVcK6JJ+MUDhZtiMmbpAzr62BmkVU+NOVoFCzcEtrZnkNld
 XYJ0XgyYiTYHl4znLZdtAHeZOt9Tr3zrVrZM+gkBy45tBCH3eoC8YXgbmb2Z5yam5dEhIRA3Gvj
 Wg=
X-Received: by 2002:a05:600c:4685:b0:490:af63:2cb1 with SMTP id
 5b1f17b1804b1-493c231f913mr37259535e9.7.1782925296780; 
 Wed, 01 Jul 2026 10:01:36 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493be4bfd47sm122822645e9.2.2026.07.01.10.01.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Jul 2026 10:01:36 -0700 (PDT)
Message-ID: <d069d958-e069-45ea-87b6-95ad4a5fca29@gmail.com>
Date: Wed, 1 Jul 2026 18:01:35 +0100
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
 <20260701-b4-drivers-ethernet-v1-3-58776615db6e@kernel.org>
Content-Language: en-GB
From: Edward Cree <ecree.xilinx@gmail.com>
In-Reply-To: <20260701-b4-drivers-ethernet-v1-3-58776615db6e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1782925297; x=1783530097; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9CayLh9sn6SyGJSkLYj3J5jM0EP4cWj8SDd1cZ9x18Y=;
 b=RJYjS6Cp6Kjgun050pITyfxbmB8CgdL/u90v1KNdmFb5pVLLjkqbeqiX5QAbGkZCpm
 W+3B3L8ETxN27DkUiUNIhN8nqDY2sbTzX9QDmZmt2+VNHBjG2AfJaNldLgCmlJJW8aeT
 NYDUQRplzUIldvh3KimQVEbGqBQxPE39wOydkLoCxo+OCPIBik2OQbNo5gzqjKyJIQxI
 A4jSGRRvq8prz3cNYWedD2mHX9V9K/nxYuarvF7eql95ZFAWooEaeU6Jn653RIWLRbmX
 Xgt/qwjdlHCsgy1DvUi3ZCfpj3ZwGTy2hIQwR8T1FIcE990A959Ib2vG9aio9Q59pEIo
 Ctxg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=RJYjS6Cp
Subject: Re: [Intel-wired-lan] [PATCH 3/4] sfc/siena: use kmalloc() to
 allocate logging buffer
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rppt@kernel.org,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:manishc@marvell.com,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:skalluru@marvell.com,m:anthony.l.nguyen@intel.com,m:linux-kernel@vger.kernel.org,m:linux-mm@kvack.org,m:linux-net-drivers@amd.com,m:netdev@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[ecreexilinx@gmail.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ASN_FAIL(0.00)[6.3.1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.1.0.3.0.8.c.b.5.0.6.2.asn6.rspamd.com:query timed out];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[ecreexilinx@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D0BBD6F0198

On 01/07/2026 14:57, Mike Rapoport (Microsoft) wrote:
> efx_siena_mcdi_init() allocates a logging buffer for MCDI firmware
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

(resending since I hit 'reply' instead of 'reply all' the first time)

> ---
>  drivers/net/ethernet/sfc/siena/mcdi.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/sfc/siena/mcdi.c b/drivers/net/ethernet/sfc/siena/mcdi.c
> index 4d0d6bd5d3d1..048c1e6017c0 100644
> --- a/drivers/net/ethernet/sfc/siena/mcdi.c
> +++ b/drivers/net/ethernet/sfc/siena/mcdi.c
> @@ -7,6 +7,7 @@
>  #include <linux/delay.h>
>  #include <linux/moduleparam.h>
>  #include <linux/atomic.h>
> +#include <linux/slab.h>
>  #include "net_driver.h"
>  #include "nic.h"
>  #include "io.h"
> @@ -73,7 +74,7 @@ int efx_siena_mcdi_init(struct efx_nic *efx)
>  	mcdi->efx = efx;
>  #ifdef CONFIG_SFC_SIENA_MCDI_LOGGING
>  	/* consuming code assumes buffer is page-sized */
> -	mcdi->logging_buffer = (char *)__get_free_page(GFP_KERNEL);
> +	mcdi->logging_buffer = kmalloc(PAGE_SIZE, GFP_KERNEL);
>  	if (!mcdi->logging_buffer)
>  		goto fail1;
>  	mcdi->logging_enabled = efx_siena_mcdi_logging_default;
> @@ -116,7 +117,7 @@ int efx_siena_mcdi_init(struct efx_nic *efx)
>  	return 0;
>  fail2:
>  #ifdef CONFIG_SFC_SIENA_MCDI_LOGGING
> -	free_page((unsigned long)mcdi->logging_buffer);
> +	kfree(mcdi->logging_buffer);
>  fail1:
>  #endif
>  	kfree(efx->mcdi);
> @@ -142,7 +143,7 @@ void efx_siena_mcdi_fini(struct efx_nic *efx)
>  		return;
>  
>  #ifdef CONFIG_SFC_SIENA_MCDI_LOGGING
> -	free_page((unsigned long)efx->mcdi->iface.logging_buffer);
> +	kfree(efx->mcdi->iface.logging_buffer);
>  #endif
>  
>  	kfree(efx->mcdi);
> 
