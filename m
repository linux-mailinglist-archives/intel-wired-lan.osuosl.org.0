Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1AF3F89AB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 16:04:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D3F554046E;
	Thu, 26 Aug 2021 14:04:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jhqeOp3cKR1a; Thu, 26 Aug 2021 14:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29888406BD;
	Thu, 26 Aug 2021 14:04:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE4041BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 10:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AC27E8264A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 10:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pjhpen3vgRen for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 10:57:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com
 [IPv6:2607:f8b0:4864:20::336])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A1D46826D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 10:57:21 +0000 (UTC)
Received: by mail-ot1-x336.google.com with SMTP id
 m7-20020a9d4c87000000b0051875f56b95so2904827otf.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 03:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BpVfgPJQqu1T2BNyWHG4aZ/UYKO1p3kvDq2Q9ndPgME=;
 b=XDJ18b5ZVJB2beq6iBiNjw3ggE5o88SBOKTMhYWM1AZKABXMwKaHFBk14eohc6/CF1
 apkQ4+sL5ND8iU2qX2I2AJVeZkjcrm1ovl90+iJUqtkrwipsIsMl+CDxPuMv3y0K9Tpy
 r1ta24VdFuYn+cEhgNiFgRz3LTjOjIrXDV5JbWD0OvAm6rgAGJ8mOiw7JMDa4I2bAYPl
 +r0AoiPNTEqiTnLMcn1w1K0GCX3yBmiqWZdWEeUePj0NsqRREBzZsTHMyi1aOOHN7W/q
 FFzTTdHAg8xdX9bhX78m66qMz0hjx3jNi7Ox1BcxmWTYuLR1jZIdIqsoBehyVJXKbq6u
 bjPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BpVfgPJQqu1T2BNyWHG4aZ/UYKO1p3kvDq2Q9ndPgME=;
 b=L+Ak76aOQDpwQeFQ4b0WDUmsT1dmpjTdzRlJxUVGk5YrsAzP9/4bEUNZz8TjktjQHf
 VqGnYaON2pxesoendh18PZA5zOKtGWlH3Sjy9M80BsmhTuKvrUblo/C7KYo0fMT+HOff
 +SdI9Hx7D1iLWPYQurlvj4nzdI0g1qtv0krad2BrB4Gr2DcW9A768WzhIm9NkoDjVmz6
 Xn4JUzpm52zUKQfHSTgRSucf+D1VUBuoilMSW+RUWscBuWdfVmVgWX/4nI5PuMmiPqTv
 BwUbb6GaLAJYFPbAPTa9aa11Tju7ycP7jGjwPXBH+pdVmvI5Hsoapcc5oTjQlBWp/EZ6
 kOYQ==
X-Gm-Message-State: AOAM530BC558eqqLlhboN9lbS6+AgCTNwsQ26gPcXPQ2TNdG6Uuh4xkm
 tcxFqq/gnfJKkuDVnFv5M3xT/xzfW6ahJ5f3I+Q=
X-Google-Smtp-Source: ABdhPJxYXHa5/Xu+/ZaqXVrsg7/WZWWxRj1w+vKFhJO3lD7AgYRCU3hMtNmmVotEo9kaAw9NlrR2ZipbdgPSTOvDymY=
X-Received: by 2002:a9d:4e96:: with SMTP id v22mr2432942otk.110.1629975440633; 
 Thu, 26 Aug 2021 03:57:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAL+tcoDUhZfy3NTx4TOv3wa1f8SMkNhzNpVS5qyySaVOm6L-qQ@mail.gmail.com>
 <20210825120241.7389-1-kerneljasonxing@gmail.com>
 <20210826085148.GB26792@ranger.igk.intel.com>
In-Reply-To: <20210826085148.GB26792@ranger.igk.intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 26 Aug 2021 18:56:44 +0800
Message-ID: <CAL+tcoCrOc1L+Y_SeScYJXjn542GYvu9n7EMhN_75h-P4FQFoQ@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
X-Mailman-Approved-At: Thu, 26 Aug 2021 14:03:59 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: let the xdpdrv work with
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

On Thu, Aug 26, 2021 at 5:07 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Wed, Aug 25, 2021 at 08:02:41PM +0800, kerneljasonxing@gmail.com wrote:
> > From: Jason Xing <xingwanli@kuaishou.com>
> >
> > Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> > server is equipped with more than 64 cpus online. So it turns out that
> > the loading of xdpdrv causes the "NOMEM" failure.
> >
> > Actually, we can adjust the algorithm and then make it work through
> > mapping the current cpu to some xdp ring with the protect of @tx_lock.
> >
> > Considering the performance of xdpdrv mode, I add another limit like ice
> > driver where the number of cpus should be within the twice of
> > MAX_XDP_QUEUES.
>
> Have you measured the impact on perf that this patch yields? On ice XDP
> ring pointers are propagated to Rx ring on setup path whereas you
> currently retrieve it per each xmitted frame.
>

Not yet. I have not found the proper environment to test the real
performance with different cases. At first, I thought this patch could
map different cpus to the same queues with the @tx_lock which would do
harm to the performance to some extent.

I decided to get rid of this description.

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
> >  drivers/net/ethernet/intel/ixgbe/ixgbe.h      | 11 +++++
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |  6 ++-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 63 ++++++++++++++++++++-------
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  | 15 ++++---
> >  4 files changed, 72 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > index a604552..466b2b0 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > @@ -82,6 +82,8 @@
> >  #define IXGBE_2K_TOO_SMALL_WITH_PADDING \
> >  ((NET_SKB_PAD + IXGBE_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IXGBE_RXBUFFER_2K))
> >
> > +DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
> > +
> >  static inline int ixgbe_compute_pad(int rx_buf_len)
> >  {
> >       int page_size, pad_size;
> > @@ -351,6 +353,7 @@ struct ixgbe_ring {
> >       };
> >       u16 rx_offset;
> >       struct xdp_rxq_info xdp_rxq;
> > +     spinlock_t tx_lock;     /* used in XDP mode */
> >       struct xsk_buff_pool *xsk_pool;
> >       u16 ring_idx;           /* {rx,tx,xdp}_ring back reference idx */
> >       u16 rx_buf_len;
> > @@ -772,6 +775,14 @@ struct ixgbe_adapter {
> >  #endif /* CONFIG_IXGBE_IPSEC */
> >  };
> >
> > +static inline int ixgbe_determine_xdp_cpu(int cpu)
> > +{
> > +     if (static_key_enabled(&ixgbe_xdp_locking_key))
> > +             return cpu % MAX_XDP_QUEUES;
> > +     else
> > +             return cpu;
> > +}
> > +
> >  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
> >  {
> >       switch (adapter->hw.mac.type) {
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > index 0218f6c..d6b58e1 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > @@ -299,7 +299,7 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
> >
> >  static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
> >  {
> > -     return adapter->xdp_prog ? nr_cpu_ids : 0;
> > +     return adapter->xdp_prog ? min_t(int, MAX_XDP_QUEUES, nr_cpu_ids) : 0;
>
> AFAIK nr_cpu_ids will give you the max possible cpus on the underlying
> system, maybe we should stick to num_online_cpus() instead?
>

Sure, I'll do that change. Maybe we should also stick to
num_online_cpus() in the function ixgbe_xdp_setup()?

> >  }
> >
> >  #define IXGBE_RSS_64Q_MASK   0x3F
> > @@ -947,6 +947,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
> >               ring->count = adapter->tx_ring_count;
> >               ring->queue_index = xdp_idx;
> >               set_ring_xdp(ring);
> > +             spin_lock_init(&ring->tx_lock);
> >
> >               /* assign ring to adapter */
> >               WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
> > @@ -1032,6 +1033,9 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
> >       adapter->q_vector[v_idx] = NULL;
> >       __netif_napi_del(&q_vector->napi);
> >
> > +     if (static_key_enabled(&ixgbe_xdp_locking_key))
> > +             static_branch_dec(&ixgbe_xdp_locking_key);
> > +
> >       /*
> >        * after a call to __netif_napi_del() napi may still be used and
> >        * ixgbe_get_stats64() might access the rings on this vector,
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > index 14aea40..4c94577 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> > @@ -165,6 +165,9 @@ static int ixgbe_notify_dca(struct notifier_block *, unsigned long event,
> >  MODULE_DESCRIPTION("Intel(R) 10 Gigabit PCI Express Network Driver");
> >  MODULE_LICENSE("GPL v2");
> >
> > +DEFINE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
> > +EXPORT_SYMBOL(ixgbe_xdp_locking_key);
> > +
> >  static struct workqueue_struct *ixgbe_wq;
> >
> >  static bool ixgbe_check_cfg_remove(struct ixgbe_hw *hw, struct pci_dev *pdev);
> > @@ -2422,13 +2425,14 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
> >               xdp_do_flush_map();
> >
> >       if (xdp_xmit & IXGBE_XDP_TX) {
> > -             struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> > +             int cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
> > +             struct ixgbe_ring *ring = adapter->xdp_ring[cpu];
> >
> > -             /* Force memory writes to complete before letting h/w
> > -              * know there are new descriptors to fetch.
> > -              */
> > -             wmb();
> > -             writel(ring->next_to_use, ring->tail);
> > +             if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +                     spin_lock(&ring->tx_lock);
> > +             ixgbe_xdp_ring_update_tail(ring);
> > +             if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +                     spin_unlock(&ring->tx_lock);
> >       }
> >
> >       u64_stats_update_begin(&rx_ring->syncp);
> > @@ -8539,21 +8543,33 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
> >  int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
> >                       struct xdp_frame *xdpf)
> >  {
> > -     struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> > +     struct ixgbe_ring *ring;
>
> RCT is being broken in here

Sorry, I have no idea about what the RCT is. Is that kind of format?
Does that mean I should change the position of those lines to make it
look better?

>
> >       struct ixgbe_tx_buffer *tx_buffer;
> >       union ixgbe_adv_tx_desc *tx_desc;
> >       u32 len, cmd_type;
> >       dma_addr_t dma;
> >       u16 i;
> > +     int cpu;
> > +     int ret;
>
> Ditto
>
> >
> >       len = xdpf->len;
> >
> > -     if (unlikely(!ixgbe_desc_unused(ring)))
> > -             return IXGBE_XDP_CONSUMED;
> > +     cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
> > +     ring = adapter->xdp_ring[cpu];
> > +
> > +     if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +             spin_lock(&ring->tx_lock);
> > +
> > +     if (unlikely(!ixgbe_desc_unused(ring))) {
> > +             ret = IXGBE_XDP_CONSUMED;
> > +             goto out;
> > +     }
> >
> >       dma = dma_map_single(ring->dev, xdpf->data, len, DMA_TO_DEVICE);
> > -     if (dma_mapping_error(ring->dev, dma))
> > -             return IXGBE_XDP_CONSUMED;
> > +     if (dma_mapping_error(ring->dev, dma)) {
> > +             ret = IXGBE_XDP_CONSUMED;
> > +             goto out;
> > +     }
> >
> >       /* record the location of the first descriptor for this packet */
> >       tx_buffer = &ring->tx_buffer_info[ring->next_to_use];
> > @@ -8590,7 +8606,11 @@ int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
> >       tx_buffer->next_to_watch = tx_desc;
> >       ring->next_to_use = i;
> >
> > -     return IXGBE_XDP_TX;
> > +     ret = IXGBE_XDP_TX;
> > +out:
> > +     if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +             spin_unlock(&ring->tx_lock);
> > +     return ret;
> >  }
> >
> >  netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
> > @@ -10130,8 +10150,13 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> >                       return -EINVAL;
> >       }
> >
> > -     if (nr_cpu_ids > MAX_XDP_QUEUES)
> > +     /* if the number of cpus is much larger than the maximum of queues,
> > +      * we should stop it and then return with NOMEM like before!
> > +      */
> > +     if (nr_cpu_ids > MAX_XDP_QUEUES * 2)
>
> I realized this macro is a bit confusing, maybe it would be better to
> prefix it with the driver name, so IXGBE_MAX_XDP_QS would make it clear
> what's the scope of it.
>

You're right. It would be much clearer.

> >               return -ENOMEM;
> > +     else if (nr_cpu_ids > MAX_XDP_QUEUES)
> > +             static_branch_inc(&ixgbe_xdp_locking_key);
> >
> >       old_prog = xchg(&adapter->xdp_prog, prog);
> >       need_reset = (!!prog != !!old_prog);
> > @@ -10201,6 +10226,7 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >       struct ixgbe_adapter *adapter = netdev_priv(dev);
> >       struct ixgbe_ring *ring;
> >       int nxmit = 0;
> > +     int cpu;
> >       int i;
> >
> >       if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
> > @@ -10209,10 +10235,12 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >       if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
> >               return -EINVAL;
> >
> > +     cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
>
> Actually it's not the cpu that you're determining, just a queue index in
> the xdp_rings array.
>
> Say that your running napi on cpu 72, so your function above will return
> you the 8 probably and that's the queue number you will pick and share
> with cpu 8.
>
> Can you rename this to ixgbe_determine_xdp_q_idx ?
>

Thanks. I'll do that.

> > +
> >       /* During program transitions its possible adapter->xdp_prog is assigned
> >        * but ring has not been configured yet. In this case simply abort xmit.
> >        */
> > -     ring = adapter->xdp_prog ? adapter->xdp_ring[smp_processor_id()] : NULL;
> > +     ring = adapter->xdp_prog ? adapter->xdp_ring[cpu] : NULL;
> >       if (unlikely(!ring))
> >               return -ENXIO;
> >
> > @@ -10229,8 +10257,13 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >               nxmit++;
> >       }
> >
> > -     if (unlikely(flags & XDP_XMIT_FLUSH))
> > +     if (unlikely(flags & XDP_XMIT_FLUSH)) {
> > +             if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +                     spin_lock(&ring->tx_lock);
> >               ixgbe_xdp_ring_update_tail(ring);
> > +             if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +                     spin_unlock(&ring->tx_lock);
> > +     }
> >
> >       return nxmit;
> >  }
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index b1d22e4..e9ce6c1 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -334,13 +334,14 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
> >               xdp_do_flush_map();
> >
> >       if (xdp_xmit & IXGBE_XDP_TX) {
> > -             struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> > -
> > -             /* Force memory writes to complete before letting h/w
> > -              * know there are new descriptors to fetch.
> > -              */
> > -             wmb();
> > -             writel(ring->next_to_use, ring->tail);
> > +             int cpu = ixgbe_determine_xdp_cpu(smp_processor_id());
> > +             struct ixgbe_ring *ring = adapter->xdp_ring[cpu];
> > +
> > +             if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +                     spin_lock(&ring->tx_lock);
> > +             ixgbe_xdp_ring_update_tail(ring);
>
> Good that ixgbe_xdp_ring_update_tail is reused, but probably this could be
> a common inlined function that is called on both normal and zc variants of
> clean rx irq routine.
>

Fine. I'll wrap them all together into one inline function.

> > +             if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +                     spin_unlock(&ring->tx_lock);
> >       }
> >
> >       u64_stats_update_begin(&rx_ring->syncp);
> > --
> > 1.8.3.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
