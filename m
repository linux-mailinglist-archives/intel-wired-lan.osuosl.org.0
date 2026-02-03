Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FtOA+7cgWnWLQMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 12:33:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 889FAD8670
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Feb 2026 12:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1B10B83C9B;
	Tue,  3 Feb 2026 11:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oxx1oxIBQL7S; Tue,  3 Feb 2026 11:32:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64F6583CA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770118379;
	bh=WCFzyXHFlPrMBFKkr2XvCqwF53SaNdsFKd3C1yICKWI=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ck3Qh2fpmQ329BgkNfEKPqBQLfC4SIFUCkXGKuX8RL7Yf9TohVhg5geg/7hQY0Mr3
	 9nlFeIO4t46/v34BbinyWP1/8umF9hL7FXE53kiOcJAQEKtEXNmOkG8anNyHZR9wTS
	 bQFpHLS5+ycBfXA1GxM04i95E51xc+KksXzB7GAAVBdi69a3Q4x05eWVWfU9qTtVO6
	 hfF8FmsDuyhcCIp0KIku3LpVhJCBblmh++7NDgYyg6zT8dCEolG602m4r03lMJehcy
	 xJSE2aJznJK+ju3ZJAbO/8EWhrnfbYWzh12e7DrTcC88wSUkkQsgvLM25N5fqOS+wk
	 RBp4bN/nUWazg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64F6583CA1;
	Tue,  3 Feb 2026 11:32:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A2AC7F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 11:32:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 81C1B83C1B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 11:32:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hQQ1CcT82tD5 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Feb 2026 11:32:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 553FD83C4F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 553FD83C4F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 553FD83C4F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Feb 2026 11:32:56 +0000 (UTC)
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-696-v1QXhT4lMoCH57YUvwMbRQ-1; Tue, 03 Feb 2026 06:32:52 -0500
X-MC-Unique: v1QXhT4lMoCH57YUvwMbRQ-1
X-Mimecast-MFC-AGG-ID: v1QXhT4lMoCH57YUvwMbRQ_1770118371
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-4806cfffca6so62915575e9.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 03 Feb 2026 03:32:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770118371; x=1770723171;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=WCFzyXHFlPrMBFKkr2XvCqwF53SaNdsFKd3C1yICKWI=;
 b=lktlbKtyDEEL/6CEJP+4L4DGQNG7cMZCeuqqmA2h91ZqKgQ/zYZjCWE8TPol3AotzW
 vJko0WuEb0tRNZvUz4XEiOAlsVqBQObgcnKZUSVYvtgUBTqPaECw9w1HZDjkdqOgUv+l
 cviTSXlR+5q1FvnEbo/WPnZ+L2/DJSwDjniZjnGKApU0nSUEogM6ZSwoKVaVaJzFw9ji
 ttOu8qXXngb6GrE18AlozOkhLDK/38qtl7XSuaRatCgjrStzRJX5HuzuYSsZjBobXZPO
 S9hTFKbrwbl6OGGE9QVn0NQw16ic57RbIALJ6MUPhHKy+JyfJJnGn8ryM1hX0g8X4P7J
 0Smw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3ror8/LuvA86WmoVBI2VXh/QAtn5jOTtESFyzVv4z6LqDkLxMhNT3G+olgCy6GbgFOC2lc7pKPt/Gw69Mb+Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yzzvo1UMDfPHio4ramVhWQSTXmDtaHNJYqL2Ex/LNF3PrPflDQl
 sLkdK3i11q39hDNPekMrX3/GfNB0na9Wb6uflMfis6Hmtez4dnhPSy6kAx/guV90cAOmIXzeljJ
 3W6/+H8JnGNY9prU2dbMLy2bPFIQyjyK423FLYJNNfbE5FrKtCS2u/ZUOQJcZyTZ8n0Yxq1s=
X-Gm-Gg: AZuq6aIYbhUNZfilv1Bo8FgY4UDHhmVUZmq2pP/W/Y+MQ2BnoQlpBQTNb8Y11pOx0ma
 /H+7VjIvBR2YE+HtPyFG9mIpN4/309mk6J+ifgpxPYxWiSFIK5Suk6LOxgzumU1Oeyh73W/gJ+E
 GaJOurCjygRmZr80z+GD1yK26/V8YfQIGltEtyNm8UtTVkQ8KhOcRjsco5atupJX3x08fT3KHBY
 g8V+tl9o89K06alcwA1yGmdtEHCSzTI35WHtHP/8PBMsXSMpE7YE5W7QPjPeXPJ3nPCplZzTR28
 S7xC/Lu3IRNOlQo5T7rCsUXYOdSS8W/tMYPbbC0Yg3MXGV1DPICwnfIqDv8kJuQDNmMFYkDQS22
 i3ZQ/u4qU
X-Received: by 2002:a05:600c:474d:b0:46f:c55a:5a8d with SMTP id
 5b1f17b1804b1-482db44d141mr233861695e9.4.1770118370853; 
 Tue, 03 Feb 2026 03:32:50 -0800 (PST)
X-Received: by 2002:a05:600c:474d:b0:46f:c55a:5a8d with SMTP id
 5b1f17b1804b1-482db44d141mr233861205e9.4.1770118370338; 
 Tue, 03 Feb 2026 03:32:50 -0800 (PST)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4360ef9e804sm9385010f8f.41.2026.02.03.03.32.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Feb 2026 03:32:49 -0800 (PST)
Message-ID: <db1723e3-294d-46b7-aa4c-11a21b0da82f@redhat.com>
Date: Tue, 3 Feb 2026 12:32:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
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
From: Petr Oros <poros@redhat.com>
In-Reply-To: <7907d42e-4805-48bc-aaf6-16cbe46eb1d2@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: EEJ4MIT3lJf4mkdEFWVUeznrIlIx0wiwirZawLjKA-4_1770118371
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1770118375;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WCFzyXHFlPrMBFKkr2XvCqwF53SaNdsFKd3C1yICKWI=;
 b=CmM/skxLKYrrzDyGL9xekorX6ozgcqeBTxpQF7viD22GCzC8MFvUNsWixjdjnkG67GOHOq
 R0Oite1zDfpFFvuiyft80ADplJdAWdN4z2ZZckPGZh36Dz0XyVfITXumDyUIvEarGjCiJO
 rn7FIWIcVV++GclDQxBbh5kmQuMBU68=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=CmM/skxL
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:ivecera@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:sdf@fomichev.me,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 889FAD8670
X-Rspamd-Action: no action


On 2/3/26 11:19, Przemek Kitszel wrote:
> On 2/3/26 09:44, Petr Oros wrote:
>>
>> On 2/3/26 02:00, Jacob Keller wrote:
>>>
>>>
>>> On 2/2/2026 3:58 PM, Jakub Kicinski wrote:
>>>> On Mon,  2 Feb 2026 09:48:20 +0100 Petr Oros wrote:
>>>>> +    netdev_unlock(netdev);
>>>>> +    ret = wait_event_interruptible_timeout(adapter->reset_waitqueue,
>>>>> + !iavf_is_reset_in_progress(adapter),
>>>>> +                           msecs_to_jiffies(5000));
>>>>> +    netdev_lock(netdev);
>>>>
>>>> Dropping locks taken by the core around the driver callback
>>>> is obviously unacceptable. SMH.
>>>
>>> Right. It seems like the correct fix is to either a) have reset take 
>>> and hold the netdev lock (now that its distinct from the global RTNL 
>>> lock) or b) refactor reset so that it can defer any of the netdev 
>>> related stuff somehow.
>>>
>> I modeled this after the existing pattern in iavf_close() (ndo_stop), 
>> which also temporarily releases the netdev instance lock taken by the 
>> core to wait for an async operation to complete:
>
> First of all, thank you for working on that, I was hit by the very same
> problem (no series yet), but my local fix is the same as of now.
>
> I don't see an easy fix (w/o substantial driver refactor).
>
>>
>> static int iavf_close(struct net_device *netdev)
>> {
>>          netdev_assert_locked(netdev);
>>          ...
>>          iavf_down(adapter);
>>          iavf_change_state(adapter, __IAVF_DOWN_PENDING);
>>          iavf_free_traffic_irqs(adapter);
>>
>>          netdev_unlock(netdev);
>>
>>          status = wait_event_timeout(adapter->down_waitqueue,
>>                                      adapter->state == __IAVF_DOWN,
>>                                      msecs_to_jiffies(500));
>>          if (!status)
>>                  netdev_warn(netdev, "Device resources not yet 
>> released\n");
>>          netdev_lock(netdev);
>>          ...
>> }
>>
>> This was introduced by commit 120f28a6f314fe ("iavf: get rid of the 
>> crit lock"), and ndo_stop is called with netdev instance lock held by 
>> the core just like ndo_change_mtu is. 
>
> technically it was introduced by commmit afc664987ab3 ("eth: iavf:
> extend the netdev_lock usage")
>
>> Could you clarify why the unlock-wait- lock pattern is acceptable in 
>> ndo_stop but not here?
>>
>
> perhaps just closing netdev is a special kind of operation
>
> Other thing is that the lock was added to allow further NAPI
> development, and one silly driver should not stop that effort.
> Sadly, we have not managed to re-design the driver yet. I would like to
> do so personally, but have much work accumulated/pending to free my time
>
I agree, the unlock-wait-lock pattern is fundamentally flawed (I now 
understand
why it is unacceptable) and should be avoided.

What can we do now?

* Eliminating the wait is not an option: As noted in the description of 
commit
c2ed2403f12c, this wait was originally added to fix a race condition where
adding an interface to bonding failed because the device remained in
__RESETTING state after the callback returned.
* Passing the lock into reset is impractical: The reset path is 
triggered from
numerous contexts, many of which are not under the netdev_lock, making this
even more complex than a full refactor.

If dropping the lock is a no-go, the only viable path forward is to 
split the
reset_task so that the waiting portion is decoupled from the netdev_lock
critical section.

The fact remains that MTU configuration and ring parameter changes are
currently broken in iavf. Changing the MTU on a Virtual Function is a
fundamental configuration not an obscure edge case that can remain 
non-functional.

I would appreciate any further guidance on how you would prefer...


