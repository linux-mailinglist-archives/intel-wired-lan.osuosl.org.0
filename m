Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9BB63ADD2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:33:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C7E4817D3;
	Mon, 28 Nov 2022 16:33:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C7E4817D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653188;
	bh=zSuVXGKBDg4ySUs3w8hyICF3SU88v3PV1ZSk8qhZDOI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=geJLCNJzk/GezPcgMx+p0n286/URRwao77/y1XIAI4Sj5bP1t26fX7EbsDy4zht8N
	 vY+qy6VOiKPMPXRlz4lK/wRhwZoZXNboWLEcFYNAZr2e9zf46K7PWeswYRR283hL/R
	 /K0IslY6rcQ+mqhFS8g2teGQR0X1sbe8LGBgtvhBODjHGyyuVLNtuXjhMU24VO9daH
	 S6dy002jiu8d6AXNUxUxVuPUYujQzxyiC6fT36hhMCpS/39EyUTfvGAk7obPJJ6H8D
	 oPHUBBTzyREoq9FyGrk8J5J/l+ciArq8/QnSTkXfpR5hDDWGXsLDSGIXu4jzNYKj/J
	 Mjd5VZQpJ58/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sSckhgHQKitD; Mon, 28 Nov 2022 16:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F25E81421;
	Mon, 28 Nov 2022 16:33:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F25E81421
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 762EC1BF360
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4BDE641522
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BDE641522
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfNimCjaWesa for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Nov 2022 04:16:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5BE541523
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5BE541523
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 04:16:01 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id jn7so8988144plb.13
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 20:16:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=fftJz4AB+rFDwIMwIlKqAAN7H0L4lfd82kzQzOVU4Gg=;
 b=F1m9saBIYR2zWgUC2iyPz6gMYEJZ8JzJeCIpCjfdcMrZYyTyRBvpQcleL3VV7g1TRw
 a8TSnAfNeJLN5A1goeviJWLfKbOH7D7Mh3uMsFUmO1Swp5yoUbNRTf4NG/IGUDTb/re4
 N0FaF5HkGG3HzUPBxjxZeqbmGckdJqQdFGq8NCgGWWi3fg8kG/jQv1c5fCPfMCsh1AIB
 pqjtUwnIVosW+MrgHUjwnVmOfJByMUmo0lK3nn8rfaTu3wZB1G8iK4KUGWG+KgEbQhvT
 rLiWS4eztGaYJiO/Cj8ZN4/NVBO0hoq3BqbPui9OQ2qQC/XI8++jA6WQaOLn3BaeA2xS
 WSbw==
X-Gm-Message-State: ANoB5pnVhmBn4YHVyO54xw5+8hjewr/LU+S/iaPtmY05TV9pn1OwonDE
 tiCjvZ/avnRFJ41MA0xjH78=
X-Google-Smtp-Source: AA0mqf4ciOZDTvidLPv1soaNH75grQPJ6cjfMpmq5sf8Q0v0sGYGoZlfFiaAPKvlgjSYeKj7BHNUpw==
X-Received: by 2002:a17:902:bb84:b0:184:e4db:e3e with SMTP id
 m4-20020a170902bb8400b00184e4db0e3emr33849618pls.47.1669608961120; 
 Sun, 27 Nov 2022 20:16:01 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 z5-20020aa79f85000000b0056bbebbcafbsm6927107pfr.100.2022.11.27.20.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 20:16:00 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Mon, 28 Nov 2022 13:15:42 +0900
Message-Id: <20221128041545.3170897-1-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fftJz4AB+rFDwIMwIlKqAAN7H0L4lfd82kzQzOVU4Gg=;
 b=OiUcbYE7eSGDuCBF/80zSFenq+kBVmjsl2Yg5JZ+Pp6tiF5N78hJXPnTNs7AVh9j5N
 gjqHsL9ezu7FdIbVhHPZ56PW7Tp31ho8YcU0DNkqFTQYxVM8uqQJ4SzrvvBzeHiXFHQm
 Ud70Zes85hJ+borYwZnXzyrlYz4UCHpteTkwNkkBeYWkSN0X2vRr/oX/xRtAVvdFWIoK
 D/8tBS418Nvkioi3IZhz46WRQiwBPSShJgeaWV6qpGB7Ti7LC9yDBbCqF+/vS12Lyn4+
 8izeF6ysCcgaK2uCRieclRJvKLx3lYRR3hCSN1VrIsBqe6C6+jIQKlssVVHNfSsG2/T8
 LMXA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=OiUcbYE7
Subject: [Intel-wired-lan] [PATCH net-next v4 0/3] net: devlink: return the
 driver name in devlink_nl_info_fill
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
Cc: Andrew Lunn <andrew@lunn.ch>, Shijith Thotton <sthotton@marvell.com>,
 Simon Horman <simon.horman@corigine.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Eric Dumazet <edumazet@google.com>, Jerin Jacob <jerinj@marvell.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>, Ioana Ciornei <ioana.ciornei@nxp.com>,
 drivers@pensando.io, Linu Cherian <lcherian@marvell.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Shalom Toledo <shalomt@mellanox.com>,
 Srujana Challa <schalla@marvell.com>, Minghao Chi <chi.minghao@zte.com.cn>,
 Hao Chen <chenhao288@hisilicon.com>,
 Guangbin Huang <huangguangbin2@huawei.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Jiri Pirko <jiri@mellanox.com>, Michael Chan <michael.chan@broadcom.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Petr Machata <petrm@nvidia.com>,
 Salil Mehta <salil.mehta@huawei.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Manish Chopra <manishc@marvell.com>, Boris Brezillon <bbrezillon@kernel.org>,
 oss-drivers@corigine.com, Vadim Pasternak <vadimp@mellanox.com>,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 linux-crypto@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The driver name is available in device_driver::name. Right now,
drivers still have to report this piece of information themselves in
their devlink_ops::info_get callback function.

The goal of this series is to have the devlink core to report this
information instead of the drivers.

The first patch fulfills the actual goal of this series: modify
devlink core to report the driver name and clean-up all drivers. Both
have to be done in an atomic change to avoid attribute duplication.

The second patch removes the devlink_info_driver_name_put() function
to prevent future drivers from reporting the driver name themselves.

Finally, the third and last patch allows the core to call
devlink_nl_info_fill() even if the devlink_ops::info_get() callback is
NULL. This allows to do further more clean up in the drivers.
---
* Changelog *

v3 -> v4

  * Ido pointed out that the mlxsw did not need to be fixed:
    https://lore.kernel.org/netdev/Y4ONgD4dAj8yU2%2F+@shredder/
    Remove the first two patches from the series.

v2 -> v3

  * [PATCH 3/5] remove the call to devlink_info_driver_name_put() in
    mlxsw driver as well (this was missing in v2, making the build
    fail... sorry for the noise).

  * add additional people in CC as pointed by netdev patchwork CI:
    https://patchwork.kernel.org/project/netdevbpf/list/?series=699451

  * use the "Link:" prefix before URL to silence checkpatch's line
    length warning.


RFC v1 -> v2

  * drop the RFC tag

  * big rework following the discussion on RFC:
    https://lore.kernel.org/netdev/20221122154934.13937-1-mailhol.vincent@wanadoo.fr/
    Went from one patch to a series of five patches:

  * drop the idea to report the USB serial number following Greg's
    comment:
    https://lore.kernel.org/linux-usb/Y3+VfNdt%2FK7UtRcw@kroah.com/


Vincent Mailhol (3):
  net: devlink: let the core report the driver name instead of the
    drivers
  net: devlink: remove devlink_info_driver_name_put()
  net: devlink: make the devlink_ops::info_get() callback optional

 .../marvell/octeontx2/otx2_cpt_devlink.c      |  4 ---
 drivers/net/dsa/hirschmann/hellcreek.c        |  5 ---
 drivers/net/dsa/mv88e6xxx/devlink.c           |  5 ---
 drivers/net/dsa/sja1105/sja1105_devlink.c     | 12 ++-----
 .../net/ethernet/broadcom/bnxt/bnxt_devlink.c |  4 ---
 .../freescale/dpaa2/dpaa2-eth-devlink.c       | 11 +-----
 .../ethernet/fungible/funeth/funeth_devlink.c |  7 ----
 .../hisilicon/hns3/hns3pf/hclge_devlink.c     |  5 ---
 .../hisilicon/hns3/hns3vf/hclgevf_devlink.c   |  5 ---
 drivers/net/ethernet/intel/ice/ice_devlink.c  |  6 ----
 .../marvell/octeontx2/af/rvu_devlink.c        |  7 ----
 .../marvell/octeontx2/nic/otx2_devlink.c      | 15 --------
 .../marvell/prestera/prestera_devlink.c       |  5 ---
 .../net/ethernet/mellanox/mlx5/core/devlink.c |  4 ---
 drivers/net/ethernet/mellanox/mlxsw/core.c    |  5 ---
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |  4 ---
 .../ethernet/pensando/ionic/ionic_devlink.c   |  4 ---
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |  4 ---
 drivers/net/netdevsim/dev.c                   |  3 --
 drivers/ptp/ptp_ocp.c                         |  4 ---
 include/net/devlink.h                         |  2 --
 net/core/devlink.c                            | 35 ++++++++++++-------
 22 files changed, 26 insertions(+), 130 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
