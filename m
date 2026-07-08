Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /SSTMLcPTmq0CQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 10:52:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 329DF7235A5
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Jul 2026 10:52:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=cmfZ7tzo;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=redhat.com (policy=quarantine);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64A6140DD4;
	Wed,  8 Jul 2026 08:52:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FzOx3W_qEH8C; Wed,  8 Jul 2026 08:52:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A66BA40DD3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783500723;
	bh=5u8E9yd/ckZ8PLZBECSPkzMZR3A3Q5NfRAHTKkSoC3U=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cmfZ7tzocXS8qAK5ZjR4/Gb9j+WFuCGsWPC/0VYxnkxeqJ/iWTfjlHYeoLrANgRwv
	 80J6QDSj1v6rYOojMVodbO23LgtT8VKCnP3ja5AoAaw1YLpiRJnF5sTACfxHHqbsdy
	 NzWe27WhVkIEvewIOiw1ih3QkGXGEi5ntQ5MAF+sFTIF0jnqFkoFtpOQrLhIAb+Tug
	 qGrgj6U+EZzpq2mATFdCLoMcWYoa2leKC0hsQps8kD2X3KCJ/B6W999kw6IOvCwDf+
	 I6pwgQ4WMZBL/tjotfdR/dFyyNcQQL59IHBrRYC+hOhRVLFhqm19M+YgYToz+aSJ+9
	 dY42JolxJgG7Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A66BA40DD3;
	Wed,  8 Jul 2026 08:52:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DB45315
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 08:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2EDA360DCE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 08:52:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UCL472B6UXNN for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Jul 2026 08:52:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2D48C60747
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2D48C60747
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2D48C60747
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Jul 2026 08:52:00 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-690-AeZfYhLhO4CXEkBvXMePPg-1; Wed, 08 Jul 2026 04:51:57 -0400
X-MC-Unique: AeZfYhLhO4CXEkBvXMePPg-1
X-Mimecast-MFC-AGG-ID: AeZfYhLhO4CXEkBvXMePPg_1783500717
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-493b54823bdso8860455e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jul 2026 01:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1783500716; x=1784105516;
 h=content-transfer-encoding:content-type:in-reply-to:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to:content-type;
 bh=5u8E9yd/ckZ8PLZBECSPkzMZR3A3Q5NfRAHTKkSoC3U=;
 b=ER29LORI4f6I3l0LQO1DQmhiNq+0a6khv3BNSDfz5gv8WT7+IhBw/WAg7taRNSZ37e
 n6mroBFAlxNZeBAN+EvO6XNvqpWQEyg8d4vd1KDYm3bmk+uV7InNUayrfFAEKYtGgq9a
 jAmgKYh5zet1whPxrfyx8gyJyUHjp6mhoagXPgLsrJhV7pN/f5VBDq8fWofp++yJj1ii
 l1ZNj6lndgmsLvkpqSU0r+rXWFB7LupE9h+pltXsH6cFvaOg/YnXbQo65bz7UbSWNYfw
 nsf0XIZEm3T5aOwRt1EpnkiD0qYb/xKR1pujZXxj7xpKlJKrLAHcKNUZ/8e7gSnY8M17
 ld8A==
X-Forwarded-Encrypted: i=1;
 AHgh+RqJEA0Bc64q/thbfy9PL0L1u3AVt+p6QGuCg8KKfcX2O6f3ZQALrI+sA0H8UtRQsmEbEfWpUNiPETFjtKHbNVE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwaFoAGbMFa/CsZueR1SuovvXQJ3lWMe17yTqKsvzlghsuVvIob
 HZjNCt9wUcTIDSYUejWyRiPvJqU4YN5fXJlNf5ZvlhDJBUXBEhx92oPeMIsANKHYGoHYMGoNImR
 MorVamjiqQ3zLJk1sTqzJ6ZbWU6B2v6j1nf6X6GLXHKL4Oc8/DAsauRtK96tVOV8Yz4voab0=
X-Gm-Gg: AfdE7cmsPMmeVRTgdYkAJCThzTyk6jt+IPQJo7Iq1H2ICSnWGdUvc5bAd5KIIiyGuP8
 De7QrFyfGygBondg0cg+aZ1juK1jf/uXLgvX3o97U9MKJ5tgIAJMyof9Bnp8LZ9vluHpHiomFeG
 qqFk3lFuwXIzvqLZ+trH3PrF025seaUjtyJlH8vWW2OT0srB1JQLCRjb+Uh1KceNK/nePIJhQ83
 1hdnBJH1ci4aYvn49rlUGkwbqQbeE/StA9rP/8Nc/iTZdxUr4QXY/uuYPIxf0iModBHDsT+EGpK
 VEIaWHSEZ0EVDkRb83XpsY1xcnXBqRKDdF3DNygN6LADFRd+80ypSoa6pRNSjEfWWnWMhBiJAhL
 gOjEMyyRX4tbArgGVhNYcpUJQOS1H5C0ieCVTy1tey5AfEo4wDNugU81KizuG+HJLirx7vwLnDl
 VsGukb3+80nR/9
X-Received: by 2002:a05:600c:1d9a:b0:492:3fb5:3a17 with SMTP id
 5b1f17b1804b1-493e6369acbmr14828015e9.2.1783500716622; 
 Wed, 08 Jul 2026 01:51:56 -0700 (PDT)
X-Received: by 2002:a05:600c:1d9a:b0:492:3fb5:3a17 with SMTP id
 5b1f17b1804b1-493e6369acbmr14827685e9.2.1783500716184; 
 Wed, 08 Jul 2026 01:51:56 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:5521:6b10:58fd:68f:7756:389d?
 ([2a0d:3344:5521:6b10:58fd:68f:7756:389d])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-493e0f40d50sm142908365e9.5.2026.07.08.01.51.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jul 2026 01:51:55 -0700 (PDT)
Message-ID: <1240f40e-ba1b-4773-bf65-facad8b4fc0c@redhat.com>
Date: Wed, 8 Jul 2026 10:51:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 horms@kernel.org, przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com
References: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20260701124524.13644-1-maciej.fijalkowski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: wc6JaxzbYffw6nxP6HtZWGw7f-ZNEvnJrI7WCR_2TAU_1783500717
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1783500719;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5u8E9yd/ckZ8PLZBECSPkzMZR3A3Q5NfRAHTKkSoC3U=;
 b=es8yhK/dSX2cS8rAUSNJu6JVopPHllLnBiD/T21RUALHc9XUnnxrEWkWM7QVpuLSQMh7Sj
 9SRFlYe5vzKa0hwstCcoHrm8j+Tk4xzlLc8hXKVUN0ae3wVOSCNX14vdfdhiz+n2JqikKK
 YJU9FFRivT4uDkFMip3rpeH7fWfQ2Sw=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=es8yhK/d
Subject: Re: [Intel-wired-lan] [PATCH v5 net 0/7] i40e: re-init and UAF fixes
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
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:maciej.fijalkowski@intel.com,m:netdev@vger.kernel.org,m:magnus.karlsson@intel.com,m:kuba@kernel.org,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 329DF7235A5

On 7/1/26 2:45 PM, Maciej Fijalkowski wrote:
> v5:
> - include three new patches to address last Sashiko review
>   *
> - do not release the irq lump in rebuild path in patch 7
> - clear dangling pointers from rx and xdp rings arrays
> v4:
> - add preceding patch that fixes a case when some of re-init allocations
>   failed and we missed de-registering netdev at failure path
> - pull out i40e_vsi_setup() changes onto separate patch
> v3:
> - address UAF when ring arrays were freed before q_vector's ring
>   containers (Sashiko, Jacob)
> - remove bool params from alloc/free array routines (Simon)
> v2:
> - NULL vsi->tx_rings in i40e_vsi_alloc_arrays() (Sashiko)

FTR, I'm not 100% sure about the actual target here: the subj prefix
point to the net tree, but the to recipient is IWL.

Since this is not sent by Tony, I assume the real target is IWL and
tentatively set the series to 'Awaiting upstream'. Note that for 'net'
inclusion you will need an actual, not empty, cover letter.

/P

