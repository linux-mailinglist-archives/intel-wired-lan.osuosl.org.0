Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +DDyFv+DwmkAegQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 13:30:55 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77997308404
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 13:30:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D54BC40E3D;
	Tue, 24 Mar 2026 12:30:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AK_oDkMM0cT7; Tue, 24 Mar 2026 12:30:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4377440E59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774355450;
	bh=650cxGRTwGdCgB7/1Uuk1bSKY+xLpPUDI9BTHKCNycA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AamepK4O9q8zByd1oaBs92pwAMs7KgUTvahfg/aMCI21naOMnWjO1vnQaWLPpEc75
	 eLkxALHeTBycJImviviMLPaQu96FrqCZ6FbK1hgQWjsQFeKf7l4AF14xtZJ31YWqSx
	 2FekCSyM9ZWmOcZEcn/sVtnkawAsS2VkKvN05aTSIXvvLGVGVCe5CiLZmn4ha9wpy0
	 WPTPwXj6lmPvPcioxmHm5SJR1nhPnhzg+DmeMt5nRhcwqWXShMxZi8os9zGUDYKd2c
	 BdK6B/+vtND7EfrmjEnQsh08hVysabdzBgaSuCRe5UqYjJUDCse05J9gr3kdmp3Z2t
	 PgFj4vmomFE7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4377440E59;
	Tue, 24 Mar 2026 12:30:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C3D5DF4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 12:30:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A95EB60ABC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 12:30:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DP09Z1oxeriI for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 12:30:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A06E76090B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A06E76090B
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A06E76090B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 12:30:43 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4852b81c73aso34986595e9.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 05:30:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774355441; x=1774960241;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=650cxGRTwGdCgB7/1Uuk1bSKY+xLpPUDI9BTHKCNycA=;
 b=TRfPYd44gCENnUsUYtm7PXmMvVOtmI38xfz9KaUaktcoBrqskNphMv4R9wbHmZ9mDy
 XESmRkQ+YpOM0Xg367xlvgQJtVes4kCi7CjflNNdY2WU7eeXqh4qsR6uBLckxnnKKBaL
 LbmpgKidi5kNSaYPPq+j9cy7gmTzNIfznMrz5s4r04nxUK+JCqTOodQQtZWiouYlsmzS
 2YGjNRPw4kSw2JCSJufj+yF7A9wJ/nDxtQQdUGRK88O7IwYTUuG0mh5FLOmD05uC+FwV
 BS2LNGAMgDHixvbNceTEJTDH3C4CK4xA4KpsvZ8OuLnf/PaXG5Q3zsP89M6X5khF0BYz
 v79Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHaEpT+u2jJnXucDCfW362G9KEQri6QOU1oJ8lTe/fGX+vSxuRs8V+s2g9Bh8a2gILhn4uFkEC5nA7tH0iicQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyti5HfyLqqlevbvwlYaEP6/kb9bRamcy5hEtEiGpVACDSyQ54G
 2CkN+KQ6Y5m3FQ5+wTapL0Kr175KkfdhFCf0biaZQSn0VIkaiv2cuQqjhplEY5Ue3pA=
X-Gm-Gg: ATEYQzwX5+OdSzLHicQhP4vksTnrLNDzEs1mDFSMn4dUf5ipISsvZ8taawGnDKgA6ow
 CZeC6/vBK0tcUnljX1UZvkJjvr9Ht7hoxrfc+ggxAa/MKLQEyYY6HZYV9pXgWnlGRPg7X/w8Upz
 XCxpImH/11WxpOEgkxHBeoT8C4N24FcDNFh8/TFMihBUD7WlvNHFreX9R5gkcejE85m0F5Mp60h
 DTL9fEIhfRB4QYHaaDQqptB804AEtK3A2jX54ENntd+XX1ZnCLnqkNFvJyQeWqjBVYAJ2ly7JPS
 dlnaqhtBYvlRZGuIpASHVF1qIRgZVqk+7DIYD4AzMrbsNz1lg2H76mMMTkzP9pt/hJT/RjEdXJ9
 dKUipz6Er6rcdPs/lBfPOUfjjx+qiodOddNJTwIK5NnvUeslrZF0N9PUTpyvYIHIG9FBGLjium0
 sHVNwO5sg/1LNIC48ry4pdpLvSyB2OOoTR0Q==
X-Received: by 2002:a05:600c:524e:b0:485:3ae8:2231 with SMTP id
 5b1f17b1804b1-486ff01efd8mr208630005e9.30.1774355440868; 
 Tue, 24 Mar 2026 05:30:40 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-487117077cbsm45683595e9.6.2026.03.24.05.30.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 05:30:40 -0700 (PDT)
Date: Tue, 24 Mar 2026 13:30:37 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <ose4zofbqvlzfhdina5nlolbj64inrhkr3nqok3dkheav2s6px@warnjuzviid5>
References: <20260321222627.1193603-1-grzegorz.nitka@intel.com>
 <20260321222627.1193603-4-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260321222627.1193603-4-grzegorz.nitka@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774355441; x=1774960241;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=650cxGRTwGdCgB7/1Uuk1bSKY+xLpPUDI9BTHKCNycA=;
 b=PW/VAGNr3K774Z9I2vgkOUQmvXPSH7llh33jVqrHRvgkfPk49DeWDgbAwtdN8vJYGi
 rCyaFREYe13wRRkH1i2tmMEJGKpq64mS++Ei6OoWv7NdO99lQB3SOsh4BsRkk3odakis
 1oXlB+fVKp7NSz4f4TNjj56gzrD66ECzLjfXZsyDA3vreUssOu00Df5Rx4RX7JKvhDNP
 /sOmPyfDgpweQBDGxCksY0A2n8yCs9fA7SHgtXRqyj/JcxBkhSRamo8mQTbiXy6Z8bXF
 Vt5GyZyFiv0rvLYAwlpoongkZ2fBW0XiJ6YzWq60Z9EepJF8bFZ8FUXDWgJruGAIGYlA
 A6Fg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=PW/VAGNr
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 3/8] dpll: extend pin
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 77997308404
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sat, Mar 21, 2026 at 11:26:22PM +0100, grzegorz.nitka@intel.com wrote:
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

This lenghty and verbose AI-generated patch description are so annoying.
Care to cut it down to something like 1/8 without unnecessary things?



