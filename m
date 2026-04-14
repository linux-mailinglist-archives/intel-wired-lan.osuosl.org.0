Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wChAHaSS3mnZFwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 21:16:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 397053FDF5E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2026 21:16:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9227842D26;
	Tue, 14 Apr 2026 19:16:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fwqDAFr8jKwr; Tue, 14 Apr 2026 19:16:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17B7042D24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776194208;
	bh=OTjtecZ1iSoz/j8YichwBmmBonCgsoUrO3OWetqEhiA=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2N50Xj3utoEU4EZh+CAmED94+cmLoPek7C4/orQn9WvmPFuduq11DTyzdIC4F2kuz
	 LZhiu1kD30OQSkAUW021GGgzLVP44T8yUU+6JzhcCgVVZJWKjHK85UnxgSdWvsPqnu
	 lZ+lQ7aU7nrTiTL4LWqwFNZyQ7xY3Klicd+yQs0eZXmfxNJJjB7a0gxZA8/1gseRNF
	 JVVMAGVYjJS3MwasOY/7yHnb8KSzO5h6sKuBCmZ7Lt611KddsIGyCsSwmgUg870nVt
	 2oC9QSuakpPN6bOJSK0PoPAI3Efe7LUtO3lncbKEayQgaMhHfYEXFoa6AV9D6r5PCd
	 o9bf2rysPzRQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17B7042D24;
	Tue, 14 Apr 2026 19:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 28674237
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 19:16:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A0A484AF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 19:16:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nPWwBZH6v0tL for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2026 19:16:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mschmidt@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F11958485E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F11958485E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F11958485E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 19:16:44 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-235-IxoqthjJMA6SYA5Z-4bJTg-1; Tue, 14 Apr 2026 15:16:41 -0400
X-MC-Unique: IxoqthjJMA6SYA5Z-4bJTg-1
X-Mimecast-MFC-AGG-ID: IxoqthjJMA6SYA5Z-4bJTg_1776194201
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-43d792fa6faso330492f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 12:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776194200; x=1776799000;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=OTjtecZ1iSoz/j8YichwBmmBonCgsoUrO3OWetqEhiA=;
 b=P2DFEuEARJ+loWVw64bg2Ahi0dNlRRS5dFUDCJwKPOQ7n1D59MiE3YM3XWtXtegyCA
 HOcoDM13MhVm9wwJRggIETpQrvPghhpNArWiTzpdceK7btqwMBfrG7DzE5PnBYp7sV6+
 249YP3vrPuxFIJ4tyVMcoAMox3caNNL90s7NZ/USjTka4tWlXFbSRLBGiRcIvhTguxvo
 Y8GLNQnTvFFBFPWbq2AX0NylTAQOaWDbaC34xYbJT/qs7kTOn+Dv+tk2pkgcgib+WUJe
 td6pZCdQD5fm7l0VTNLE/rB1KFJ7QuypvJkxbSVhq6rn/fUde23XSPSeBwwo5B8Pw6v2
 lbzg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8TxJCTmbVe9kTRO7LRS/BbafRWE4pkYxDtDvTBWh7+rci8zFLG0+4tJkmlJikZ4s7Pd/fFJyFBYb1tHR6IjGE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyLTFM9lHAyRWNDBoUOdUZZajtrMFD1WcnWVEt4y/yJMZNoya+M
 vxRvCrXL2Zg73xDRz5VmlPtS4S4A+Bzhld6tDmRfrtgFwPYSpQf+F5D5Mn6uMfVWuhfbvdFl2+c
 cO6hwd1tGJrlP3hdhiNGcbjUmTf9h5qns+2fA9Q1zAGMoapMnmY1wIRuzxqj9xJhiwQTo8vw=
X-Gm-Gg: AeBDieugr+I2aA+Ri2NUT3W97B++3MgKKGAEKUekbEJFgcZe7Xthauhk3tMvhCduBI4
 32nVce101SQ2+0BGPRyoENzOJByD3cT5rK7c4miC6mLAodJK+MLg+j0PF7aQIhz4OT5yJ3NSYZW
 fo/v6djHVjjJfOdV/3qbE5znl2HxRHs1wbA76EqFW6mk+oGUBsAVHCIAFO6rc/6eGzkBN3CnZkK
 MOfnRWyIcAX/xfFkvea/Gj+qip4ac+mRpfIb5j8v8Yk0KcrhJQyzUY63tE8UEYFfgiZWhGhu5Rl
 4xtErW0ZkyRo2Vclg+sa7GCSZm9YylDywmW9mOWkErOkLnyl10qErQdJTLumqZp1EmwXXkAxKsT
 BEQWjwvfpJZCMvfvY3ct4Ujmk9LGn2tAlEkr4atlBbf//dKo=
X-Received: by 2002:a05:600c:4689:b0:485:358b:e7ee with SMTP id
 5b1f17b1804b1-488d6655c82mr155399315e9.0.1776194200600; 
 Tue, 14 Apr 2026 12:16:40 -0700 (PDT)
X-Received: by 2002:a05:600c:4689:b0:485:358b:e7ee with SMTP id
 5b1f17b1804b1-488d6655c82mr155399085e9.0.1776194200138; 
 Tue, 14 Apr 2026 12:16:40 -0700 (PDT)
Received: from [192.168.1.77] (109-81-81-198.rct.o2.cz. [109.81.81.198])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d73b44b3esm27090422f8f.13.2026.04.14.12.16.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2026 12:16:39 -0700 (PDT)
Message-ID: <68b5cc9d-81d2-4ff5-9d3e-a6d6746dcb3e@redhat.com>
Date: Tue, 14 Apr 2026 21:16:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
References: <20260409102501.1447628-1-poros@redhat.com>
From: Michal Schmidt <mschmidt@redhat.com>
In-Reply-To: <20260409102501.1447628-1-poros@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: GN5m7kWf0tYIivB_WB7yvpwW24PhMZ94rbKzDQdf-Mw_1776194201
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1776194203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OTjtecZ1iSoz/j8YichwBmmBonCgsoUrO3OWetqEhiA=;
 b=VkXUI/g3loQQhli1XAfsiBcPhnQp2D8gazeJm1BeE7LV0CmO3h2XYmys1NHsUzUbdmPQuM
 +K6a1nDIAOK70lYigaHfmycOpHY/qjl4HptgUpa458wIHvrSyDRphExyTZiQgoBuoHk7MX
 fztJBky3cuYkx0lIqX2MIb38iNlvAYc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=VkXUI/g3
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] ice: fix missing dpll
 notifications for SW pins
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
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:arkadiusz.kubalewski@intel.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mschmidt@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 397053FDF5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/9/26 12:25, Petr Oros wrote:
> ---
>   drivers/net/ethernet/intel/ice/ice_dpll.c | 74 +++++++++++++++++++----
>   1 file changed, 63 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 3f8cd5b8298b57..d817f17dcf1951 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -1154,6 +1154,30 @@ ice_dpll_input_state_get(const struct dpll_pin *pin, void *pin_priv,
>   				      extack, ICE_DPLL_PIN_TYPE_INPUT);
>   }
>   
> +/**
> + * ice_dpll_sw_pin_notify_peer - notify the paired SW pin after a state change
> + * @d: pointer to dplls struct
> + * @changed: the SW pin that was explicitly changed (already notified by dpll core)
> + *
> + * SMA and U.FL pins share physical signal paths in pairs (SMA1/U.FL1 and
> + * SMA2/U.FL2).  When one pin's routing changes via the PCA9575 GPIO
> + * expander, the paired pin's state may also change.  Send a change
> + * notification for the peer pin so userspace consumers monitoring the
> + * peer via dpll netlink learn about the update.
> + *
> + * Context: Can be called under pf->dplls.lock, dpll_pin_change_ntf() is safe.
> + */
> +static void ice_dpll_sw_pin_notify_peer(struct ice_dplls *d,
> +					struct ice_dpll_pin *changed)
> +{
> +	struct ice_dpll_pin *peer;
> +
> +	peer = (changed >= d->sma && changed < d->sma + ICE_DPLL_PIN_SW_NUM) ?
> +		&d->ufl[changed->idx] : &d->sma[changed->idx];
> +	if (peer->pin)
> +		dpll_pin_change_ntf(peer->pin);
> +}
> +
>   /**
>    * ice_dpll_sma_direction_set - set direction of SMA pin
>    * @p: pointer to a pin
> @@ -1233,6 +1257,8 @@ static int ice_dpll_sma_direction_set(struct ice_dpll_pin *p,
>   			ret = ice_dpll_pin_state_update(p->pf, target,
>   							type, extack);
>   	}
> +	if (!ret)
> +		ice_dpll_sw_pin_notify_peer(d, p);
>   
>   	return ret;
>   }

ice_dpll_sma_direction_set() runs to process a DPLL_CMD_PIN_SET command 
from userspace. It runs with dpll_lock held - taken in dpll_pin_pre_doit().
ice_dpll_sw_pin_notify_peer() -> dpll_pin_change_ntf() will take 
dpll_lock again and deadlock.

Michal

