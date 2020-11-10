Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 578F32AD14C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Nov 2020 09:28:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B13EE857BE;
	Tue, 10 Nov 2020 08:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XE042uh84hBk; Tue, 10 Nov 2020 08:28:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03F6185775;
	Tue, 10 Nov 2020 08:28:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 015D41BF28E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 08:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F10EB8613C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 08:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iszCfQV3pArX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Nov 2020 08:28:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 86D33860A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 08:28:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i7so9527967pgh.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Nov 2020 00:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TISfo2rPOusjiUGHzOKrJ8GdmWyI2UtdJ5e85V2NGcA=;
 b=OYOVDErUX4cXYvXseqcY6uc7shtOteKXUZ69ocRpUnkD+oWvMmv2PQAij7GXxe7kIh
 FYxyBzaUgKX5tiyUOzycmOeer1DqsIYYxsdh4EhriMoMaGnLbokivLIJrZLebrsnf4fX
 UDflWbaWW7jnwDg3GtwVsNAywIKVPm5OUF+LOVOo1FAH/n1BHE5CLKpl2eZGzZm98Hnf
 xP6PhrcyBW8Ndgr29+YmNsVw0ptqSFkzm8Y5vZhfYHs6xTiHanuHQyipss1jUCmPlhIZ
 60mH4Vc0NELQFeJpdtp9htHq5sD2BAdW9llIDx2ll9V1yKB2PjzkWqSiZByLM5WtxkpF
 SReg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TISfo2rPOusjiUGHzOKrJ8GdmWyI2UtdJ5e85V2NGcA=;
 b=FUXOcAmfPaCPhlfDz9KkZBfYbTR+QRcztq9k3xHeT9mYD1HktsvmDvUXbmmHe7XRQt
 6+//Jap/K5PUtHL9Yq/9QDFrfI1B761wtJlrST1foetuU1wHgBBhgOrZKxdBfXfeMi+h
 x70IjT3Nt+CKNndTXhWpx6ELgrllhyXE0Muksg2gON9YyHXCBkQoJGUMGRqAGGQwrRQa
 epwMnSjnNlsiA1xdFvLv2qN2czfPrZvdBCv2/QYLdT6BueUNul/we3FNcCG4ofkMobel
 2s7GWjuckwBzpm3SBk+IZ2jFUQfoQ6CmyX/WZlsQzuREWtsNZ6G6aPqtppAJKRk5ru/C
 DkMw==
X-Gm-Message-State: AOAM533G92K3FgLCHEUntm0sHvwTSVKtgNPdn25UxFyMJ3DfBuDS7kbk
 PrPfrsP+oJvT/YYaEUxHVMO2H4qL0jvkc1/+2aw=
X-Google-Smtp-Source: ABdhPJxH28x49RG53UZ7aOJ/CMJ82oUdDqKNRbdrlhwgWTv7lgXNFWh83jlStBCgiBiVKOfJ2LOGbcVLpCRQdXGQNdY=
X-Received: by 2002:a62:2bd0:0:b029:18a:df0f:dd61 with SMTP id
 r199-20020a622bd00000b029018adf0fdd61mr16655324pfr.19.1604996913078; Tue, 10
 Nov 2020 00:28:33 -0800 (PST)
MIME-Version: 1.0
References: <1604498942-24274-1-git-send-email-magnus.karlsson@gmail.com>
 <1604498942-24274-6-git-send-email-magnus.karlsson@gmail.com>
 <5fa9af59a5f89_8c0e208b1@john-XPS-13-9370.notmuch>
In-Reply-To: <5fa9af59a5f89_8c0e208b1@john-XPS-13-9370.notmuch>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 10 Nov 2020 09:28:21 +0100
Message-ID: <CAJ8uoz2gU+3Va0a4Z1jij-jgN4DCwHb57xbs98SLr58gjVWp1A@mail.gmail.com>
To: John Fastabend <john.fastabend@gmail.com>
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 9, 2020 at 10:06 PM John Fastabend <john.fastabend@gmail.com> wrote:
>
> Magnus Karlsson wrote:
> > From: Magnus Karlsson <magnus.karlsson@intel.com>
> >
> > Introduce batched descriptor interfaces in the xsk core code for the
> > Tx path to be used in the driver to write a code path with higher
> > performance. This interface will be used by the i40e driver in the
> > next patch. Though other drivers would likely benefit from this new
> > interface too.
> >
> > Note that batching is only implemented for the common case when
> > there is only one socket bound to the same device and queue id. When
> > this is not the case, we fall back to the old non-batched version of
> > the function.
> >
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
> > ---
> >  include/net/xdp_sock_drv.h |  7 ++++
> >  net/xdp/xsk.c              | 43 ++++++++++++++++++++++
> >  net/xdp/xsk_queue.h        | 89 +++++++++++++++++++++++++++++++++++++++-------
> >  3 files changed, 126 insertions(+), 13 deletions(-)
> >
> > diff --git a/include/net/xdp_sock_drv.h b/include/net/xdp_sock_drv.h
> > index 5b1ee8a..4e295541 100644
> > --- a/include/net/xdp_sock_drv.h
> > +++ b/include/net/xdp_sock_drv.h
> > @@ -13,6 +13,7 @@
> >
> >  void xsk_tx_completed(struct xsk_buff_pool *pool, u32 nb_entries);
> >  bool xsk_tx_peek_desc(struct xsk_buff_pool *pool, struct xdp_desc *desc);
> > +u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *desc, u32 max);
> >  void xsk_tx_release(struct xsk_buff_pool *pool);
> >  struct xsk_buff_pool *xsk_get_pool_from_qid(struct net_device *dev,
> >                                           u16 queue_id);
> > @@ -128,6 +129,12 @@ static inline bool xsk_tx_peek_desc(struct xsk_buff_pool *pool,
> >       return false;
> >  }
> >
> > +static inline u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *desc,
> > +                                              u32 max)
> > +{
> > +     return 0;
> > +}
> > +
> >  static inline void xsk_tx_release(struct xsk_buff_pool *pool)
> >  {
> >  }
> > diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
> > index b71a32e..dd75b5f 100644
> > --- a/net/xdp/xsk.c
> > +++ b/net/xdp/xsk.c
> > @@ -332,6 +332,49 @@ bool xsk_tx_peek_desc(struct xsk_buff_pool *pool, struct xdp_desc *desc)
> >  }
> >  EXPORT_SYMBOL(xsk_tx_peek_desc);
> >
> > +u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *descs,
> > +                                u32 max_entries)
> > +{
> > +     struct xdp_sock *xs;
> > +     u32 nb_pkts;
> > +
> > +     rcu_read_lock();
> > +     if (!list_is_singular(&pool->xsk_tx_list)) {
> > +             /* Fallback to the non-batched version */
> > +             rcu_read_unlock();
> > +             return xsk_tx_peek_desc(pool, &descs[0]) ? 1 : 0;
> > +     }
> > +
> > +     xs = list_first_or_null_rcu(&pool->xsk_tx_list, struct xdp_sock, tx_list);
>
> I'm not seeing how we avoid the null check here? Can you add a comment on why this
> is safe? I see the bind/unbind routines is it possible to unbind while this is
> running or do we have some locking here.

You are correct. The entry can disappear between list_is_singluar and
list_first_or_null_rcu. There are 3 possibilities at this point:

0 entries: as you point out, we need to test for this and exit since
the socket does not exist anymore.
1 entry: everything is working as expected.
>1 entry: we only process the first socket in the list. This is fine since this can only happen when we add a second socket to the list and the next time we enter this function list_is_singular() will not be true anymore, so we will use the fallback version that will process packets from all sockets. So the only thing that will happen in this rare case is that the start of processing for the second socket is delayed ever so slightly.

In summary, I will add a test for !xs and exit in that case.

> > +
> > +     nb_pkts = xskq_cons_peek_desc_batch(xs->tx, descs, pool, max_entries);
> > +     if (!nb_pkts) {
> > +             xs->tx->queue_empty_descs++;
> > +             goto out;
> > +     }
> > +
> > +     /* This is the backpressure mechanism for the Tx path. Try to
> > +      * reserve space in the completion queue for all packets, but
> > +      * if there are fewer slots available, just process that many
> > +      * packets. This avoids having to implement any buffering in
> > +      * the Tx path.
> > +      */
> > +     nb_pkts = xskq_prod_reserve_addr_batch(pool->cq, descs, nb_pkts);
> > +     if (!nb_pkts)
> > +             goto out;
> > +
> > +     xskq_cons_release_n(xs->tx, nb_pkts);
> > +     __xskq_cons_release(xs->tx);
> > +     xs->sk.sk_write_space(&xs->sk);
>
> Can you move the out label here? Looks like nb_pkts = 0 in all cases
> where goto out is used.

Nice simplification. Will fix.

Thanks: Magnus

> > +     rcu_read_unlock();
> > +     return nb_pkts;
> > +
> > +out:
> > +     rcu_read_unlock();
> > +     return 0;
> > +}
> > +EXPORT_SYMBOL(xsk_tx_peek_release_desc_batch);
> > +
> >  static int xsk_wakeup(struct xdp_sock *xs, u8 flags)
> >  {
> >       struct net_device *dev = xs->dev;
>
> [...]
>
> Other than above question LGTM.
>
> Thanks,
> John
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
