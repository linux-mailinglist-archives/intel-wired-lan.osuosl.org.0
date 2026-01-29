Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FaZCKjfe2ljJAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 23:31:04 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BFEB5543
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 23:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0E2560BDC;
	Thu, 29 Jan 2026 22:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qrvwfK8Pd9Fa; Thu, 29 Jan 2026 22:31:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E62360BE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769725861;
	bh=HISVrISF5RMSZoDqWrQf2bDEMP3jBXDbMHTqhsJe8fY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=G3Bi7vcz5K+aEcdbdoOL//00tkrsbXRyl1ORpsrtWF6ZMnaquH7VSjnZeWjEDgVjq
	 sch9DscrBrPQfP3PB5uJZ7i8fufvhQ/6gV/O+FHLbN8VQYY8ogfyNDBCepG6NDCnHN
	 Cs4c1Il0ubn3BIBK2Pdyi/0k8TYOUU9DXzlag5Mw4m7bYGF6xcoqXWM1CZsD6PN7DG
	 m5Wq8A62n3K+mkQqiWaGz9Eree+T2kFu3mK0Jk3wdleSpIT1kWiQUhenoFx7qEO4VG
	 bRb3+xBuqbDqwL96VVVpwlegxFk22eH5kFrQnd0zTof96BGi2LYmBHRZKFikXqgcY/
	 JDPaqWiPVKz/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E62360BE6;
	Thu, 29 Jan 2026 22:31:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95F9369
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 22:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A4584028F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 22:30:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6GvoxxAyllfe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 22:30:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=poros@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4937F40289
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4937F40289
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4937F40289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 22:30:57 +0000 (UTC)
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-352-eC78FIZsN3ePQr-5Ctpi3g-1; Thu, 29 Jan 2026 17:30:54 -0500
X-MC-Unique: eC78FIZsN3ePQr-5Ctpi3g-1
X-Mimecast-MFC-AGG-ID: eC78FIZsN3ePQr-5Ctpi3g_1769725853
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-477c49f273fso12877885e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 14:30:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769725853; x=1770330653;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HISVrISF5RMSZoDqWrQf2bDEMP3jBXDbMHTqhsJe8fY=;
 b=Zn/I5a4jmpKJ7oSwuD4Q2mXmXy1G6EO+DjdtUPdsGKFAnHoZqwA63LqP6vlmW1/xBc
 jHbdBKONAvbN8sm5XrOxjazmNjFL7h8bme8CSP0KludLk/r59I7U29VVQsEpGPOTTpQ2
 hFAxXM0GYt2biFNZSke57wPuqLy+cULUuP1Stw3bzURs7txBeHFU4rs6e/9FrzBjPVdA
 hQJC8IAyMyxhBXEaUuOTTBVOm6CR4BVb2B4aX0b9duYLsu7iESDVK3BppFDnwcylcU3T
 hDGVgqktqRgbXISZnkwVr5MUtNnKYWZAZ/K9AYj+NDDz1tFKVoiJwkRz57Y6QVA/h74Q
 M5Cw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVI8CvUVAy46wPTizPsxCAU7OOE6fEicpT2zyb0JQL2RE41HQo04f/5IW6DucpUFbZ6O3QOiDHkSJYsYHIzXqk=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywwhu1xiAdoguSE3u8GEwtIESUyYtxEBgQuIMqLii9F4KEG1HRz
 ztrmbrWEiq3zicy16qliKAsn/LXYmIM0U3lt4Uv3Qyx6EY8pxM7n1fGtXOOxVQVvRJk9RFB9eTi
 QAi1HjsHWMEaVzSrJdPCozti6EGPQnvJxELLsChovA4Os1pRvG708yYWets7SJGZxjOxADgA=
X-Gm-Gg: AZuq6aKqjarr4zuj6wwJlahl6d/Kq1PaT0ts4eP4ccBSRj1ImEZWMSWZ93nnABwTRq/
 j8Mk2iEvdfFiT4nLX0GNP4qsOCC86gWnrTMGKrgkFF/x97z7u685CvjkLG5U55eI+uw3tSCk7mg
 mWypqLNoNkmYZlQn+GfXy17CxCbenQRp5Cb1iN7LppE8xZIksxEw9Iep2Aw/hBxPasEB5PgwWPk
 +VvPRrbrE4FtZnASFmXAfRHPXvo3SYu6Kc5ZF+2s/tiH5m0qYpElzc131EohqW43iOdCnWginHp
 pR+G4e+IEXYuj4nRq9dEknenWCoWlZ9ZMtcJ+B7GgMSjNC6nEf/bZ5I4lUT7QDyd6u3QRltlMEQ
 YZBjH6OyS
X-Received: by 2002:a05:600c:8b42:b0:477:5af7:6fa with SMTP id
 5b1f17b1804b1-482db49728bmr6339835e9.32.1769725852802; 
 Thu, 29 Jan 2026 14:30:52 -0800 (PST)
X-Received: by 2002:a05:600c:8b42:b0:477:5af7:6fa with SMTP id
 5b1f17b1804b1-482db49728bmr6339665e9.32.1769725852329; 
 Thu, 29 Jan 2026 14:30:52 -0800 (PST)
Received: from [192.168.2.83] ([46.175.183.46])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4806cddffc0sm196670045e9.5.2026.01.29.14.30.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Jan 2026 14:30:51 -0800 (PST)
Message-ID: <5db7d6b4-5aa4-409d-a21b-51ed8c56ccb7@redhat.com>
Date: Thu, 29 Jan 2026 23:30:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: netdev@vger.kernel.org, ivecera@redhat.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Eric Dumazet <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
References: <20260129095723.7269-1-poros@redhat.com>
 <f5759be2-f48b-4a0e-afdf-38a201fa29be@molgen.mpg.de>
From: Petr Oros <poros@redhat.com>
In-Reply-To: <f5759be2-f48b-4a0e-afdf-38a201fa29be@molgen.mpg.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: od4kmtX1TKb6ufru-_9VlwuqQv-ugVWeQv5xc7Caw7I_1769725853
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1769725856;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HISVrISF5RMSZoDqWrQf2bDEMP3jBXDbMHTqhsJe8fY=;
 b=fPBaDAprTVfPbmlBPrlb3ToW55iGuFOKTbQr8Yn5keGJNyzrbuQmkZD6tkVxEAbprY50pT
 KfXFg6UNE2r0rixAlTkPJGKQGKR9GaulNszosGo0JrYp9OW3hvJsB21vdiiaDKvDkSITrq
 2glCnuqwpj4TOIXYuCBp+0JmwvHELFw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=fPBaDApr
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: fix PTP use-after-free
 during reset
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
	FREEMAIL_CC(0.00)[vger.kernel.org,redhat.com,intel.com,gmail.com,google.com,lunn.ch,kernel.org,davemloft.net,lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mpg.de:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	FORGED_SENDER(0.00)[poros@redhat.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS(0.00)[m:pmenzel@molgen.mpg.de,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:mateusz.polchlopek@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
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
X-Rspamd-Queue-Id: 37BFEB5543
X-Rspamd-Action: no action


On 1/29/26 22:48, Paul Menzel wrote:
> Dear Petr,
>
>
> Thank you for the patch.
>
> Am 29.01.26 um 10:57 schrieb Petr Oros:
>> Commit 7c01dbfc8a1c5f ("iavf: periodically cache PHC time") introduced a
>> worker to cache PHC time, but failed to stop it during reset or disable.
>>
>> This creates a race condition where `iavf_reset_task()` or
>> `iavf_disable_vf()` free adapter resources (AQ) while the worker is 
>> still
>> running. If the worker triggers `iavf_queue_ptp_cmd()` during 
>> teardown, it
>> accesses freed memory/locks, leading to a crash.
>
> Do you have a stacktrace, and could you add an excerpt, so people 
> hitting this, can more easily find the commit?

I have some stack traces. The problem is that the race window is so wide 
that it sometimes crashes in the PTP subsystem, looking like:

[ 5611.939379] Call Trace:
[ 5611.941831]  <TASK>
[ 5611.943937]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 5611.948295]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 5611.952656]  ? ptp_aux_kworker+0x1d/0x40
[ 5611.956584]  ? __die_body.cold+0x8/0x12
[ 5611.960422]  ? page_fault_oops+0x148/0x160
[ 5611.964520]  ? exc_page_fault+0x73/0x160
[ 5611.968445]  ? asm_exc_page_fault+0x26/0x30
[ 5611.972634]  ? __pfx_ptp_aux_kworker+0x10/0x10
[ 5611.977082]  ? __pfx_ptp_aux_kworker+0x10/0x10
[ 5611.981525]  ptp_aux_kworker+0x1d/0x40
[ 5611.985278]  kthread_worker_fn+0xa0/0x260
[ 5611.989291]  ? __pfx_kthread_worker_fn+0x10/0x10
[ 5611.993911]  kthread+0xfd/0x240
[ 5611.997056]  ? __pfx_kthread+0x10/0x10
[ 5612.000809]  ret_from_fork+0x34/0x50
[ 5612.004386]  ? __pfx_kthread+0x10/0x10
[ 5612.008140]  ret_from_fork_asm+0x1a/0x30
[ 5612.012069]  </TASK>

  and other times in iavf, looking like:

3476.640150] Call Trace:
[ 3476.642597]  <TASK>
[ 3476.644702]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 3476.649062]  ? show_trace_log_lvl+0x1b0/0x2f0
[ 3476.653420]  ? mod_delayed_work_on+0x9f/0xb0
[ 3476.657691]  ? __die_body.cold+0x8/0x12
[ 3476.661530]  ? page_fault_oops+0x148/0x160
[ 3476.665629]  ? exc_page_fault+0x7f/0x150
[ 3476.669556]  ? asm_exc_page_fault+0x26/0x30
[ 3476.673743]  ? __queue_work.part.0+0x44/0x320
[ 3476.678100]  ? __pfx_ptp_aux_kworker+0x10/0x10
[ 3476.682547]  mod_delayed_work_on+0x9f/0xb0
[ 3476.686647]  iavf_send_phc_read+0xb0/0xd0 [iavf]
[ 3476.691283]  iavf_ptp_do_aux_work+0x39/0x50 [iavf]
[ 3476.696083]  ptp_aux_kworker+0x1d/0x40
[ 3476.699835]  kthread_worker_fn+0xa3/0x260
[ 3476.703848]  ? __pfx_kthread_worker_fn+0x10/0x10
[ 3476.708465]  kthread+0xfa/0x240
[ 3476.711613]  ? __pfx_kthread+0x10/0x10
[ 3476.715365]  ret_from_fork+0x34/0x50
[ 3476.718943]  ? __pfx_kthread+0x10/0x10
[ 3476.722695]  ret_from_fork_asm+0x1a/0x30
[ 3476.726622]  </TASK>

, etc.

>
>> Fix this by calling `iavf_ptp_release()` before tearing down the 
>> adapter.
>> This ensures `ptp_clock_unregister()` synchronously cancels the 
>> worker and
>> cleans up the chardev before the backing resources are destroyed.
>>
>> Fixes: 7c01dbfc8a1c5f ("iavf: periodically cache PHC time")
>> Signed-off-by: Petr Oros <poros@redhat.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf_main.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c 
>> b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> index 4b0fc8f354bc90..0dd58ce5a53ab1 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
>> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
>> @@ -3025,6 +3025,8 @@ static void iavf_disable_vf(struct iavf_adapter 
>> *adapter)
>>         adapter->flags |= IAVF_FLAG_PF_COMMS_FAILED;
>>   +    iavf_ptp_release(adapter);
>> +
>>       /* We don't use netif_running() because it may be true prior to
>>        * ndo_open() returning, so we can't assume it means all our open
>>        * tasks have finished, since we're not holding the rtnl_lock 
>> here.
>> @@ -3200,6 +3202,8 @@ static void iavf_reset_task(struct work_struct 
>> *work)
>>       iavf_change_state(adapter, __IAVF_RESETTING);
>>       adapter->flags &= ~IAVF_FLAG_RESET_PENDING;
>>   +    iavf_ptp_release(adapter);
>> +
>>       /* free the Tx/Rx rings and descriptors, might be better to just
>>        * re-use them sometime in the future
>>        */
>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
>
>
> Kind regards,
>
> Paul
>

