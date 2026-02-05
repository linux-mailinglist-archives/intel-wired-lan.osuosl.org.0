Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BmOHSiMhGl43QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:25:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0A5F26AD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 13:25:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C7E4610E4;
	Thu,  5 Feb 2026 12:25:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6vQ43yzcfAaw; Thu,  5 Feb 2026 12:25:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B18E60DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770294309;
	bh=kTs2P/KtHhQBrqRutC9oA5UVOjBir3xmipR3YfrBtSo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b09EOFr6nyx9Hd6P51C6uPY4jyklw2jqs7CBKw7RFMPLJgTtrCUUnyWQhRJHkINOA
	 jYzZ4H5mJfJZlreCQF2IQhm4kPUl1WyuabE6ZOX+6hRJOc1qdu/UG++E2ThUvRFOIb
	 zXByxTTPFr4TMBJ7UoPpsj8r2iJZ8IWC93rDDdo+/EbJQFvJrIRilDktuXJV55ycjF
	 ShNZsF7NwhtN9hM+WXL7ON15cGOHVvPxt0tdvDAcuVi8jInxj0p61R5RiNSg+m4jei
	 raAlA5WK/rmer1x6TFnr8ixEHtRHx81D09nse0chyZmMqZ2rArQAr2+LqsjFoUeLNR
	 7u9ma7Tb52tDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B18E60DD0;
	Thu,  5 Feb 2026 12:25:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 66929173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47FEC407C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:25:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dkTMu1UyIaRK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 12:25:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 23202400CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 23202400CB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23202400CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 12:25:05 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-108-VwDS5OIVNxa5F_6hgNAqVg-1; Thu, 05 Feb 2026 07:25:01 -0500
X-MC-Unique: VwDS5OIVNxa5F_6hgNAqVg-1
X-Mimecast-MFC-AGG-ID: VwDS5OIVNxa5F_6hgNAqVg_1770294300
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b801784f406so73503466b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Feb 2026 04:25:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770294300; x=1770899100;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=kTs2P/KtHhQBrqRutC9oA5UVOjBir3xmipR3YfrBtSo=;
 b=jp0hzWGFjjPrKe/XkALKIQi8Hf7zUYKcg8FGy8rCzpEcxJAltHf/chJ+OrdUXxkyuf
 MDcD6J4eS16zUSeEvgoZC3RdRtQ0w41CvaBawV8Ivj3++UOKgmxXQR2fkO45H3FXkdyi
 TdTj8GtVrNIBF0NISZN3IZUfIEkbcEyjl78A44jnfkfJzdmlcIu5PEya6LhUaNzgPneB
 2owTW/c2gTdt+hyuXjMRJye8ffH8coRMMVGvjn/fClQ0Dxg+0oOU+ABZ3HWLQoeutNsc
 9ONetmAU6E8THSWiP2o855HY+A+mljBNlxvKJJruNwRMoTZfsYVIM21LJOxpO0kj812q
 BGMQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCU5MENyfwiHkur9Eqiq7yaAxny9iqJ/MT+zZ9XS2c9OseMvPWfoEh6vXPlz9RX8eqkCM5CDusPdgq6RQOT8JjU=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxNGT8qG2OeRe3W3UNv9Z3eIbdVkQPKE30785evpW1cmf1cU7U1
 mRQrgc4HHccADAb0/9Uh9Ry0Qu42IeQYaDlW5ZBsFRwkbXaHY2ySeVQUqSo0FmP0YmhobpnqKfq
 qqT29P3ejgHMUGLEwc0rpzhn0IV6cauzeDQKmLNP14PupoIHH2phCONASh5/2x3M+wYmginY=
X-Gm-Gg: AZuq6aKzB9Js8NFN47HPoWxPoUIF9rUxF9itC4l7lSaF6UfnKeXlapmgfwJfBNHPtNt
 +rowe2sFpxG1Bxe21t3P6HqC3u+1Y7mXX1sWokBVPSASVgNUjafQtuQqw56HGZxtKZU1GqHdcgr
 xVRD27ejVA7JW3oEPhU/ub4/3nM+s3KmDuOo5pv+pPsUUCZ4fVGMfWqFrbrerIljNPZhBT/Zrj1
 e+6b32mNgmGO2ZMKvNX/of82j6SB5lqCe8j6Yz7qaS50+5DBIiB1q6Wi3mGhUlWF8TtTsfbdF8W
 gfvSrN0YFw6eGQyo8cDRUcqc+J4i/6WoIXevoAUoXnlMAj0u1cNrZWgiTLC/77oqtpQ1nIdBKUq
 Gg7vBUeeS
X-Received: by 2002:a17:907:d78b:b0:b8e:8874:8366 with SMTP id
 a640c23a62f3a-b8e9ef31395mr437994666b.5.1770294299690; 
 Thu, 05 Feb 2026 04:24:59 -0800 (PST)
X-Received: by 2002:a17:907:d78b:b0:b8e:8874:8366 with SMTP id
 a640c23a62f3a-b8e9ef31395mr437990866b.5.1770294299088; 
 Thu, 05 Feb 2026 04:24:59 -0800 (PST)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8ea0045574sm222051166b.59.2026.02.05.04.24.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Feb 2026 04:24:58 -0800 (PST)
Message-ID: <07755837-fb92-40ce-bf99-7d941076ee62@redhat.com>
Date: Thu, 5 Feb 2026 13:24:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jakub Kicinski <kuba@kernel.org>
Cc: ivecera@redhat.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
References: <20260202084820.260033-1-poros@redhat.com>
 <20260202155813.3f8fbc27@kernel.org>
 <b064ca33-1d94-4c7e-b0d0-78430d8cd0ac@intel.com>
 <14cb0b22-ec39-43e4-a35b-22ad558b2e34@redhat.com>
 <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
 <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
 <79960c2a-26ea-4472-bebb-4657fcca2255@intel.com>
 <0e17cadc-5cab-44f2-8998-67ecde033a06@intel.com>
 <fd06e5b3-c4cb-4725-a04d-dbc4839e88ea@intel.com>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <fd06e5b3-c4cb-4725-a04d-dbc4839e88ea@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: -VioLN5TlR0fjF5eF-RX1SXvQa5DND4ToOs38mE1iVo_1770294300
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770294304;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kTs2P/KtHhQBrqRutC9oA5UVOjBir3xmipR3YfrBtSo=;
 b=IfznJjxhniiGhR0fNpJ+QdCaDibTH9mdWmBd55SA1Fpz3UCjPRlRRfENa/QdKyXl53IEx3
 9NHHEJ07BlOXWXXhrLQaYIRjUXeMx4xZ/ZlRBnAkiddDJDvAlA6/qmxaYvmcWdgiAGsQ8/
 4AzjdQ6VlE03Fgcxd/KXT3GtmwaFf8Q=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=IfznJjxh
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix deadlock in reset
 handling
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:przemyslaw.kitszel@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: CF0A5F26AD
X-Rspamd-Action: no action


On 2/4/26 20:25, Jacob Keller wrote:
>
>
> On 2/3/2026 10:12 PM, Przemek Kitszel wrote:
>>
>> [...]
>>
>>>> If dropping the lock is a no-go, the only viable path forward is to 
>>>> split the
>>>> reset_task so that the waiting portion is decoupled from the 
>>>> netdev_lock
>>>> critical section.
>>>>
>>> We used to do this back before the netdev shaper ops. We didn't 
>>> acquire either netdev lock or RTNL during reset.
>>>
>>> I thought we had some code in the past that would handle netdev 
>>> stuff outside of reset.. but I don't really know and git blame is 
>>> not making it easy to find this information.
>>
>> IIRC it was iavf_config_task that is used to complete stuff requested
>> under RTNL but later
>>
>>>
>>> Perhaps we don't actually need to hold the netdev lock over the 
>>> reset task.. except Przemek's refactor to remove the critical lock 
>>> now makes us fully dependent on the netdev lock in this case for 
>>> reset :(
>>>
>>>> The fact remains that MTU configuration and ring parameter changes are
>>>> currently broken in iavf. Changing the MTU on a Virtual Function is a
>>>> fundamental configuration not an obscure edge case that can remain 
>>>> non- functional.
>>>>
>>>
>>> Agreed. This needs a resolution. It is just very tricky to figure 
>>> out what the solution should be.
>>>
>>> We need to hold the netdev lock during reset, and we need to have 
>>> our handlers wait for reset to complete in order to be certain their 
>>> task is done... but reset is a separate thread so we can't really 
>>> communicate to it that we're holding the lock, and attempts to do 
>>> that would be a huge problem.
>>>
>>> We don't want to go back to the critical lock and all of its 
>>> horrible problems either. The commit that removed it is here: 
>>> 120f28a6f314 ("iavf: get rid of the crit lock")
>>>
>>>> I would appreciate any further guidance on how you would prefer...
>>>>
>>>
>>> I wish I had some better ideas..
>>>
>>> Bad ideas I've thought about so far:
>>>
>>> 1) this patch with its drop lock and wait, which we discussed as 
>>> problematic before. It creates a lot of issues since it means the 
>>> operations are no longer atomic and we could potentially get stuck 
>>> with some other operation in the event of another thread starting 
>>> some core netdev task. No good.
>>>
>>> 2) not holding netdev_lock in reset, which is now a nogo since we 
>>> removed the crit_lock, and apparently we held netdev_lock prior to 
>>> that too anyways...
>>>
>>> 3) we could maybe do some sort of ref counting dance where we take 
>>> some reference in threads that queue a reset, and the reset task 
>>> would know if that reference was non-zero then another driver thread 
>>> is holding netdev_lock so its safe to go into reset without 
>>> locking... but this feels extremely ugly and error prone to me...
>>>
>>> 4) convert reset handling to a separate function that depends on the 
>>> netdev_lock, and call that directly from within the threads that 
>>> currently "wait for reset" while holding the netdev lock. Thus, we 
>>> basically move this entire call chain into the thread already 
>>> holding the lock, and call it from the context of the function like 
>>> the MTU change, etc. 
>>
>> reset_thread() {
>>      while (!stopped) {
>>          netdev_lock();
>>          reset_step();
>>          netdev_unlock();
>>      }
>> }
>>
>> looks cool, IIRC I did something similar with the "after crit lock
>> removal refactor continuation", but I've put it on hold
>> https://github.com/pkitszel/linux/commits/undeadlock/
>> The linked code went even further and merged all of our admin-worker 
>> threads into one and the whole was protected by the netdev_lock :)
>>
>
> That is a lot of patches and doesn't feel like a minimal fix.
>
>> This feels like its also a huge issue, and could
>>> potentially lead to some sort of issue where we need to still block 
>>> the reset thread from going if we reset at the end of the 
>>> netdev_lock thread..
>>
>> that should queue on the "do later stuff queue", which we don't have
>> right now (and keep some of such stuff in the state machine), but would
>> be useful for many other actions too (like virtchnl messages, for which
>> we have queue-of-1 right now
>>
>
> I think we need to lay out what we need and maybe that will help 
> figure out a solution.
>
>
> 1) several NDO operations need to perform tasks that require AVF 
> hardware to reset, and which need to be certain that happens before 
> they return.
>
> 2) reset is handled by a separate workqueue task
>
> 3) reset also requires the netdev lock
>
>
> We can't make the ndo operations avoid the netdev lock
>
> We pretty much can't make reset not require the netdev lock, 
> especially since we are now using it as effectively the main driver 
> lock now.
>
> I am not certain we can move all of the reset code to work from the 
> ndo thread context, as we still also have to wait for hardware 
> notification that reset happened, which seems like a pretty massive 
> refactor to get right.
>
> We can't drop the waiting in the ndo operation because we need to be 
> sure that the operation applied properly, otherwise we get errors 
> elsewhere.
>
> So that leaves me without any solution so far, certainly not one that 
> can be completed quickly... which means we're stuck with a guaranteed 
> deadlock anytime the MTU is changed?

I’ve been looking at the code on GitHub, and in my opinion, the fastest 
and most straightforward solution is to use a slightly modified approach 
based on patch 8c90ca2 ("iavf: split out body of reset task").

Since that patch refactors iavf_reset_task into iavf_reset_step and 
removes all netdev_lock acquisitions from its internal logic, we can 
resolve the deadlock by calling it directly.

In places where we currently wait (MTU, channels, ringparam), we should 
replace the asynchronous scheduling and waiting with a synchronous call. 
This avoids the deadlock by executing the reset in the thread that 
already holds the netdev_lock:

         if (netif_running(netdev)) {
-               iavf_schedule_reset(adapter, IAVF_FLAG_RESET_NEEDED);
-               ret = iavf_wait_for_reset(adapter);
-               if (ret < 0)
-                       netdev_warn(netdev, "MTU change interrupted 
waiting for reset");
-               else if (ret)
-                       netdev_warn(netdev, "MTU change timed out 
waiting for reset");
+               adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+               iavf_reset_step(adapter);
         }
What do you think about this?


>
>>>
>>> I don't really like any of these solutions, even if (3) and (4) 
>>> aren't fully ruled out as completely broken... they probably have 
>>> all kinds of issues...
>

