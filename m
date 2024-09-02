Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A580E968432
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 12:11:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB117405F7;
	Mon,  2 Sep 2024 10:11:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69fxmSMMtPI3; Mon,  2 Sep 2024 10:11:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97FD1405EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725271859;
	bh=ko0VtalU6TRd2mcjtdDzNrGiHlfUv5J7DOtlyGXRSv8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kpmsm8lfPKJ+4wa1ZRE6r26/onTryDObExkK/xj9FtJoUb61xZdzCRO7X/sl+fIIl
	 hwxHzpGX4VO+zW0kwbrUrxgHgR8ASJ1Kp5Qw4QmccCWQci/3lh2umXhkAr9SMdfIj6
	 7m7Z6KNeTzto0HZRiztoDBXfIcFcG0DRTsrWTfKAjnoygZvEq0qXu2mWPxn+Lb/98S
	 qrlThgSdgVKYb6I5yLBIQQlPvDxY/difSj9/XZbuEKSkN28RE5z0jipMA48wdZHw1d
	 846eUk9MWN1BKmFOzypoX7h9r2rzu75EFan6kHEjYE0ooJlQJmJMuhboVG7gQzejZz
	 4VTBzxu28f7kA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97FD1405EB;
	Mon,  2 Sep 2024 10:10:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A12D1BF279
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:10:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 23ACE607D0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:10:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKrMQWmkC5aT for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 10:10:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=pabeni@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 012AD6061B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 012AD6061B
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 012AD6061B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 10:10:56 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-m9QaHLbYPsihMiHls2nITQ-1; Mon, 02 Sep 2024 06:10:54 -0400
X-MC-Unique: m9QaHLbYPsihMiHls2nITQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42c6f2e6976so18949145e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 02 Sep 2024 03:10:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725271853; x=1725876653;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ko0VtalU6TRd2mcjtdDzNrGiHlfUv5J7DOtlyGXRSv8=;
 b=uZibH8fpIELmu+PIhSiX0AMaCQEkJqWveUWWhEBNzysBxKBZ900M4fwRDxTiQRS75k
 EoLjdOSorlFAOLcNthnqMGGjUIZpulYQvumKbAyTmvivlWlzOWkrmorEfXXfPPwjf1HC
 3yWW/PCjuRQ/wFdrh8+oo4s5erHJfCg6ghhj9ZaQG9blNrOTPdU/8F2g6+oWziq/QXdp
 TBBRfPo2hR5F7FQh0AzXubQIK7dP3PFNW+x0ymPlc3stz4FDMr7kb0uPPEF0luU+xxHR
 qyevQGZ+qlPpUKEeIrQNq7VsNUCGr7DZ5YeqlFqkIsMZNl0p4qVauYywkUHrURvlk6mk
 +BPg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXHYzmW0Mqib8gPotTi3KcguKomJ5GagN1akvt/ULrD89VGL6I+OVn+A8klgUFxaoiM/ePF4VbgngAWdvvN6sA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YweD9XtEgA8JRZdIItbYkVhWr2Ia+QsgE8vur3zdyky4YGsavdG
 NgT9dEN7Li1+nvYXpIMXArIe7lGfMztUD2yV+FwTb0I0TQRDoeH/nYEpbww8+xkR8PrF4laNLOk
 d4RFQOSZWdFHOqCXCICbpWJW4ZVrntB7rUzvBRyTrfZ0M1ezC4o5WjPWwwLkMBIp69Hc=
X-Received: by 2002:a05:600c:1c09:b0:423:791:f446 with SMTP id
 5b1f17b1804b1-42c7b59e335mr44157475e9.7.1725271853547; 
 Mon, 02 Sep 2024 03:10:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHeJOyJ/Ar6rX0WhVMfQs2myZpFdPxS2VVeL1tGE/EIyhRLHqUFol+/by50MHVDasgoZUwWZQ==
X-Received: by 2002:a05:600c:1c09:b0:423:791:f446 with SMTP id
 5b1f17b1804b1-42c7b59e335mr44157165e9.7.1725271852979; 
 Mon, 02 Sep 2024 03:10:52 -0700 (PDT)
Received: from [192.168.179.247] (146-241-5-217.dyn.eolo.it. [146.241.5.217])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-374b9d54f98sm7541793f8f.69.2024.09.02.03.10.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Sep 2024 03:10:52 -0700 (PDT)
Message-ID: <c6d8052c-c5a0-48e2-8984-0063afc1e482@redhat.com>
Date: Mon, 2 Sep 2024 12:10:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, Jiri Pirko <jiri@resnulli.us>
References: <cover.1724944116.git.pabeni@redhat.com>
 <53077d35a1183d5c1110076a07d73940bb2a55f3.1724944117.git.pabeni@redhat.com>
 <20240829182019.105962f6@kernel.org>
 <58730142-2064-46cb-bc84-0060ea73c4a0@redhat.com>
 <20240830121418.39f3e6f8@kernel.org>
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20240830121418.39f3e6f8@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1725271855;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ko0VtalU6TRd2mcjtdDzNrGiHlfUv5J7DOtlyGXRSv8=;
 b=P1e/PKF4ITrNYMbXt4WsBEXHOY67VPTreGceh23W4rwYVr9KpDaUtXVxoTGbaf/KbTgkYM
 +fw/RGlTuLrqhB7I/XNhtWD4dooyGQvfe5kGZ+m562rVpeyrExMELJv8q7siCnS5OaYm2Z
 UQ6zyYdKeqz3RPsWzsk+awRVlJRy/OU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=P1e/PKF4
Subject: Re: [Intel-wired-lan] [PATCH v5 net-next 02/12] net-shapers:
 implement NL get operation
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Donald Hunter <donald.hunter@gmail.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>,
 edumazet@google.com, Madhu Chittim <madhu.chittim@intel.com>,
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/30/24 21:14, Jakub Kicinski wrote:
> On Fri, 30 Aug 2024 17:43:08 +0200 Paolo Abeni wrote:
>> Please allow me to put a few high level questions together, to both
>> underline them as most critical, and keep the thread focused.
>>
>> On 8/30/24 03:20, Jakub Kicinski wrote:
>>   > This 'binding' has the same meaning as 'binding' in TCP ZC? :(
>>
>> I hope we can agree that good naming is difficult. I thought we agreed
>> on such naming in the past week’s discussion. The term 'binding' is
>> already used in the networking stack in many places to identify
>> different things (i.e. device tree, socket, netfilter.. ). The name
>> prefix avoids any ambiguity and I think this a good name, but if you
>> have any better suggestions, this change should be trivial.
> 
> Ack. Maybe we can cut down the number of ambiguous nouns elsewhere:
> 
> maybe call net_shaper_info -> net_shaper ?
> 
> maybe net_shaper_data -> net_shaper_hierarchy ?

Is everybody fine with the above?

>> [about separate handle from shaper_info arguments]
>>   > Wouldn't it be convenient to store the handle in the "info"
>>   > object? AFAIU the handle is forever for an info, so no risk of it
>>   > being out of sync…
>>
>> Was that way a couple of iterations ago. Jiri explicitly asked for the
>> separation, I asked for confirmation and nobody objected.
> 
> Could you link to that? I must have not read it.

https://lore.kernel.org/netdev/ZqzIoZaGVb3jIW43@nanopsycho.orion/

search for "I wonder if the handle should be part of this structure"

I must admit by wannabe reply on such point never left my outbox.

> You can keep it wrapped in a struct *_handle, that's fine.
> But it can live inside the shaper object.

That is basically the opposite of what Jiri asked. @Jiri would you be ok 
reverting to such layout?

>> Which if the 2 options is acceptable from both of you?
>>
>> [about queue limit and channel reconf]
>>   > we probably want to trim the queue shapers on channel reconfig,
>>   > then, too? :(
>>
>> what about exposing to the drivers an helper alike:
>>
>> 	net_shaper_notify_delete(binding, handle);
>>
>> that tells the core the shaper at the given handle just went away in the
>> H/W? The driver will call it in the queue deletion helper, and such
>> helper could be later on used more generically, i.e. for vf/devlink port
>> deletion.
> 
> We can either prevent disabling queues which have shapers attached,
> or auto-removing the shapers. 

I think/fear that prevent disabling queues would lead to 
weird/unexpected results and more difficult administration, I prefer the 
callback option.

> No preference on that. But put the
> callback in the core, please, netif_set_real_num_rx_queues() ?
> Why not?

It makes sense. I'll add a net_shaper_set_real_num_rx_queues() callback 
there.

/P

