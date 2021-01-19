Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F4692FC346
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Jan 2021 23:23:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF8B486DF1;
	Tue, 19 Jan 2021 22:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jaYc6kZgC4aH; Tue, 19 Jan 2021 22:23:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DD4086F64;
	Tue, 19 Jan 2021 22:23:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E1A91BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:23:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 695F184B88
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z9BqRllqgevy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 22:23:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 552C681EE6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 22:23:43 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id w18so42997746iot.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 14:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WMd4G6Vw+iokzlycIBszbMWea4hqYJQXqXCw+KiiIAo=;
 b=vONKQuqSeYLNbI0hx++5jXZ9CVRE4w+KkUnZYocBO8H0WtHln+qkHIzoY+EDJ0ck1P
 SO1GdgosqsPYY6kejJkbnFKYDuMwJmVGUOXtwjkiU8Xt9x2bPX0C0hOZabO5jJoB2Qim
 n85Qd2XJHrmEGFAgHjsOEQcT6RiydxnJ7uzSNjDn2O7DoRdAbRA7l9du4ueWlCkK+1Cb
 mTkPz4YYAC6B/bFqnPAfd7f4DHiesxoTy9sVQqxME137nxLS5Ug+EoKAuMP7i9hU2bOu
 YpzWeWS8JA21ZUrscWb0YogjsRanzFXc08DlNpRpQ0kcU8uqpj2f8QPyB9iQwLlmK2ZP
 Rahg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WMd4G6Vw+iokzlycIBszbMWea4hqYJQXqXCw+KiiIAo=;
 b=idmp1+N4nQ+hkXTPMe4pW9hypsQjKRZ9eU00lRiSO+DtDtk8QFMx32fIRpedfnGFOU
 /Nimuf0ygdevXsdMyRDWT736ksee+ElMWaNcZaGXZ7nwbfI5SebNaLbwQaT7ETRdEbY3
 AW6UwEIsWUr6dH0ZCTTFheSQyV9/VRz3dE+gf8QtCbG4FIY5hpl/ABk4ds+Ac8EYCTG6
 r3d/wxZoNGKMN8iTdlopHnXEm9Lkb9gJKaJ3XRDRr3p7yASmuf+K7nFu0nvLjtoAQKja
 6G9G/bMrVExlv51Hi9yi3AL2aQpaQGV6vxuZu0L0gh/vRIHxqSDrj7rTsk3kkPzKvSwT
 LTuw==
X-Gm-Message-State: AOAM532gN9SfHdpxwYO7P0uS6G5dG0a4ERAx25UA1vw5qC6WFGasEcyH
 Fb/EMGFKrCKYjEpCII3KCSkA6K212OQ5KUM1I1s=
X-Google-Smtp-Source: ABdhPJwQqyhnQXHUQZu0t9aXfZLVUu9i99yt3aQohHcdEu+bmP71nZHwmE+1DwfmULPKfKxtFsUpF3mGkdFdXl3dcao=
X-Received: by 2002:a05:6e02:929:: with SMTP id
 o9mr5146752ilt.42.1611095022624; 
 Tue, 19 Jan 2021 14:23:42 -0800 (PST)
MIME-Version: 1.0
References: <cover.1610777159.git.lucien.xin@gmail.com>
 <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
In-Reply-To: <34c9f5b8c31610687925d9db1f151d5bc87deba7.1610777159.git.lucien.xin@gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 19 Jan 2021 14:23:31 -0800
Message-ID: <CAKgT0UduX4M-N1Kyo-M2=05EO_rAs2c_CDrUwWMKk2oDOgxd2Q@mail.gmail.com>
To: Xin Long <lucien.xin@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] net: add inline function
 skb_csum_is_sctp
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
Cc: Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Neil Horman <nhorman@tuxdriver.com>, network dev <netdev@vger.kernel.org>,
 "linux-sctp @ vger . kernel . org" <linux-sctp@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 15, 2021 at 10:13 PM Xin Long <lucien.xin@gmail.com> wrote:
>
> This patch is to define a inline function skb_csum_is_sctp(), and
> also replace all places where it checks if it's a SCTP CSUM skb.
> This function would be used later in many networking drivers in
> the following patches.
>
> Suggested-by: Alexander Duyck <alexander.duyck@gmail.com>
> Signed-off-by: Xin Long <lucien.xin@gmail.com>

One minor nit. If you had to resubmit this I might move the ionic
driver code into a separate patch. However It can probably be accepted
as is.

Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>

> ---
>  drivers/net/ethernet/pensando/ionic/ionic_txrx.c | 2 +-
>  include/linux/skbuff.h                           | 5 +++++
>  net/core/dev.c                                   | 2 +-
>  3 files changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
> index ac4cd5d..162a1ff 100644
> --- a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
> +++ b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
> @@ -979,7 +979,7 @@ static int ionic_tx_calc_csum(struct ionic_queue *q, struct sk_buff *skb)
>                 stats->vlan_inserted++;
>         }
>
> -       if (skb->csum_not_inet)
> +       if (skb_csum_is_sctp(skb))
>                 stats->crc32_csum++;
>         else
>                 stats->csum++;
> diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
> index c9568cf..46f901a 100644
> --- a/include/linux/skbuff.h
> +++ b/include/linux/skbuff.h
> @@ -4621,6 +4621,11 @@ static inline void skb_reset_redirect(struct sk_buff *skb)
>  #endif
>  }
>
> +static inline bool skb_csum_is_sctp(struct sk_buff *skb)
> +{
> +       return skb->csum_not_inet;
> +}
> +
>  static inline void skb_set_kcov_handle(struct sk_buff *skb,
>                                        const u64 kcov_handle)
>  {
> diff --git a/net/core/dev.c b/net/core/dev.c
> index 0a31d4e..bbd306f 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -3617,7 +3617,7 @@ static struct sk_buff *validate_xmit_vlan(struct sk_buff *skb,
>  int skb_csum_hwoffload_help(struct sk_buff *skb,
>                             const netdev_features_t features)
>  {
> -       if (unlikely(skb->csum_not_inet))
> +       if (unlikely(skb_csum_is_sctp(skb)))
>                 return !!(features & NETIF_F_SCTP_CRC) ? 0 :
>                         skb_crc32c_csum_help(skb);
>
> --
> 2.1.0
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
