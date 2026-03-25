Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MATfGSCxw2kktgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 10:55:44 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 474973227C3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 10:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9533E41096;
	Wed, 25 Mar 2026 09:55:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qmUhAot_LApx; Wed, 25 Mar 2026 09:55:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 91DF441093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774432540;
	bh=e8y33SBUR5HKYweEJRlG29C7iVpw2TmVK7LIC6oiZqk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0+XMWLil7ZVO0OrQXXvBc5Y7RvAMJ3zPbeVjHyXLH9n0c9tSt8rKNVy9cJvjGDBgw
	 cJkN5e2s/5VaRQSr5mPv6IXwYi6ry/1fx5sPlh2C83rO6tLipkm1BJLsMuf2De/0VV
	 z69Ad8cQR6SuXq8V91RV3CRKAIDAMplIPqjY0wlW+9ZnSLzQEQnIV6dmejWOPxAt5N
	 urv+AoxqiXgConEdsYP/X3geUSufS71/EKSo8JcHDPwtCsc4s6xVEERADB6CUlPqP4
	 CEA/7TOL+4vl3ZeSAhyJJXYWuRTclAQHDEsGIFwJ4x4yHakiXkbf+C7zlV5hOXXar8
	 ooUbb8lrRtEcQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 91DF441093;
	Wed, 25 Mar 2026 09:55:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 52F74353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 09:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4482840340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 09:55:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMWjwg4Z1OgC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 09:55:36 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32f; helo=mail-wm1-x32f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5294040088
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5294040088
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5294040088
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 09:55:33 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 5b1f17b1804b1-4853e1ce427so52405005e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 02:55:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774432531; x=1775037331;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=e8y33SBUR5HKYweEJRlG29C7iVpw2TmVK7LIC6oiZqk=;
 b=X/92gVXCQKfmOcNsmd2SnZJs+9TPSeyqnKSl9v9OuYYJFmsTthSYLErVfe/iMs9Mos
 4e5Y7eplHBiQc4lLvV653XK2a0KJ7g75hyfzhWUorOpIAfy/xKytL0JCso8TWT5e8pyr
 AGKr3su/QUl+p7TNm62iyvuxb4g8rvzrMBXlpfLgam2N6jiO+Je1P/Kv4QMcAvoeseYX
 AJVOfRIcjgCIdK6Us2rYjoFSh+nHKulkNoL2TH5CBAvaTGw/qdrNJ/l690qAgXcH443F
 tziBJpdgMXic51KK+Cxj0qUrja1kyRXiAfsvI31WuPqdTe4R/ChyCO/imS+Pt4ISRnGA
 2Ffg==
X-Forwarded-Encrypted: i=1;
 AJvYcCU0YjQdzRHLHndb2Iz0KwHtCi+sYZgZmL9mcBqovJ9VcRsjBzTgfrYuDci+yPJk1+y29RGl8rAjHRlsCPqWZYU=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yxa3G8J/5LCdXnn4dE4sOVLEFmANobuo7ew6ggUGIQ98LJgVIqU
 IjSyIN0xfuP8fZAfTv9VhsxDxs64LyY7KCT/gBAE1pq/JFaF1a9tgwbOxN8DrzH3no0=
X-Gm-Gg: ATEYQzyWRcRSCDfXJKHrSwAP5btJtEOtwmQjoPzoFlWI2MOvUJFjr+WQmPJGMlwfJTH
 71ZFB4kVvESP6YIovoxjp4edaI124aeE+uBLUlIsuD/Ifx5mh+0sIVXtTPifMPn/F+qIsPgXKYn
 n5B3YhKaRfl4+6xvnUw82czcrPijcOFHn+eHo0pAWEoNhPkOh/O+QUUn680fxlD0/3RTiS7HRrn
 1KEHEIGppMElEFW+stlcBPJRFUy18NVJyEHXzhxsFWV67p6WvBMASVx1xrp3Y3t25UAGerRkLhj
 Pt/FP+Z6eEKW+CE2TbbXaJp1hpBlOCD2mlvh8mGW4gspDyzhcXHodexlzlXqGPesC7sTutTwwZX
 WKVNq2GL9sZTWqv5izt47CoWjwM8WGGYHODvuI77Xg4vICyI18QBkDKOAuK27AoTUkj3QumGXrH
 mYGUHQ7RU38pvQUPkxp8rSkqWu1aCwsAh+yzc=
X-Received: by 2002:a05:600c:8b88:b0:485:3fd1:9936 with SMTP id
 5b1f17b1804b1-48715fbf82amr42957115e9.5.1774432531140; 
 Wed, 25 Mar 2026 02:55:31 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-487116ee57esm111687295e9.14.2026.03.25.02.55.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2026 02:55:30 -0700 (PDT)
Date: Wed, 25 Mar 2026 10:55:27 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <ncudf3km2qvvbbx6rb4agurqfrvsu2u2cmidhvtwgvfvxxkfew@xicgdybftgqb>
References: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
 <20260323222133.1796997-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260323222133.1796997-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774432531; x=1775037331;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=e8y33SBUR5HKYweEJRlG29C7iVpw2TmVK7LIC6oiZqk=;
 b=XhWa+/mWCWZd39vaisUVoZRJv6Gcu/4Z3sxOlZH2kmZwgeKP4EjGIJmsdexZcxNTYp
 YtxhUwNe9UTvT+5k+dGOi+m9nQsL7a3NfpU0/wintB7UfrVpB/9ke1XcQI6N3XwBVijO
 RwcDUKGT84vbHZFzqhCGECK/Zo9nzIaKwBPteU7VIIS2kFtPleOCtiOgdhde4/UOfi0L
 y55cddq5NK/3VxjODEu+MwMj1mG1Jbl7Qgy4wEFejiQy6/Twj5uHHmtu4Wh+GmXD7j5b
 6da0rMSXf38w9LrZ4+nZt3TV69lCtAU3h6Tm2FhRMm+/2ISTcVx2kdM56RkvGzn4EKnT
 mepg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=XhWa+/mW
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 3/8] dpll: extend pin
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 474973227C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Mon, Mar 23, 2026 at 11:21:28PM +0100, grzegorz.nitka@intel.com wrote:
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
>  - pin registration/unregistration use the DPLL's clock_id,
>  - pin-on-pin operations use the parent pin's clock_id,
>  - pin changes use the pin's own clock_id.
>
>This enables richer event routing and more accurate state handling in
>user space and in-kernel consumers.
>
>The current DPLL pin notification infrastructure does not provide any
>way to identify where a pin-related notification originates. Both the
>in-kernel notifier chain and the netlink notification path only carry
>information about the pin itself, not about the component that triggered
>the event.
>
>This becomes problematic on platforms where multiple DPLL devices or
>drivers share the same physical pin via firmware description (fwnode).
>In such setups pin creation, deletion, or state changes can be triggered
>from several independent contexts:
>
>  - from the DPLL device that owns the pin,
>  - from another DPLL device that re-registers or rebinds the same
>    fwnode-described pin,
>  - or from a pin-on-pin relationship (parent pin registering child
>    pins).
>
>Without a source identifier all these notifications look identical to
>listeners. Drivers cannot reliably determine whether a received event
>is a result of their own registration/unregistration actions or
>originated from a different DPLL instance. This leads to several types
>of problems:
>
>  * risk of duplicate pin registration when a driver reacts to its own
>    event,
>  * difficulty suppressing notifications that are merely internal
>    bookkeeping side effects,
>  * inability to implement correct pin‑multiplexing or cross‑device
>    synchronization logic when pins are shared across fwnode domains.
>
>To address this, extend `struct dpll_pin_notifier_info` with a new
>`src_id` field that identifies the originator of the event. The DPLL
>core sets this field for all pin notifications:
>
>  - pin registration/unregistration: the source is the clock_id of the
>    DPLL initiating the operation,
>  - pin-on-pin relationships: the source is the parent pin's clock_id,
>  - pin property/state updates: the source is the pin's own clock_id.
>
>Netlink notifications now also carry this additional field.
>
>With this information notifier consumers can differentiate true external
>events from internal ones and ignore the latter when appropriate.
>As shown later in this series, ICE/E825 devices rely on this to avoid
>reacting to the events that their own registration logic triggers
>when a shared-fwnode pin appears.
>
>This change only extends the notification metadata and does not alter
>existing semantics for drivers that do not use the new field.
>

I wonder, did you miss my comment to v2?
