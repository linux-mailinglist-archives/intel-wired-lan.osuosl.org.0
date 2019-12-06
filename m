Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22EAB115661
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Dec 2019 18:26:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC05888502;
	Fri,  6 Dec 2019 17:25:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7selvyLRH5Rs; Fri,  6 Dec 2019 17:25:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F001C88587;
	Fri,  6 Dec 2019 17:25:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC2711BF303
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A8F0288B38
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wi3XvxDHPBLJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Dec 2019 09:03:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9DEC288268
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Dec 2019 09:03:14 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id j5so6468004qtq.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Dec 2019 01:03:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4tbKkekER333Twvb67f3cngnfvkAi6jTZ/GdJ9JgPf4=;
 b=X9co4B3rVbqTvYyDPm9FqucKm6+Q1DL49DK6Sy6cWrgSnw71hIbGMnfEe23XaBprnu
 oO1WzWFXwj2dG1DJ0N40WjuRYZUf81y7dcJ/ce2chdHtWq2HW26f7J+bvUJvDlE1rUGT
 0U1l/efPbNisPqZ1SPnr/MmC1piDj5OlSAdNyQcXMnIQlIloFgNG1qlsbYYI2e3A0Sy0
 WN3rFPIOUvfyp4F9PMsBuiIWpXRJL0E7e2WwJm0XonBoxkxl3u0q9eGFAr9JFF4uc4eU
 CyKEAyEUvF9scYRyg/mmVoT8DIJ0uPN3P54iJKpSvm1UFt5I9r97Iv6Orn+l9WQxKsFB
 S78Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4tbKkekER333Twvb67f3cngnfvkAi6jTZ/GdJ9JgPf4=;
 b=gFMauNyDQoqXiMBEkm3SWcpNoHuXmw88YZrE9YhDHZNDxuLFVN2HLTHksH0LSRQxth
 iXplIIy6UE1NPE7Ga/JAmF/FjJRk5LZdRxR2f0sEGF2GDQYG+09yNy25Oppa3tJjL4Mv
 S5qg/hZtE1qo3i6bF1rz4q3F3ae3xpU8mpWC0DOj/FoAis/6/fEe0dqweNDNa4+2aVyP
 1dPLg+TKYgtZUDYV00GeR5wqtPW9g8LVpHPIw1EN6njWpCbAJe4zi8pcwSAhrh5TOoIv
 xsvQuisC2BcMTa/OjVVTpw6q32g4/K+p18LSQ2To8HCfFVWoCrRCsq338CejFZjb7cmd
 YgwQ==
X-Gm-Message-State: APjAAAXHOSv1/3ES2wrKZv7c3IvywGSdrLGqA0Kx+0NrlGfw7RhMuJQw
 pe37nF3I5QyftWLeOWGpegpYFsHl8l/kQ8+9G8s=
X-Google-Smtp-Source: APXvYqxwa1tM15HsIA/KM2bFVG8a5aIU1GoDhuDHG1k00LBd1hJSPKslpC210A0c9MjxsPOIsYp0rhIJnm0ZpXMmSBE=
X-Received: by 2002:ac8:2310:: with SMTP id a16mr11592314qta.46.1575622993436; 
 Fri, 06 Dec 2019 01:03:13 -0800 (PST)
MIME-Version: 1.0
References: <20191205155028.28854-1-maximmi@mellanox.com>
 <20191205155028.28854-3-maximmi@mellanox.com>
In-Reply-To: <20191205155028.28854-3-maximmi@mellanox.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Fri, 6 Dec 2019 10:03:02 +0100
Message-ID: <CAJ+HfNhnDr7CA4b-y_9dQXjhraRY9hWuN_mGdfnHQ752EzHAmQ@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
X-Mailman-Approved-At: Fri, 06 Dec 2019 17:25:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf 2/4] net/mlx5e: Fix concurrency
 issues between config flow and XSK
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
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 5 Dec 2019 at 16:52, Maxim Mikityanskiy <maximmi@mellanox.com> wrote:
>
> After disabling resources necessary for XSK (the XDP program, channels,
> XSK queues), use synchronize_rcu to wait until the XSK wakeup function
> finishes, before freeing the resources.
>
> Suspend XSK wakeups during switching channels. If the XDP program is
> being removed, synchronize_rcu before closing the old channels to allow
> XSK wakeup to complete.
>
> Signed-off-by: Maxim Mikityanskiy <maximmi@mellanox.com>
> ---
>  drivers/net/ethernet/mellanox/mlx5/core/en.h  |  2 +-
>  .../net/ethernet/mellanox/mlx5/core/en/xdp.h  | 22 ++++++++-----------
>  .../mellanox/mlx5/core/en/xsk/setup.c         |  1 +
>  .../ethernet/mellanox/mlx5/core/en/xsk/tx.c   |  2 +-
>  .../net/ethernet/mellanox/mlx5/core/en_main.c | 19 +---------------
>  5 files changed, 13 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en.h b/drivers/net/ethernet/mellanox/mlx5/core/en.h
> index f1a7bc46f1c0..61084c3744ba 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
> @@ -760,7 +760,7 @@ enum {
>         MLX5E_STATE_OPENED,
>         MLX5E_STATE_DESTROYING,
>         MLX5E_STATE_XDP_TX_ENABLED,
> -       MLX5E_STATE_XDP_OPEN,
> +       MLX5E_STATE_XDP_ACTIVE,
>  };
>
>  struct mlx5e_rqt {
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h
> index 36ac1e3816b9..d7587f40ecae 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.h
> @@ -75,12 +75,18 @@ int mlx5e_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
>  static inline void mlx5e_xdp_tx_enable(struct mlx5e_priv *priv)
>  {
>         set_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
> +
> +       if (priv->channels.params.xdp_prog)
> +               set_bit(MLX5E_STATE_XDP_ACTIVE, &priv->state);
>  }
>
>  static inline void mlx5e_xdp_tx_disable(struct mlx5e_priv *priv)
>  {
> +       if (priv->channels.params.xdp_prog)
> +               clear_bit(MLX5E_STATE_XDP_ACTIVE, &priv->state);
> +
>         clear_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
> -       /* let other device's napi(s) see our new state */
> +       /* Let other device's napi(s) and XSK wakeups see our new state. */
>         synchronize_rcu();
>  }
>
> @@ -89,19 +95,9 @@ static inline bool mlx5e_xdp_tx_is_enabled(struct mlx5e_priv *priv)
>         return test_bit(MLX5E_STATE_XDP_TX_ENABLED, &priv->state);
>  }
>
> -static inline void mlx5e_xdp_set_open(struct mlx5e_priv *priv)
> -{
> -       set_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
> -}
> -
> -static inline void mlx5e_xdp_set_closed(struct mlx5e_priv *priv)
> -{
> -       clear_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
> -}
> -
> -static inline bool mlx5e_xdp_is_open(struct mlx5e_priv *priv)
> +static inline bool mlx5e_xdp_is_active(struct mlx5e_priv *priv)
>  {
> -       return test_bit(MLX5E_STATE_XDP_OPEN, &priv->state);
> +       return test_bit(MLX5E_STATE_XDP_ACTIVE, &priv->state);
>  }
>
>  static inline void mlx5e_xmit_xdp_doorbell(struct mlx5e_xdpsq *sq)
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c
> index 631af8dee517..c28cbae42331 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/setup.c
> @@ -144,6 +144,7 @@ void mlx5e_close_xsk(struct mlx5e_channel *c)
>  {
>         clear_bit(MLX5E_CHANNEL_STATE_XSK, c->state);
>         napi_synchronize(&c->napi);
> +       synchronize_rcu(); /* Sync with the XSK wakeup. */

Again, so my idea was that the read-lock can be done here, instead of
the generic AF_XDP code, since it's driver specific. Agree?

>
>         mlx5e_close_rq(&c->xskrq);
>         mlx5e_close_cq(&c->xskrq.cq);
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
> index 87827477d38c..fe2d596cb361 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/tx.c
> @@ -14,7 +14,7 @@ int mlx5e_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>         struct mlx5e_channel *c;
>         u16 ix;
>
> -       if (unlikely(!mlx5e_xdp_is_open(priv)))
> +       if (unlikely(!mlx5e_xdp_is_active(priv)))
>                 return -ENETDOWN;
>
>         if (unlikely(!mlx5e_qid_get_ch_if_in_group(params, qid, MLX5E_RQ_GROUP_XSK, &ix)))
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> index 09ed7f5f688b..fe1a42fa214b 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
> @@ -3006,12 +3006,9 @@ void mlx5e_timestamp_init(struct mlx5e_priv *priv)
>  int mlx5e_open_locked(struct net_device *netdev)
>  {
>         struct mlx5e_priv *priv = netdev_priv(netdev);
> -       bool is_xdp = priv->channels.params.xdp_prog;
>         int err;
>
>         set_bit(MLX5E_STATE_OPENED, &priv->state);
> -       if (is_xdp)
> -               mlx5e_xdp_set_open(priv);
>
>         err = mlx5e_open_channels(priv, &priv->channels);
>         if (err)
> @@ -3026,8 +3023,6 @@ int mlx5e_open_locked(struct net_device *netdev)
>         return 0;
>
>  err_clear_state_opened_flag:
> -       if (is_xdp)
> -               mlx5e_xdp_set_closed(priv);
>         clear_bit(MLX5E_STATE_OPENED, &priv->state);
>         return err;
>  }
> @@ -3059,8 +3054,6 @@ int mlx5e_close_locked(struct net_device *netdev)
>         if (!test_bit(MLX5E_STATE_OPENED, &priv->state))
>                 return 0;
>
> -       if (priv->channels.params.xdp_prog)
> -               mlx5e_xdp_set_closed(priv);
>         clear_bit(MLX5E_STATE_OPENED, &priv->state);
>
>         netif_carrier_off(priv->netdev);
> @@ -4377,16 +4370,6 @@ static int mlx5e_xdp_allowed(struct mlx5e_priv *priv, struct bpf_prog *prog)
>         return 0;
>  }
>
> -static int mlx5e_xdp_update_state(struct mlx5e_priv *priv)
> -{
> -       if (priv->channels.params.xdp_prog)
> -               mlx5e_xdp_set_open(priv);
> -       else
> -               mlx5e_xdp_set_closed(priv);
> -
> -       return 0;
> -}
> -
>  static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
>  {
>         struct mlx5e_priv *priv = netdev_priv(netdev);
> @@ -4421,7 +4404,7 @@ static int mlx5e_xdp_set(struct net_device *netdev, struct bpf_prog *prog)
>                 mlx5e_set_rq_type(priv->mdev, &new_channels.params);
>                 old_prog = priv->channels.params.xdp_prog;
>
> -               err = mlx5e_safe_switch_channels(priv, &new_channels, mlx5e_xdp_update_state);
> +               err = mlx5e_safe_switch_channels(priv, &new_channels, NULL);
>                 if (err)
>                         goto unlock;
>         } else {
> --
> 2.20.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
