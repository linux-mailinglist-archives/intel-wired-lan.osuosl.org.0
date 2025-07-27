Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 321FBB12F42
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 13:00:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F86683BE1;
	Sun, 27 Jul 2025 11:00:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id khJp45b0Lu3E; Sun, 27 Jul 2025 11:00:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71E1083C4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753614019;
	bh=oHeZkftYAbkyHtBV0wRRYYi4zatoiTrB+Y/dcAdYXbc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mgBAp5gDQaiQoBkQK5z5742M0NnzEo0GD21iAshpxcaQWFTGozKkDKm+BlTbBzuss
	 ix4KRc3VlM+aAFqKiviTK2AxIWnH7ngU6s1iuw7giB82IHFt6SWH3hNZzkTpjOmXDc
	 j3+p6ktAqfenBDKjbaU1cPUrrsVt3bPAmxq+Nto3cMKo1Xd73nKXNqdEmP2tmd8byK
	 y8SPaL73sNUFTX1QQJZpdq7MfXrYYQUBP6GxsKoN3QDe2omC6E+2cv3tMwPlQl11l4
	 2+MP5UNh+/lhoq8oJ311kCXeq87fv/DhhDtXAvBjCVP2BvzNzUCSirgKFZSX0oovnz
	 pHkn0gr5EkBig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E1083C4E;
	Sun, 27 Jul 2025 11:00:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C9A6CDA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 11:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB6D783C38
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 11:00:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zx6Z7gEk0hwY for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 11:00:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=ttoukan.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DFAA483BE1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFAA483BE1
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DFAA483BE1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 11:00:16 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-45610582d07so22654695e9.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 04:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753614015; x=1754218815;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oHeZkftYAbkyHtBV0wRRYYi4zatoiTrB+Y/dcAdYXbc=;
 b=hAIlmIZJbA88BhE0/93CnyKoGaM1nB5X88Q+uTXQAEvxvJjaSYC5jqj/9oapOxTo2U
 ZBqcDwUATrif4M+SF68Dq//6THzFCEX5n6OqGd2dFbkNmcWAn9CqIlvZaOnkxMI/LZrf
 vp8pBdUxtwrwxvA35i11tp4obMeoEUS+ihj3bCSJ6h6gh/6QYSf2iwrtbbr3r+fapVec
 Pyjd4/NEfozqGepdEC2xpC9gtUBwkGHqa7qlDyyIOTeX6bdctgfOuCLrr3oDfqLHr2Ld
 QQgFCoaBHAIC2n8BxOmlu9vdRsbegBjzNrl4b3gZgZwQqWC3ZaIikf1l16anG6ZD49HN
 W9Dg==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6BNTO/hXQTVtAj6ydS595i8pXcJCZHoO7ynuuvNIsfTODwe4SrOVFM+VlvfWzwpf40DB77VWefdqIoUXLF5I=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyF8OYl0Zo+6FX5tcHBc4lkzRwJQprxejOpSn9vRuNvOomaSZww
 3EUAG9ZyLLN2rOeuEMOzHo5brOcB2O/4Pv+0TnkLWCbaHdDyiW+HQvFD
X-Gm-Gg: ASbGncu1NtZmPiXo6j45ZJ1VgESPyb2289/prbS1sl0W+3U6iSFfbs12U4PmQqw5PGk
 sWmYs2rd29IGLdgr2qw9VIlGN7x1VmNp/I9IVExLmhdQn6kHgAJwBtmAVfQu3tkPrDhMVaofEh6
 MjttmNBcIgO3jrMNR7soKI7iDhhYCSskel+76nPEGd53Ep2eCZ+h0PTD/sz82VyotCnbrE8nRxM
 9OCqJkOpnY8px+Ob+5yvzpwHiiHuBr2fJ12fSJccOmUg2/2x1j1cT//fHx4BgtYYCzoitVWPxdF
 P901sf5PKI0w6scDnKiWhwPQRC7ctYhM4+V6nhfXfNUfPz4gQ1Qx+W2BTEDjQs3VrGa2ACXNil4
 yxzxNjRo0wqoKCI8biGJhMvBCvZvvdpWFsQ3wWz+ymIJcNHc=
X-Google-Smtp-Source: AGHT+IEIAyE3PFazotUctyFhyDFZ5GBR5lJrudlJw2ZEAV7vCREIqwBAgJq24E3OBY15cTJoMkuygw==
X-Received: by 2002:a05:600c:1992:b0:441:d4e8:76c6 with SMTP id
 5b1f17b1804b1-45876554b45mr78597285e9.30.1753614014454; 
 Sun, 27 Jul 2025 04:00:14 -0700 (PDT)
Received: from [10.221.199.138] ([165.85.126.96])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4587272b405sm93829525e9.19.2025.07.27.04.00.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 27 Jul 2025 04:00:14 -0700 (PDT)
Message-ID: <3bf6714b-46d7-45ad-9d15-f5ce9d4b74e4@gmail.com>
Date: Sun, 27 Jul 2025 14:00:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
Cc: Tariq Toukan <tariqt@nvidia.com>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Jiri Pirko <jiri@resnulli.us>,
 Jiri Pirko <jiri@nvidia.com>, Saeed Mahameed <saeed@kernel.org>,
 Gal Pressman <gal@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Shahar Shitrit <shshitrit@nvidia.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Brett Creeley <brett.creeley@amd.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Cai Huoqing
 <cai.huoqing@linux.dev>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sunil Goutham <sgoutham@marvell.com>, Linu Cherian <lcherian@marvell.com>,
 Geetha sowjanya <gakula@marvell.com>, Jerin Jacob <jerinj@marvell.com>,
 hariprasad <hkelam@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Ido Schimmel <idosch@nvidia.com>, Petr Machata <petrm@nvidia.com>,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
References: <1752768442-264413-1-git-send-email-tariqt@nvidia.com>
 <20250718174737.1d1177cd@kernel.org>
 <6892bb46-e2eb-4373-9ac0-6c43eca78b8e@gmail.com>
 <20250724171011.2e8ebca4@kernel.org>
Content-Language: en-US
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <20250724171011.2e8ebca4@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1753614015; x=1754218815; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=oHeZkftYAbkyHtBV0wRRYYi4zatoiTrB+Y/dcAdYXbc=;
 b=Dh3DqMK2N9mU2R1shzjV4im9uBKq7QyCTVtgcO3HKQfRbQCvBXJhWezbfJGI129pEw
 k/ZKQzNK2/SwAHwAnEGit54RLhM8jICQaFjRV5eew4q2nq1JOEz3Dy3Daz+ItloLAP17
 VriErncFEyIZgVjlrOqGoerIiobLY20fwU9vKbMK5BSBPDAATTVN+3SJ1PhAY1DmUKSu
 MTPISv5aYEoswB5kugJdjV7FykMF+V3BEvmQVFh+SbYqjgJWA186dwlPJKdwuGcspJ5p
 mnqgcJppi7f2ibKgR4P7TdBVHt/0vhz7akVXL0pMUa+9GlyKhK2AWyUsTZIEwBzK384C
 gIyg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Dh3DqMK2
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/5] Expose grace period
 delay for devlink health reporter
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



On 25/07/2025 3:10, Jakub Kicinski wrote:
> On Thu, 24 Jul 2025 13:46:08 +0300 Tariq Toukan wrote:
>> Design alternatives considered:
>>
>> 1. Recover all queues upon any error:
>>      A brute-force approach that recovers all queues on any error.
>>      While simple, it is overly aggressive and disrupts unaffected queues
>>      unnecessarily. Also, because this is handled entirely within the
>>      driver, it leads to a driver-specific implementation rather than a
>>      generic one.
>>
>> 2. Per-queue reporter:
>>      This design would isolate recovery handling per SQ or RQ, effectively
>>      removing interdependencies between queues. While conceptually clean,
>>      it introduces significant scalability challenges as the number of
>>      queues grows, as well as synchronization challenges across multiple
>>      reporters.
>>
>> 3. Error aggregation with delayed handling:
>>      Errors arriving during the grace period are saved and processed after
>>      it ends. While addressing the issue of related errors whose recovery
>>      is aborted as grace period started, this adds complexity due to
>>      synchronization needs and contradicts the assumption that no errors
>>      should occur during a healthy system’s grace period. Also, this
>>      breaks the important role of grace period in preventing an infinite
>>      loop of immediate error detection following recovery. In such cases
>>      we want to stop.
>>
>> 4. Allowing a fixed burst of errors before starting grace period:
>>      Allows a set number of recoveries before the grace period begins.
>>      However, it also requires limiting the error reporting window.
>>      To keep the design simple, the burst threshold becomes redundant.
> 
> We're talking about burst on order of 100s, right?

It can be, typically up to O(num_cpus).

> The implementation
> is quite simple, store an array the size of burst in which you can
> save recovery timestamps (in a circular fashion). On error, count
> how many entries are in the past N msecs.
> 

I get your suggestion. I agree that it's also pretty simple to 
implement, and that it tolerates bursts.

However, I think it softens the grace period role too much. It has an 
important disadvantage, as it tolerates non-bursts as well. It lacks the 
"burstness" distinguishability.

IMO current grace_period has multiple goals, among them:

a. let the auto-recovery mechanism handle errors as long as they are 
followed by some long-enough "healthy" intervals.

b. break infinite loop of auto-recoveries, when the "healthy" interval 
is not long enough. Raise a flag to mark the need for admin intervention.

In your proposal, the above doesn't hold.
It won't prevent the infinite auto-recovery loop for a buggy system that 
has a constant rate of up to X failures in N msecs.

One can argue that this can be addressed by increasing the grace_period. 
i.e. a current system with grace_period=N is intuitively moved to 
burst_size=X and grace_period=X*N.

But increasing the grace_period by such a large factor has 
over-enforcement and hurts legitimate auto-recoveries.

Again, the main point is, it lacks the ability to properly distinguish 
between 1. a "burst" followed by a healthy interval, and 2. a buggy 
system with a rate of repeated errors.

> It's a clear generalization of current scheme which can be thought of
> as having an array of size 1 (only one most recent recovery time is
> saved).
> 

It is a simple generalization indeed.
But I don't agree it's a better filter.

>> The grace period delay design was chosen for its simplicity and
>> precision in addressing the problem at hand. It effectively captures
>> the temporal correlation of related errors and aligns with the original
>> intent of the grace period as a stabilization window where further
>> errors are unexpected, and if they do occur, they indicate an abnormal
>> system state.
> 
> Admittedly part of what I find extremely confusing when thinking about
> this API is that the period when recovery is **not** allowed is called
> "grace period".

Absolutely.
We discussed this exact same insight internally. The existing name is 
confusing, but we won't propose modifying it at this point.

> Now we add something called "grace period delay" in
> some places in the code referred to as "reporter_delay"..
> 
> It may be more palatable if we named the first period "error burst
> period" and, well, the later I suppose it's too late to rename..
It can be named after what it achieves (allows handling of more errors) 
or what it is (a shift of the grace_period). I'm fine with both, don't 
have strong preference.

I'd call it grace_period in case we didn't have one already :)

Please let me know what name you prefer.
