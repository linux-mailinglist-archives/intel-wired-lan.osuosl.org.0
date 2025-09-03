Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58840B42974
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 21:05:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E6A941205;
	Wed,  3 Sep 2025 19:05:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YBw8xnUrsgL6; Wed,  3 Sep 2025 19:05:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DA624121A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756926339;
	bh=vjRz5MOW8ct7GDEG18BGj5gmASR3PPkdkMv5XX1JQhU=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bbsFLIjmC2dLt51r4DQKz8NNdwlSLHqXQRNr41kDNjFng5gOUi3trqsyD3hAXkUKQ
	 QNjGiE8ziNk2f9krzc1G1VP/mbnfA6v+fbEqnwL2NFoQML3e2YomFndmAri5MOd128
	 R0nNAiEzKNdIX2qAqQy+MudimZtzkszi/PlBzXo4zozm4D0MmGj63935GZBxRItEPB
	 i306t1IHCPxG8su83uS8/mu5vTWkl/eCmXMBa28rmGhKwDdcqRCIlKMMAPhghN7ZbT
	 zCuxSzMFBtyZEJpK9o1XnDyRn1gyJ56RLbPgNyeNm0c98gFQA5cvVNHP8Ezn+6OZjZ
	 n/oxmVhLqzxNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3DA624121A;
	Wed,  3 Sep 2025 19:05:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EED45439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DA9AB845BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:05:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YjntrmPrGz5n for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 19:05:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DC53C84036
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DC53C84036
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DC53C84036
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:05:36 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-9SYPpFBqMZqK5dUaS-pQpw-1; Wed, 03 Sep 2025 15:05:31 -0400
X-MC-Unique: 9SYPpFBqMZqK5dUaS-pQpw-1
X-Mimecast-MFC-AGG-ID: 9SYPpFBqMZqK5dUaS-pQpw_1756926330
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-45b7d84d8a0so882575e9.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 12:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756926330; x=1757531130;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=vjRz5MOW8ct7GDEG18BGj5gmASR3PPkdkMv5XX1JQhU=;
 b=ryeM1aRKNyvTsl0gjZ79W6R0Kw1Jo4EA/rHGQC+kLY/vUFsIZkkVBhe5+O7sdajG6h
 NJ4HSyea+ADQ+D7tcAbt/8otOkdGpq07D+T5MeRYqHyA7JvvLl9BG/9MAUaxHFV6lBRx
 Fa4c2CF0n7Qg/WgIBvbOcz4sq9M8ZzjhYQn/IUKEpnB+GaD/Bd6I4KtjmV2sJmj17/G6
 AEvP0RXENcSpTC4jjm8eb2Hvt1oJzShI542yl7fGSYzIYulEgmVT+zmmmLDhtpzQcuHT
 IDl55HRUiNek4LW5fnvIoegRJgObWmD7m8m32URNI8MfMPM9Sg9HowHRHD3GLy9RLnLM
 YEKA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWCCrqyo5ARUuFXTw/cGM5ABFnlgkQnXWYSmWG9ypHoVUbCeyBinqgoYykzdf1SOL2IYy+IHq1kTSs6BvcFD4M=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw66SJ6YsJHNe5KT0wcPw8IKLtsNGqM/5BDNZFWak8b4FMXcR1Q
 DmJy6Ut7wcvcMeENhXjB26TAjabWrW3ZwchaUMgJesZV33sc/3hnhOzr+xRHyg7SyLxHYWuXAxL
 e4tK6XTNUWMNbnCQ1mv5be54BzYdP+Xhq2x0Ro8VHS/bbKE1MYKKnneClGqUI0asNdAZ3yCU=
X-Gm-Gg: ASbGncvp7s0VEECOFaCii0J5JlfqmU6ONuOBUvvQhgsYDdqgj25CIh2FU4jEbT8AARI
 i9+NzgHyDTXBifx0W5IO5/IHwYjQLnbB1mhxK0jSroms/A4MyhUgkrqYkOJscLcWHT3X/2VaFDl
 oObwVHQMTZdqQhGeEKd5W5WvUmo24XMMfqXFqyzUqRNMkcSwOk87Ue+Ve1W1TSfCqcNz9LSXn2U
 hULbHNiX75fX5ob/XYWFiT2ZmVT4ozh2wt4YqQhBOwSEGq5pX6B/hhVusEjqQk+BFCbrgGBrRdG
 7gyjmkGcrPrJQBiSG1pq/0jCljJ2Yun2swVo/Ai1zgahZRYozw9OKc6bQdg/0Lm7EGuiv25BSGr
 79G2o+Hi1Kw==
X-Received: by 2002:a05:600c:c491:b0:43c:ec4c:25b4 with SMTP id
 5b1f17b1804b1-45cb50381admr39043805e9.10.1756926330109; 
 Wed, 03 Sep 2025 12:05:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdcMupkCf8a3M3P6r1URmhAbTAW0e0csf3HNKNqZoo69cmt/7+rxjLiAOY5LCXGFAzjSkOTg==
X-Received: by 2002:a05:600c:c491:b0:43c:ec4c:25b4 with SMTP id
 5b1f17b1804b1-45cb50381admr39043605e9.10.1756926329658; 
 Wed, 03 Sep 2025 12:05:29 -0700 (PDT)
Received: from ?IPV6:2001:4df4:5814:7700:7fb2:f956:4fb9:7689?
 ([2001:4df4:5814:7700:7fb2:f956:4fb9:7689])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3cf3458a67esm24636831f8f.62.2025.09.03.12.05.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Sep 2025 12:05:29 -0700 (PDT)
Message-ID: <3280699a-7cd3-407f-8875-8186de967d15@redhat.com>
Date: Wed, 3 Sep 2025 22:05:26 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Cc: "przemyslawx.patynowski@intel.com" <przemyslawx.patynowski@intel.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "horms@kernel.org" <horms@kernel.org>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
References: <20250903075810.17149-1-mheib@redhat.com>
 <20250903075810.17149-2-mheib@redhat.com>
 <IA3PR11MB8986F453579349C3518B312CE501A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <3b950579-9ed9-4bcc-9809-441c2141615f@redhat.com>
 <IA3PR11MB89868F663B2835ECCBA899E0E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
From: mohammad heib <mheib@redhat.com>
In-Reply-To: <IA3PR11MB89868F663B2835ECCBA899E0E501A@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 2GZ5nU9O2uPOC8hV_glGxEGBxhhfFaOXrSHvltDldZc_1756926330
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756926335;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vjRz5MOW8ct7GDEG18BGj5gmASR3PPkdkMv5XX1JQhU=;
 b=PleNznNmI2El8z5LnJozm9ejnvLHzUu5RiyjunvX/GhLlHJq1KsuATaOnXkjtVkqUe8tm0
 PttSqMN9rW3WoOwdgkYNCO+d9zJ8H8Hhsws9il5j1A+rBASTWjIpeUhiLh0EfnvwB/gk42
 WQGnxpn5uMQQSNUitH4aYP/dMfTajaM=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=PleNznNm
Subject: Re: [Intel-wired-lan] [PATCH net-next,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

Hi Aleksandr,

Thanks again for your review.
I’ve updated the documentation and commit message in v2 to address your 
feedback.

Appreciate your time!
On 9/3/25 3:35 PM, Loktionov, Aleksandr wrote:
> *From:*mohammad heib <mheib@redhat.com>
> *Sent:* Wednesday, September 3, 2025 12:01 PM
> *To:* Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; intel-wired- 
> lan@lists.osuosl.org
> *Cc:* przemyslawx.patynowski@intel.com; jiri@resnulli.us; 
> netdev@vger.kernel.org; horms@kernel.org; Keller, Jacob E 
> <jacob.e.keller@intel.com>; Nguyen, Anthony L 
> <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw 
> <przemyslaw.kitszel@intel.com>
> *Subject:* Re: [PATCH net-next,2/2] i40e: support generic devlink param 
> "max_mac_per_vf"
> 
> Hello Aleksandr,
> 
> Thank you for your review.
> 
> On 9/3/25 12:07 PM, Loktionov, Aleksandr wrote:
> 
>         -----Original Message-----
> 
>         From:mheib@redhat.com <mailto:mheib@redhat.com> <mheib@redhat.com> <mailto:mheib@redhat.com>
> 
>         Sent: Wednesday, September 3, 2025 9:58 AM
> 
>         To:intel-wired-lan@lists.osuosl.org <mailto:intel-wired-lan@lists.osuosl.org>
> 
>         Cc:przemyslawx.patynowski@intel.com <mailto:przemyslawx.patynowski@intel.com>;jiri@resnulli.us <mailto:jiri@resnulli.us>;
> 
>         netdev@vger.kernel.org <mailto:netdev@vger.kernel.org>;horms@kernel.org <mailto:horms@kernel.org>; Keller, Jacob E
> 
>         <jacob.e.keller@intel.com> <mailto:jacob.e.keller@intel.com>; Loktionov, Aleksandr
> 
>         <aleksandr.loktionov@intel.com> <mailto:aleksandr.loktionov@intel.com>; Nguyen, Anthony L
> 
>         <anthony.l.nguyen@intel.com> <mailto:anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> 
>         <przemyslaw.kitszel@intel.com> <mailto:przemyslaw.kitszel@intel.com>; Mohammad Heib<mheib@redhat.com> <mailto:mheib@redhat.com>
> 
>         Subject: [PATCH net-next,2/2] i40e: support generic devlink param
> 
>         "max_mac_per_vf"
> 
>         From: Mohammad Heib<mheib@redhat.com> <mailto:mheib@redhat.com>
> 
>         Add support for the new generic devlink runtime parameter
> 
>         "max_mac_per_vf", which controls the maximum number of MAC addresses a
> 
>         trusted VF can use.
> 
>     Good day Mohammad,
> 
>     Thanks for working on this and for the clear explanation in the commit message.
> 
>     I have a couple of questions and thoughts:
> 
>     1) Scope of the parameter
> 
>          The name max_mac_per_vf is a bit ambiguous. From the description,
> 
>          it seems to apply only to trusted VFs, but the name does not make that obvious.
> 
>          Would it make sense to either:
> 
>       - Make the name reflect that (e.g., max_mac_per_trusted_vf), or
> 
>       - Introduce two separate parameters for trusted and untrusted VFs if both cases need to be handled differently?
> 
> I agree that the name could be a bit confusing. Since this is a generic 
> devlink parameter, different devices may handle trusted and untrusted 
> VFs differently.
> For i40e specifically, the device does treat trusted VFs differently 
> from untrusted ones, and this is documented in devlink/i40e.rst.
> However, I chose a more general name to avoid creating a separate 
> devlink parameter for untrusted VFs, which likely wouldn’t be used.
> On reflection, I should update the patch number 1 to remove the 
> **trusted VF** wording from the description to avoid implying that the 
> parameter only applies to trusted VFs.
> 
>     I believe the community generally aims for solutions that work
>     consistently across different hardware. If this parameter behaves
>     differently on i40e compared to mlx5 (or other drivers), it might be
>     helpful to mention that explicitly in the documentation or commit
>     message.
> 
>     2)Problem statement
> 
>          It would help to better understand the underlying problem this parameter is solving.
> 
>          Is the goal to enforce a global cap for all VFs, or to provide operators with a way
> 
>          to fine-tune per-VF limits? From my perspective, the most important part is
> 
>          clearly stating the problem and the use case.
> 
> My main goal here is to enforce a global cap for all VFs.
> There was a long discussion [1] about this, and one of the ideas raised 
> was to create fine-tuned per-VF limits using devlink resources instead 
> of a parameter
> However, currently in i40e, we only create a devlink port per PF and no 
> devlink ports per VF.
> Implementing the resource-per-VF approach would therefore require some 
> extra work.
> so i decided to go with this global cap for now.
> [1] - https://patchwork.kernel.org/project/netdevbpf/ 
> patch/20250805134042.2604897-2-dhill@redhat.com/ <https:// 
> patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2- 
> dhill@redhat.com/>
> 
> Thank, you Mohammad
> 
> The https://patchwork.kernel.org/project/netdevbpf/ 
> patch/20250805134042.2604897-2-dhill@redhat.com/ <https:// 
> patchwork.kernel.org/project/netdevbpf/patch/20250805134042.2604897-2- 
> dhill@redhat.com/> explains many things.
> 
> It might be helpful to include a brief description of the problem being 
> solved directly in the commit message. This gives reviewers the 
> necessary context and makes it easier to understand the motivation 
> behind the change.
> 
>     …
> 

