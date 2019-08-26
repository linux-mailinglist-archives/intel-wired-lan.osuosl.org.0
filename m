Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBBC9D3FC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2019 18:29:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DAC6E87AAF;
	Mon, 26 Aug 2019 16:29:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dw6YqYdJHZP0; Mon, 26 Aug 2019 16:29:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A6DD87A96;
	Mon, 26 Aug 2019 16:29:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27E9D1BF345
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 13:40:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2477585F44
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 13:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3KzMwJWw384m for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2019 13:40:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F58285BB5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 13:40:58 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y1so10029774plp.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2019 06:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rBGgnC50tEqUQpJ+f65Q91HGdjIjtC+5DlqiDSMP1/Q=;
 b=afRo5XfL1dnaButfIoJqTh3HWsWdfH0C/Pa8CA105hesfqqeFTx293NH2E4Cz/6fM7
 TNs8KLbLJ8TuBk6JUzLt22sAoN0iEg65D/pjLsW7lC2HLvTFaNZD9WE/deeC2oXMFnd9
 SS+xPJB1Q4cX2atWlPzTYPWdz478+1oaXD//7C57jtEPABMbU/XcR1iZr2iWD6HcOdEH
 KK6i/QHOcBuR2/bFt+v9+WcqZYbttAaoTy3hA0NV/J9Di4IjKIxGiVJkQ2UsMdh1y5Ch
 gTCxuVWYECdBGgmp7O5++TYOVTjO+dge+5Afttr5iBBpIlcNN04QKMRJztev0B8rIOzY
 PBpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rBGgnC50tEqUQpJ+f65Q91HGdjIjtC+5DlqiDSMP1/Q=;
 b=nW76/jtIk9qKrO7v8hlE6c6HsNC0Ka6wJSKFvTW8JcOxAdqWgGK8YBpy6t+Eqnkzs+
 9SAjLv6TUImDfKjD92cQ4i/tSlxPOUEPukrHc2X/6ZqBwqNIViyGo5cMrWfPH0cL3JHf
 HTOLU4bqkmH5SYYZETUgDPfGe2tObnfupMPNKhGXkyQpuOzzo/80lipZGVwliFxsNqkM
 EHhyuTPzhE4MjBX8UZnGmkZGtvkk+IItJ4iSp5NDfzyMQoxI1zNOVzGVJsPrmJktLcqk
 6UT9sJ/R6jOVQebNyH2nkicMBjJFMVXw/51qlMdlde4XklGgb4xNQKKwolpBqMKQubWM
 Xftg==
X-Gm-Message-State: APjAAAVb/lz4ahkLHufGB11Gh0JDSF9wd7TyGEZJYY8jAZlcg02rskz9
 J46WFei7WK0KsM8/y+NAi+0=
X-Google-Smtp-Source: APXvYqzJkaXOd2S9tFS1YwsrbYf6LHJptNMJvnaCguAQYF+y8g+Yksu0dps9YX4mGiDyLjM3HCApKA==
X-Received: by 2002:a17:902:43:: with SMTP id
 61mr19425725pla.145.1566826857867; 
 Mon, 26 Aug 2019 06:40:57 -0700 (PDT)
Received: from localhost ([192.55.54.44])
 by smtp.gmail.com with ESMTPSA id p5sm13565558pfg.184.2019.08.26.06.40.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 06:40:57 -0700 (PDT)
Date: Mon, 26 Aug 2019 15:40:42 +0200
From: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Message-ID: <20190826154042.00004bfc@gmail.com>
In-Reply-To: <20190822171237.20798-1-i.maximets@samsung.com>
References: <CGME20190822171243eucas1p12213f2239d6c36be515dade41ed7470b@eucas1p1.samsung.com>
 <20190822171237.20798-1-i.maximets@samsung.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 26 Aug 2019 16:29:30 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v3] ixgbe: fix double clean of tx
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
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 William Tu <u9012063@gmail.com>, linux-kernel@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, =?ISO-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 22 Aug 2019 20:12:37 +0300
Ilya Maximets <i.maximets@samsung.com> wrote:

> Tx code doesn't clear the descriptors' status after cleaning.
> So, if the budget is larger than number of used elems in a ring, some
> descriptors will be accounted twice and xsk_umem_complete_tx will move
> prod_tail far beyond the prod_head breaking the completion queue ring.
> 
> Fix that by limiting the number of descriptors to clean by the number
> of used descriptors in the tx ring.
> 
> 'ixgbe_clean_xdp_tx_irq()' function refactored to look more like
> 'ixgbe_xsk_clean_tx_ring()' since we're allowed to directly use
> 'next_to_clean' and 'next_to_use' indexes.
> 
> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> ---
> 
> Version 3:
>   * Reverted some refactoring made for v2.
>   * Eliminated 'budget' for tx clean.
>   * prefetch returned.
> 
> Version 2:
>   * 'ixgbe_clean_xdp_tx_irq()' refactored to look more like
>     'ixgbe_xsk_clean_tx_ring()'.
> 
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 29 ++++++++------------
>  1 file changed, 11 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index 6b609553329f..a3b6d8c89127 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -633,19 +633,17 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
>  bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>  			    struct ixgbe_ring *tx_ring, int napi_budget)

While you're at it, can you please as well remove the 'napi_budget' argument?
It wasn't used at all even before your patch.

I'm jumping late in, but I was really wondering and hesitated with taking
part in discussion since the v1 of this patch - can you elaborate why simply
clearing the DD bit wasn't sufficient?

Maciej

>  {
> +	u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
>  	unsigned int total_packets = 0, total_bytes = 0;
> -	u32 i = tx_ring->next_to_clean, xsk_frames = 0;
> -	unsigned int budget = q_vector->tx.work_limit;
>  	struct xdp_umem *umem = tx_ring->xsk_umem;
>  	union ixgbe_adv_tx_desc *tx_desc;
>  	struct ixgbe_tx_buffer *tx_bi;
> -	bool xmit_done;
> +	u32 xsk_frames = 0;
>  
> -	tx_bi = &tx_ring->tx_buffer_info[i];
> -	tx_desc = IXGBE_TX_DESC(tx_ring, i);
> -	i -= tx_ring->count;
> +	tx_bi = &tx_ring->tx_buffer_info[ntc];
> +	tx_desc = IXGBE_TX_DESC(tx_ring, ntc);
>  
> -	do {
> +	while (ntc != ntu) {
>  		if (!(tx_desc->wb.status & cpu_to_le32(IXGBE_TXD_STAT_DD)))
>  			break;
>  
> @@ -661,22 +659,18 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>  
>  		tx_bi++;
>  		tx_desc++;
> -		i++;
> -		if (unlikely(!i)) {
> -			i -= tx_ring->count;
> +		ntc++;
> +		if (unlikely(ntc == tx_ring->count)) {
> +			ntc = 0;
>  			tx_bi = tx_ring->tx_buffer_info;
>  			tx_desc = IXGBE_TX_DESC(tx_ring, 0);
>  		}
>  
>  		/* issue prefetch for next Tx descriptor */
>  		prefetch(tx_desc);
> +	}
>  
> -		/* update budget accounting */
> -		budget--;
> -	} while (likely(budget));
> -
> -	i += tx_ring->count;
> -	tx_ring->next_to_clean = i;
> +	tx_ring->next_to_clean = ntc;
>  
>  	u64_stats_update_begin(&tx_ring->syncp);
>  	tx_ring->stats.bytes += total_bytes;
> @@ -688,8 +682,7 @@ bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
>  	if (xsk_frames)
>  		xsk_umem_complete_tx(umem, xsk_frames);
>  
> -	xmit_done = ixgbe_xmit_zc(tx_ring, q_vector->tx.work_limit);
> -	return budget > 0 && xmit_done;
> +	return ixgbe_xmit_zc(tx_ring, q_vector->tx.work_limit);
>  }
>  
>  int ixgbe_xsk_async_xmit(struct net_device *dev, u32 qid)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
