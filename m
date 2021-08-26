Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB793F8B4B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 17:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB45A80D87;
	Thu, 26 Aug 2021 15:44:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FZxQWIPhux7D; Thu, 26 Aug 2021 15:44:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D92780CB0;
	Thu, 26 Aug 2021 15:44:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C50B11BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 15:44:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B6809425FE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 15:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5pNupNguAqe2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 15:44:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D93E0425DD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 15:44:28 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 61-20020a9d0d430000b02903eabfc221a9so4138352oti.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 08:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9CilpbCdLqDwsRtt52+ILqW2aW6JejKoBnd1mtCylR0=;
 b=FzcNQfkt2j/C971eRKpM7lreK0cVnpf03VZZyUn8by0ZpPEHahykL6h1fH3x9UGIIv
 dxU5si8y5ZtwT4ev6J0R9H2Bhd2/VC5Kkb4f4Li0HRpK8Oj8IIivjTslvIlh+U/5UGs5
 J+kDLhBNLWaELdIn4PG7CFD0WJDa8ps+8v5vE8ArumqvosLCzIGkHPGSq6EOxrGd3HA6
 TEWBOLZms2f5Z1O0laRm1x/scq0FtfnsZXXxvL+FSyvtT5X8dgOi/v1i5G78TWI4ZP9b
 qDwJa71vDPnB8n+WQ/fXJdIUWGqDoWPQy0/i/eOW9EdZJ5r60e9yK5nDx5q7RmI1DDie
 Wz6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9CilpbCdLqDwsRtt52+ILqW2aW6JejKoBnd1mtCylR0=;
 b=qHVB0YVH6nFuud46elp7iNJ4RLpF5hxq6zSr9e/Mb8FZ/zmW7RlHqAdQPISZ9mIn0u
 Mde3Gx+ZgGKXoQ0Tpw075W9MQizrBApOXEaLj9XsIDtnOXOi5y3SqspF1+igUcUWLIZV
 cjc5ruCJKjqqkCCiroFy81+HBGYK9Zks6WEaa9Wo/M92MHiEzHEiEvegYhZANjV0ysiR
 0ita1cbTDl2GWBwOTXsp2pfqVU5rqcfml3Pq2lmmp4n4iRDjAc7jvjCBNW2zUiQWI4RX
 3MfPordnjYXYHjn0l6CkhAfLIlTiCcbLa3dwfEWe9BxX50fUfKfsSrUouO0gAeDU37Tv
 57qg==
X-Gm-Message-State: AOAM532sViDDkPdwOP/mp6I2YiO9Qu6TjZEQLZBIaUHlAZTqmY7zr4PW
 BfMz764lZxvSJp8D31ny1+wsNlDTpy74cNG1Lw4=
X-Google-Smtp-Source: ABdhPJz/CxqQQL7rgljSQCbYHVEkoWFgXyV0AO4VSuiXWMZSGM7Oe4gfDuKMnPS3XBk2GbuyFnklFOViI6DPsR3pLK0=
X-Received: by 2002:a9d:75d5:: with SMTP id c21mr3739175otl.118.1629992667943; 
 Thu, 26 Aug 2021 08:44:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210826141623.8151-1-kerneljasonxing@gmail.com>
 <d15a1f43-3fea-b798-7848-61faf3ca1e8c@intel.com>
In-Reply-To: <d15a1f43-3fea-b798-7848-61faf3ca1e8c@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 26 Aug 2021 23:43:52 +0800
Message-ID: <CAL+tcoDfz3un9fvQ7c-TF=eEiFrEXQBEWV9TvgcjbyNVopMJvg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v4] ixgbe: let the xdpdrv work with
 more than 64 cpus
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
Cc: songliubraving@fb.com, kafai@fb.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 Jason Xing <xingwanli@kuaishou.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 26, 2021 at 11:23 PM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> On 8/26/2021 7:16 AM, kerneljasonxing@gmail.com wrote:
> > From: Jason Xing <xingwanli@kuaishou.com>
> >
> > Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> > server is equipped with more than 64 cpus online. So it turns out that
> > the loading of xdpdrv causes the "NOMEM" failure.
> >
> > Actually, we can adjust the algorithm and then make it work through
> > mapping the current cpu to some xdp ring with the protect of @tx_lock.
>
> Thank you very much for working on this!
>
> you should put your sign off block here, and then end with a triple-dash
> "---"
>
> then have your vN: updates below that, so they will be dropped from
> final git apply. It's ok to have more than one triple-dash.
>

Thanks. Now I know much more about the submission.

> >
> > v4:
> > - Update the wrong commit messages. (Jason)
> >
> > v3:
> > - Change nr_cpu_ids to num_online_cpus() (Maciej)
> > - Rename MAX_XDP_QUEUES to IXGBE_MAX_XDP_QS (Maciej)
> > - Rename ixgbe_determine_xdp_cpu() to ixgbe_determine_xdp_q_idx() (Maciej)
> > - Wrap ixgbe_xdp_ring_update_tail() with lock into one function (Maciej)
> >
> > v2:
> > - Adjust cpu id in ixgbe_xdp_xmit(). (Jesper)
> > - Add a fallback path. (Maciej)
> > - Adjust other parts related to xdp ring.
> >
> > Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> > Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe.h           | 15 ++++-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c       |  9 ++-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 64 ++++++++++++++++------
> >  .../net/ethernet/intel/ixgbe/ixgbe_txrx_common.h   |  1 +
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       |  9 +--
> >  5 files changed, 73 insertions(+), 25 deletions(-)
>
> ...
>
> > @@ -8539,21 +8539,32 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
> >  int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
> >                       struct xdp_frame *xdpf)
> >  {
> > -     struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> >       struct ixgbe_tx_buffer *tx_buffer;
> >       union ixgbe_adv_tx_desc *tx_desc;
> > +     struct ixgbe_ring *ring;
> >       u32 len, cmd_type;
> >       dma_addr_t dma;
> > +     int index, ret;
> >       u16 i;
> >
> >       len = xdpf->len;
> >
> > -     if (unlikely(!ixgbe_desc_unused(ring)))
> > -             return IXGBE_XDP_CONSUMED;
> > +     index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> > +     ring = adapter->xdp_ring[index];
> > +
> > +     if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +             spin_lock(&ring->tx_lock);
> > +
> > +     if (unlikely(!ixgbe_desc_unused(ring))) {
> > +             ret = IXGBE_XDP_CONSUMED;
> > +             goto out;
> > +     }
>
> This static key stuff is tricky code, but I guess if it works, then it's
> better than nothing.
>
> As Maciej also commented, I'd like to see some before/after numbers for
> some of the xdp sample programs to make sure this doesn't cause a huge
> regression on the xdp transmit path. A small regression would be ok,
> since this *is* adding overhead.
>

Fine. It will take me some time. BTW, I'm wondering that, after I'm
done with the analysis, should I just reply to this email directly or
send the v5 patch including those numbers?

Thanks,
Jason

> Jesse
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
