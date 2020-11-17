Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56C82B6E08
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 20:07:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F9C387033;
	Tue, 17 Nov 2020 19:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxXrTtaGjgzQ; Tue, 17 Nov 2020 19:07:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0BDE8705B;
	Tue, 17 Nov 2020 19:07:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1BE1BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:07:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77C1585631
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9h4-342KmvAu for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 19:07:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0FAD85624
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:07:31 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id f16so20482408otl.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 11:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:message-id:in-reply-to:references:subject
 :mime-version:content-transfer-encoding;
 bh=9fgySF6K68SlluAGbdqXKQeVrDTrhLPgdEXfhoFPwX8=;
 b=XoZH8GpCCWfsU+IoFOA00/Zk5jH4C2i3Xv8NjBnsgNDw7x87/1ZRrXEnh0/DTnx7wd
 yT4rS+fQosOlWkWUSSMb1S4wkcVmamnYgFHuDu+G/giPJGRAsEvHsBx7aVrSHf5yeLVu
 GBn6DveQkZ/WKVf5bLD0LGrYI2s6h7faYVGbrZOzbMxeD2SFxmwpCH44B7bKQL27z8lM
 4VyzAdV4V/XemAMsQJDh5Q7eGlNMtjqaKFguAlWJbNYkAq4bEzyjuhhwosv4+ZzhO6wF
 HCO6gKEQhTZ5pIeZJVxN2Vn6vy4SOFRsUhT86MkV/l7NJpIMMFVDTEo3sSFAwVce/39L
 rHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
 :references:subject:mime-version:content-transfer-encoding;
 bh=9fgySF6K68SlluAGbdqXKQeVrDTrhLPgdEXfhoFPwX8=;
 b=H1+gGzMy/NMTZmOwusz9FdOtsBBocGGwLicYa8sIt1wXe3MR6I6JkRsy/OZxjnvPcJ
 xRvUMuSqFlxpSU+b8JvjgEZzgeBBDFNhtpEoq9oVq5M3vDyKqNbOEh2nbAHMk45eBqjt
 JbTEKDLRJ6x072Yw1//Lpv7We7QQnSA6RGviaYPAk8d36tAxwwG7qZ9aym+POpLb1v8i
 31A9WIYf2WuuJ6DiIddX7xKgY+DR7rmwhe79tIaxI1Cu3rMg5MaDBGzmh2uxsE6VVJsL
 NeaMU5+Wkbvq85WdgiwFrhBm7o8i2/sVIcY/wTcfNKU8FR2lGHGSmMctvRg8JTlChgmZ
 p4ow==
X-Gm-Message-State: AOAM530TjWjg3b+x2DgfBNInheZuzlhUiujg00b1JL1ZjBqZOxnUzr56
 7dV1r5/EAJizVpBkKqaWdyE=
X-Google-Smtp-Source: ABdhPJyvLHJlKU9g2W718K3p65afXZsjKc8wVd1jMSWIOnG1FdT8bzA4YxQmeyGQS90q+L6HzaBBUg==
X-Received: by 2002:a9d:460a:: with SMTP id y10mr3761572ote.99.1605640050975; 
 Tue, 17 Nov 2020 11:07:30 -0800 (PST)
Received: from localhost ([184.63.162.180])
 by smtp.gmail.com with ESMTPSA id w22sm1804563oie.49.2020.11.17.11.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Nov 2020 11:07:30 -0800 (PST)
Date: Tue, 17 Nov 2020 11:07:22 -0800
From: John Fastabend <john.fastabend@gmail.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>, magnus.karlsson@intel.com, 
 bjorn.topel@intel.com, ast@kernel.org, daniel@iogearbox.net, 
 netdev@vger.kernel.org, jonathan.lemon@gmail.com, kuba@kernel.org, 
 john.fastabend@gmail.com
Message-ID: <5fb41f6ae195_310220813@john-XPS-13-9370.notmuch>
In-Reply-To: <1605525167-14450-5-git-send-email-magnus.karlsson@gmail.com>
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
 <1605525167-14450-5-git-send-email-magnus.karlsson@gmail.com>
Mime-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v3 4/5] xsk: introduce
 batched Tx descriptor interfaces
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
Cc: maciejromanfijalkowski@gmail.com, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
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
>  net/xdp/xsk.c              | 57 +++++++++++++++++++++++++++++
>  net/xdp/xsk_queue.h        | 89 +++++++++++++++++++++++++++++++++++++++-------
>  3 files changed, 140 insertions(+), 13 deletions(-)
> 

Acked-by: John Fastabend <john.fastabend@gmail.com>

> +
> +u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *descs,
> +				   u32 max_entries)
> +{
> +	struct xdp_sock *xs;
> +	u32 nb_pkts;
> +
> +	rcu_read_lock();
> +	if (!list_is_singular(&pool->xsk_tx_list)) {
> +		/* Fallback to the non-batched version */

I'm going to ask even though I believe its correct.

If we fallback here and then an entry is added to the list while we are
in the fallback logic everything should still be OK, correct?

> +		rcu_read_unlock();
> +		return xsk_tx_peek_release_fallback(pool, descs, max_entries);
> +	}
> +
> +	xs = list_first_or_null_rcu(&pool->xsk_tx_list, struct xdp_sock, tx_list);
> +	if (!xs) {
> +		nb_pkts = 0;
> +		goto out;
> +	}
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
> +
> +out:
> +	rcu_read_unlock();
> +	return nb_pkts;
> +}
> +EXPORT_SYMBOL(xsk_tx_peek_release_desc_batch);
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
