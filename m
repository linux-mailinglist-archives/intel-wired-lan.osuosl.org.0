Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C8D3FD45A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Sep 2021 09:20:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 360DF60663;
	Wed,  1 Sep 2021 07:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1jjlLfx-0Uwc; Wed,  1 Sep 2021 07:20:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B89F660602;
	Wed,  1 Sep 2021 07:20:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 940251BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 07:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 81E4A40314
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 07:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rof8DcDlXH6x for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Sep 2021 07:20:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com
 [IPv6:2607:f8b0:4864:20::c2f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6448D402F5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Sep 2021 07:20:39 +0000 (UTC)
Received: by mail-oo1-xc2f.google.com with SMTP id
 b5-20020a4ac285000000b0029038344c3dso548391ooq.8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Sep 2021 00:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3IvzHq5Yny970U4/p+nZK1Gm1cRQFIkEdSa1vVhInf4=;
 b=XadFirG9eNdjPEIsJG5IYzvBe/O8gdJU/GVam4jJ/cjwohDbFxkgkg/+zqtRTPcZdI
 FurzPOwxcWUQWo6sRos/+UhByw61M8TvLd/7hSw4QZaWVz5+QhzBt9v8mhc+8gwcWoCy
 1Jbg4WCUOV93N6zQcpD3dM0kmmQgmwx6oEtFMvZbW2vdBgp1+0clMyZR+gEaARb999kl
 n8VoqaNHjWyVYSuGiUXTbn/B9bCNWwDaUM/sTCYlcfK4e+ulD/d5mAtzRnqXCpVQpP79
 VoXI56pF2NuqZgzYytJ294vPvWE4g2ZdQsY/JHt5d+yO5T6PQiBbVU5N3mTFMVKN5X6M
 22Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3IvzHq5Yny970U4/p+nZK1Gm1cRQFIkEdSa1vVhInf4=;
 b=lXRM3pLxr/WfuiQw1Z8yE1cbx2fBcgpmIu0w8MuKzK4Tcv5oJn4IWOLDtxhg9FgCz3
 qbtQ9yfyi4vGG7x5es8YUYqmMiEQB98Uyi/ormntiC0ZOXyGTURYgKpf3NyXiHh8svc2
 Uvzz4w6PAe9TfB7qz1lzN1BgeeL3C01KpYRuBxE2sxyPzwGQuYZ+iOlBag2JHJ2NmsYU
 neB1gRn+GbgWHuok/GOf1XLlVRXFqiB2rHTkfYHEyDH25bHmRiyPSKqR+vO1i6LDRLiw
 C9psTLXlVX6B/3iqQXPS7MFzqm5CyfEMgzMA7nnrVqvkjRBI7l2BBmRzmIvOVCYJAYDT
 hbww==
X-Gm-Message-State: AOAM5335xrmslSFLTyZphGluZF2Lzxvr76/9HO7QAhp5q9csErQvnOMc
 UUTwql8txkKxUZfnMLOSrylJJrd/6eyMTlZWOg4=
X-Google-Smtp-Source: ABdhPJwSuyZXf7PrN0uKFGDSn2mi4veYMn+eTnouqdK53qiYI6j0eJmq80mTIqEWkbF+sF46ABaJThej3NjhJldOX5o=
X-Received: by 2002:a4a:5742:: with SMTP id u63mr17926821ooa.87.1630480838323; 
 Wed, 01 Sep 2021 00:20:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210901044933.47230-1-kerneljasonxing@gmail.com>
 <7ca5bca6-16eb-4102-0b29-504edb80a21b@gmail.com>
In-Reply-To: <7ca5bca6-16eb-4102-0b29-504edb80a21b@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 1 Sep 2021 15:20:02 +0800
Message-ID: <CAL+tcoChbdau88Ge2A4DntnNHisEZtg8cBHd6J55LR0ZYCRNWQ@mail.gmail.com>
To: Eric Dumazet <eric.dumazet@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH v6] ixgbe: let the xdpdrv work with
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

On Wed, Sep 1, 2021 at 1:13 PM Eric Dumazet <eric.dumazet@gmail.com> wrote:
>
>
>
> On 8/31/21 9:49 PM, kerneljasonxing@gmail.com wrote:
> > From: Jason Xing <xingwanli@kuaishou.com>
> >
> > Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> > server is equipped with more than 64 cpus online. So it turns out that
> > the loading of xdpdrv causes the "NOMEM" failure.
> >
> > Actually, we can adjust the algorithm and then make it work through
> > mapping the current cpu to some xdp ring with the protect of @tx_lock.
> >
> > Here're some numbers before/after applying this patch with xdp-example
> > loaded on the eth0X:
> >
> > As client (tx path):
> >                      Before    After
> > TCP_STREAM send-64   734.14    714.20
> > TCP_STREAM send-128  1401.91   1395.05
> > TCP_STREAM send-512  5311.67   5292.84
> > TCP_STREAM send-1k   9277.40   9356.22 (not stable)
> > TCP_RR     send-1    22559.75  21844.22
> > TCP_RR     send-128  23169.54  22725.13
> > TCP_RR     send-512  21670.91  21412.56
> >
> > As server (rx path):
> >                      Before    After
> > TCP_STREAM send-64   1416.49   1383.12
> > TCP_STREAM send-128  3141.49   3055.50
> > TCP_STREAM send-512  9488.73   9487.44
> > TCP_STREAM send-1k   9491.17   9356.22 (not stable)
> > TCP_RR     send-1    23617.74  23601.60
> > ...
> >
> > Notice: the TCP_RR mode is unstable as the official document explaines.
> >
> > I tested many times with different parameters combined through netperf.
> > Though the result is not that accurate, I cannot see much influence on
> > this patch. The static key is places on the hot path, but it actually
> > shouldn't cause a huge regression theoretically.
> >
> > Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> > Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> > ---
> > v6:
> > - Move the declaration of static-key to the proper position (Test Robot)
> > - Add reported-by tag (Jason)
> > - Add more detailed performance test results (Jason)
> >
> > v5:
> > - Change back to nr_cpu_ids (Eric)
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
> > ---
> >  drivers/net/ethernet/intel/ixgbe/ixgbe.h           | 15 ++++-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c       |  9 ++-
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 64 ++++++++++++++++------
> >  .../net/ethernet/intel/ixgbe/ixgbe_txrx_common.h   |  1 +
> >  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       |  9 +--
> >  5 files changed, 73 insertions(+), 25 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > index a604552..1dcddea 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> > @@ -351,6 +351,7 @@ struct ixgbe_ring {
> >       };
> >       u16 rx_offset;
> >       struct xdp_rxq_info xdp_rxq;
> > +     spinlock_t tx_lock;     /* used in XDP mode */
> >       struct xsk_buff_pool *xsk_pool;
> >       u16 ring_idx;           /* {rx,tx,xdp}_ring back reference idx */
> >       u16 rx_buf_len;
> > @@ -375,11 +376,13 @@ enum ixgbe_ring_f_enum {
> >  #define IXGBE_MAX_FCOE_INDICES               8
> >  #define MAX_RX_QUEUES                        (IXGBE_MAX_FDIR_INDICES + 1)
> >  #define MAX_TX_QUEUES                        (IXGBE_MAX_FDIR_INDICES + 1)
> > -#define MAX_XDP_QUEUES                       (IXGBE_MAX_FDIR_INDICES + 1)
> > +#define IXGBE_MAX_XDP_QS             (IXGBE_MAX_FDIR_INDICES + 1)
> >  #define IXGBE_MAX_L2A_QUEUES         4
> >  #define IXGBE_BAD_L2A_QUEUE          3
> >  #define IXGBE_MAX_MACVLANS           63
> >
> > +DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
> > +
> >  struct ixgbe_ring_feature {
> >       u16 limit;      /* upper limit on feature indices */
> >       u16 indices;    /* current value of indices */
> > @@ -629,7 +632,7 @@ struct ixgbe_adapter {
> >
> >       /* XDP */
> >       int num_xdp_queues;
> > -     struct ixgbe_ring *xdp_ring[MAX_XDP_QUEUES];
> > +     struct ixgbe_ring *xdp_ring[IXGBE_MAX_XDP_QS];
> >       unsigned long *af_xdp_zc_qps; /* tracks AF_XDP ZC enabled rings */
> >
> >       /* TX */
> > @@ -772,6 +775,14 @@ struct ixgbe_adapter {
> >  #endif /* CONFIG_IXGBE_IPSEC */
> >  };
> >
> > +static inline int ixgbe_determine_xdp_q_idx(int cpu)
> > +{
> > +     if (static_key_enabled(&ixgbe_xdp_locking_key))
> > +             return cpu % IXGBE_MAX_XDP_QS;
> > +     else
> > +             return cpu;
> > +}
> > +
> >  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
> >  {
> >       switch (adapter->hw.mac.type) {
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > index 0218f6c..86b1116 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> > @@ -299,7 +299,10 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
> >
> >  static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
> >  {
> > -     return adapter->xdp_prog ? nr_cpu_ids : 0;
> > +     int queues;
> > +
> > +     queues = min_t(int, IXGBE_MAX_XDP_QS, nr_cpu_ids);
> > +     return adapter->xdp_prog ? queues : 0;
> >  }
> >
> >  #define IXGBE_RSS_64Q_MASK   0x3F
> > @@ -947,6 +950,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
> >               ring->count = adapter->tx_ring_count;
> >               ring->queue_index = xdp_idx;
> >               set_ring_xdp(ring);
> > +             spin_lock_init(&ring->tx_lock);
> >
> >               /* assign ring to adapter */
> >               WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
> > @@ -1032,6 +1036,9 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
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
> > index 14aea40..bec29f5 100644
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
> > @@ -2422,13 +2425,10 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
> >               xdp_do_flush_map();
> >
> >       if (xdp_xmit & IXGBE_XDP_TX) {
> > -             struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> > +             int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> > +             struct ixgbe_ring *ring = adapter->xdp_ring[index];
> >
> > -             /* Force memory writes to complete before letting h/w
> > -              * know there are new descriptors to fetch.
> > -              */
> > -             wmb();
> > -             writel(ring->next_to_use, ring->tail);
> > +             ixgbe_xdp_ring_update_tail_locked(ring);
> >       }
> >
> >       u64_stats_update_begin(&rx_ring->syncp);
> > @@ -6320,7 +6320,7 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
> >       if (ixgbe_init_rss_key(adapter))
> >               return -ENOMEM;
> >
> > -     adapter->af_xdp_zc_qps = bitmap_zalloc(MAX_XDP_QUEUES, GFP_KERNEL);
> > +     adapter->af_xdp_zc_qps = bitmap_zalloc(IXGBE_MAX_XDP_QS, GFP_KERNEL);
> >       if (!adapter->af_xdp_zc_qps)
> >               return -ENOMEM;
> >
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
> > @@ -8590,7 +8601,11 @@ int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
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
> > @@ -10130,8 +10145,13 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> >                       return -EINVAL;
> >       }
> >
> > -     if (nr_cpu_ids > MAX_XDP_QUEUES)
> > +     /* if the number of cpus is much larger than the maximum of queues,
> > +      * we should stop it and then return with NOMEM like before.
> > +      */
> > +     if (nr_cpu_ids > IXGBE_MAX_XDP_QS * 2)
> >               return -ENOMEM;
> > +     else if (nr_cpu_ids > IXGBE_MAX_XDP_QS)
> > +             static_branch_inc(&ixgbe_xdp_locking_key);
> >
> >       old_prog = xchg(&adapter->xdp_prog, prog);
> >       need_reset = (!!prog != !!old_prog);
> > @@ -10195,12 +10215,22 @@ void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring)
> >       writel(ring->next_to_use, ring->tail);
> >  }
> >
> > +void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring)
> > +{
> > +     if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +             spin_lock(&ring->tx_lock);
> > +     ixgbe_xdp_ring_update_tail(ring);
> > +     if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> > +             spin_unlock(&ring->tx_lock);
> > +}
>
> It is not clear why you use a pair of spin_lock()/unlock for each ixgbe_xmit_xdp_ring()
> call, plus one other for ixgbe_xdp_ring_update_tail()
>
> I guess this could be factorized to a single spin lock/unlock in ixgbe_xdp_xmit(),
> and thus not have this ixgbe_xdp_ring_update_tail_locked() helper ?
>

I agree with what you said in ixgbe_xdp_xmit(). Two pairs of
spin_lock/unlock could be factorized to a single one, which could
decrease the times of calling lock and unlock.

Thanks,
Jason

> > +
> >  static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >                         struct xdp_frame **frames, u32 flags)
> >  {
> >       struct ixgbe_adapter *adapter = netdev_priv(dev);
> >       struct ixgbe_ring *ring;
> >       int nxmit = 0;
> > +     int index;
> >       int i;
> >
> >       if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
> > @@ -10209,10 +10239,12 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >       if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
> >               return -EINVAL;
> >
> > +     index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> > +
> >       /* During program transitions its possible adapter->xdp_prog is assigned
> >        * but ring has not been configured yet. In this case simply abort xmit.
> >        */
> > -     ring = adapter->xdp_prog ? adapter->xdp_ring[smp_processor_id()] : NULL;
> > +     ring = adapter->xdp_prog ? adapter->xdp_ring[index] : NULL;
> >       if (unlikely(!ring))
> >               return -ENXIO;
> >
> > @@ -10230,7 +10262,7 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
> >       }
> >
> >       if (unlikely(flags & XDP_XMIT_FLUSH))
> > -             ixgbe_xdp_ring_update_tail(ring);
> > +             ixgbe_xdp_ring_update_tail_locked(ring);
> >
> >       return nxmit;
> >  }
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> > index 2aeec78..f6426d9 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> > @@ -23,6 +23,7 @@ void ixgbe_process_skb_fields(struct ixgbe_ring *rx_ring,
> >  void ixgbe_rx_skb(struct ixgbe_q_vector *q_vector,
> >                 struct sk_buff *skb);
> >  void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring);
> > +void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring);
> >  void ixgbe_irq_rearm_queues(struct ixgbe_adapter *adapter, u64 qmask);
> >
> >  void ixgbe_txrx_ring_disable(struct ixgbe_adapter *adapter, int ring);
> > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > index b1d22e4..82d00e4 100644
> > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> > @@ -334,13 +334,10 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
> >               xdp_do_flush_map();
> >
> >       if (xdp_xmit & IXGBE_XDP_TX) {
> > -             struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> > +             int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> > +             struct ixgbe_ring *ring = adapter->xdp_ring[index];
> >
> > -             /* Force memory writes to complete before letting h/w
> > -              * know there are new descriptors to fetch.
> > -              */
> > -             wmb();
> > -             writel(ring->next_to_use, ring->tail);
> > +             ixgbe_xdp_ring_update_tail_locked(ring);
> >       }
> >
> >       u64_stats_update_begin(&rx_ring->syncp);
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
