Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 080E525440A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 12:55:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88EF8204CC;
	Thu, 27 Aug 2020 10:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNuDE0s2sD4D; Thu, 27 Aug 2020 10:55:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3D08220529;
	Thu, 27 Aug 2020 10:55:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC8ED1BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 10:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E739320505
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 10:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HgXttQKqMJyg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 10:55:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx20.baidu.com [111.202.115.85])
 by silver.osuosl.org (Postfix) with ESMTP id D6C6820501
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 10:55:07 +0000 (UTC)
Received: from BC-Mail-Ex14.internal.baidu.com (unknown [172.31.51.54])
 by Forcepoint Email with ESMTPS id 1F5F2BB29EC50F6C44C7;
 Thu, 27 Aug 2020 18:55:00 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BC-Mail-Ex14.internal.baidu.com (172.31.51.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Thu, 27 Aug 2020 18:55:00 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Thu, 27 Aug 2020 18:55:00 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Eric Dumazet <eric.dumazet@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] iavf: use kvzalloc instead of kzalloc for rx/tx_bi buffer
Thread-Index: AQHWfEuob38P5Px0rUW6ibAXXc3666lLpEvg//+NZACAAJSiUA==
Date: Thu, 27 Aug 2020 10:54:59 +0000
Message-ID: <0c34de62642e412fbb7ff4bf2c1b123a@baidu.com>
References: <1598514788-31039-1-git-send-email-lirongqing@baidu.com>
 <6d89955c-78a2-fa00-9f39-78648d3558a0@gmail.com>
 <4557d3ad541b4272bc1286480af5e562@baidu.com>
 <cadd738c-b7a3-fd68-4883-2f23a07fb0ae@gmail.com>
In-Reply-To: <cadd738c-b7a3-fd68-4883-2f23a07fb0ae@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.19]
x-baidu-bdmsfe-datecheck: 1_BC-Mail-Ex14_2020-08-27 18:55:00:187
MIME-Version: 1.0
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



> -----Original Message-----
> From: Eric Dumazet [mailto:eric.dumazet@gmail.com]
> Sent: Thursday, August 27, 2020 5:55 PM
> To: Li,Rongqing <lirongqing@baidu.com>; Eric Dumazet
> <eric.dumazet@gmail.com>; netdev@vger.kernel.org;
> intel-wired-lan@lists.osuosl.org
> Subject: Re: [PATCH] iavf: use kvzalloc instead of kzalloc for rx/tx_bi buffer
> 
> 
> 
> On 8/27/20 1:53 AM, Li,Rongqing wrote:
> >
> >
> >> -----Original Message-----
> >> From: Eric Dumazet [mailto:eric.dumazet@gmail.com]
> >> Sent: Thursday, August 27, 2020 4:26 PM
> >> To: Li,Rongqing <lirongqing@baidu.com>; netdev@vger.kernel.org;
> >> intel-wired-lan@lists.osuosl.org
> >> Subject: Re: [PATCH] iavf: use kvzalloc instead of kzalloc for
> >> rx/tx_bi buffer
> >>
> >>
> >>
> >> On 8/27/20 12:53 AM, Li RongQing wrote:
> >>> when changes the rx/tx ring to 4096, kzalloc may fail due to a
> >>> temporary shortage on slab entries.
> >>>
> >>> kvmalloc is used to allocate this memory as there is no need to have
> >>> this memory area physical continuously.
> >>>
> >>> Signed-off-by: Li RongQing <lirongqing@baidu.com>
> >>> ---
> >>
> >>
> >> Well, fallback to vmalloc() overhead because order-1 pages are not
> >> readily available when the NIC is setup (usually one time per boot)
> >> is adding TLB cost at run time, for billions of packets to come, maybe for
> months.
> >>
> >> Surely trying a bit harder to get order-1 pages is desirable.
> >>
> >>  __GFP_RETRY_MAYFAIL is supposed to help here.
> >
> > Could we add __GFP_RETRY_MAYFAIL to kvmalloc, to ensure the allocation
> success ?
> 
> __GFP_RETRY_MAYFAIL does not _ensure_ the allocation success.
> 
> The idea here is that for large allocations (bigger than PAGE_SIZE),
> kvmalloc_node() will not force __GFP_NORETRY, meaning that page allocator
> will not bailout immediately in case of memory pressure.
> 
> This gives a chance for page reclaims to happen, and eventually the high order
> page allocation will succeed under normal circumstances.
> 
> It is a trade-off, and only worth it for long living allocations.

Thanks, Eric; 
I will change it as below, that kmalloc will be used in most time, and ensure allocation success if fail to reclaim memory under memory pressure.

@@ -622,7 +622,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)
        /* warn if we are about to overwrite the pointer */
        WARN_ON(tx_ring->tx_bi);
        bi_size = sizeof(struct iavf_tx_buffer) * tx_ring->count;
-       tx_ring->tx_bi = kzalloc(bi_size, GFP_KERNEL);
+       tx_ring->tx_bi = kvzalloc(bi_size, GFP_KERNEL|__GFP_RETRY_MAYFAIL);
        if (!tx_ring->tx_bi)
                goto err;
 
@@ -643,7 +643,7 @@ int iavf_setup_tx_descriptors(struct iavf_ring *tx_ring)


-Li
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
