Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B3E41677D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Sep 2021 23:31:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAE8340425;
	Thu, 23 Sep 2021 21:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3y5dR67BLVMz; Thu, 23 Sep 2021 21:31:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E6D440249;
	Thu, 23 Sep 2021 21:31:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 295251BF317
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 21:12:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 135A16064B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 21:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=broadcom.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6BWJfHlnY9wY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Sep 2021 21:12:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EFC2C60624
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 21:12:17 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id i12so1204334ybq.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Sep 2021 14:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e4I0eibrZ4QXFLaZnyg/T68NEGU52nG0wW6n1XbQIjQ=;
 b=dG37ybSuZM/2PWO2WUAlCFTgei4CWvCR+/3V/ba5AqbouIgMtK6R/N88t2fL6e8ES2
 HXlfmDfLIxlNVt61DT2aeO3iHi1ERInV9PLlsO/SPeZ8qseDFM20DxIJnOXzZymLl5ma
 Sf4KMe1TIhD6jwCpVfOKcATIO++tuc9tkqgIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e4I0eibrZ4QXFLaZnyg/T68NEGU52nG0wW6n1XbQIjQ=;
 b=a5TOUMPgkZ4nOCybizYw8XYCyO4btn7cKPDQDHYwdf84IVnAkm2RUmdZOZnPo5Cxzq
 jYpboKRTdU5ZATJB/q967Aeg7FzlFgVTutK0PytiSsGjSuF7zrjT1kUsUg7k6gAWfgl+
 mm13055WgUl3NmUPeCx8owUGEC37h77H394HLpeIX32JVEtde2Efsjj5z+91w54ALGVi
 iKLeqEW2Hmwv8bSX1epPnSmJENCugRDQwTVCEdEpnZeHYGnQd0r+fcgu4eeNBrh3ppdp
 WTXu0JEhilMY5zQ2mwj6dUIiF6UCkqzwJBCWibl06ZDPDBjGja3nx4RyKuEgaypdldMW
 4jdQ==
X-Gm-Message-State: AOAM533qZo1xDaVM0tdZW6A8eeG1jSOtQeqFm7i+KnMDXgRTkEwdPcM+
 4sGQssAVSFxwcD+s5iQZOx+AFxNE+vct06JQ/brLEw==
X-Google-Smtp-Source: ABdhPJzPbZJuTOrMwImBU82x1iGNKaxl7ZrrpRIXcHLQEZ89VXGY0DTN1rpeXB3OFka4syEsC81GUEXozb35nSZ2MSQ=
X-Received: by 2002:a25:748c:: with SMTP id p134mr7788992ybc.361.1632431536689; 
 Thu, 23 Sep 2021 14:12:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1632420430.git.leonro@nvidia.com>
 <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
In-Reply-To: <e7708737fadf4fe6f152afc76145c728c201adad.1632420430.git.leonro@nvidia.com>
From: Edwin Peer <edwin.peer@broadcom.com>
Date: Thu, 23 Sep 2021 14:11:40 -0700
Message-ID: <CAKOOJTz4A2ER8MQE1dW27Spocds09SYafjeuLcFDJ0nL6mKyOw@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Mailman-Approved-At: Thu, 23 Sep 2021 21:31:15 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/6] bnxt_en: Check devlink
 allocation and registration status
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
> devlink is a software interface that doesn't depend on any hardware
> capabilities. The failure in SW means memory issues, wrong parameters,
> programmer error e.t.c.
>
> Like any other such interface in the kernel, the returned status of
> devlink APIs should be checked and propagated further and not ignored.
>
> Fixes: 4ab0c6a8ffd7 ("bnxt_en: add support to enable VF-representors")
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c         |  5 ++++-
>  drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c | 13 ++++++-------
>  drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h | 13 -------------
>  3 files changed, 10 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> index 037767b370d5..4c483fd91dbe 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> @@ -13370,7 +13370,9 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
>         }
>
>         bnxt_inv_fw_health_reg(bp);
> -       bnxt_dl_register(bp);
> +       rc = bnxt_dl_register(bp);
> +       if (rc)
> +               goto init_err_dl;
>
>         rc = register_netdev(dev);
>         if (rc)
> @@ -13390,6 +13392,7 @@ static int bnxt_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
>
>  init_err_cleanup:
>         bnxt_dl_unregister(bp);
> +init_err_dl:
>         bnxt_shutdown_tc(bp);
>         bnxt_clear_int_mode(bp);
>
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> index bf7d3c17049b..dc0851f709f5 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c
> @@ -134,7 +134,7 @@ void bnxt_dl_fw_reporters_create(struct bnxt *bp)
>  {
>         struct bnxt_fw_health *health = bp->fw_health;
>
> -       if (!bp->dl || !health)
> +       if (!health)
>                 return;
>
>         if (!(bp->fw_cap & BNXT_FW_CAP_HOT_RESET) || health->fw_reset_reporter)
> @@ -188,7 +188,7 @@ void bnxt_dl_fw_reporters_destroy(struct bnxt *bp, bool all)
>  {
>         struct bnxt_fw_health *health = bp->fw_health;
>
> -       if (!bp->dl || !health)
> +       if (!health)
>                 return;
>
>         if ((all || !(bp->fw_cap & BNXT_FW_CAP_HOT_RESET)) &&
> @@ -781,6 +781,7 @@ int bnxt_dl_register(struct bnxt *bp)
>  {
>         const struct devlink_ops *devlink_ops;
>         struct devlink_port_attrs attrs = {};
> +       struct bnxt_dl *bp_dl;
>         struct devlink *dl;
>         int rc;
>
> @@ -795,7 +796,9 @@ int bnxt_dl_register(struct bnxt *bp)
>                 return -ENOMEM;
>         }
>
> -       bnxt_link_bp_to_dl(bp, dl);
> +       bp->dl = dl;
> +       bp_dl = devlink_priv(dl);
> +       bp_dl->bp = bp;
>
>         /* Add switchdev eswitch mode setting, if SRIOV supported */
>         if (pci_find_ext_capability(bp->pdev, PCI_EXT_CAP_ID_SRIOV) &&
> @@ -826,7 +829,6 @@ int bnxt_dl_register(struct bnxt *bp)
>  err_dl_port_unreg:
>         devlink_port_unregister(&bp->dl_port);
>  err_dl_free:
> -       bnxt_link_bp_to_dl(bp, NULL);
>         devlink_free(dl);
>         return rc;
>  }
> @@ -835,9 +837,6 @@ void bnxt_dl_unregister(struct bnxt *bp)
>  {
>         struct devlink *dl = bp->dl;
>
> -       if (!dl)
> -               return;
> -

minor nit: There's obviously nothing incorrect about doing this (and
adding the additional error label in the cleanup code above), but bnxt
has generally adopted a style of having cleanup functions being
idempotent. It generally makes error handling simpler and less error
prone.

>         if (BNXT_PF(bp)) {
>                 bnxt_dl_params_unregister(bp);
>                 devlink_port_unregister(&bp->dl_port);
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
> index d889f240da2b..406dc655a5fc 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
> @@ -20,19 +20,6 @@ static inline struct bnxt *bnxt_get_bp_from_dl(struct devlink *dl)
>         return ((struct bnxt_dl *)devlink_priv(dl))->bp;
>  }
>
> -/* To clear devlink pointer from bp, pass NULL dl */
> -static inline void bnxt_link_bp_to_dl(struct bnxt *bp, struct devlink *dl)
> -{
> -       bp->dl = dl;
> -
> -       /* add a back pointer in dl to bp */
> -       if (dl) {
> -               struct bnxt_dl *bp_dl = devlink_priv(dl);
> -
> -               bp_dl->bp = bp;
> -       }
> -}
> -
>  #define NVM_OFF_MSIX_VEC_PER_PF_MAX    108
>  #define NVM_OFF_MSIX_VEC_PER_PF_MIN    114
>  #define NVM_OFF_IGNORE_ARI             164
> --
> 2.31.1
>

Reviewed-by: Edwin Peer <edwin.peer@broadcom.com>

Regards,
Edwin Peer
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
