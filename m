Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ9AIHcbcGkEVwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 01:19:03 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3E604E6EA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 01:19:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1D79F82572;
	Wed, 21 Jan 2026 00:19:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zoi7dA7u2FVE; Wed, 21 Jan 2026 00:18:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5202B82560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768954739;
	bh=83eTm/eVuh3vEgsZN2wFNOaupTltCKQ9yAr4TfcZmpI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iSZEkm2s5Khkengz3f4/AaCP6ySl4YYoYRJJEVR1nm7FTAvFmo6AI2KQxyh1DbR8S
	 c42OCFwXPBKQo0dL198fZL76hgeJsIn7aGxiEgEjp9WKRrEZghz/ZH0Fx6x63VJWEK
	 G3XM9hnvVONm5Z0MFT/m7qRDaXlygPWFy5ZrQWEHbQezcBio/ebdvBIXlAk6ohrBj9
	 S6P2zRrV6rEaglj6lSbEIb7/pEoyufQQWOzBgl18dq4ochUHb8QwMyHobrcdU4qyZo
	 LAo+V1S4GgOUnB652Qv5eDwKFdCrpaFS5JGqaaDzhmRgg7wdv31V9HmaVBQB/SgrQK
	 7Os2EwzvFrfeQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5202B82560;
	Wed, 21 Jan 2026 00:18:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 53353169
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 00:18:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4102140D65
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 00:18:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DR_HfuXRN-oK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 00:18:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 58F8F40D62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58F8F40D62
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58F8F40D62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 00:18:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 8747044307;
 Wed, 21 Jan 2026 00:18:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00ABAC16AAE;
 Wed, 21 Jan 2026 00:18:52 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: ivecera@redhat.com
Date: Tue, 20 Jan 2026 16:16:51 -0800
Message-ID: <20260121001650.1904392-2-kuba@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260116184610.147591-9-ivecera@redhat.com>
References: <20260116184610.147591-9-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1768954734;
 bh=nIteDBTn2kAmgBvtRuDy38cJr4xlonSC8wjke3vr638=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SvXaxdYGqxzhDl4dlVgxDbHwn2ArnJYr1SHXf4bO+g9xDUPPXzUwTzGch79P8hiAm
 vJRWW0Q27ZnkuqCa8D0+e4oC6WIvAlaGbHoWoqeY6ecYlNW+bT3LYKjcxlH9EgbNo7
 MKA/0HmG2iU3dVeBqcbYUlqHCvlVue37XUicvgeU5587Q9sFqomwXcYPx1hthyeqOd
 kfMfFTl/8qonrKdrVPRydWSMVMJrcnyypokRo0BHIKoUjnHMxK7xtLkGtKrU6GdU1i
 ttYt2SvGkYb6SjMlZZb78IfxzoHK1QNbGO61ACekjv0iTQNgHhN+EifBPEuvYD+Y5I
 PnvLP5a3+70Ew==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SvXaxdYG
Subject: Re: [Intel-wired-lan] [net-next, v2,
 08/12] dpll: Enhance and consolidate reference counting logic
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, robh@kernel.org,
 leon@kernel.org, andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com,
 devicetree@vger.kernel.org, conor+dt@kernel.org, jiri@resnulli.us,
 richardcochran@gmail.com, saravanak@kernel.org, Prathosh.Satish@microchip.com,
 vadim.fedorenko@linux.dev, netdev@vger.kernel.org, mbloch@nvidia.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, aleksander.lobakin@intel.com,
 jonathan.lemon@gmail.com, krzk+dt@kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [3.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:robh@kernel.org,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:saravanak@kernel.org,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:jonathan.lemon@gmail.com,m:krzk+dt@kernel.org,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:conor@kernel.org,m:jonathanlemon@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:url,osuosl.org:dkim,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kuba@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C3E604E6EA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is an AI-generated review of your patch.

Dunno if there's a reason for having this fixed by a later patch,
if not let's fix. I'm sending the review mostly because of the
comments on patch 12.

For local reproduction steps see https://netdev-ai.bots.linux.dev/ai-local.html
---
dpll: Enhance and consolidate reference counting logic

This commit refactors DPLL reference counting by introducing centralized
__dpll_{device,pin}_{hold,put}() helpers and updating dpll_xa_ref_*
functions to automatically manage references when adding/removing entries.

> diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
> index 156f95de8e8e..f2a77eb1b991 100644

[ ... ]

> @@ -155,6 +194,7 @@ dpll_xa_ref_pin_add(struct xarray *xa_pins, struct dpll_pin *pin,
>  	reg->ops = ops;
>  	reg->priv = priv;
>  	reg->cookie = cookie;
> +	__dpll_pin_hold(pin);
>  	if (ref_exists)
>  		refcount_inc(&ref->refcount);
>  	list_add_tail(&reg->list, &ref->registration_list);

The new __dpll_pin_hold(pin) call is added here for the success path, but
looking at the context above this hunk, there is an early return path when
a duplicate registration is found:

    reg = dpll_pin_registration_find(ref, ops, priv, cookie);
    if (reg) {
        refcount_inc(&ref->refcount);
        return 0;
    }

This early return path increments ref->refcount and returns success, but
does not call __dpll_pin_hold(pin). Meanwhile, dpll_xa_ref_pin_del() always
calls __dpll_pin_put(pin). Could this cause a refcount underflow if a caller
attempts duplicate registration and then later unregistration is attempted?

Note: This appears to be addressed by 934c22045c2a ("dpll: Prevent duplicate
registrations") later in the series, which changes this early return to
return -EEXIST instead of success.

[ ... ]

> @@ -236,6 +277,7 @@ dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct dpll_device *dpll,
>  	reg->ops = ops;
>  	reg->priv = priv;
>  	reg->cookie = cookie;
> +	__dpll_device_hold(dpll);
>  	if (ref_exists)
>  		refcount_inc(&ref->refcount);
>  	list_add_tail(&reg->list, &ref->registration_list);

The same pattern exists in dpll_xa_ref_dpll_add(): the early return path for
duplicate registrations increments ref->refcount without calling
__dpll_device_hold(dpll), while dpll_xa_ref_dpll_del() always calls
__dpll_device_put(dpll). The same fix in 934c22045c2a addresses this.
-- 
pw-bot: cr
