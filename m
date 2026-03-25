Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMiaAfKxw2kktgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 10:59:14 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 583DD3228BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 10:59:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3BDB824DC;
	Wed, 25 Mar 2026 09:59:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2VhPGhqZioV9; Wed, 25 Mar 2026 09:59:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CF7582470
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774432751;
	bh=Z8my4K4S6JiGTnFA/zJLFhSFrIgH4OD1hMW4MDAGPJ8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mp4P+ywBlxsLHdihKZcj/ph+M+NBc3uWCp7SEKz+KcKpsE/annnqke6my9WSfYagC
	 yjOo0v01npb6FGeNUH3M75rlRqN5klOlhyJeCro09Tm+Xc8cxmCbu60uHmAbYwGeue
	 lEqqWrCmcrqPdjxxweGodaE6m2UTJDuyHvoK6LE9Z43i33sz8Ykwv92Q+26+pufORi
	 FIw4qHbmsEgA5QyFSlX8JuUXOWw//1XQi6IR75t7L5AP95pDk0TZxSIzomF815iuDa
	 SkO4bv2uqplUMyGasV+y4abzLwh5x+GDgqHwL3Eekhw77zRUT6a5v6OntMH9OI0xej
	 Ly8cUwKMG4Iug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5CF7582470;
	Wed, 25 Mar 2026 09:59:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 717E71D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 09:59:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62A3C40088
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 09:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J6SnzV7Km2Iu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 09:59:08 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42f; helo=mail-wr1-x42f.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 78A4D40340
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 78A4D40340
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78A4D40340
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 09:59:07 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-43a03cb1df9so2436201f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 02:59:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774432746; x=1775037546;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Z8my4K4S6JiGTnFA/zJLFhSFrIgH4OD1hMW4MDAGPJ8=;
 b=IxyocPBd8QCNhfaFGtGi3GYCJ4ljHctc28JNhVVD1nTJMEOiJFhzrkHp2ZlTkNAC0Y
 zLLgTT0jIFt7a5RM8zlXNPBj54Re25Qnj1yh22Dpn5SNgkhOjM5Ly9Q9bocpKXUrGYu6
 lcOcfnQQTaHgHeeYu2OfhWi0DlGFtKbIEyEKemqxdJxHbwaiSn1FSkdpE/TegCBhZ4bz
 iWu7UV5yASV+Qf9YZ8sLSDdFU8BpZc+48P4oHhqk3VyLNCVaS8/FyVFtzZi/NfK2pQsD
 KsYIbAKfEWZ6c80SZZN32hAaBM/sjxTy45EaesAbySmGM4IlcfGL5ESaJrV7Q9cGWaLA
 81wQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVBC7XsKJJ9E5JYSdNv8eEqyBlfBt7vDwC8qejoS63eIXqbT4s6/NHsRVRdNA4ibiz0KXMHIADNqM+E7aEDiZE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyUQEw48si1mtWgzOGNLb40rUDILFA+zdNr7OEAiJ49QqRwMQKW
 UKM2m93HbyAhh5OXXDlcikqtuqWCGhUGqJekScWfVBKOHmLZXR3P/bva9bYX11hk+Dg=
X-Gm-Gg: ATEYQzx98yGjq0BOAzfJsGLFku69T9tF9mlXvXZUXl3fXnuiGEOg960X8k2sGUAbg6F
 m9n5JfH3i+FuoTsAE+hxcjdlsebISJE2u45su61CYmaGoG1DSYpiS5YVUhWf7uj5xneU/+J+pqT
 stjMhRfiko4c5Pv2c8+6aw1XoOIXABHqSFPUt2PsSv59+tz10zkoKUh1ZZAvop5IGkIqixexulf
 fcZt/8Yw0g6j3Kn40KuKdjx2x8sd1UMmLTstyXwAscd/XFGzptI8Bqk6nBXRxPIfPzUBSZFWEAN
 /enNTfSS1c0BywSF5nWX3FY83j9sWnIE/irjnznNmSqcIZmvT0pnOsW9Mi+ZJy9/ebExv/gX6T7
 V4k/ZxrJS1mTYIL64R3+SQsCOzQ22rhh9kwTMauSCC071rznDvuq89eHPO0mAYLqQcIafJyqS2A
 ezSMDfCM0COO3VakYbV4HMh9Sm1gSTP7knHgc=
X-Received: by 2002:a05:600c:6287:b0:487:1108:48af with SMTP id
 5b1f17b1804b1-48715fd4ab1mr43491825e9.4.1774432745752; 
 Wed, 25 Mar 2026 02:59:05 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4871664ad92sm26049735e9.4.2026.03.25.02.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2026 02:59:05 -0700 (PDT)
Date: Wed, 25 Mar 2026 10:59:03 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Grzegorz Nitka <grzegorz.nitka@intel.com>
Message-ID: <wb55h7a7leyclks6lktz4cl2kut7bsfhxztptv5s4x6pjgbd7l@mhhqpb4vxmn7>
References: <20260323222133.1796997-1-grzegorz.nitka@intel.com>
 <20260323222133.1796997-4-grzegorz.nitka@intel.com>
 <ncudf3km2qvvbbx6rb4agurqfrvsu2u2cmidhvtwgvfvxxkfew@xicgdybftgqb>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ncudf3km2qvvbbx6rb4agurqfrvsu2u2cmidhvtwgvfvxxkfew@xicgdybftgqb>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774432746; x=1775037546;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Z8my4K4S6JiGTnFA/zJLFhSFrIgH4OD1hMW4MDAGPJ8=;
 b=MYi4fAvvABRX4Clll1PvXuLYpWb+7+pYqIwtz8DBwymtW6C1C4IxhEaumoZKDwvONn
 s4mRht+x0Jq24H5YlJDM7FsmSl+6OK/T36SXo/28s8VqykyuxAyYToJfDxGZ6soXJMCW
 OM66H5u/Y6vBaulmOoD+ssude4aBCJl4L8KDe/zWFatdc9M7Bg4Fv1aMlgyV3rtO3yTG
 OZyaYxcJwpSpkilP9ulu8exul5sLgR1snCya2ozxKYF225FBRnCv0spyslUv8C7VPxjf
 FCwovsPfWjT64Gq9qh5XB7vnbBGVr2+hMI4spPkcaxMLRkGV42GOi3Osb3EW7TGeeeQP
 iNcw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=MYi4fAvv
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:ivecera@redhat.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:vadim.fedorenko@linux.dev,m:edumazet@google.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:Prathosh.Satish@microchip.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,resnulli.us:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
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
X-Rspamd-Queue-Id: 583DD3228BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Wed, Mar 25, 2026 at 10:55:27AM +0100, jiri@resnulli.us wrote:
>Mon, Mar 23, 2026 at 11:21:28PM +0100, grzegorz.nitka@intel.com wrote:
>>Extend the DPLL pin notification API to include a source identifier
>>indicating where the notification originates. This allows notifier
>>consumers and netlink listeners to distinguish between notifications
>>coming from an associated DPLL instance, a parent pin, or the pin
>>itself.
>>
>>A new field, src_id, is added to struct dpll_pin_notifier_info and is
>>passed through all pin-related notification paths. Callers of
>>dpll_pin_notify() are updated to provide a meaningful source identifier
>>based on their context:
>>  - pin registration/unregistration use the DPLL's clock_id,
>>  - pin-on-pin operations use the parent pin's clock_id,
>>  - pin changes use the pin's own clock_id.
>>
>>This enables richer event routing and more accurate state handling in
>>user space and in-kernel consumers.
>>
>>The current DPLL pin notification infrastructure does not provide any
>>way to identify where a pin-related notification originates. Both the
>>in-kernel notifier chain and the netlink notification path only carry
>>information about the pin itself, not about the component that triggered
>>the event.
>>
>>This becomes problematic on platforms where multiple DPLL devices or
>>drivers share the same physical pin via firmware description (fwnode).
>>In such setups pin creation, deletion, or state changes can be triggered
>>from several independent contexts:
>>
>>  - from the DPLL device that owns the pin,
>>  - from another DPLL device that re-registers or rebinds the same
>>    fwnode-described pin,
>>  - or from a pin-on-pin relationship (parent pin registering child
>>    pins).
>>
>>Without a source identifier all these notifications look identical to
>>listeners. Drivers cannot reliably determine whether a received event
>>is a result of their own registration/unregistration actions or
>>originated from a different DPLL instance. This leads to several types
>>of problems:
>>
>>  * risk of duplicate pin registration when a driver reacts to its own
>>    event,
>>  * difficulty suppressing notifications that are merely internal
>>    bookkeeping side effects,
>>  * inability to implement correct pin‑multiplexing or cross‑device
>>    synchronization logic when pins are shared across fwnode domains.
>>
>>To address this, extend `struct dpll_pin_notifier_info` with a new
>>`src_id` field that identifies the originator of the event. The DPLL
>>core sets this field for all pin notifications:
>>
>>  - pin registration/unregistration: the source is the clock_id of the
>>    DPLL initiating the operation,
>>  - pin-on-pin relationships: the source is the parent pin's clock_id,
>>  - pin property/state updates: the source is the pin's own clock_id.
>>
>>Netlink notifications now also carry this additional field.
>>
>>With this information notifier consumers can differentiate true external
>>events from internal ones and ignore the latter when appropriate.
>>As shown later in this series, ICE/E825 devices rely on this to avoid
>>reacting to the events that their own registration logic triggers
>>when a shared-fwnode pin appears.
>>
>>This change only extends the notification metadata and does not alter
>>existing semantics for drivers that do not use the new field.
>>
>
>I wonder, did you miss my comment to v2?

Ah, sorry, I forgot time flows only one direction :)
