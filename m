Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DE49FF705
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 09:43:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36D0280B54;
	Thu,  2 Jan 2025 08:43:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YfM3nBeaaN-B; Thu,  2 Jan 2025 08:43:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 595A680B5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735807407;
	bh=ONF0KLB8jTWoJqOoJVre/hdtr5usKsOw9G8OfagGSbo=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9Jzy+BkwiYrtV+bS1pJ0Izi7xqJsyyB+Smq9pfCz2tbAR+KwqKWOh94GBv/fLhOSl
	 6LECAEcsYjLANCsE6g0+rAbIKi8l8zzSw5+gLPtUHQNg3aDWh0VaukCcf5I9kvSV85
	 GbPnCEXML7hpj3IciJLwrNPxMjJi/99vehGvRvvdSN9aHYtPYOSRpFvzQcTqjAwLBK
	 AV+8SNTLBsmNbH8Nnmyd8akzjNrD/XN8Z8tvb9SPDu8jvC7/PUeHMFk/0DWFPRZD7A
	 LZqHzYUNfZFoqgzXQ4U4+PhzG1F7s3tSUOF7vTs+OxLBGhZah2O9aCFWSdb2HevdF3
	 Rh6OOp3N9s+6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 595A680B5D;
	Thu,  2 Jan 2025 08:43:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2D2C0F27
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 08:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18EAD4014E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 08:43:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7MLx2TijmcST for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 08:43:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=haifeng.xu@shopee.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CB836400DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB836400DA
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB836400DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 08:43:23 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-21631789fcdso113015725ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 00:43:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735807403; x=1736412203;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=ONF0KLB8jTWoJqOoJVre/hdtr5usKsOw9G8OfagGSbo=;
 b=Pf1Z6YRV6sadVJuViMKjg2vpMa5033kxod+ITiFiwZFzs1L/qPpgfBzAOlNT9RNVQv
 p7YKP4Dbjjgq2RJ+xs5Y1ivsDGSmwOGYBjap1N6KM12cls4PRawyI3LgpdCzSZisI+SN
 FiGco3aifKETmQS1pSbCOJ9MyXNNCqyYekxLuJboVCxSgF0+ui5hDgd65Ht8WGvBjM/c
 B2jMNwGk5t0l0oB61lPzU31nC5+8uoTxlNIK/k7yEz1zXv9crF3ks0psRW7SnGPoDPae
 GeBcOX/uicHAGJNvWr+VxaBQR+bmMLQRyXpZCsEzKjFiPkNJdJiDP/0gnF4MNp0mybe9
 r5kQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXjOIFEffIZX5XAOunxgC/XKduACPpUf42W5quGS5f5A/BkeeXUslRdYkViSjxJG/uDk9e5mSkAtAQ5Y6PR9hs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx2NK7q2uD7wkUzMurGMzNS1pI1ziY/7MeH1UlCcjcBmziO864v
 +XyFB/aNU1ygayhRKZdeLPGd6jou95I1nuBDdY5P8pIZo0p6O50t20jA9YBtr1E=
X-Gm-Gg: ASbGnct6n+mDNRf6Pg80uXVIdNOPOGie7EExln0/n3sJTqmQjWKWfTgKVdsdqHlKNvE
 PBSw5oqNzTqYPW3MOJ1zCazvqAaMvhdKqdqWfMTDXx2+VkQ914ogCmWu8Dke9kge0F+RAnn3orv
 +aV5/Lkx2vwweihnc6CtxULwdOq6Hi5eJi68M0oSamy4lAAY+d7rMn6oJcF8aEn/DzCbrbd4yW4
 Aj/0J+r7aUVzrUQiLq5f2M/QPQKf1PQ/hW1MaOlhoLyp1a5DDXmn4giwh/DObJYSixpKHrvrBwW
 Eg/p3smm7eM5fNytpopzAbbagwBiPttunyfeexcc
X-Google-Smtp-Source: AGHT+IH7Lu5G4PLy5eUlGX4y+me42DxYsY+XwbXTrn5GV+CYxwrLSLjZv8CM42PQIV0m1+E6UMoW/Q==
X-Received: by 2002:a05:6a20:7488:b0:1e1:a789:1b4d with SMTP id
 adf61e73a8af0-1e5e1f57c97mr59944805637.15.1735807403083; 
 Thu, 02 Jan 2025 00:43:23 -0800 (PST)
Received: from [10.54.24.59] (static-ip-148-99-134-202.rev.dyxnet.com.
 [202.134.99.148]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-72b5bde56f8sm3606447b3a.162.2025.01.02.00.43.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2025 00:43:22 -0800 (PST)
Message-ID: <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
Date: Thu, 2 Jan 2025 16:43:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Eric Dumazet <edumazet@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
From: Haifeng Xu <haifeng.xu@shopee.com>
In-Reply-To: <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shopee.com; s=shopee.com; t=1735807403; x=1736412203; darn=lists.osuosl.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ONF0KLB8jTWoJqOoJVre/hdtr5usKsOw9G8OfagGSbo=;
 b=QEK9BfPKW4iGvkJJ9fiVsnJzOOe4yJKspUoKwT86UwSagUJ2i54lSWOPSndHNzb6wm
 34Cxt9ur+Bl1cUJBOSRyNmW3Hx9jYf3nmPC8g+tbkLREJBM6KMXUNh2/ca1nOtyCjAb6
 zzvRr+84/ljo6MSD3XtghxrQH61u0BoQpIat++6X//FJcPIl70BKJ7SRP1T/ooRLAQbl
 zgVmZl73pHYtYR3PC3iplJBb/vD9VASmftBm7gNPo3FxsVHJEtul83GI4BLA0fCRr6xn
 j8chu3iWeerM8vP0XAFgee11pQW1Q4RdkJiECuHRNEf86Z6lqyt/3i5qkyJujRQBHGTe
 afIg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=shopee.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=shopee.com header.i=@shopee.com header.a=rsa-sha256
 header.s=shopee.com header.b=QEK9BfPK
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



On 2025/1/2 16:13, Eric Dumazet wrote:
> On Thu, Jan 2, 2025 at 4:53 AM Haifeng Xu <haifeng.xu@shopee.com> wrote:
>>
>> Hi masters,
>>
>>         We use the Intel Corporation 82599ES NIC in our production environment. And it has 63 rx queues, every rx queue interrupt is processed by a single cpu.
>>         The RSS configuration can be seen as follow:
>>
>>         RX flow hash indirection table for eno5 with 63 RX ring(s):
>>         0:      0     1     2     3     4     5     6     7
>>         8:      8     9    10    11    12    13    14    15
>>         16:      0     1     2     3     4     5     6     7
>>         24:      8     9    10    11    12    13    14    15
>>         32:      0     1     2     3     4     5     6     7
>>         40:      8     9    10    11    12    13    14    15
>>         48:      0     1     2     3     4     5     6     7
>>         56:      8     9    10    11    12    13    14    15
>>         64:      0     1     2     3     4     5     6     7
>>         72:      8     9    10    11    12    13    14    15
>>         80:      0     1     2     3     4     5     6     7
>>         88:      8     9    10    11    12    13    14    15
>>         96:      0     1     2     3     4     5     6     7
>>         104:      8     9    10    11    12    13    14    15
>>         112:      0     1     2     3     4     5     6     7
>>         120:      8     9    10    11    12    13    14    15
>>
>>         The maximum number of RSS queues is 16. So I have some questions about this. Will other cpus except 0~15 receive the rx interrupts?
>>
>>         In our production environment, cpu 16~62 also receive the rx interrupts. Was our RSS misconfigured?
> 
> It really depends on which cpus are assigned to each IRQ.
> 

Hi Eric,

Each irq was assigned to a single cpu, for exapmle:

irq	cpu

117      0
118      1

......

179      62

All cpus trigger interrupts not only cpus 0~15. 
It seems that the result is inconsistent with the RSS hash value.


Thanks!

> Look at /proc/irq/{IRQ_NUM}/smp_affinity
> 
> Also you can have some details in Documentation/networking/scaling.rst

