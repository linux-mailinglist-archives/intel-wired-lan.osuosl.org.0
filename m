Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23016999B0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2019 18:58:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 81807203CF;
	Thu, 22 Aug 2019 16:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wWjuj8zssy+R; Thu, 22 Aug 2019 16:58:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7DAD02150A;
	Thu, 22 Aug 2019 16:58:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACF731BF863
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:58:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A463E882F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:58:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqMxts+DUV6Q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2019 16:58:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7C6EC882B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:58:45 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190822165842euoutp019cf3d7a7ba657e79487b3320161bf34b~9TTIJxS990522605226euoutp011
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2019 16:58:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190822165842euoutp019cf3d7a7ba657e79487b3320161bf34b~9TTIJxS990522605226euoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566493122;
 bh=DWPKQlMQ+jod8joLVtkfrQK2+7Pe98yfIoE7LabdUfw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=pYohBkSkfcz3xzvqjT4VGiEUB5h3t8Y7mNAKaODUD5rfy4kMzVbikk37beuYZfPMk
 tofcRg1yEUstxssMFeiV9zGcdtID+FTn3kYdIH12xWZ/ZmtABxpZ3ptbJZbv8Jh4GA
 RHVZIkDvIXdQtFCmJLqt0cX5rHpD/II2gG6DqsmI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190822165841eucas1p18126854da97c39f2a0fb6396e752b460~9TTHcjYbs2955929559eucas1p1R;
 Thu, 22 Aug 2019 16:58:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E0.16.04374.1C9CE5D5; Thu, 22
 Aug 2019 17:58:41 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190822165840eucas1p254f3d07b75967a06651083ff270df922~9TTGaVhgQ2366923669eucas1p21;
 Thu, 22 Aug 2019 16:58:40 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190822165840eusmtrp16ac4849f6016c6e144f5720048783ca6~9TTGKT7LF0979109791eusmtrp12;
 Thu, 22 Aug 2019 16:58:40 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-7d-5d5ec9c16b69
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F2.98.04117.0C9CE5D5; Thu, 22
 Aug 2019 17:58:40 +0100 (BST)
Received: from [106.109.129.180] (unknown [106.109.129.180]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190822165839eusmtip2a1b3ad3fffae3823ff4dacc29e1c2c20~9TTFPfojm1207312073eusmtip2M;
 Thu, 22 Aug 2019 16:58:39 +0000 (GMT)
To: Alexander Duyck <alexander.duyck@gmail.com>
From: Ilya Maximets <i.maximets@samsung.com>
Message-ID: <7e9e426c-92eb-ebf8-2447-6c804a0c7135@samsung.com>
Date: Thu, 22 Aug 2019 19:58:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKgT0Uf26P53EA4m503aehq3tWCX9b3C+17TW2Ursbue9Kp=_w@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTcRTH++3e3V2Hs5/T8mQvWBlopUYRNxAriLgQgv0TpfmYdTPTWeym
 vYhEV+o0H0Vpy9LQfBLpFEszoWl7ZCiZYvZAg8JH2UPXY222nFfJ/77nc76H7zlwaEI+Jval
 E5JPcupkZZKCkpLNRlvPxieW6Kjg0sw1jPPWG5Kx2t5IGMelesRMdZoopvzOT4Ip6dGQzNs+
 G8X0ZdokjPO1XcwYRzUUY24cQszL1hKKqTaYJYyxbCkz0Ou+YzHbVDMoYlt07yRseduYiNW+
 6iVYfW02xVoyUtiinPcE+7W9n2LzmmoRO6VfFS6NkIYc5pISUjl1UGis9Ohd20XRidGA0/mW
 CjINaVZrkRsNeAvYHW1Ii6S0HFcjGMyrkAiFFYEz20m4XHI8haCgdeX8hLEjnRJMVQi6v9nn
 iu8IKidaSJfLC4dD4eRL5NLeOAi6GnJJl4nAt0kozv0tcjUovAGe1XXOmmQ4FB5+HJnlJPaD
 Py/0lEsvwfthcrhDLHg8wXLjw2yAG94L1uuPZjmBfSDdWjOnV8ODiRLCFQY4m4ZflfkSYe9d
 8NjaKxa0F4ybmub4Cui6mksK+gIMacaQMJyFoMjwVyQ0tkPTp+6ZAXomwR/utwYJeCfkGEdI
 FwbsAa8mPIUdPOBKcxEhYBlkXZIL7rVgf1JFCNoXBr9MSQqQQrfgMt2Ca3QLrtH9zy1DZC3y
 4VJ4VTzHb07mTgXyShWfkhwfeOi4So9mHrDrr+nHQ9TuiDMgTCOFu8ysjY6Si5Wp/BmVAQFN
 KLxlqYUzSHZYeeYspz4eo05J4ngDWk6TCh/ZuUXDkXIcrzzJJXLcCU493xXRbr5piA0LThx2
 CzNtxmp7bMx03FYi9V5kf2zmSKOXozQtQnN2omCZqdgW7NfnEVA6DT3rnh/I2JfYoKiPXr+t
 7tRBbyZjUcJ4efA7Z2KsMiY9bfekf5yjwKwavVbNtfTvCRn8vLi5M+j7gIXfcLnjmH3oyFOt
 7vPX4Zta9cD5/GdifYaC5I8qNwUQal75D7HGVxZ8AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLIsWRmVeSWpSXmKPExsVy+t/xe7oHTsbFGuw7K23xf+5tFosvP2+z
 W/xp28Bo8fnIcTaLxQu/MVvMOd/CYnHnyk82iyvtP9kt/t/6zWpx7EULm8WJzfcZLS7vmsNm
 seLQCXaLYwvELK5f4nHg99iy8iaTx85Zd9k9Fu95yeTRdeMSs8emVZ1sHiebSz2mdz9k9ni/
 7yqbR9+WVYwenzfJBXBF6dkU5ZeWpCpk5BeX2CpFG1oY6RlaWugZmVjqGRqbx1oZmSrp29mk
 pOZklqUW6dsl6GUs/dnKVPBCq6L/5BKWBsYW+S5GTg4JAROJY4eb2LoYuTiEBJYySjw9vYEJ
 IiEl8ePXBVYIW1jiz7UuqKL3jBLNW9eCJYQF/CR+Tl0O1iAioC9xemMPC0gRs8ACFom2Bx3M
 EB3XGCVmPFzOBlLFJqAjcWr1EUYQm1fATmLH0+dg3SwCqhK/Lm4CqxEViJA4vGMWVI2gxMmZ
 T1hAbE6BQIkv03aDbWYWUJf4M+8SM4QtLtH0ZSVUXF5i+9s5zBMYhWYhaZ+FpGUWkpZZSFoW
 MLKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECIz6bcd+btnB2PUu+BCjAAejEg/via64WCHW
 xLLiytxDjBIczEoivGUTgUK8KYmVValF+fFFpTmpxYcYTYGem8gsJZqcD0xIeSXxhqaG5haW
 hubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGHvXBytJHbxx+qgtq5fsRtY/GpmM
 Cww0FXS/bz14PmORP4NlfbeCWFnBi6f6/1ZZptf4PVEpuPr41JGqmVai124xhbKvdeU5c/bM
 1U2nIro10uOClHlU+HR79hkeUWp9XeYQ/3vj+ynaeWcuLOo7et/p+2LfY6+2GB8V6T00rTa8
 RNdtmYfbLCWW4oxEQy3mouJEAC8+QPMQAwAA
X-CMS-MailID: 20190822165840eucas1p254f3d07b75967a06651083ff270df922
X-Msg-Generator: CA
X-RootMTR: 20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91
References: <CGME20190822123045eucas1p125b6e106f0310bdb50e759ef41993a91@eucas1p1.samsung.com>
 <20190822123037.28068-1-i.maximets@samsung.com>
 <CAKgT0Uf26P53EA4m503aehq3tWCX9b3C+17TW2Ursbue9Kp=_w@mail.gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net v2] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 William Tu <u9012063@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 22.08.2019 19:38, Alexander Duyck wrote:
> On Thu, Aug 22, 2019 at 5:30 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>>
>> Tx code doesn't clear the descriptors' status after cleaning.
>> So, if the budget is larger than number of used elems in a ring, some
>> descriptors will be accounted twice and xsk_umem_complete_tx will move
>> prod_tail far beyond the prod_head breaking the comletion queue ring.
>>
>> Fix that by limiting the number of descriptors to clean by the number
>> of used descriptors in the tx ring.
>>
>> 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
>> 'ixgbe_xsk_clean_tx_ring()' since we don't need most of the
>> complications implemented in the regular 'ixgbe_clean_tx_irq()'
>> and we're allowed to directly use 'next_to_clean' and 'next_to_use'
>> indexes.
>>
>> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
>> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
>> ---
>>
>> Version 2:
>>   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
>>     'ixgbe_xsk_clean_tx_ring()'.
>>
>>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 34 ++++++++------------
>>  1 file changed, 13 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
>> index 6b609553329f..d1297660e14a 100644
>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
>> @@ -633,22 +633,23 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
>>  bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>>                             struct ixgbe_ring *tx_ring, int napi_budget)
>>  {
>> +       u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
>>         unsigned int total_packets = 0, total_bytes = 0;
>> -       u32 i = tx_ring->next_to_clean, xsk_frames = 0;
>>         unsigned int budget = q_vector->tx.work_limit;
>>         struct xdp_umem *umem = tx_ring->xsk_umem;
>> -       union ixgbe_adv_tx_desc *tx_desc;
>> -       struct ixgbe_tx_buffer *tx_bi;
>> +       u32 xsk_frames = 0;
>>         bool xmit_done;
>>
>> -       tx_bi = &tx_ring->tx_buffer_info[i];
>> -       tx_desc = IXGBE_TX_DESC(tx_ring, i);
>> -       i -= tx_ring->count;
>> +       while (likely(ntc != ntu && budget)) {
> 
> I would say you can get rid of budget entirely. It was only really
> needed for the regular Tx case where you can have multiple CPUs
> feeding a single Tx queue and causing a stall. Since we have a 1:1
> mapping we should never have more than the Rx budget worth of packets
> to really process. In addition we can only make one pass through the
> ring since the ntu value is not updated while running the loop.

OK. Will remove.

> 
>> +               union ixgbe_adv_tx_desc *tx_desc;
>> +               struct ixgbe_tx_buffer *tx_bi;
>> +
>> +               tx_desc = IXGBE_TX_DESC(tx_ring, ntc);
>>
>> -       do {
>>                 if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
>>                         break;
>>
>> +               tx_bi = &tx_ring->tx_buffer_info[ntc];
> 
> Please don't move this logic into the loop. We were intentionally
> processing this outside of the loop once and then just doing the
> increments because it is faster that way. It takes several operations
> to compute tx_bi based on ntc, whereas just incrementing is a single
> operation.

OK.

> 
>>                 total_bytes += tx_bi->bytecount;
>>                 total_packets += tx_bi->gso_segs;
>>
>> @@ -659,24 +660,15 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>>
>>                 tx_bi->xdpf = NULL;
>>
>> -               tx_bi++;
>> -               tx_desc++;
>> -               i++;
>> -               if (unlikely(!i)) {
>> -                       i -= tx_ring->count;
> 
> So these two lines can probably just be replaced by:
> if (unlikely(ntc == tx_ring->count)) {
>         ntc = 0;

Sure.

> 
>> -                       tx_bi = tx_ring->tx_buffer_info;
>> -                       tx_desc = IXGBE_TX_DESC(tx_ring, 0);
>> -               }
>> -
>> -               /* issue prefetch for next Tx descriptor */
>> -               prefetch(tx_desc);
> 
> Did you just drop the prefetch?

I'll keep the prefetch in v3 because, as you fairly mentioned, it's not
related to this patch. However, I'm not sure if this prefetch makes any
sense here, because there is only one comparison operation between the
prefetch and the data usage:

 while (ntc != ntu) {
     if (!(tx_desc->wb.status ...
     <...>
     prefetch(tx_desc);
 }


> You are changing way too much with
> this patch. All you should need to do is replace i with ntc, replace
> the "do {" with "while (ntc != ntu) {", and remove the while at the
> end.
> 
>> +               ntc++;
>> +               if (unlikely(ntc == tx_ring->count))
>> +                       ntc = 0;
>>
>>                 /* update budget accounting */
>>                 budget--;
>> -       } while (likely(budget));
> 
> As I stated earlier, budget can be removed entirely.

Sure.

> 
>> +       }
>>
>> -       i += tx_ring->count;
>> -       tx_ring->next_to_clean = i;
>> +       tx_ring->next_to_clean = ntc;
>>
>>         u64_stats_update_begin(&tx_ring->syncp);
>>         tx_ring->stats.bytes += total_bytes;
>> --
>> 2.17.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
