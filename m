Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PPK2JxLJKmrxwwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 16:41:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8337D672C8F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Jun 2026 16:41:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=ThBW4ROs;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70310607EA;
	Thu, 11 Jun 2026 14:41:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nW465qCKRwGZ; Thu, 11 Jun 2026 14:41:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A08D4607EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781188877;
	bh=tyjEG+W9Hat2flkhk/jrtX0PYeov58aCgm5xfgox1ic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ThBW4ROsMbQ4Leq7vXj3p7FpwflruJ2Z6aHg5d+yu2m+wcINbuzUmAcPGybnEq7Sn
	 /uZudxYPiCa97Du7oqE9MMgMpKEmoIxb0RIUMF0eqEAx2uxS4QW0iYGOYuy+4b8w6A
	 6RaVrN7MI9zQE2JCetQcnKDHbFmhjPZKdNBHav/sv0mGS9GbWC1SVLwzniVc8pi+AO
	 ck6NKoLQr9k32SSQA1fraCCOebqUOcVaz/SOHD4IOMvjNeQx1k+KXaDbbh/6yjYnMG
	 5FlS9kWwiDBaYaRvFdrPCZOWylbhpic7HhsHjEYbLrnrwN1OQSd44uiQwSUFWY7Va2
	 Y27rhca2aoZSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A08D4607EF;
	Thu, 11 Jun 2026 14:41:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 85DC1192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 14:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75997813AB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 14:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pLP0oWt1dOyt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Jun 2026 14:41:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 57732813AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 57732813AC
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 57732813AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 14:41:14 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-355-T02vdJWPPbe4ndYiCDNFvQ-1; Thu, 11 Jun 2026 10:41:12 -0400
X-MC-Unique: T02vdJWPPbe4ndYiCDNFvQ-1
X-Mimecast-MFC-AGG-ID: T02vdJWPPbe4ndYiCDNFvQ_1781188871
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-46010392f89so7251593f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Jun 2026 07:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781188871; x=1781793671;
 h=content-transfer-encoding:in-reply-to:content-language:from
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tyjEG+W9Hat2flkhk/jrtX0PYeov58aCgm5xfgox1ic=;
 b=b74Ba7mbWtXUdkWyzy3aESA9rV/rLLaVWv3k9azx6f8mVKwsE0JdM/Y8zfIKQwJzvT
 4CFilpVHOjfb34DNXRHz6oASF2HnIo6+X/xbVMWt0vqBqLYqorNIfJRotZA1+ggXIyFw
 5zdktiAKo+2i9YNlY6v/E99Jt0MBLBCvdqP+m5PGepsh/1oAlJeAdEPadjmWUWtaZ2nD
 6n41wWDvos92bDPaFqPoqJgi7rHU/B2gPAiHt3Z1wTDucOu7FC19BIvhNsYvYePcLnte
 wEj4HD3j18in/vMwfIjpLF7IzCCR/dMxXlKJ8N1T9JyzdCSAu/HK9yQoEkXIHAOx4UEI
 bquA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/hJ1Uv47loxsJoTBD4INTu8Cg2g33nGltOo22sTl1v+z2Z81YzzNvDjpdEJyvK+/RRE+DlaDlGc8rUDMVxTVQ=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzmVNyrmMshNGwBRntkqhfwHdHIZskbyt/hX+ae0tK2qwcckm5y
 yOtg3jDGRJ0i26rfqYMq1LGfAFeH1eXLHau7uSUJa31MYneeEmnIPoY8MTAgvCLXnRGNu9eSqwu
 Yybnl2FznKxN468OH9gXEsLL7LfGEj6ppEnwrgqzEEZyHLdvwObzAIHLsa550rtcLz19OwUc=
X-Gm-Gg: Acq92OEigsj0c1WmUuRkzZmeHvQV1oM0yyhIOdgjcwrn9nYQCwqDTvodX6xOeNtrDT4
 0i10y3dyC9lMWg4HZ7GQIY9pV4iSjHgvej0nCWwxIAJ+iqzbdBhBpPlSORx50wGKTSydWRzy028
 Hdx08Tioedt++U7MZeJdpE7OrSjY7yO06D4HnxZyXr52RZEybRzxOXHJ12C0j5dVkBI5FssUYFz
 8AaiRWBa7QEinLUVjK26Oj1PeQS6VHbqYPXIBFdE29UAt18VGtNvwkZeyteQ7o8ybVy3f+gVJS7
 pJSVg74bdobqGmdO/V4Fm5n7IhDxF6zovO08Q+ZyAlwNsL/UAlARzlANo4pS36MFG81nPm8qhp+
 D3NpRH9/R3hP+e3bRPVWgExeP0sNWzpN+OMnI8RAtaZAFmFGO7fyOzTh+RnlxYfgUDg==
X-Received: by 2002:adf:e844:0:b0:43d:1c21:ead5 with SMTP id
 ffacd0b85a97d-460675ab3f4mr3862516f8f.22.1781188870997; 
 Thu, 11 Jun 2026 07:41:10 -0700 (PDT)
X-Received: by 2002:adf:e844:0:b0:43d:1c21:ead5 with SMTP id
 ffacd0b85a97d-460675ab3f4mr3862474f8f.22.1781188870377; 
 Thu, 11 Jun 2026 07:41:10 -0700 (PDT)
Received: from [192.168.88.32] ([150.228.93.44])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4601f2dcad5sm90601715f8f.5.2026.06.11.07.41.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2026 07:41:09 -0700 (PDT)
Message-ID: <20be8f49-4d85-430b-a651-c4aecd172a57@redhat.com>
Date: Thu, 11 Jun 2026 16:41:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
References: <20260607183045.1213735-1-grzegorz.nitka@intel.com>
 <20260607183045.1213735-4-grzegorz.nitka@intel.com>
 <5ad977af-9bbb-4376-b0a6-2b1867223145@redhat.com>
 <IA1PR11MB6219E71E2581AE3A4C91F870921B2@IA1PR11MB6219.namprd11.prod.outlook.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <IA1PR11MB6219E71E2581AE3A4C91F870921B2@IA1PR11MB6219.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: u_h70Tihwv23jnS8-rk4F26bZsl4r4InK_EQZFwfz-w_1781188871
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1781188873;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tyjEG+W9Hat2flkhk/jrtX0PYeov58aCgm5xfgox1ic=;
 b=XEw8c8kTU+2nQ8oTRuo/5i8F0bQ1ZQNgKcZtjhiGYYoWOIqQyotoxnO1OAjiVFmucGlVeK
 QmVF0dTwW5r+l85U6mj80aDEykdtMO0FFubeeigvsZaIfM+TpbZiNG/5xC2YhvJblMjFvr
 RRT4LemSgcBRVWdG9ZqfWeOecRS1c5I=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XEw8c8kT
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
Cc: "Vecera, Ivan" <ivecera@redhat.com>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "kuba@kernel.org" <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "edumazet@google.com" <edumazet@google.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "donald.hunter@gmail.com" <donald.hunter@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Prathosh.Satish@microchip.com" <Prathosh.Satish@microchip.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:grzegorz.nitka@intel.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
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
X-Rspamd-Queue-Id: 8337D672C8F

On 6/11/26 12:01 PM, Nitka, Grzegorz wrote:
>> -----Original Message-----
>> From: Paolo Abeni <pabeni@redhat.com>
>> Sent: Thursday, June 11, 2026 10:50 AM
>> To: Nitka, Grzegorz <grzegorz.nitka@intel.com>; netdev@vger.kernel.org
>> Cc: linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Oros, Petr
>> <poros@redhat.com>; richardcochran@gmail.com;
>> andrew+netdev@lunn.ch; Kitszel, Przemyslaw
>> <przemyslaw.kitszel@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Prathosh.Satish@microchip.com; Vecera,
>> Ivan <ivecera@redhat.com>; jiri@resnulli.us; Kubalewski, Arkadiusz
>> <arkadiusz.kubalewski@intel.com>; vadim.fedorenko@linux.dev;
>> donald.hunter@gmail.com; horms@kernel.org; kuba@kernel.org;
>> davem@davemloft.net; edumazet@google.com
>> Subject: Re: [PATCH v14 net-next 03/13] dpll: fix stale iteration in
>> dpll_pin_on_pin_unregister()
>>
>> On 6/7/26 8:30 PM, Grzegorz Nitka wrote:
>>> Neither parent->dpll_refs nor pin->dpll_refs on its own is a correct
>>> iteration target at unregister time:
>>>
>>>   - pin->dpll_refs includes DPLLs the child was registered against
>>>     via a different parent or directly; blind unregister WARNs on
>>>     the cookie miss in dpll_xa_ref_pin_del().
>>>   - parent->dpll_refs reflects the parent's current attachments, not
>>>     those at child-register time. Another driver may have (un)reg'd
>>>     the parent against additional DPLLs in the meantime, so we miss
>>>     registrations that exist and visit DPLLs that have none.
>>>
>>> Walk pin->dpll_refs and use dpll_pin_registration_find() to filter
>>> to entries whose cookie is this parent. Symmetric with
>>> dpll_pin_on_pin_register(), correct under any subsequent change to
>>> parent->dpll_refs.
>>>
>>> Fixes: 9431063ad323 ("dpll: core: Add DPLL framework base functions")
>>> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>>
>> The current guidance is to avoid the Fixes tag for net-next patches,
>> when such tag refers to code already into Linus's tree.
>>
>> If it's a real user-visible issue, the patch should target net.
>> Otherwise if the intended target is really net-next, no fixes tag please.
>>
>> Unrelated important node: sashiko (gemini) still has some comments, some
>> of them looks new and relevant to me i.e. the possible divide by zero
>> bug in patch 11, see:
>>
>> https://sashiko.dev/#/patchset/20260607183045.1213735-1-
>> grzegorz.nitka%40intel.com
>>
>> /P
> 
> Hi Paolo
> 
> Thanks for your feedback.
> Regarding patches with 'Fixes' tag ...
> Actually patches from 3 to 7 in this series are indeed fix patches for the existing code.
> It was reported by Sashiko earlier for this series as pre-existing issues.
> Kuba suggested, at least this is how I understood it, to include it in the series to see
> a clean AI scan. 
> So please advise on the next steps ...
> Should I simply remove 'Fixes' tag from the commits and keep those patches in the series?
> Or ...  to remove them from the series and re-send as regular fix patches on 'net'?

The current guidance for the Fixes tag is to avoid it in net-next
patches, unless fixed patch is only present on net-next. My reading of
Jakub suggestion would be to drop the fixes tag as 'are not actually bugs.':

https://lore.kernel.org/netdev/20260604155422.167314ff@kernel.org/

Note that I could misread his wording.

Fixes tag could be stripped when applying the patches as needed, and I
think that could be preferable to a repost just for such thing, given
the current PW load...

> Regarding the latest Sahiko comments .. this specific one about divide-by-zero panic
> is false-positive. It was fixed with the latest revision.
> I'll respond in a separate message with my view on the other high ones.
... unless sashiko points to something really relevant. Please report on
the ML.

Thanks,

Paolo

