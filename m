Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C57182AC69B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Nov 2020 22:06:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3F4668675D;
	Mon,  9 Nov 2020 21:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YUJzQJcTZGtF; Mon,  9 Nov 2020 21:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5360C86761;
	Mon,  9 Nov 2020 21:06:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 047A01BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 21:06:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4774D2042D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 21:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qE-0vvhVrdim for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Nov 2020 21:06:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A5D4203F2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Nov 2020 21:06:43 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id q206so11750968oif.13
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Nov 2020 13:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=dmc2tE6MNDnQkrAgLG+0UnVegaJqmlcObysEf4HngsI=;
 b=Wo1VeJrAeAAX6gx4xgSl4SOH8CJaYeSzGYj7yNnJdr6yD4/1WCxV4H9HFLLHLQ9WOD
 tUaeiezWOeooiao738i3iadYQbR255vDks/Cr7dqSMf2HOacIT4nkhnvhh9pePlQOnhQ
 saMwG68s+p1bdIe/r7tXePiemG9EenlA75mY2iB5Xeb6eqZoLU8zz/BHT0W1SfakAn/6
 B989pcaP7IrKsdDhhgaIZaL6kZU70F93bolO97nxFXPsAoK76B+vE6PwElalPuN4e1qM
 KZlillnFv6ih1EfpG7InxICocQwuFqMTSZCSLlkU3S4mtL6W+J9U9Gq/HpK/2Oh1aJ7t
 mBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=dmc2tE6MNDnQkrAgLG+0UnVegaJqmlcObysEf4HngsI=;
 b=sAEkBxWHBaEWk9WEqeW+mpwE1l6BsbjwFqyCcBE93VNpJv8sUxNalTZVbl7e3e2oIi
 Cw706I6tZOkg8tnfsJiHl/LFA7HMnpqjoUe0MkpMY5Vr8ywAq+0ban2+iSGPUSNSQuPc
 gEv5v93PvjqG7OO3sqBszrcbG/EThuF/BdCkksyiJFw8jbDKkUSEINNcuZA6UVA7QLl8
 TyZwwbvx6xoCvsfFgisc7hj9Qjg64+ye0v03v3uu04XrMddTW7eMr3/y4dZZhYBcd23I
 AUDDKtW8I8jTeMxfjpCVeUhhobhZ8mL1qMUZS4FySkBixB6s8iGtemgbywfzZx2GiAOZ
 HzSA==
X-Gm-Message-State: AOAM533MaY2aBLmawqlYpubbFmF40tBlB+MiWCTO+jkuQr6BD9j2rUrh
 nWcck2u6+1KlnMH3mw4uGIc=
X-Google-Smtp-Source: ABdhPJxbAP00slh6Z0LNatYLx6zk7RfhQGZtpim9Zoj76yeShFv+JSlzuJlng5H8YXkJG373unLR8w==
X-Received: by 2002:a05:6808:649:: with SMTP id
 z9mr689859oih.132.1604956002273; 
 Mon, 09 Nov 2020 13:06:42 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id n62sm2776180ota.74.2020.11.09.13.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 13:06:41 -0800 (PST)
Date: Mon, 09 Nov 2020 13:06:33 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com
Message-ID: <5fa9af59a5f89_8c0e208b1@john-XPS-13-9370.notmuch>
In-Reply-To: <1604498942-24274-6-git-send-email-magnus.karlsson@gmail.com>
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-6-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 5/6] xsk: introduce batched
 Tx descriptor interfaces
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
Cc: maciejromanfijalkowski@gmail.com, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Magnus Karlsson wrote:
> From: Magnus Karlsson <magnus.karlsson@intel.com>
> 
> Introduce batched descriptor interfaces in the xsk core code for the
> Tx path to be used in the driver to write a code path with higher
> performance. This interface will be used by the i40e driver in the
> next patch. Though other drivers would likely benefit from this new
> interface too.
> 
> Note that batching is only implemented for the common case when
> there is only one socket bound to the same device and queue id. When
> this is not the case, we fall back to the old non-batched version of
> the function.
> 
> Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> ---
>  include/net/xdp_sock_drv.h |  7 ++++
>  net/xdp/xsk.c              | 43 ++++++++++++++++++++++
>  net/xdp/xsk_queue.h        | 89 +++++++++++++++++++++++++++++++++++++++-------
>  3 files changed, 126 insertions(+), 13 deletions(-)
> 
> diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
> index 5b1ee8a..4e295541 100644
> --- a/include/net/xdp_sock_drv.h
> +++ b/include/net/xdp_sock_drv.h
> @@ -13,6 +13,7 @@
>  
>  void xsk_tx_completed(struct xsk_buff_pool *pool, u32 nb_entries);
>  bool xsk_tx_peek_desc(struct xsk_buff_pool *pool, struct xdp_desc *desc);
> +u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *desc, u32 max);
>  void xsk_tx_release(struct xsk_buff_pool *pool);
>  struct xsk_buff_pool *xsk_get_pool_from_qid(struct net_device *dev,
>  					    u16 queue_id);
> @@ -128,6 +129,12 @@ static inline bool xsk_tx_peek_desc(struct xsk_buff_pool *pool,
>  	return false;
>  }
>  
> +static inline u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *desc,
> +						 u32 max)
> +{
> +	return 0;
> +}
> +
>  static inline void xsk_tx_release(struct xsk_buff_pool *pool)
>  {
>  }
> diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
> index b71a32e..dd75b5f 100644
> --- a/net/xdp/xsk.c
> +++ b/net/xdp/xsk.c
> @@ -332,6 +332,49 @@ bool xsk_tx_peek_desc(struct xsk_buff_pool *pool, struct xdp_desc *desc)
>  }
>  EXPORT_SYMBOL(xsk_tx_peek_desc);
>  
> +u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *descs,
> +				   u32 max_entries)
> +{
> +	struct xdp_sock *xs;
> +	u32 nb_pkts;
> +
> +	rcu_read_lock();
> +	if (!list_is_singular(&pool->xsk_tx_list)) {
> +		/* Fallback to the non-batched version */
> +		rcu_read_unlock();
> +		return xsk_tx_peek_desc(pool, &descs[0]) ? 1 : 0;
> +	}
> +
> +	xs = list_first_or_null_rcu(&pool->xsk_tx_list, struct xdp_sock, tx_list);

I'm not seeing how we avoid the null check here? Can you add a comment on why this
is safe? I see the bind/unbind routines is it possible to unbind while this is
running or do we have some locking here.

> +
> +	nb_pkts = xskq_cons_peek_desc_batch(xs->tx, descs, pool, max_entries);
> +	if (!nb_pkts) {
> +		xs->tx->queue_empty_descs++;
> +		goto out;
> +	}
> +
> +	/* This is the backpressure mechanism for the Tx path. Try to
> +	 * reserve space in the completion queue for all packets, but
> +	 * if there are fewer slots available, just process that many
> +	 * packets. This avoids having to implement any buffering in
> +	 * the Tx path.
> +	 */
> +	nb_pkts = xskq_prod_reserve_addr_batch(pool->cq, descs, nb_pkts);
> +	if (!nb_pkts)
> +		goto out;
> +
> +	xskq_cons_release_n(xs->tx, nb_pkts);
> +	__xskq_cons_release(xs->tx);
> +	xs->sk.sk_write_space(&xs->sk);

Can you move the out label here? Looks like nb_pkts = 0 in all cases
where goto out is used.

> +	rcu_read_unlock();
> +	return nb_pkts;
> +
> +out:
> +	rcu_read_unlock();
> +	return 0;
> +}
> +EXPORT_SYMBOL(xsk_tx_peek_release_desc_batch);
> +
>  static int xsk_wakeup(struct xdp_sock *xs, u8 flags)
>  {
>  	struct net_device *dev = xs->dev;

[...]

Other than above question LGTM.

Thanks,
John
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
