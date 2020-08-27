Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 953002542D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 11:55:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D8B585BB5;
	Thu, 27 Aug 2020 09:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qZ6jyN5o9zbq; Thu, 27 Aug 2020 09:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 722F385AA1;
	Thu, 27 Aug 2020 09:55:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8531BF59D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 09:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1196E20405
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 09:55:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gjmLwMx2eXAi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 09:55:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id B72BE2002F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 09:55:32 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id l7so922674wrx.8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 02:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=/iBQyfCjXeFcHt8UV/9VYuK1WqvffGKunV7DN7u2MJo=;
 b=qp4SCZqHSIt1531gZcS/H357kUwf+TN8tuqP0FQX0Y95EeoNRhsEJWDgXqeZhnwgZL
 iHE/tn/eoLHBJcNLLW0DcVJSkqUDvE3l8XiK4IcsMcbD/N9z9+n4dKyq9Wy9fkWJxEat
 0Q4DCKhsL5VCgCLLXEDTR3U4VFGJIimzN9uAKAQ7vDa7cqXuDmTecQcWIfKq7nbPDM9t
 kYGqeXAg6B4HqH+a5ohNgO44ijJbGbAof+XyvF/cQrdK1mrwrWVSjRmOn4yCOK1cVlB7
 Q/0jSLxT+R++Qah5Pjd6DcUY4On68PsMYNBVSgrTKZCsbLeAlHNpmtpjCwpeWZS6wB6y
 j6hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/iBQyfCjXeFcHt8UV/9VYuK1WqvffGKunV7DN7u2MJo=;
 b=VvCAbv2qegny4aSh10v1GdvJkOZTHpRv+7aOsmiKlbEsrwReDOsv1osvyaGavUne0e
 MFMNt8dJ7+d4P8dj4sqSyWOYUxIzJcAD0M2uvA4f1ZXPECma2nJyWzC8c3l4HPQVd4aH
 abKl5w59oFqYpV08itojYwIEGSKAKXq0k42O+6Px19mVjbuQTDebv1eROmfDweB0nw5S
 XVcrlMPqOXXxq7QGKk4hVTChulgRJSrSg+CQI02n6XumgjDGyFTXe4o6AYBcMvkQwp8B
 5s0hoCvN1YcnCcWSCcwIl30s7qMGyrn5alM7n/CpXyvyKXud49fqAITZ6JwNzuuNj3WY
 V+6g==
X-Gm-Message-State: AOAM5303aKg7rVIbT7XK12yEd5xfU5GABM3Njv/X7wL3tepheecj0LyO
 DXfOg+cKs3u9GHtexlRRXDqTcA+taBg=
X-Google-Smtp-Source: ABdhPJyfsrJmex1l40Kit+0ShFs4PVduIjcwRq1kWX6oY2uOg/ti6tZnMxpZRBscchbVNRLjjuLZcA==
X-Received: by 2002:adf:f691:: with SMTP id v17mr8467946wrp.344.1598522130890; 
 Thu, 27 Aug 2020 02:55:30 -0700 (PDT)
Received: from [192.168.8.147] ([37.171.26.29])
 by smtp.gmail.com with ESMTPSA id 8sm5025215wrl.7.2020.08.27.02.55.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 02:55:30 -0700 (PDT)
To: "Li,Rongqing" <lirongqing@baidu.com>,
 Eric Dumazet <eric.dumazet@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <1598514788-31039-1-git-send-email-lirongqing@baidu.com>
 <6d89955c-78a2-fa00-9f39-78648d3558a0@gmail.com>
 <4557d3ad541b4272bc1286480af5e562@baidu.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <cadd738c-b7a3-fd68-4883-2f23a07fb0ae@gmail.com>
Date: Thu, 27 Aug 2020 02:55:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <4557d3ad541b4272bc1286480af5e562@baidu.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] iavf: use kvzalloc instead of kzalloc
 for rx/tx_bi buffer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/27/20 1:53 AM, Li,Rongqing wrote:
> 
> 
>> -----Original Message-----
>> From: Eric Dumazet [mailto:eric.dumazet@gmail.com]
>> Sent: Thursday, August 27, 2020 4:26 PM
>> To: Li,Rongqing <lirongqing@baidu.com>; netdev@vger.kernel.org;
>> intel-wired-lan@lists.osuosl.org
>> Subject: Re: [PATCH] iavf: use kvzalloc instead of kzalloc for rx/tx_bi buffer
>>
>>
>>
>> On 8/27/20 12:53 AM, Li RongQing wrote:
>>> when changes the rx/tx ring to 4096, kzalloc may fail due to a
>>> temporary shortage on slab entries.
>>>
>>> kvmalloc is used to allocate this memory as there is no need to have
>>> this memory area physical continuously.
>>>
>>> Signed-off-by: Li RongQing <lirongqing@baidu.com>
>>> ---
>>
>>
>> Well, fallback to vmalloc() overhead because order-1 pages are not readily
>> available when the NIC is setup (usually one time per boot) is adding TLB cost
>> at run time, for billions of packets to come, maybe for months.
>>
>> Surely trying a bit harder to get order-1 pages is desirable.
>>
>>  __GFP_RETRY_MAYFAIL is supposed to help here.
> 
> Could we add __GFP_RETRY_MAYFAIL to kvmalloc, to ensure the allocation success ?

__GFP_RETRY_MAYFAIL does not _ensure_ the allocation success.

The idea here is that for large allocations (bigger than PAGE_SIZE),
kvmalloc_node() will not force __GFP_NORETRY, meaning that page allocator
will not bailout immediately in case of memory pressure.

This gives a chance for page reclaims to happen, and eventually the high order page
allocation will succeed under normal circumstances.

It is a trade-off, and only worth it for long living allocations.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
