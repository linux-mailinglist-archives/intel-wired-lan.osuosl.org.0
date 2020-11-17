Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839D92B6ECE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Nov 2020 20:37:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B8D4870AB;
	Tue, 17 Nov 2020 19:37:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T9T2DBIMAO2A; Tue, 17 Nov 2020 19:37:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 63138870A3;
	Tue, 17 Nov 2020 19:37:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AE0F1BF574
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76657827A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B9n3n2u-ywNn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Nov 2020 19:37:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 35375860A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 19:37:06 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y22so10810236plr.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Nov 2020 11:37:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EsKMgiMbqjjn8lhbzXsxLvTtdHlwwQ9uUywE8ZAoO/0=;
 b=aZAJTEam+/Ie5FUpB3/MFwaTB/er0HmqsZCVMOdfbiOZoErxM8Qe0JrtzAgeuptL7q
 C7DKw5ghrp4tIcsPhEUAbb3wmiXN61Du/WiL3QWW1qqEHwSK1Y0rx+Fk1wNChnpcRimY
 S67blHW8RJl+PiWLplgo3nlwIt86GW/Y86BPqjsRFijHeD8yloVOneW97bTWTJv3/xHA
 rFK7NhOq56APaSeEu4tXJ5Y+mkhamnQKORj1oY+tzvS8XIlTiH47wubyhwrYgIv4jBoq
 tgDOxMXCRWna8zfw5OY2wh5bu7lUv8deb4k4kte+tI2Dpb3vzqx3vyKenVrHTaw2RYOP
 pTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EsKMgiMbqjjn8lhbzXsxLvTtdHlwwQ9uUywE8ZAoO/0=;
 b=bwDJllP3RL+fQwY8ZB+wghUXVASAAKdWFAmF96zzswO4FEn1hH4Ph28FFFKEtY557S
 2e1IiO55h/dtZoUuHQWFi9Ohzbdpae/7Ht5QSBJB5FZWBCIemrbVxwoAEQD1tM1mcOMH
 iqt5BtUC5FlAyjjaotAR466oopIC3AXUqyWw2Yv7ET2c6c0xKuawrv2qCdyaX0d/Nxh5
 RsrWSufSyqIoVBvUY+UzA40zw4AUDxkS9I0jZ3V0Gf02vvqqFOXPxiplqwn8u2sRbHFO
 OF4sMMfJIXW2S79PSs6GBKuSBET+DWwKTbSbsW3PbdPKfg1ayWkEuvSbhKFyjZjOBz5R
 L12g==
X-Gm-Message-State: AOAM530aRWBSndUfQzCWlyCpmnK0jRnlh8qsh32eXJ0DPZY7ofErthrS
 57DxcPlr9HpDZkA0JCKIQrQHuTLnGr3tNRerFg0=
X-Google-Smtp-Source: ABdhPJzL5bpygHMA2bce86IQP8EK3HBvnwXKbDhBG4F20h5EhGntaUWRXAPv6WC3K5iQWujj3b0oEGwsV6VGml4c92s=
X-Received: by 2002:a17:90b:208:: with SMTP id
 fy8mr606225pjb.204.1605641825763; 
 Tue, 17 Nov 2020 11:37:05 -0800 (PST)
MIME-Version: 1.0
References: <1605525167-14450-1-git-send-email-magnus.karlsson@gmail.com>
 <1605525167-14450-5-git-send-email-magnus.karlsson@gmail.com>
 <5fb41f6ae195_310220813@john-XPS-13-9370.notmuch>
In-Reply-To: <5fb41f6ae195_310220813@john-XPS-13-9370.notmuch>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Tue, 17 Nov 2020 20:36:54 +0100
Message-ID: <CAJ8uoz3kKqxReJxsT_asecnF==QwRfbVZ81mEoMDgyxSFHO8Kg@mail.gmail.com>
To: John Fastabend <john.fastabend@gmail.com>
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Network Development <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 17, 2020 at 8:07 PM John Fastabend <john.fastabend@gmail.com> wrote:
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
> >  net/xdp/xsk.c              | 57 +++++++++++++++++++++++++++++
> >  net/xdp/xsk_queue.h        | 89 +++++++++++++++++++++++++++++++++++++++-------
> >  3 files changed, 140 insertions(+), 13 deletions(-)
> >
>
> Acked-by: John Fastabend <john.fastabend@gmail.com>
>
> > +
> > +u32 xsk_tx_peek_release_desc_batch(struct xsk_buff_pool *pool, struct xdp_desc *descs,
> > +                                u32 max_entries)
> > +{
> > +     struct xdp_sock *xs;
> > +     u32 nb_pkts;
> > +
> > +     rcu_read_lock();
> > +     if (!list_is_singular(&pool->xsk_tx_list)) {
> > +             /* Fallback to the non-batched version */
>
> I'm going to ask even though I believe its correct.
>
> If we fallback here and then an entry is added to the list while we are
> in the fallback logic everything should still be OK, correct?

Yes, the fallback function can handle all cases.

> > +             rcu_read_unlock();
> > +             return xsk_tx_peek_release_fallback(pool, descs, max_entries);
> > +     }
> > +
> > +     xs = list_first_or_null_rcu(&pool->xsk_tx_list, struct xdp_sock, tx_list);
> > +     if (!xs) {
> > +             nb_pkts = 0;
> > +             goto out;
> > +     }
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
> > +
> > +out:
> > +     rcu_read_unlock();
> > +     return nb_pkts;
> > +}
> > +EXPORT_SYMBOL(xsk_tx_peek_release_desc_batch);
> > +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
