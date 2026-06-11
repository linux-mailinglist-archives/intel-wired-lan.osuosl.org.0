Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qfAgC+J2KmplpwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 10:50:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2077A670040
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 10:50:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="EvXhRJ/6";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23174409E9;
	Thu, 11 Jun 2026 08:50:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qDq_72osNBYP; Thu, 11 Jun 2026 08:50:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 696F3409F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781167838;
	bh=05L3jrJVlFcQn4GVsQrHr7saBG8RDpkpSs796Rei0Dg=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EvXhRJ/6HzW+g0C4tAGd3RiIvRcJvR4h4DGmuHfZsg4RInho0nFUslj84pIp0I1g9
	 oun8V53H0kdFnMenZ1kUstOH1P6/op9tGekVzmNPAt/SQ80BSTa6u/dQiTElC386JO
	 nydCwttldHxo/5fbmiCqU3Adpr+IKmomtDpw1XwgQgt/Qv+vtMp/nGnAU9tDNSq9fl
	 HYjGrG+zo52CUbWq8/Fkxsuil0NdGPmnehlseOA8R6XX39XnKnewe45g0hEOVhlOJ6
	 KjvWhjANlFsJa1EsmqsTMS+PG0tUgyH/HrVbOWF362mhlwpWLFniwaU6JsnU3XQ+yG
	 3L8+FwThw96xQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 696F3409F2;
	Thu, 11 Jun 2026 08:50:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A543237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 08:50:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DF9E140172
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 08:50:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5cXCIpPufMBP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 08:50:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E13E34016F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E13E34016F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E13E34016F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 08:50:32 +0000 (UTC)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-511-QudW2UOlO--mrskj1cNdjA-1; Thu, 11 Jun 2026 04:50:29 -0400
X-MC-Unique: QudW2UOlO--mrskj1cNdjA-1
X-Mimecast-MFC-AGG-ID: QudW2UOlO--mrskj1cNdjA_1781167828
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-bf523c6dc90so617752266b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 01:50:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781167828; x=1781772628;
 h=content-transfer-encoding:in-reply-to:content-language:from
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=05L3jrJVlFcQn4GVsQrHr7saBG8RDpkpSs796Rei0Dg=;
 b=qcge8mSc0Ok3Ym8oA9kPMcE+bMTiq/6KmEe2cTouKq/xFjArcXrpQDRKXpX8Q4J25m
 w56y7n+1sy4fWAIlcr8pZ4gz57HEqbn8c4tS/yIi1s+x+7K/SmUtjQGpUnP3wyZfGX42
 3wuvg5+wtF87sLbI3Te9kWyxuYzSAo1p+cMoo/SIU1l2rmoEkQO5B6nUq1WpJ+hOvfdn
 yZ7+ZTt6mxw4/fKcq5dis+MFxuMa5Jo90AQz0JNQ5uf96Yyvr4My8HoeDI3Sz8OozB69
 S1xFOa+pjkHPbO+LocjhX1jI4iYHq4SleE1miOLxJ9gW1NdSjO7jAhxf3coECSWMsMRJ
 epFQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ9FJvGaig9obptxWNZye4c655ladFwhaYqNBVjU91nYNlf8/Cj8zDYxU7pSrh7t9D1oYxxo4jF6FU5R8Szi4rw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwBg9S+8slc70jERklPF3XUo7fR5KYFWFmwuXLMZJOGKBfqorwv
 pxkbhBlmRR1dJejC1C8mXHUXqsduZFhrKNdFZ7F3djz6RP/IvUVCxv5Z+2ShPXRYAgT8d0nw04t
 IXaqAK5hkNzZZYFgEoM11oq+qzy5vZ+iHdQTMhx05NXgyhl4AWbU+txZ49MXs0EU4TUTiFNg=
X-Gm-Gg: Acq92OHJxLxXji4xqSXq4ChZxS4i07IL6KjYqQJNkowQKgGFRBuRiLkDQNHJ4oSqdqW
 Ko0Gc0QKPFs33sTbxOLgdxBEomCF/WijpBWCADYDvit3tam1LI3SgZ1jUPJPhOMU4mWzCgOr0yd
 E2nkbthwg3K9yOiduN5yRidh0zg+Fo4P8BwxN+CIFMK/MlfCqh2ByO27o4EA+m1N1ReGPARTUxX
 KIddIHdlGF/dJInDhpSaB6TzgfKPKelH5SYgOgx8h8cwK1f0jUGXHhzs5FO83WsQ30wEV2GGdWU
 OQHkHpYYdr7tj2ePY/PSdILgfWMypfGcTUkAyKFJUY4ta4IdOaghUnzHi+BO1BWh0O1tWgD4PZe
 wxVMh8FpVLNV0sUxjHTisfFkYIXG+MAPNgXth247exGf6i6LCjMNxu96I2I4aJwR25Q==
X-Received: by 2002:a17:907:a04:b0:bf7:a616:cafa with SMTP id
 a640c23a62f3a-bfc880e7160mr73161866b.34.1781167828391; 
 Thu, 11 Jun 2026 01:50:28 -0700 (PDT)
X-Received: by 2002:a17:907:a04:b0:bf7:a616:cafa with SMTP id
 a640c23a62f3a-bfc880e7160mr73159566b.34.1781167827875; 
 Thu, 11 Jun 2026 01:50:27 -0700 (PDT)
Received: from [192.168.88.32] ([150.228.93.44])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bfcb1607631sm34291566b.14.2026.06.11.01.50.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2026 01:50:27 -0700 (PDT)
Message-ID: <5ad977af-9bbb-4376-b0a6-2b1867223145@redhat.com>
Date: Thu, 11 Jun 2026 10:50:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Grzegorz Nitka <grzegorz.nitka@intel.com>, netdev@vger.kernel.org
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-4-grzegorz.nitka@intel.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20260607183045.1213735-4-grzegorz.nitka@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hxFnwFGhH32HCgqnzbPG5apLxlNX6PLcqQ0nXoM0eJc_1781167828
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1781167830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=05L3jrJVlFcQn4GVsQrHr7saBG8RDpkpSs796Rei0Dg=;
 b=Nt7LZuBoXmFQWjrTBqy76I7AvyAd9vF64pEj10Quz6hifozMNORQuDahyG4L3CYCIa5+4z
 Lo7AmHpj/K/EAfF3drehOZXPJD+D5dcOqPqSB9y0EgqJCLCnrcK1PQ/Q1C8dL7w2ijwG3+
 dOdDivGJeQack+Ra/clw7bTaxY6IoNg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=Nt7LZuBo
Subject: Re: [Intel-wired-lan] [PATCH v14 net-next 03/13] dpll: fix stale
 iteration in dpll_pin_on_pin_unregister()
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 andrew+netdev@lunn.ch, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:email,osuosl.org:dkim,osuosl.org:from_smtp];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2077A670040

On 6/7/26 8:30 PM, Grzegorz Nitka wrote:
> Neither parent->dpll_refs nor pin->dpll_refs on its own is a correct
> iteration target at unregister time:
> 
>   - pin->dpll_refs includes DPLLs the child was registered against
>     via a different parent or directly; blind unregister WARNs on
>     the cookie miss in dpll_xa_ref_pin_del().
>   - parent->dpll_refs reflects the parent's current attachments, not
>     those at child-register time. Another driver may have (un)reg'd
>     the parent against additional DPLLs in the meantime, so we miss
>     registrations that exist and visit DPLLs that have none.
> 
> Walk pin->dpll_refs and use dpll_pin_registration_find() to filter
> to entries whose cookie is this parent. Symmetric with
> dpll_pin_on_pin_register(), correct under any subsequent change to
> parent->dpll_refs.
> 
> Fixes: 9431063ad323 ("dpll: core: Add DPLL framework base functions")
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>

The current guidance is to avoid the Fixes tag for net-next patches,
when such tag refers to code already into Linus's tree.

If it's a real user-visible issue, the patch should target net.
Otherwise if the intended target is really net-next, no fixes tag please.

Unrelated important node: sashiko (gemini) still has some comments, some
of them looks new and relevant to me i.e. the possible divide by zero
bug in patch 11, see:

https://sashiko.dev/#/patchset/20260607183045.1213735-1-grzegorz.nitka%40intel.com

/P

