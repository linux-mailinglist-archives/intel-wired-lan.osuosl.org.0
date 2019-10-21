Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A489DF474
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Oct 2019 19:42:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 929D220390;
	Mon, 21 Oct 2019 17:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g81UaGUKbylU; Mon, 21 Oct 2019 17:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E660221AB;
	Mon, 21 Oct 2019 17:42:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 54A801BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2019 17:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4CE32877ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2019 17:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cAhcN9LL6VVa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Oct 2019 17:42:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17CDA877E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2019 17:42:30 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id c12so12850196ilm.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Oct 2019 10:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8aAPl0SbuxRa1HUSsK//Fu7r+rsqWWKYDsaYjba2vK8=;
 b=lIzy+xDPEbxOTPgo3uzn7N8Im5K0MhYjg1M0KF0VX6A6n9F0rZSu+5sy9zjyUDiWwh
 jpDDGm8LivA8825EgHHudOHUIqR9p4jrc/ncdFPYkdRu8qshIIJl/xHHCNwNHmNocXRS
 sLF6ceZ0r8CYcZ6OdXIjkrE4tyY+C8LVy9eZFVesEQdBMGUcWkcNBhl14Ij78+9GV3aY
 YlSdG8Jy8Fu1hgs4SiOfwsLadDx76TadnHK3fwERdfeTa4V8wYyPyM+9mdMBPHA05Qaz
 ODOmoid5ajSeIx6epOkmhruhHPKXaXsnjcoTrLKYrs8PqdCD4c0ZzaLJijptmouUHjEz
 /c5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8aAPl0SbuxRa1HUSsK//Fu7r+rsqWWKYDsaYjba2vK8=;
 b=WR9+H1HO7q0yptwz4NwcXGa47m9DPkfZiejRW/dOTR5jMEDzMdht35CnUenFp1j6Rf
 Q4YcO2iBhbNdyfk7v8+5lzDCUrD8D0h+yub2NWrLGqDpvu+xLtGT0Xq6I2BnQ7bx5WDP
 Y7FCVorNN18vm/y9CGhBYngM9Z1kesnZpnf4nOXA/4rdQ+p9WFX4I8TM9DouR5EdljO3
 mPjiE/uqtJfsEwFwnlKQ1q/66KGVj9D9+AAvO47TxOYKJy+2Kl9qUh1VHnoUvqcCS+CG
 qJdAoj93g/02qAl+A2IIJTNMP6iWmUPqXBPbPTyfvgX8IKY9Xj7v55zV/lw8irAJu03y
 /Weg==
X-Gm-Message-State: APjAAAUp8FS0VMV7zSQXy5GHrmw3wNwkhwTIL7QdW7zrqKZ49XplrW8l
 YNHH5dUlIADqfR55js3ILs4zyZn0phSrpR4MK/8=
X-Google-Smtp-Source: APXvYqwUMUM8xHyDpVytSJUd5V6/tBpeQ32KQMaiShBwWphdz6dzZgfKC4S9jV0ccAqMBtj65ukvsTSOI8n3l+Z3ook=
X-Received: by 2002:a92:8c1b:: with SMTP id o27mr27761240ild.42.1571679748980; 
 Mon, 21 Oct 2019 10:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191021163959.17511-1-bob.beckett@collabora.com>
In-Reply-To: <20191021163959.17511-1-bob.beckett@collabora.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Mon, 21 Oct 2019 10:42:17 -0700
Message-ID: <CAKgT0UfKKUnb97Wh7kwBpVsZzF2Ust5vg1SSNOeJtjz0jE8fhA@mail.gmail.com>
To: Robert Beckett <bob.beckett@collabora.com>
Subject: Re: [Intel-wired-lan] [PATCH] igb: dont drop packets if rx flow
 control is enabled
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
Cc: Netdev <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 21, 2019 at 9:44 AM Robert Beckett
<bob.beckett@collabora.com> wrote:
>
> If rx flow control has been enabled (via autoneg or forced), packets
> should not be dropped due to rx descriptor ring exhaustion. Instead
> pause frames should be used to apply back pressure.
>
> Move SRRCTL setup to its own function for easy reuse and only set drop
> enable bit if rx flow control is not enabled.
>
> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h         |  1 +
>  drivers/net/ethernet/intel/igb/igb_ethtool.c |  8 ++++
>  drivers/net/ethernet/intel/igb/igb_main.c    | 46 ++++++++++++++------
>  3 files changed, 41 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index ca54e268d157..49b5fa9d4783 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -661,6 +661,7 @@ void igb_configure_tx_ring(struct igb_adapter *, struct igb_ring *);
>  void igb_configure_rx_ring(struct igb_adapter *, struct igb_ring *);
>  void igb_setup_tctl(struct igb_adapter *);
>  void igb_setup_rctl(struct igb_adapter *);
> +void igb_setup_srrctl(struct igb_adapter *, struct igb_ring *);
>  netdev_tx_t igb_xmit_frame_ring(struct sk_buff *, struct igb_ring *);
>  void igb_alloc_rx_buffers(struct igb_ring *, u16);
>  void igb_update_stats(struct igb_adapter *);
> diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> index 5acf3b743876..3c951f363d0e 100644
> --- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
> +++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
> @@ -396,6 +396,7 @@ static int igb_set_pauseparam(struct net_device *netdev,
>         struct igb_adapter *adapter = netdev_priv(netdev);
>         struct e1000_hw *hw = &adapter->hw;
>         int retval = 0;
> +       int i;
>
>         /* 100basefx does not support setting link flow control */
>         if (hw->dev_spec._82575.eth_flags.e100_base_fx)
> @@ -428,6 +429,13 @@ static int igb_set_pauseparam(struct net_device *netdev,
>
>                 retval = ((hw->phy.media_type == e1000_media_type_copper) ?
>                           igb_force_mac_fc(hw) : igb_setup_link(hw));
> +
> +               /* Make sure SRRCTL considers new fc settings for each ring */
> +               for (i = 0; i < adapter->num_rx_queues; i++) {
> +                       struct igb_ring *ring = adapter->rx_ring[i];
> +
> +                       igb_setup_srrctl(adapter, ring);
> +               }
>         }

So one issue here is that this is going through and toggling things in
the case that SR-IOV is enabled. We likely should not be doing that.
If SR-IOV is enabled we should always have the DROP_EN bit set.
Otherwise we run the risk of soft-locking the part since a single
stopped Rx ring can cause both Tx and Rx to fail due to internal
switching of the part.

>
>         clear_bit(__IGB_RESETTING, &adapter->state);
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index ffaa6e031632..6b04c961c6e4 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4488,6 +4488,36 @@ static inline void igb_set_vmolr(struct igb_adapter *adapter,
>         wr32(E1000_VMOLR(vfn), vmolr);
>  }
>
> +/**
> + *  igb_setup_srrctl - configure the split and replication receive control
> + *                    registers
> + *  @adapter: Board private structure
> + *  @ring: receive ring to be configured
> + **/
> +void igb_setup_srrctl(struct igb_adapter *adapter, struct igb_ring *ring)
> +{
> +       struct e1000_hw *hw = &adapter->hw;
> +       int reg_idx = ring->reg_idx;
> +       u32 srrctl;
> +
> +       srrctl = IGB_RX_HDR_LEN << E1000_SRRCTL_BSIZEHDRSIZE_SHIFT;
> +       if (ring_uses_large_buffer(ring))
> +               srrctl |= IGB_RXBUFFER_3072 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
> +       else
> +               srrctl |= IGB_RXBUFFER_2048 >> E1000_SRRCTL_BSIZEPKT_SHIFT;
> +       srrctl |= E1000_SRRCTL_DESCTYPE_ADV_ONEBUF;
> +       if (hw->mac.type >= e1000_82580)
> +               srrctl |= E1000_SRRCTL_TIMESTAMP;
> +       /* Only set Drop Enable if we are supporting multiple queues
> +        * and rx flow control is disabled
> +        */
> +       if (!(hw->fc.current_mode & e1000_fc_rx_pause) &&
> +           (adapter->vfs_allocated_count || adapter->num_rx_queues > 1))
> +               srrctl |= E1000_SRRCTL_DROP_EN;
> +
> +       wr32(E1000_SRRCTL(reg_idx), srrctl);
> +}

I would recommend making the criteria that either you have VFs
allocated or more than one queue and flow control enabled. In the
SR-IOV case I would never recommend letting any Rx queue not have the
DROP_EN bit set. The reason being that Tx can be stopped if it is
waiting on the Rx FIFO to become available for a frame that must be
switched from Tx to Rx.

Also, from everything I have seen this can negatively impact
performance as one overused queue can drag down the performance for
all other queues.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
