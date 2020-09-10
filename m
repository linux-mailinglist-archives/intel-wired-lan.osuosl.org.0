Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C21DB263F99
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 10:23:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5CC2F86F16;
	Thu, 10 Sep 2020 08:23:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvUnjBwmJWlM; Thu, 10 Sep 2020 08:23:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7C75F86F27;
	Thu, 10 Sep 2020 08:23:08 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 666441BF38C
 for <intel-wired-lan@osuosl.org>; Thu, 10 Sep 2020 08:23:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 605DF8753A
 for <intel-wired-lan@osuosl.org>; Thu, 10 Sep 2020 08:23:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VwO-95iOWNdZ for <intel-wired-lan@osuosl.org>;
 Thu, 10 Sep 2020 08:23:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD5BD87534
 for <intel-wired-lan@osuosl.org>; Thu, 10 Sep 2020 08:23:05 +0000 (UTC)
IronPort-SDR: XrhDb415p6EZbfEECDrq4wjx5Is8jrjE9ytuGtgQiF3H91rfdqlWnENlrw+kQDnL2tNWwy8ZTY
 5nwLz+3EK2lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="176551863"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="176551863"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:23:05 -0700
IronPort-SDR: 3BVzk9IYjt21ClSLHiotPckpsKADyw3qMTXiBtJm2/2p1GnyKpCVeP+hmLB+nZ0EwSkKvdV4PO
 Bx3DQ2XkAbtg==
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="480801922"
Received: from unknown (HELO [10.185.169.39]) ([10.185.169.39])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 01:23:03 -0700
To: intel-wired-lan@osuosl.org
References: <20200908162330.4681-1-ztong0001@gmail.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <d8c2fdeb-0ae1-5633-7cef-61607fb22d39@intel.com>
Date: Thu, 10 Sep 2020 11:22:56 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200908162330.4681-1-ztong0001@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: do not panic on malformed
 rx_desc
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/8/2020 19:23, Tong Zhang wrote:
> length may be corrupted in rx_desc and lead to panic, so check the
> sanity before passing it to skb_put
> 
Tong, what is scenario caused to skb panic? How it is happen on your 
system? Can you please share the test hint and your setup with us?
> [  103.840572] skbuff: skb_over_panic: text:ffffffff8f432cc1 len:61585 put:61585 head:ffff88805642b800 data:ffff88805642b840 tail:0xf0d1 end:0x6c0 dev:e
> th0
> [  103.841283] ------------[ cut here ]------------
> [  103.841515] kernel BUG at net/core/skbuff.c:109!
> [  103.841749] invalid opcode: 0000 [#1] SMP DEBUG_PAGEALLOC KASAN PTI
> [  103.842063] CPU: 1 PID: 276 Comm: ping Tainted: G        W         5.8.0+ #4
> [  103.842857] RIP: 0010:skb_panic+0xc4/0xc6
> [  103.843022] Code: 89 f0 48 c7 c7 60 f2 3e 90 55 48 8b 74 24 18 4d 89 f9 56 48 8b 54 24 18 4c 89 e6 52 48 8b 44 24 18 4c 89 ea 50 e8 01 c5 2a ff <0f>
> 0b 4c 8b 64 24 18 e8 c1 b4 48 ff 48 c7 c1 e0 fc 3e 90 44 89 ee
> [  103.843766] RSP: 0018:ffff88806d109c58 EFLAGS: 00010282
> [  103.843976] RAX: 000000000000008c RBX: ffff8880683407c0 RCX: 0000000000000000
> [  103.844262] RDX: 1ffff1100da24c91 RSI: 0000000000000008 RDI: ffffed100da2137e
> [  103.844548] RBP: ffff88806bdcc000 R08: 000000000000008c R09: ffffed100da25cfb
> [  103.844834] R10: ffff88806d12e7d7 R11: ffffed100da25cfa R12: ffffffff903efd20
> [  103.845123] R13: ffffffff8f432cc1 R14: 000000000000f091 R15: ffff88805642b800
> [  103.845410] FS:  00007efcd06852c0(0000) GS:ffff88806d100000(0000) knlGS:0000000000000000
> [  103.845734] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  103.845966] CR2: 00007efccf94f8dc CR3: 0000000064810000 CR4: 00000000000006e0
> [  103.846254] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [  103.846539] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [  103.846823] Call Trace:
> [  103.846925]  <IRQ>
> [  103.847013]  ? e1000_clean_rx_irq+0x311/0x630
> [  103.847190]  skb_put.cold+0x2b/0x4d
> [  103.847334]  e1000_clean_rx_irq+0x311/0x630
> 
> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/netdev.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 664e8ccc88d2..f12bd00b2dbf 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1047,6 +1047,10 @@ static bool e1000_clean_rx_irq(struct e1000_ring *rx_ring, int *work_done,
>   			}
>   			/* else just continue with the old one */
>   		}
> +		/* check length sanity */
> +		if (skb->tail + length > skb->end) {
> +			length = skb->end - skb->tail;
> +		}
>   		/* end copybreak code */
>   		skb_put(skb, length);
>   
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
