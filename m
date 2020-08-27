Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D5A254185
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 11:09:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F0CB86C72;
	Thu, 27 Aug 2020 09:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YyuCCxHE37yo; Thu, 27 Aug 2020 09:09:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51FCA86CE4;
	Thu, 27 Aug 2020 09:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 435A11BF866
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 09:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36B7F86C52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 09:09:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HnRkAwxdKgmC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Aug 2020 09:09:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from baidu.com (mx24.baidu.com [111.206.215.185])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBC8C86B09
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Aug 2020 09:09:24 +0000 (UTC)
Received: from BJHW-Mail-Ex16.internal.baidu.com (unknown [10.127.64.39])
 by Forcepoint Email with ESMTPS id CD5B07171FE383C98378;
 Thu, 27 Aug 2020 16:53:09 +0800 (CST)
Received: from BJHW-Mail-Ex13.internal.baidu.com (10.127.64.36) by
 BJHW-Mail-Ex16.internal.baidu.com (10.127.64.39) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1979.3; Thu, 27 Aug 2020 16:53:09 +0800
Received: from BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) by
 BJHW-Mail-Ex13.internal.baidu.com ([100.100.100.36]) with mapi id
 15.01.1979.003; Thu, 27 Aug 2020 16:53:09 +0800
From: "Li,Rongqing" <lirongqing@baidu.com>
To: Eric Dumazet <eric.dumazet@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH] iavf: use kvzalloc instead of kzalloc for rx/tx_bi buffer
Thread-Index: AQHWfEuob38P5Px0rUW6ibAXXc3666lLpEvg
Date: Thu, 27 Aug 2020 08:53:09 +0000
Message-ID: <4557d3ad541b4272bc1286480af5e562@baidu.com>
References: <1598514788-31039-1-git-send-email-lirongqing@baidu.com>
 <6d89955c-78a2-fa00-9f39-78648d3558a0@gmail.com>
In-Reply-To: <6d89955c-78a2-fa00-9f39-78648d3558a0@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.198.19]
x-baidu-bdmsfe-datecheck: 1_BJHW-Mail-Ex16_2020-08-27 16:53:09:745
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
> Sent: Thursday, August 27, 2020 4:26 PM
> To: Li,Rongqing <lirongqing@baidu.com>; netdev@vger.kernel.org;
> intel-wired-lan@lists.osuosl.org
> Subject: Re: [PATCH] iavf: use kvzalloc instead of kzalloc for rx/tx_bi buffer
> 
> 
> 
> On 8/27/20 12:53 AM, Li RongQing wrote:
> > when changes the rx/tx ring to 4096, kzalloc may fail due to a
> > temporary shortage on slab entries.
> >
> > kvmalloc is used to allocate this memory as there is no need to have
> > this memory area physical continuously.
> >
> > Signed-off-by: Li RongQing <lirongqing@baidu.com>
> > ---
> 
> 
> Well, fallback to vmalloc() overhead because order-1 pages are not readily
> available when the NIC is setup (usually one time per boot) is adding TLB cost
> at run time, for billions of packets to come, maybe for months.
> 
> Surely trying a bit harder to get order-1 pages is desirable.
> 
>  __GFP_RETRY_MAYFAIL is supposed to help here.

Could we add __GFP_RETRY_MAYFAIL to kvmalloc, to ensure the allocation success ?

> 

I see that lots of drivers are using vmalloc for this buffer, should we change it kmalloc?  

grep "buffer_info =" drivers/net/ethernet/intel/ -rI|grep alloc

drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:      tx_ring->tx_buffer_info = vmalloc(size);
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:      rx_ring->rx_buffer_info = vmalloc(size);
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:  tx_ring->tx_buffer_info = vmalloc_node(size, ring_node);
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:          tx_ring->tx_buffer_info = vmalloc(size);
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:  rx_ring->rx_buffer_info = vmalloc_node(size, ring_node);
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:          rx_ring->rx_buffer_info = vmalloc(size);
drivers/net/ethernet/intel/ixgb/ixgb_main.c:    txdr->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/ixgb/ixgb_main.c:    rxdr->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/e1000e/ethtool.c:    tx_ring->buffer_info = kcalloc(tx_ring->count,
drivers/net/ethernet/intel/e1000e/ethtool.c:    rx_ring->buffer_info = kcalloc(rx_ring->count,
drivers/net/ethernet/intel/e1000e/netdev.c:     tx_ring->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/e1000e/netdev.c:     rx_ring->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/igb/igb_main.c:      tx_ring->tx_buffer_info = vmalloc(size);
drivers/net/ethernet/intel/igb/igb_main.c:      rx_ring->rx_buffer_info = vmalloc(size);
drivers/net/ethernet/intel/e1000/e1000_ethtool.c:       txdr->buffer_info = kcalloc(txdr->count, sizeof(struct e1000_tx_buffer),
drivers/net/ethernet/intel/e1000/e1000_ethtool.c:       rxdr->buffer_info = kcalloc(rxdr->count, sizeof(struct e1000_rx_buffer),
drivers/net/ethernet/intel/e1000/e1000_main.c:  txdr->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/e1000/e1000_main.c:  rxdr->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/igc/igc_main.c:      tx_ring->tx_buffer_info = vzalloc(size);
drivers/net/ethernet/intel/igc/igc_main.c:      rx_ring->rx_buffer_info = vzalloc(size);
drivers/net/ethernet/intel/igbvf/netdev.c:      tx_ring->buffer_info = vzalloc(size);
drivers/net/ethernet/intel/igbvf/netdev.c:      rx_ring->buffer_info = vzalloc(size);


-Li
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
