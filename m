Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDC33F89B9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 16:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C95696143A;
	Thu, 26 Aug 2021 14:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7U2cQF5djXER; Thu, 26 Aug 2021 14:05:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3B6976143C;
	Thu, 26 Aug 2021 14:05:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0558C1BF36F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 14:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7C9180E51
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 14:05:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Km9KY4YM2a5p for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 14:05:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com
 [IPv6:2607:f8b0:4864:20::22a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E0E5C80E26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 14:05:29 +0000 (UTC)
Received: by mail-oi1-x22a.google.com with SMTP id c79so4650446oib.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 07:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mFI6g9juc0kBnIDemV7lQ2adsjifo5ttPrJfgHBwY/4=;
 b=CEwiFq1Y3hA/QNNa+AKsCqfRFQyUImhYuADjDk9CHgUEKfukwvzr0C/EL2u3FEvRlq
 ICosjARFLY2NSnDDvcWxKiA6NwyPFe1IrUwauDUhsLCHNu4rFChuxULWgw+vzFOUCLXD
 K+mH0CZ1pw0Z0ZhsBlo9knkjhf/h67FXTVcgk1HgtKv/YVEwV0761ly8cU/H0/I6LuqV
 FQ5KYp3z0R5MVwsKcyLQ0BkZ9eHZAVXdPW2Xgu5cvRsW6ge0CoNFOlbY2r5qMlKBDRg4
 BQ1ztAABzF3c9Q3MAqo1nmZkaTe/xbcE35i26Fz94vOGsbbKCXH96/J1ZCagvElVO5jk
 gp4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mFI6g9juc0kBnIDemV7lQ2adsjifo5ttPrJfgHBwY/4=;
 b=jGSCypuzeJP3IPqMDwoDQ205Q+qENYTllyPj/LaQ58nl2TauKH3QhNnY5rGrf/g7DJ
 y0heuWfHAJxWJB/QVtW2SvuDf7R2DqPmJ+KLGP1vOMm+Y+qaIfvKKz9AafLBgtEg52VF
 vMnolAif3S0wTKQHRwJ4b6K7dfbKjA5Ncu+ghiCybXJHbob9PxN10czBO2wuRS4CTtjH
 aQA0dtCDwP4YUTjfwyFSbU3RnlCklBBl36zYobJgNIjV3Rdg9iRNqSdawJd2tcBX7hdh
 PrvBYcxuc6C3swNF5Z5mxucWaUCopQDUPZS6gD7Rk5odkMhmbeTJJ28FpL2Gi3khM6v0
 8mUQ==
X-Gm-Message-State: AOAM533yrwEHFYO8iDcRwjJiIYodVSNyGaRiHVhXVaotNibEpQxeQXzd
 9uPTGkD4lThUMkoyR0r3PeTCy1nxmo5ZpwM9lB0=
X-Google-Smtp-Source: ABdhPJwTbhHgqTom3MhN0DTcJCapRPfMYmj3RfFsie1JUHe65ba7hVxSF9BMnHyJI4N2QyKYFqC3H5F8/WCefkqDEwo=
X-Received: by 2002:aca:c2c6:: with SMTP id
 s189mr10993033oif.123.1629986728756; 
 Thu, 26 Aug 2021 07:05:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAL+tcoCrOc1L+Y_SeScYJXjn542GYvu9n7EMhN_75h-P4FQFoQ@mail.gmail.com>
 <20210826140101.7944-1-kerneljasonxing@gmail.com>
In-Reply-To: <20210826140101.7944-1-kerneljasonxing@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Thu, 26 Aug 2021 22:04:52 +0800
Message-ID: <CAL+tcoBgb18JwqFTTva0eWBEM2U38222OCbdKQxFmLOpiAm+eA@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 David Miller <davem@davemloft.net>, kuba@kernel.org, 
 ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org, 
 john.fastabend@gmail.com, andrii@kernel.org, kafai@fb.com, 
 songliubraving@fb.com, yhs@fb.com, kpsingh@kernel.org
Subject: Re: [Intel-wired-lan] [PATCH v3] ixgbe: let the xdpdrv work with
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
Cc: Shujin Li <lishujin@kuaishou.com>, Jason Xing <xingwanli@kuaishou.com>,
 netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 26, 2021 at 10:01 PM <kerneljasonxing@gmail.com> wrote:
>
> From: Jason Xing <xingwanli@kuaishou.com>
>
> Originally, ixgbe driver doesn't allow the mounting of xdpdrv if the
> server is equipped with more than 64 cpus online. So it turns out that
> the loading of xdpdrv causes the "NOMEM" failure.
>
> Actually, we can adjust the algorithm and then make it work, which has
> no harm at all, only if we set the maxmium number of xdp queues.
>

Sorry about the wrong v3 patch. I forgot to update the commit message.
So I'm going to send the v4 patch.

Jason

> Fixes: 33fdc82f08 ("ixgbe: add support for XDP_TX action")
> Co-developed-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Shujin Li <lishujin@kuaishou.com>
> Signed-off-by: Jason Xing <xingwanli@kuaishou.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h           | 15 ++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c       |  9 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 64 ++++++++++++++++------
>  .../net/ethernet/intel/ixgbe/ixgbe_txrx_common.h   |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c       |  9 +--
>  5 files changed, 73 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index a604552..5f7f181 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -82,6 +82,8 @@
>  #define IXGBE_2K_TOO_SMALL_WITH_PADDING \
>  ((NET_SKB_PAD + IXGBE_RXBUFFER_1536) > SKB_WITH_OVERHEAD(IXGBE_RXBUFFER_2K))
>
> +DECLARE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
> +
>  static inline int ixgbe_compute_pad(int rx_buf_len)
>  {
>         int page_size, pad_size;
> @@ -351,6 +353,7 @@ struct ixgbe_ring {
>         };
>         u16 rx_offset;
>         struct xdp_rxq_info xdp_rxq;
> +       spinlock_t tx_lock;     /* used in XDP mode */
>         struct xsk_buff_pool *xsk_pool;
>         u16 ring_idx;           /* {rx,tx,xdp}_ring back reference idx */
>         u16 rx_buf_len;
> @@ -375,7 +378,7 @@ enum ixgbe_ring_f_enum {
>  #define IXGBE_MAX_FCOE_INDICES         8
>  #define MAX_RX_QUEUES                  (IXGBE_MAX_FDIR_INDICES + 1)
>  #define MAX_TX_QUEUES                  (IXGBE_MAX_FDIR_INDICES + 1)
> -#define MAX_XDP_QUEUES                 (IXGBE_MAX_FDIR_INDICES + 1)
> +#define IXGBE_MAX_XDP_QS               (IXGBE_MAX_FDIR_INDICES + 1)
>  #define IXGBE_MAX_L2A_QUEUES           4
>  #define IXGBE_BAD_L2A_QUEUE            3
>  #define IXGBE_MAX_MACVLANS             63
> @@ -629,7 +632,7 @@ struct ixgbe_adapter {
>
>         /* XDP */
>         int num_xdp_queues;
> -       struct ixgbe_ring *xdp_ring[MAX_XDP_QUEUES];
> +       struct ixgbe_ring *xdp_ring[IXGBE_MAX_XDP_QS];
>         unsigned long *af_xdp_zc_qps; /* tracks AF_XDP ZC enabled rings */
>
>         /* TX */
> @@ -772,6 +775,14 @@ struct ixgbe_adapter {
>  #endif /* CONFIG_IXGBE_IPSEC */
>  };
>
> +static inline int ixgbe_determine_xdp_q_idx(int cpu)
> +{
> +       if (static_key_enabled(&ixgbe_xdp_locking_key))
> +               return cpu % IXGBE_MAX_XDP_QS;
> +       else
> +               return cpu;
> +}
> +
>  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
>  {
>         switch (adapter->hw.mac.type) {
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> index 0218f6c..884bf99 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> @@ -299,7 +299,10 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
>
>  static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
>  {
> -       return adapter->xdp_prog ? nr_cpu_ids : 0;
> +       int queues;
> +
> +       queues = min_t(int, IXGBE_MAX_XDP_QS, num_online_cpus());
> +       return adapter->xdp_prog ? queues : 0;
>  }
>
>  #define IXGBE_RSS_64Q_MASK     0x3F
> @@ -947,6 +950,7 @@ static int ixgbe_alloc_q_vector(struct ixgbe_adapter *adapter,
>                 ring->count = adapter->tx_ring_count;
>                 ring->queue_index = xdp_idx;
>                 set_ring_xdp(ring);
> +               spin_lock_init(&ring->tx_lock);
>
>                 /* assign ring to adapter */
>                 WRITE_ONCE(adapter->xdp_ring[xdp_idx], ring);
> @@ -1032,6 +1036,9 @@ static void ixgbe_free_q_vector(struct ixgbe_adapter *adapter, int v_idx)
>         adapter->q_vector[v_idx] = NULL;
>         __netif_napi_del(&q_vector->napi);
>
> +       if (static_key_enabled(&ixgbe_xdp_locking_key))
> +               static_branch_dec(&ixgbe_xdp_locking_key);
> +
>         /*
>          * after a call to __netif_napi_del() napi may still be used and
>          * ixgbe_get_stats64() might access the rings on this vector,
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 14aea40..a878f40 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -165,6 +165,9 @@ static int ixgbe_notify_dca(struct notifier_block *, unsigned long event,
>  MODULE_DESCRIPTION("Intel(R) 10 Gigabit PCI Express Network Driver");
>  MODULE_LICENSE("GPL v2");
>
> +DEFINE_STATIC_KEY_FALSE(ixgbe_xdp_locking_key);
> +EXPORT_SYMBOL(ixgbe_xdp_locking_key);
> +
>  static struct workqueue_struct *ixgbe_wq;
>
>  static bool ixgbe_check_cfg_remove(struct ixgbe_hw *hw, struct pci_dev *pdev);
> @@ -2422,13 +2425,10 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>                 xdp_do_flush_map();
>
>         if (xdp_xmit & IXGBE_XDP_TX) {
> -               struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> +               int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> +               struct ixgbe_ring *ring = adapter->xdp_ring[index];
>
> -               /* Force memory writes to complete before letting h/w
> -                * know there are new descriptors to fetch.
> -                */
> -               wmb();
> -               writel(ring->next_to_use, ring->tail);
> +               ixgbe_xdp_ring_update_tail_locked(ring);
>         }
>
>         u64_stats_update_begin(&rx_ring->syncp);
> @@ -6320,7 +6320,7 @@ static int ixgbe_sw_init(struct ixgbe_adapter *adapter,
>         if (ixgbe_init_rss_key(adapter))
>                 return -ENOMEM;
>
> -       adapter->af_xdp_zc_qps = bitmap_zalloc(MAX_XDP_QUEUES, GFP_KERNEL);
> +       adapter->af_xdp_zc_qps = bitmap_zalloc(IXGBE_MAX_XDP_QS, GFP_KERNEL);
>         if (!adapter->af_xdp_zc_qps)
>                 return -ENOMEM;
>
> @@ -8539,21 +8539,32 @@ static u16 ixgbe_select_queue(struct net_device *dev, struct sk_buff *skb,
>  int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
>                         struct xdp_frame *xdpf)
>  {
> -       struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
>         struct ixgbe_tx_buffer *tx_buffer;
>         union ixgbe_adv_tx_desc *tx_desc;
> +       struct ixgbe_ring *ring;
>         u32 len, cmd_type;
>         dma_addr_t dma;
> +       int index, ret;
>         u16 i;
>
>         len = xdpf->len;
>
> -       if (unlikely(!ixgbe_desc_unused(ring)))
> -               return IXGBE_XDP_CONSUMED;
> +       index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> +       ring = adapter->xdp_ring[index];
> +
> +       if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> +               spin_lock(&ring->tx_lock);
> +
> +       if (unlikely(!ixgbe_desc_unused(ring))) {
> +               ret = IXGBE_XDP_CONSUMED;
> +               goto out;
> +       }
>
>         dma = dma_map_single(ring->dev, xdpf->data, len, DMA_TO_DEVICE);
> -       if (dma_mapping_error(ring->dev, dma))
> -               return IXGBE_XDP_CONSUMED;
> +       if (dma_mapping_error(ring->dev, dma)) {
> +               ret = IXGBE_XDP_CONSUMED;
> +               goto out;
> +       }
>
>         /* record the location of the first descriptor for this packet */
>         tx_buffer = &ring->tx_buffer_info[ring->next_to_use];
> @@ -8590,7 +8601,11 @@ int ixgbe_xmit_xdp_ring(struct ixgbe_adapter *adapter,
>         tx_buffer->next_to_watch = tx_desc;
>         ring->next_to_use = i;
>
> -       return IXGBE_XDP_TX;
> +       ret = IXGBE_XDP_TX;
> +out:
> +       if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> +               spin_unlock(&ring->tx_lock);
> +       return ret;
>  }
>
>  netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
> @@ -10130,8 +10145,13 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>                         return -EINVAL;
>         }
>
> -       if (nr_cpu_ids > MAX_XDP_QUEUES)
> +       /* if the number of cpus is much larger than the maximum of queues,
> +        * we should stop it and then return with NOMEM like before.
> +        */
> +       if (num_online_cpus() > IXGBE_MAX_XDP_QS * 2)
>                 return -ENOMEM;
> +       else if (num_online_cpus() > IXGBE_MAX_XDP_QS)
> +               static_branch_inc(&ixgbe_xdp_locking_key);
>
>         old_prog = xchg(&adapter->xdp_prog, prog);
>         need_reset = (!!prog != !!old_prog);
> @@ -10195,12 +10215,22 @@ void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring)
>         writel(ring->next_to_use, ring->tail);
>  }
>
> +void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring)
> +{
> +       if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> +               spin_lock(&ring->tx_lock);
> +       ixgbe_xdp_ring_update_tail(ring);
> +       if (static_branch_unlikely(&ixgbe_xdp_locking_key))
> +               spin_unlock(&ring->tx_lock);
> +}
> +
>  static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>                           struct xdp_frame **frames, u32 flags)
>  {
>         struct ixgbe_adapter *adapter = netdev_priv(dev);
>         struct ixgbe_ring *ring;
>         int nxmit = 0;
> +       int index;
>         int i;
>
>         if (unlikely(test_bit(__IXGBE_DOWN, &adapter->state)))
> @@ -10209,10 +10239,12 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>         if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
>                 return -EINVAL;
>
> +       index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> +
>         /* During program transitions its possible adapter->xdp_prog is assigned
>          * but ring has not been configured yet. In this case simply abort xmit.
>          */
> -       ring = adapter->xdp_prog ? adapter->xdp_ring[smp_processor_id()] : NULL;
> +       ring = adapter->xdp_prog ? adapter->xdp_ring[index] : NULL;
>         if (unlikely(!ring))
>                 return -ENXIO;
>
> @@ -10230,7 +10262,7 @@ static int ixgbe_xdp_xmit(struct net_device *dev, int n,
>         }
>
>         if (unlikely(flags & XDP_XMIT_FLUSH))
> -               ixgbe_xdp_ring_update_tail(ring);
> +               ixgbe_xdp_ring_update_tail_locked(ring);
>
>         return nxmit;
>  }
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> index 2aeec78..f6426d9 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> @@ -23,6 +23,7 @@ void ixgbe_process_skb_fields(struct ixgbe_ring *rx_ring,
>  void ixgbe_rx_skb(struct ixgbe_q_vector *q_vector,
>                   struct sk_buff *skb);
>  void ixgbe_xdp_ring_update_tail(struct ixgbe_ring *ring);
> +void ixgbe_xdp_ring_update_tail_locked(struct ixgbe_ring *ring);
>  void ixgbe_irq_rearm_queues(struct ixgbe_adapter *adapter, u64 qmask);
>
>  void ixgbe_txrx_ring_disable(struct ixgbe_adapter *adapter, int ring);
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index b1d22e4..82d00e4 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -334,13 +334,10 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
>                 xdp_do_flush_map();
>
>         if (xdp_xmit & IXGBE_XDP_TX) {
> -               struct ixgbe_ring *ring = adapter->xdp_ring[smp_processor_id()];
> +               int index = ixgbe_determine_xdp_q_idx(smp_processor_id());
> +               struct ixgbe_ring *ring = adapter->xdp_ring[index];
>
> -               /* Force memory writes to complete before letting h/w
> -                * know there are new descriptors to fetch.
> -                */
> -               wmb();
> -               writel(ring->next_to_use, ring->tail);
> +               ixgbe_xdp_ring_update_tail_locked(ring);
>         }
>
>         u64_stats_update_begin(&rx_ring->syncp);
> --
> 1.8.3.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
