Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ExZGvwLyWkHtwUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2026 13:24:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DDE351CAA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2026 13:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 708C16090A;
	Sun, 29 Mar 2026 11:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1x0lyfCo9ADq; Sun, 29 Mar 2026 11:24:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF0A760A39
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774783480;
	bh=PThdoORy2iuaX5Hlbv5/ayxBCCRV0jzN1bLjarnMAh0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WBk6b0HhO+N8GKw9hQ3sOYYb/qfdaIHn4avxuRctm3HKOozRXJWESy1FvE2fYsVxQ
	 8mkUDvJz1IaID4lgIGKVSqLLdJL28m4wUULkEa6HRKvpFutZq4GieZ0ddOx3/l+NcS
	 GPCQzpHaqx3SvgZJ6vk0jTm0eB94b8wQOqtxFWgK3q04w+O23vp78oXbtGvjlvU9KH
	 0TZ1J8TfunObq4Lh02+8dhnwK+mUgDlYXrjDWgsBgyDTw8jDn3GTs1GNAClzVHxpz4
	 HmGFbRs3y/RO75xSadFcJaS0UBayQdUY8W1CI+UiAuKLivFVAbJusAM8bUMpcF7nnk
	 NHTgnYsMSxecQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF0A760A39;
	Sun, 29 Mar 2026 11:24:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B7A52EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 11:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6D239400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 11:24:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DPrEgeW6VrJx for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Mar 2026 11:24:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 67DB140015
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67DB140015
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 67DB140015
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 11:24:37 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-482f454be5bso42451785e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 04:24:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774783476; x=1775388276;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=PThdoORy2iuaX5Hlbv5/ayxBCCRV0jzN1bLjarnMAh0=;
 b=tPkd4+AScYb0JZHvRAJz+XrZDq8/u9ODK+WksZVD+HKqadOfhRB51a5MeFSNGz79pT
 7LI9IH5WXvWeg/SLTyh1+FiqG528Cv9r2To9bLky+c8BMO6p4q72eqFa7HpHa1h3bDrj
 xfa6fmtABXgB0EL2ZJnOGIcMOWOS4jnOt1xiG0RrwLBmXi/j8sGOugOikguqvE3aX1K3
 ioofwmTCx4sTCnD5AggxepkOp7JV7s6Gnq8AYUDCoy0zxHuVWhVWcT3amMh2muFtbXNZ
 kTnVddAylYKdmaYG1pKh1mLfDe+bqI0CMr80+C/48fogk1EyVL+fAciLxWHMB5ZfQJ0H
 HXpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVdCi0DkK5/qldKIoYltjdzdFQreq1/y4SKTQjomqV2kjUyZe34lKAJGL3g3KFDBwhF5eWmMVWugFp/q8ugFG4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yziz7n5cOh/bO2kIQ/wvGEOKt6fxRzQ1s8ljNEqQzT0VnvFR2A9
 TUROlquoNJSjdTwgf8Bs/l/quvUidLNPnpbTuB0M44w0FVMjK+MjwylGYsDCOfQ/rvI=
X-Gm-Gg: ATEYQzxstpowPrxva609vViMGDwpYslsgUTLD/3naXxj2nBNZ0BftknuCFmloAtkCZs
 /midpN62sqY1o5uWt8TvWEGaqT/0gzTc1ilk8FMjUXGBSnDPETWWG5MF487AeWKk3XXcqKdKPnE
 tmajodMbLDBEZwP+bt1u3rwqD5P5GrlxdLnR5hgoi7RYbR1zA//f4I0EqpO47WQMiJdQvQc2hpR
 Z0iddBLnkvJ4g4IhQ5ylDh7gj+9cn3nn5WW8NCeaHh5DycNoNRF/rcH+srvrFr9HY/kLkbNw6eJ
 lqWMFLa0wFjC5ntxGgPgXbhwfh3M6YVhOgphkVoUbOGi7WULbQZ9Z3cVW06Lzfi6/ZiKtuujGiK
 mXflZ306BqCPmnMuvW5T80oM+X5/rXrsT6ZjymEr2+/r/iQPaXPLLoWTF9Qmfxsob1KI22J++FS
 dNyUX7yymjDZNvYjHTZWLfvsLKtrqiNqFGPM5mqjUQqEQYRfmvYZmFtg==
X-Received: by 2002:a05:600d:8402:b0:485:3428:774c with SMTP id
 5b1f17b1804b1-487290b36b5mr91083805e9.4.1774783475709; 
 Sun, 29 Mar 2026 04:24:35 -0700 (PDT)
Received: from FV6GYCPJ69 ([2001:1ae9:6084:ab00:4c27:3a72:8516:e661])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4873bbcac33sm3844315e9.15.2026.03.29.04.24.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2026 04:24:35 -0700 (PDT)
Date: Sun, 29 Mar 2026 13:24:33 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <y5rjyaqyvmnyfaj7o2fari2t6i2klegklpnwi7xw7ld6rmajqb@uovrzb76cjs5>
References: <20260326162832.3135857-1-grzegorz.nitka@intel.com>
 <20260326162832.3135857-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260326162832.3135857-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774783476; x=1775388276;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PThdoORy2iuaX5Hlbv5/ayxBCCRV0jzN1bLjarnMAh0=;
 b=EJWlLGcoNdCzWyFkoXzphdR8FKpsa8E4topmKDCiZKWOq8DERUwIewMM0Q+4IzTBKn
 3IVa7lhdlyv559TKWqSccF9vTQvFYwccwGleNy2AkKBetieRpJb+ez9bDMsq5BC57TGR
 /im/tqfqMQPEP6NzNO0NX8izdO+8preYdjY07alxdQSk9y5y3FETQNVuKuv6UE5ebP4l
 6b85OHBWJTGWp6dUMeZoDfxgd2lsZ+lHRtlldx3tKja2ILrzXTrjounoVmHJpsUWc5bA
 FHsANvOKP5pUnZSKuhhNtMNPb8kcqFwHpekupqkLZbWxyI0TdAVWiYsQx9fQs+yYRt0H
 2Ndw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=EJWlLGco
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 3/8] dpll: extend pin
 notifier and netlink events with notification source ID
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
Cc: ivecera@redhat.com, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 kuba@kernel.org, vadim.fedorenko@linux.dev, edumazet@google.com,
 netdev@vger.kernel.org, richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Prathosh.Satish@microchip.com, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	DMARC_NA(0.00)[resnulli.us];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[redhat.com,intel.com,kernel.org,linux.dev,google.com,vger.kernel.org,gmail.com,microchip.com,lunn.ch,lists.osuosl.org,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C6DDE351CAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Mar 26, 2026 at 05:28:27PM +0100, grzegorz.nitka@intel.com wrote:
>Extend the DPLL pin notification API to include a source identifier
>indicating where the notification originates. This allows notifier
>consumers and netlink listeners to distinguish between notifications
>coming from an associated DPLL instance, a parent pin, or the pin
>itself.
>
>A new field, src_id, is added to struct dpll_pin_notifier_info and is
>passed through all pin-related notification paths. Callers of
>dpll_pin_notify() are updated to provide a meaningful source identifier
>based on their context:
>  - pin registration/unregistration uses the DPLL's clock_id,
>  - pin-on-pin operations use the parent pin's clock_id,
>  - pin changes use the pin's own clock_id.
>
>As introduced in the commit ("dpll: allow registering FW-identified pin
>with a different DPLL"), it is possible to share the same physical pin
>via firmware description (fwnode) with DPLL objects from different
>kernel modules. This means that a given pin can be registered multiple
>times.
>
>Driver such as ICE (E825 devices) rely on this mechanism when listening
>for the event where a shared-fwnode pin appears, while avoiding reacting
>to events triggered by their own registration logic.
>
>This change only extends the notification metadata and does not alter
>existing semantics for drivers that do not use the new field.
>
>Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>---
> drivers/dpll/dpll_core.c    | 14 ++++++++------
> drivers/dpll/dpll_core.h    |  2 +-
> drivers/dpll/dpll_netlink.c | 10 +++++-----
> drivers/dpll/dpll_netlink.h |  4 ++--
> include/linux/dpll.h        |  1 +
> 5 files changed, 17 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
>index 55ad03977d6d..c7fcae76c3f5 100644
>--- a/drivers/dpll/dpll_core.c
>+++ b/drivers/dpll/dpll_core.c
>@@ -71,7 +71,8 @@ void dpll_device_notify(struct dpll_device *dpll, unsigned long action)
> 	call_dpll_notifiers(action, &info);
> }
> 
>-void dpll_pin_notify(struct dpll_pin *pin, unsigned long action)
>+void dpll_pin_notify(struct dpll_pin *pin, u64 ntfy_src,

I don't see the reason for "ntfy_" prefix here. Also. It's src_clock_id.

Could you perhaps consistently name this "src_clock_id" here and in the
info struct as well?

Thanks!

[..]
