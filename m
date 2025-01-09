Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 926C9A06C01
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2025 04:27:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE90580F5C;
	Thu,  9 Jan 2025 03:27:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s440mh9R3JDK; Thu,  9 Jan 2025 03:27:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 277CB80F33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736393222;
	bh=vzuVW+OPCT+RHQ0ks4dicbQ5JZOeyDFGTM+oaD9Mb3E=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nPxGwSo4ucYt+BtoJCF8gKLKvBqwBNtYVeS0cZwL4Oi4IOhKW2vZWps2gfHnBbhMO
	 Q9aHbNaxE7sy1HS56wiWHOsM6NU0L4RDVIVQae1rMDN7llmDeoIcGHGPZ+BrW8ilVx
	 gU14uM3dt9p2Z39BIbPs6gd/8tUsb8uJkQ11fp1IJwq3ruy900NTeJN6QhR832DTNC
	 QoDIuUpfuPbdBoxFOFEHkLPvwUb02mq7fgovq499c18V5/wn4lu62PuQGBC714qoSU
	 AC/KfMds6bZn6q9EyVz6Zmd1vgBIiZYrd/s9eUcPSDvlxmwXMrlfI0WARCWBtOLfNT
	 Y+BRHX8mphKeg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 277CB80F33;
	Thu,  9 Jan 2025 03:27:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C10D7AA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 03:27:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 252F860859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 03:27:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8vj6nW3WjtgU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2025 03:26:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::633; helo=mail-pl1-x633.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 062FB6087A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 062FB6087A
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 062FB6087A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2025 03:26:58 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id
 d9443c01a7336-21631789fcdso20645555ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 08 Jan 2025 19:26:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736393218; x=1736998018;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=vzuVW+OPCT+RHQ0ks4dicbQ5JZOeyDFGTM+oaD9Mb3E=;
 b=avp7NDTfwsDk0b+e2pWD64VKY3BFDobdt5wi3fMmRjlahmmA9KQpmiaVPRCuHIRPmv
 2yeQpCn54zTlQcq0+80ItZOLXvYwGU4eNi1oJnOFlOB0BlFcaW4S2KtEyJSC31ps4FV+
 CYN3KhbNJtidRytf8Co/FaxbDi/vU28ur8LH3i4jYDEeaRGFYIcrfQVKC4fMOS8b5wXh
 qPi/qMfsJE+iI+3YJNBUZkIYLcTFhYd8bOPlkBwj815zxoRNBrOQG4beVJt6XULQ21tA
 6nhWpsQPoL/ZpMfKQk0lJywo4cYFNzPFysPR9iFj1AoflrdQvKi1Gfn0Ie/GrLIcYwQ0
 f9kQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjAIuKjQvnKutsZDgXOkdJVCn6YHajQb9E6RNpag1aYui5w1Wp0vDiA/R6wRXy0FwBH1/8zS7cWpMh1Sb5rs8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwwfspGunc6dq2FfFGfro5/Yn+FbcxH0XgOOX4CDhwim9kiB2cU
 pINtYUGGx1pGD9Bd1guiFqm36+RmW4C1UiPKFOAFWes/EGtN+31wZyBZ+FRTREI=
X-Gm-Gg: ASbGncvk/K0lV3jrxEFrYPJrwRbcpRimv6IIecZIS5Jk2ZGluF3S12f2HOEuI0GVnmv
 SwbYUkRNEAbJLMNK4eJZGn8YUke3nGEgwitmcsFR8m75ScMGTSKZGIND2OvfljfxS75TqQafTKA
 2eSC+poZFE07JdJdFI637HL4OxQ+ktOw3MZ3e8aIfc13bp2g0jIStzejKrUZro9MVtihlGapYHt
 aIveOEp7YzhQqEyDEKDLSIcFk24mKck556k+MFvCTN6IFZTFtuJs1KLiXnmwAh+1vULjnrn6y5T
 mkkEj1+3J/GJQPcHW4M/y60rLDdv6IzmI1a7fzCn
X-Google-Smtp-Source: AGHT+IEkDKkKZMDtdD5Juv0GWBv1ipKP+wto2lLIwnmxILwjlfimkoSSXpONvzILV/4efJhapoRqsA==
X-Received: by 2002:a05:6a21:9017:b0:1e1:b023:6c89 with SMTP id
 adf61e73a8af0-1e89cb8f314mr2249602637.15.1736393218401; 
 Wed, 08 Jan 2025 19:26:58 -0800 (PST)
Received: from [10.54.24.59] (static-ip-148-99-134-202.rev.dyxnet.com.
 [202.134.99.148]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72aad848020sm36008714b3a.81.2025.01.08.19.26.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2025 19:26:57 -0800 (PST)
Message-ID: <0d625c8b-f1e0-4562-aee0-b4cbc8fc5737@shopee.com>
Date: Thu, 9 Jan 2025 11:26:52 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Edward Cree <ecree.xilinx@gmail.com>, Eric Dumazet <edumazet@google.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
 <0d98fed8-38e3-4118-82c9-26cefeb5ee7a@shopee.com>
 <32775382-9079-4652-9cd5-ff0aa6b5fd9e@intel.com>
 <1ade15b1-f533-4cc6-8522-2d725532e251@shopee.com>
 <bb5dbf24-ef80-4220-8b07-40eed9ac15ae@intel.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <bb5dbf24-ef80-4220-8b07-40eed9ac15ae@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1736393218; x=1736998018; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vzuVW+OPCT+RHQ0ks4dicbQ5JZOeyDFGTM+oaD9Mb3E=;
 b=XOkRrxLOlS0ukkC6IQIziSeckUNRXxmCuiZiPM/HD4MducAkhE1wUeMPbcK2xD1ZO/
 7id9RIAaW3xLM4BtxZRjMoafSNZGzYBkWrtt/ScLx5cEyEGYuV7BvrweIDFiXDPgIHCg
 2YcgrDtVvoJ0xH9XyZbqoGRiRiKCBfFIwr8bzceFgEotqk/tbcwp1dNHL8rXJzwRaZIE
 ZW3JvK45HwUTEXjw8hBYHswjW1JjxdUE4pmSbUAwWCEBhPCz0iAXZ4JPeOt3vai/BtET
 Oq8Bs/Q+9cEmBweA737On6McK1QAq5jiu2XumeFKCJcsziB+62XwzzUG6kPla+VCY4Hr
 tnEw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=XOkRrxLO
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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



On 2025/1/9 05:06, Tony Nguyen wrote:
> 
> 
> On 1/7/2025 7:36 PM, Haifeng Xu wrote:
>>
>>
>> On 2025/1/8 01:16, Tony Nguyen wrote:
> 
> ...
> 
>>>
>>> What's your ntuple filter setting? If it's off, I suspect it may be the Flow Director ATR (Application Targeting Routing) feature which will utilize all queues. I believe if you turn on ntuple filters this will turn that feature off.
>>
>> Yes, our ntuple filter setting is off. After turning on the ntuple filters, I compare the delta of recieved packets,
>> only 0~15 rx rings are non-zero, other rx rings are zero.
>>
>> If we want to spread the packets across 0~62, how can we tune the NIC setting?
>> we have enabled 63 rx queues, irq_affinity and rx-flow-hash, but the 0~15 cpu
>> received more packets than others.
> 
> As Jakub mentioned earlier, HW RSS is only supported on this device for 16 queues. ATR will steer bi-directional traffic to utilize additional queues, however, once its exhausted it will fallback to RSS, which is why CPUs 0-15 are receiving more traffic than the others. I'm not aware of a way to evenly spread the traffic beyond the 16 HW supported RSS queues for this device.

Ok, thanks!

> 
> Thanks,
> Tony
> 
>> Thanks!
> 
> 

