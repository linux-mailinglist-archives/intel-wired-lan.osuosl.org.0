Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60703E5CAA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Aug 2021 16:14:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51925402A8;
	Tue, 10 Aug 2021 14:14:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B_bfBSMmG2qh; Tue, 10 Aug 2021 14:14:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7813540357;
	Tue, 10 Aug 2021 14:14:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EC9F31BF2B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 12:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E570240145
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 12:39:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8mOEFulItvPB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Aug 2021 12:39:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 91BE840129
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 12:39:29 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id r6so3826161wrt.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Aug 2021 05:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZSRzoSA2t8YRZ5fOx5Fbc4xPbuPuUn7naOlSon+TzSs=;
 b=lWFwkmvNI3RaxR9qgSL8YegqndgVbubiGzxNg+N1f7nkcNmiJPERvkhcmBcqPpMYjj
 TtEIaURzPoeg5fvcwsHwujIHtMJipMHSMMpruHESKm2erGSPHcLxV1HPC0B7BMilRop4
 BQUIFWa1Jm4HZg9YAh7/5tKaHxyk+sdq+Xm7q1MRoA2KB3AVlAIwmvXs1tnwxrd0OXaG
 7CDfltKti2dnc6oARCe+bejx/fzw9bvvoPKgASTdOhvkSBhGGSNRz6GccR7yPNj/LQ75
 9J/oN995B/KFgWc2n5R3zSwFc8Mq4cWXWqH7aLdAG1yFMlvodXVPePj+fc7qXwI//dZD
 UdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZSRzoSA2t8YRZ5fOx5Fbc4xPbuPuUn7naOlSon+TzSs=;
 b=alW5FbbEgI6lZc0ZB7Sjz5mVg9GGcNrCTvwn9IQrb9Ch5YseUucoqKnw/iwfIiL+oK
 6Ylg1sFue+JLNCZYKBb6KKmpgnO4OG2fmdHBenRl1Om0S7ued3USWaI/9lk9D2/RznWx
 ySOUOmF4Ksh8iApr6oPFORNlJKEddSHdHnIfdFgDlurLsdXfZqE+M/ozup2pHlSOriXr
 rKnkOcQJHvkLqN5vv9maelju2/OtrAWuFaU1H0awRJPirNWrwaHwd8Ajlt4Ay54aa2RS
 cS8K+JN8ENtOqO2zPyJ7bf+s4JXxM5dw+igoqN5oR4VDMk45qKuBPMDKH8q++EoM7A8Y
 9lEw==
X-Gm-Message-State: AOAM531gMzt1W9fWf7SZNwVdUOlsnfI+kuP7o36EX4WnlAFh8lynV3nL
 xLmtKI4jSeypnNk8VofInl2Ni3UZfpBTQFPWbhk=
X-Google-Smtp-Source: ABdhPJycm2GkV6tG6c/VlZ4zPJikCSjwOWConK+i3Dja3Nyxa1Lzm0qFgRnV2GfpYZi6LSfiBF6TniOly6cBKI8kSUg=
X-Received: by 2002:adf:ef4b:: with SMTP id c11mr30465219wrp.35.1628599167553; 
 Tue, 10 Aug 2021 05:39:27 -0700 (PDT)
MIME-Version: 1.0
References: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
In-Reply-To: <6859503f7e3e6cd706bf01ef06f1cae8c0b0970b.1628449004.git.leonro@nvidia.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Tue, 10 Aug 2021 18:08:51 +0530
Message-ID: <CAJ2QiJLJk73RDS_XwQ0FY0ODq9qXbmiEZ2Y8Fkz9vVheK4he8g@mail.gmail.com>
To: Leon Romanovsky <leon@kernel.org>
X-Mailman-Approved-At: Tue, 10 Aug 2021 14:14:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: Set device as early
 as possible
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Simon Horman <simon.horman@corigine.com>, oss-drivers@corigine.com,
 Jerin Jacob <jerinj@marvell.com>, GR-everest-linux-l2@marvell.com,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 UNGLinuxDriver@microchip.com, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Shai Malin <smalin@marvell.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-staging@lists.linux.dev, rtoshniwal@marvell.com,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Jakub Kicinski <kuba@kernel.org>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Shai Malin <malin1024@gmail.com>,
 Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org,
 Omkar Kulkarni <okulkarni@marvell.com>, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Coiby Xu <coiby.xu@gmail.com>, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 netdev@vger.kernel.org, Derek Chickles <dchickles@marvell.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Leon,

On Mon, Aug 9, 2021 at 12:33 AM Leon Romanovsky <leon@kernel.org> wrote:
>
> From: Leon Romanovsky <leonro@nvidia.com>
>
> All kernel devlink implementations call to devlink_alloc() during
> initialization routine for specific device which is used later as
> a parent device for devlink_register().
>
> Such late device assignment causes to the situation which requires us to
> call to device_register() before setting other parameters, but that call
> opens devlink to the world and makes accessible for the netlink users.
>
> Any attempt to move devlink_register() to be the last call generates the
> following error due to access to the devlink->dev pointer.
>
> [    8.758862]  devlink_nl_param_fill+0x2e8/0xe50
> [    8.760305]  devlink_param_notify+0x6d/0x180
> [    8.760435]  __devlink_params_register+0x2f1/0x670
> [    8.760558]  devlink_params_register+0x1e/0x20
>
> The simple change of API to set devlink device in the devlink_alloc()
> instead of devlink_register() fixes all this above and ensures that
> prior to call to devlink_register() everything already set.
>
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>  .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  9 ++++---
>  .../net/ethernet/cavium/liquidio/lio_main.c   |  5 ++--
>  .../freescale/dpaa2/dpaa2-eth-devlink.c       |  5 ++--
>  .../hisilicon/hns3/hns3pf/hclge_devlink.c     |  4 +--
>  .../hisilicon/hns3/hns3vf/hclgevf_devlink.c   |  7 ++---
>  .../net/ethernet/huawei/hinic/hinic_devlink.c |  8 +++---
>  .../net/ethernet/huawei/hinic/hinic_devlink.h |  4 +--
>  .../net/ethernet/huawei/hinic/hinic_hw_dev.c  |  2 +-
>  .../net/ethernet/huawei/hinic/hinic_main.c    |  2 +-
>  drivers/net/ethernet/intel/ice/ice_devlink.c  |  4 +--
>  .../marvell/octeontx2/af/rvu_devlink.c        |  5 ++--
>  .../marvell/prestera/prestera_devlink.c       |  7 ++---
>  .../marvell/prestera/prestera_devlink.h       |  2 +-
>  .../ethernet/marvell/prestera/prestera_main.c |  2 +-
>  drivers/net/ethernet/mellanox/mlx4/main.c     |  4 +--
>  .../net/ethernet/mellanox/mlx5/core/devlink.c |  9 ++++---
>  .../net/ethernet/mellanox/mlx5/core/devlink.h |  4 +--
>  .../net/ethernet/mellanox/mlx5/core/main.c    |  4 +--
>  .../mellanox/mlx5/core/sf/dev/driver.c        |  2 +-
>  drivers/net/ethernet/mellanox/mlxsw/core.c    |  5 ++--
>  drivers/net/ethernet/mscc/ocelot_vsc7514.c    |  5 ++--
>  drivers/net/ethernet/netronome/nfp/nfp_main.c |  2 +-
>  .../net/ethernet/netronome/nfp/nfp_net_main.c |  2 +-
>  .../ethernet/pensando/ionic/ionic_devlink.c   |  4 +--
>  drivers/net/ethernet/qlogic/qed/qed_devlink.c |  5 ++--
>  drivers/net/ethernet/ti/am65-cpsw-nuss.c      |  4 +--
>  drivers/net/ethernet/ti/cpsw_new.c            |  4 +--
>  drivers/net/netdevsim/dev.c                   |  4 +--
>  drivers/ptp/ptp_ocp.c                         | 26 +++----------------
>  drivers/staging/qlge/qlge_main.c              |  5 ++--
>  include/net/devlink.h                         | 10 ++++---
>  net/core/devlink.c                            | 15 +++++------
>  net/dsa/dsa2.c                                |  5 ++--
>  33 files changed, 91 insertions(+), 94 deletions(-)
>

<snip>

>
> diff --git a/include/net/devlink.h b/include/net/devlink.h
> index ccbfb3a844aa..0236c77f2fd0 100644
> --- a/include/net/devlink.h
> +++ b/include/net/devlink.h
> @@ -1544,13 +1544,15 @@ struct net *devlink_net(const struct devlink *devlink);
>   * Drivers that operate on real HW must use devlink_alloc() instead.
>   */
>  struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
> -                                size_t priv_size, struct net *net);
> +                                size_t priv_size, struct net *net,
> +                                struct device *dev);
>  static inline struct devlink *devlink_alloc(const struct devlink_ops *ops,
> -                                           size_t priv_size)
> +                                           size_t priv_size,
> +                                           struct device *dev)
>  {
> -       return devlink_alloc_ns(ops, priv_size, &init_net);
> +       return devlink_alloc_ns(ops, priv_size, &init_net, dev);
>  }
> -int devlink_register(struct devlink *devlink, struct device *dev);
> +int devlink_register(struct devlink *devlink);
>  void devlink_unregister(struct devlink *devlink);
>  void devlink_reload_enable(struct devlink *devlink);
>  void devlink_reload_disable(struct devlink *devlink);
> diff --git a/net/core/devlink.c b/net/core/devlink.c
> index ee95eee8d0ed..d3b16dd9f64e 100644
> --- a/net/core/devlink.c
> +++ b/net/core/devlink.c
> @@ -8768,24 +8768,26 @@ static bool devlink_reload_actions_valid(const struct devlink_ops *ops)
>   *     @ops: ops
>   *     @priv_size: size of user private data
>   *     @net: net namespace
> + *     @dev: parent device
>   *
>   *     Allocate new devlink instance resources, including devlink index
>   *     and name.
>   */
>  struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
> -                                size_t priv_size, struct net *net)
> +                                size_t priv_size, struct net *net,
> +                                struct device *dev)
>  {
>         struct devlink *devlink;
>
> -       if (WARN_ON(!ops))
> -               return NULL;
> -
> +       WARN_ON(!ops || !dev);
>         if (!devlink_reload_actions_valid(ops))
>                 return NULL;
>
>         devlink = kzalloc(sizeof(*devlink) + priv_size, GFP_KERNEL);
>         if (!devlink)
>                 return NULL;
> +
> +       devlink->dev = dev;
>         devlink->ops = ops;
>         xa_init_flags(&devlink->snapshot_ids, XA_FLAGS_ALLOC);
>         write_pnet(&devlink->_net, net);
> @@ -8810,12 +8812,9 @@ EXPORT_SYMBOL_GPL(devlink_alloc_ns);
>   *     devlink_register - Register devlink instance
>   *
>   *     @devlink: devlink
> - *     @dev: parent device
>   */

This patch is converting devlink_alloc() to devlink_alloc_register().

There are 2 APIs: devlink_alloc() and devlink_register().
Both APIs can be used in a scenario,
              Where devlink_alloc() can be done by code written around
one struct dev and used by another struct dev.
or
This scenario is not even a valid scenario?

> -int devlink_register(struct devlink *devlink, struct device *dev)
> +int devlink_register(struct devlink *devlink)
>  {
> -       WARN_ON(devlink->dev);
> -       devlink->dev = dev;
>         mutex_lock(&devlink_mutex);
>         list_add_tail(&devlink->list, &devlink_list);
>         devlink_notify(devlink, DEVLINK_CMD_NEW);

Considering device registration has been moved to devlink_alloc().
Can the remaining code of devlink_register() be also moved in devlink_alloc()?

--pk
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
