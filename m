Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1059F41677E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 23:31:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9598584142;
	Thu, 23 Sep 2021 21:31:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnlKmEqojViu; Thu, 23 Sep 2021 21:31:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7980D840D0;
	Thu, 23 Sep 2021 21:31:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21BEA1BF317
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 21:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0799E40162
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 21:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=broadcom.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWkE5QYcAk7e for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 21:24:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com
 [IPv6:2607:f8b0:4864:20::b32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C0902400F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 21:24:15 +0000 (UTC)
Received: by mail-yb1-xb32.google.com with SMTP id f133so1274586yba.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 14:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4NFD50f4D8OM/NybzmgBINAYXaCydfgGt6oGYeUyWVM=;
 b=a01KcFjfZE09aHK//1COGS+XgNwDx2f7ZNE1rGu2p5KFmmN7BH3qDdeknK+KiHCmF8
 l8FgeRboJYMsUN2OmKIWF9+qycX0wTwfirMsltIADGBAYuiRn8JvgxQiJCksG6iyd6NC
 7VNJFgLAbEll/y3DRc7wUIlZ9cWX089qCdBZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4NFD50f4D8OM/NybzmgBINAYXaCydfgGt6oGYeUyWVM=;
 b=3+uH5fGXZbt/GQdSfY5Tlx3D8Gnpgn4tpFVKLiYz38KMOqtIl36vRt2JgMSzAGWxDI
 VbXN0xf5SFhxioxll2N5MoCr31Y7pw6T6JreeUPSPkLl+4E2oBNLBbvkub6jdJUBhyaO
 t5iKAmqhE6Cx6QqAl+5XbY6VJakaIselKyJPFeMjqoh08ZXJTPDEoaE7ggoLzQHbYtBv
 T9PdvaTJ1919CpiaM8mgskDybYqjqjaiROYuXrfoxalgrnNoF5RRakyL41Of6SZ7IVLa
 QUSG27NMaa251qq3uc4npDT8VvYL4tHpYbX+dpxkUnv9vT+47PWtBGVUvVvb+ImLPJGn
 fE9w==
X-Gm-Message-State: AOAM530S8Mjh3Hzo53NDjJzpf1tBu+UfsrAwiDPmRTGmNIJHFB3XRJE1
 34o3eYRJ0md4r6rxPk7CR+2gsdts10r55O2tzP24fg==
X-Google-Smtp-Source: ABdhPJyZItCG+2qGFbPGCky+CLR7O1xm1lchqIXJehrltvrT3SdTl4WvTGugSEg3MJCKJkRphhP5e6yaOzEESqTdIa0=
X-Received: by 2002:a25:81c5:: with SMTP id n5mr8514500ybm.276.1632432254531; 
 Thu, 23 Sep 2021 14:24:14 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1632420430.git.leonro@nvidia.com>
 <7b85ce0d2a5056af2c7e14dbd16c55d86aac659c.1632420431.git.leonro@nvidia.com>
In-Reply-To: <7b85ce0d2a5056af2c7e14dbd16c55d86aac659c.1632420431.git.leonro@nvidia.com>
From: Edwin Peer <edwin.peer@broadcom.com>
Date: Thu, 23 Sep 2021 14:23:38 -0700
Message-ID: <CAKOOJTzz1Pp9CYCWAO=gi3099xy2oBtdREp8iOftVzKqEC0hvQ@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Mailman-Approved-At: Thu, 23 Sep 2021 21:31:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/6] bnxt_en: Properly remove
 port parameter support
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
Cc: Igor Russkikh <irusskikh@marvell.com>, Alexander Lobakin <alobakin@pm.me>,
 Javed Hasan <jhasan@marvell.com>,
 Michal Kalderon <michal.kalderon@marvell.com>,
 Leon Romanovsky <leonro@nvidia.com>, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jiri Pirko <jiri@nvidia.com>, Jakub Kicinski <kuba@kernel.org>,
 Ariel Elior <aelior@marvell.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Vasundhara Volam <vasundhara-v.volam@broadcom.com>,
 Sathya Perla <sathya.perla@broadcom.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Saurav Kashyap <skashyap@marvell.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 netdev <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 GR-QLogic-Storage-Upstream@marvell.com,
 "David S . Miller" <davem@davemloft.net>, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Sep 23, 2021 at 11:13 AM Leon Romanovsky <leon@kernel.org> wrote:
>
> From: Leon Romanovsky <leonro@nvidia.com>
>
> This driver doesn't have any port parameters and registers
> devlink port parameters with empty table. Remove the useless
> calls to devlink_port_params_register and _unregister.
>
> Fixes: da203dfa89ce ("Revert "devlink: Add a generic wake_on_lan port parameter"")
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c | 13 -------------
>  1 file changed, 13 deletions(-)
>
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> index dc0851f709f5..ed95e28d60ef 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> @@ -736,9 +736,6 @@ static const struct devlink_param bnxt_dl_params[] = {
>                              NULL),
>  };
>
> -static const struct devlink_param bnxt_dl_port_params[] = {
> -};
> -
>  static int bnxt_dl_params_register(struct bnxt *bp)
>  {
>         int rc;
> @@ -753,14 +750,6 @@ static int bnxt_dl_params_register(struct bnxt *bp)
>                             rc);
>                 return rc;
>         }
> -       rc = devlink_port_params_register(&bp->dl_port, bnxt_dl_port_params,
> -                                         ARRAY_SIZE(bnxt_dl_port_params));
> -       if (rc) {
> -               netdev_err(bp->dev, "devlink_port_params_register failed\n");
> -               devlink_params_unregister(bp->dl, bnxt_dl_params,
> -                                         ARRAY_SIZE(bnxt_dl_params));
> -               return rc;
> -       }
>         devlink_params_publish(bp->dl);
>
>         return 0;
> @@ -773,8 +762,6 @@ static void bnxt_dl_params_unregister(struct bnxt *bp)
>
>         devlink_params_unregister(bp->dl, bnxt_dl_params,
>                                   ARRAY_SIZE(bnxt_dl_params));
> -       devlink_port_params_unregister(&bp->dl_port, bnxt_dl_port_params,
> -                                      ARRAY_SIZE(bnxt_dl_port_params));
>  }
>
>  int bnxt_dl_register(struct bnxt *bp)
> --
> 2.31.1
>

Ah, looks like the revert in da203dfa89ce wasn't complete. Thanks for
the cleanup.

Reviewed-by: Edwin Peer <edwin.peer@broadcom.com>

Regards,
Edwin Peer
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
