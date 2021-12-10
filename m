Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C284701AE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Dec 2021 14:32:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3BCB6425E9;
	Fri, 10 Dec 2021 13:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tqxlL9LNWqxP; Fri, 10 Dec 2021 13:32:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44CDF425E8;
	Fri, 10 Dec 2021 13:32:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D45E91BF573
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 13:31:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BCF0861431
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 13:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3JvQ7RQ3oELy for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Dec 2021 13:31:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1D64361426
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 13:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639143113;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l5sAoIuRwrqpOLkTWcO38tx+jvlOvty7121ooryZ460=;
 b=glhCH+AYly5DibW2jd0u8Q9AiwK7wUdGwzxieLknrjPwVCAoHSdYPSvp8/PvwN9Dad0H4D
 90orDfIsj7Y1vV+htTONsb9wkbH2DvpW7BnFPJUCcTsrf+ZdNBBp58p1SxwZmEnrm0HIM1
 gwXSaHykVrqcnTnH1VMihp4zUmDutkY=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-532-LVrmsKvrOJa0V7B9H5G80A-1; Fri, 10 Dec 2021 08:31:51 -0500
X-MC-Unique: LVrmsKvrOJa0V7B9H5G80A-1
Received: by mail-lj1-f200.google.com with SMTP id
 b14-20020a05651c0b0e00b0021a1a39c481so2931815ljr.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Dec 2021 05:31:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:message-id:date:mime-version:user-agent:cc
 :subject:content-language:to:references:in-reply-to
 :content-transfer-encoding;
 bh=l5sAoIuRwrqpOLkTWcO38tx+jvlOvty7121ooryZ460=;
 b=14A8MzfY30Ic75JRa2LbNBC+TIpr4IGkjqI/yk7O+In+tOk2IRhc+LT9f/TAlhwjSn
 U9r5VJtoqgFuQ/lKfoibad8xw31EVBeasf0shiw816dosIW7YPUnTCW1EnUILzQ352gO
 WyyP5E9FUaoymEuRlo+KSojP5Sn9ETMSgy0VlYa0ow5lG6XZ7tWbebnjll/ZM5uKpGPC
 1h8rbRkHD3zBEF5HKFR2uyWft+nHsyoDBj36d4smX0I0e63e+cf3gYTVH4R4aWedrjAV
 VrNyX76Owgrc/7f6agv6pbqxqzqZUJzlGCiWOHKAHpJgH4USReB7A0kI4cGHZ6dAGVOp
 jsUg==
X-Gm-Message-State: AOAM530dtrCzXIm4MSvh40XktP1l+5Jvyj/xWtIz6mEtzeFpMQitLT3k
 NP1816NphqxuH2SOGFR5aYNF6npjsZoWFxbk9KpzTJcD5BXZMySKN79lymp8Q6MCDgWquCn1FYP
 U11WPOwyQrWgcVSducipgaHnOR8JHEA==
X-Received: by 2002:a05:6512:2111:: with SMTP id
 q17mr12277318lfr.371.1639143109688; 
 Fri, 10 Dec 2021 05:31:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJysW1eZdvHlg7c/OsYcsKZD7z8jtHRQrASeKFQqWi/mEk65sVMMaWjbUnS35YwKQwYM7xjjAQ==
X-Received: by 2002:a05:6512:2111:: with SMTP id
 q17mr12277281lfr.371.1639143109438; 
 Fri, 10 Dec 2021 05:31:49 -0800 (PST)
Received: from [192.168.0.50] (87-59-106-155-cable.dk.customer.tdc.net.
 [87.59.106.155])
 by smtp.gmail.com with ESMTPSA id k3sm313809ljn.55.2021.12.10.05.31.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Dec 2021 05:31:48 -0800 (PST)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <ccd27f5f-31c4-603f-ea36-ad32b16325b9@redhat.com>
Date: Fri, 10 Dec 2021 14:31:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Alexander Lobakin <alexandr.lobakin@intel.com>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>
References: <20211208140702.642741-1-alexandr.lobakin@intel.com>
 <20211208140702.642741-2-alexandr.lobakin@intel.com>
 <da317f39-8679-96f7-ec6f-309216b02f33@redhat.com>
 <20211209173307.5003-1-alexandr.lobakin@intel.com>
In-Reply-To: <20211209173307.5003-1-alexandr.lobakin@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jbrouer@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 1/9] i40e: don't reserve
 excessive XDP_PACKET_HEADROOM on XSK Rx to skb
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
Cc: Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, intel-wired-lan@lists.osuosl.org,
 brouer@redhat.com, Yonghong Song <yhs@fb.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 09/12/2021 18.33, Alexander Lobakin wrote:
> From: Jesper Dangaard Brouer <jbrouer@redhat.com>
> Date: Thu, 9 Dec 2021 09:19:46 +0100
> 
>> On 08/12/2021 15.06, Alexander Lobakin wrote:
>>> {__,}napi_alloc_skb() allocates and reserves additional NET_SKB_PAD
>>> + NET_IP_ALIGN for any skb.
>>> OTOH, i40e_construct_skb_zc() currently allocates and reserves
>>> additional `xdp->data - xdp->data_hard_start`, which is
>>> XDP_PACKET_HEADROOM for XSK frames.
>>> There's no need for that at all as the frame is post-XDP and will
>>> go only to the networking stack core.
>>
>> I disagree with this assumption, that headroom is not needed by netstack.
>> Why "no need for that at all" for netstack?
> 
> napi_alloc_skb() in our particular case will reserve 64 bytes, it is
> sufficient for {TCP,UDP,SCTP,...}/IPv{4,6} etc.

My bad, I misunderstood you. I now see (looking at code) that (as you 
say) 64 bytes of headroom *is* reserved (in bottom of __napi_alloc_skb).
Thus, the SKB *do* have headroom, so this patch should be fine.

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

Do watch out that 64 bytes is not always enough. Notice the define 
LL_MAX_HEADER and MAX_HEADER in include/linux/netdevice.h (that tries to 
determine worst-case header length) which is above 64 bytes. It is also 
affected by HyperV and WiFi configs.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
