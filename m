Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wL87KyFt1mkQFQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 16:58:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 261EE3BDEBF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 16:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 89A9181E74;
	Wed,  8 Apr 2026 14:58:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id haysdfU4N0nf; Wed,  8 Apr 2026 14:58:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1C2381E79
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775660318;
	bh=5k9cDfj6fEVUNaXp8nCyqPBRWfO8zKeH0JyXDvSDvA4=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4AnmB3rOPATMYjmLBeRACEEw7OuFQwRSsO2OZTeU1DVg0Z28JGPwjkqaVfUsMjcsV
	 evowSh9WQFqKfpNKC6N6kZlueUzuoD82hQTGt0p4xDSohYanwxaV8tGmYveCc+mNIP
	 wVp78ahFbMBz7678evHQ/vw2SAi3D8Q7hbK7yzeRuOGyQ1A/pFzr+Z1V1fPw91uP28
	 xmJsAQnnTgSdHsI/uGkSPZN1WqCPg/7TSWcL5GYyANHsTc4aePDw8zXT99DVLHKwHt
	 kp4lW8AypxZM39b/y4qZjsWtkAt63MMDqoorodyhK9Hm65j92vC+AKWZFg89yBclmz
	 VGp3zXiRrVYoA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1C2381E79;
	Wed,  8 Apr 2026 14:58:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BB0C51F6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:58:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D43160856
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:58:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7H2HOVU7o61T for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 14:58:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1993160847
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1993160847
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1993160847
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 14:58:35 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-32-LOiAAr0YM0G_svzIOynS5w-1; Wed, 08 Apr 2026 10:58:31 -0400
X-MC-Unique: LOiAAr0YM0G_svzIOynS5w-1
X-Mimecast-MFC-AGG-ID: LOiAAr0YM0G_svzIOynS5w_1775660311
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-4837b6f6b93so62457815e9.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Apr 2026 07:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775660310; x=1776265110;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5k9cDfj6fEVUNaXp8nCyqPBRWfO8zKeH0JyXDvSDvA4=;
 b=nFuASR1rsPnCXvwkiBSxaK8oP7WORnii7tDkB5bwfElbHNFx1LZcyIEnV6wUpETTVe
 rxv0gtRClyiYDZb55rE2r+2rOHfuPzQgMehJZWiTxCKHdT7U4a5sCgPUW4GrRdEHtsRT
 +ZPir01Q5zG4G2JzTTkM9clMsarLOgJl11HAcjct07lW0vL0Fb4sXnnfz6ilLueAF7Jk
 5WZuzSah/oDAXExgHMBKMAfLFJoE5fnQ7gibIyxxedaXCMxwrHcHEby05W0OXVdR+qzR
 6sU3piILsRBsemU2/EhEPtpBkN9yuFFxIatRDqTZIfAiaJl+SL138Fgj25iJ/s62o1ps
 FQEw==
X-Gm-Message-State: AOJu0YymfsQKUb0G29dnpdLHjVlMV0GWPx3BUDpnLNbtfJ7oze3/gIOg
 Jp8p8Jr4n6x/tebb4ViyfSMmWjBsTi67ch0PrM661pwQ3WZxRv1hUOuU6Wv0C8o/Jxpgs6rWo4o
 sMUtMUL26Ck1Yw3cn978s0DVvZ+l780s5fnZ8Mun2cgNw1PuNT34IS+hpyrKqrHbxcQZVl7Q=
X-Gm-Gg: AeBDieti5u4+vM7QikyyEIBRVPVqnUOsRe2Fhm8n1ZPCHIqgONJzXdV1ufUT77Zx7li
 uCkXUKQHA1HioNJR9lxy8d1lCqgaA9iqlU4Xav+M5IbD1KlKJoXhPjjtJekQAYqwiyyNHKO6tn4
 a7h33vHBTkMMWX7geSpv72juQ1GSJKLkZEead3oOF6pjh8edBKkjastN7h/BGuomDs8+1UlE6RX
 pf1uogm8pbAWTRH8K7pMwcySuwOGxohEKpcCXtWnMRX7UTHEJevhQT6zsvQfIDjVbTbPWXfhQqF
 eXCnTSIf9H5VUuHC7eQlHZyGq5VgOrXRgzH0ZG8fzo7zhkeSVIWCMCB7O++MD3pXlLTbuBZEa1T
 2icX947e5hgO5XnN4g5EdsQAA+M8rYCaVdRSiohjfXx5lI5JDJjBkgUQ6dA==
X-Received: by 2002:a05:600c:a303:b0:487:1fbf:e0a1 with SMTP id
 5b1f17b1804b1-488ccf3a015mr783515e9.4.1775660310529; 
 Wed, 08 Apr 2026 07:58:30 -0700 (PDT)
X-Received: by 2002:a05:600c:a303:b0:487:1fbf:e0a1 with SMTP id
 5b1f17b1804b1-488ccf3a015mr783225e9.4.1775660310103; 
 Wed, 08 Apr 2026 07:58:30 -0700 (PDT)
Received: from [192.168.88.32] ([212.105.153.231])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4888a72baa8sm504011835e9.15.2026.04.08.07.58.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Apr 2026 07:58:28 -0700 (PDT)
Message-ID: <a9a49203-b393-48da-a151-d1067ed81645@redhat.com>
Date: Wed, 8 Apr 2026 16:58:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org
References: <cover.1775648513.git.pabeni@redhat.com>
 <3c7e8261-7528-431c-adb9-3b90124cef99@molgen.mpg.de>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <3c7e8261-7528-431c-adb9-3b90124cef99@molgen.mpg.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vSXUpZkyYJE2knWzf3arzwsLP5dd5Atgglx6envSwP0_1775660311
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1775660314;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5k9cDfj6fEVUNaXp8nCyqPBRWfO8zKeH0JyXDvSDvA4=;
 b=O9KH5ymaz9sB/FM6GqiqOg67Q6YSaKvv2WbZZiBvBgVvsh8jV7kLEkoBsmMo7cevWm3QpJ
 1OYgxo3bgVP+4IqIBOy7QgtU+ND8V4m1Geflu1+jHbmo7DH07E+GjDB+kIv+Ydq6IM4mi6
 R/75uZt8dDdc0B+Si7dzLdKEa5S5yjg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=O9KH5yma
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/2] i40e: implement
 per-queue stats
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
X-Spamd-Result: default: False [2.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,intel.com,lunn.ch,davemloft.net,google.com,kernel.org,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pabeni@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 261EE3BDEBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 4/8/26 1:50 PM, Paul Menzel wrote:
> Dear Paolo,
>
> Thank you for your patches.
> 
> Am 08.04.26 um 13:43 schrieb Paolo Abeni:
>> The i40e driver already collects some per queue statistics, but does
>> not expose them to the user-space using the standard interface.
>>
>> Implement the stat_ops callbacks and extends the already collected info
> 
> s/extends/extend/
> 
>> with basic GSO counters. Overall this allows passing the kernel NIC
>> drivers TSO test cases.
> 
> It’d be great, if you added the commands to show the stats, and to run 
> the test cases.

I'll add some "show stats" examples in the v2 cover, hopefully fixing
the typos while at it.

How to run NID driver H/W self-tests is IMHO a bit too wide topic to be
discussed in the cover letter, but there is already a quite
comprehensive readme in the selftests dir:

https://elixir.bootlin.com/linux/v7.0-rc7/source/tools/testing/selftests/drivers/net/README.rst

/P

