Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0563ADC9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5A9034045C;
	Mon, 28 Nov 2022 16:32:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A9034045C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653151;
	bh=0xSCMA5x1acN/8j5mZppfRtvF09n3Dlm2ic11SYB1qQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8Wz0YUGcJObk/KBWcfOXfv96VHrPA9C3nCDkPc0zuCpe+ypiulXM4lMtj0wxBNr4u
	 de1t01+E6yWmqbonFnujpHzOlBxxEDXs7q+cZ2fRU5npLPID6/R6yJc1FYkywMFV9I
	 AjAGndIZNrsDrKqEjtKQ5wRDOooXQ4RA0TEQbxTXu1gYB8VDvumMhSYo24NKJxFVge
	 RtIX8+zk9LCy/9rHEvgxaKgrImADAz7OvAQPPFGbfMcBnuaXQJU9fm9y9mXnfPQdBr
	 AqpSbs9MzHYGN34PtxisK3zsKjFccEQM8j+yuySmgX9EUK4ixwI167RMLNOdM80s9l
	 Bl4p2B09kojWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3t8lmvo2V0Y; Mon, 28 Nov 2022 16:32:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E281400DB;
	Mon, 28 Nov 2022 16:32:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E281400DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA7121BF42C
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:09:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F405400D0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F405400D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQ6tiYAZnDlR for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 13:09:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A14D400B8
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A14D400B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 13:09:49 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 l22-20020a17090a3f1600b00212fbbcfb78so11531920pjc.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 05:09:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=X/nDh8TpKOaetZNm9H4kb5l3sJZ9fC/4skJvrnTVrPc=;
 b=rWGvsFpjCpdpp6nl69LAZ4GKZZaY+4qBnhVe2qlY5BUv0CzY64ajDN7SlgYFfyLODC
 G7DxDyMy0jOZ58ox7ASGeLN5saNI6WEIhruXCUubKV5DZbz+oe+v+8nWE/uZkezDxO9p
 O3nRJCNKdM8whtNj8oXLNnnO0a8uFo4GYq2ixJIW1mpl4bGvHl7IQilPAZLI+DQR3HZ4
 iw4nRVutmWawnTeTuM3Su2KgE4YY2JMqWMthqsqJ0Pylh/iSQFuEvqOTVfSJPZFO1brT
 KPWzYNdess7+T6IMymwR3fY4xjh6atS8XXB8j9+gU6tQlKk6Vl7SMj7GVlGU2ahIClmk
 EwwQ==
X-Gm-Message-State: ANoB5pkDKF40veVa1Tx/2lYnM7g7IiccXKdRWqIItbEL7A72ILRuvDVj
 61aCYSonP/q29ZnAMuxZCWo=
X-Google-Smtp-Source: AA0mqf5LGLBzcqBZLh3aW85dV52JRwMwpCZdcwvop4vED2pFz+/wO3soofsqEh6DgkBBe9WvJRHdeQ==
X-Received: by 2002:a17:902:e886:b0:188:fb19:5f39 with SMTP id
 w6-20020a170902e88600b00188fb195f39mr30684526plg.21.1669554588631; 
 Sun, 27 Nov 2022 05:09:48 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 q17-20020a170902eb9100b00188a908cbddsm6710225plg.302.2022.11.27.05.09.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 05:09:48 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 22:09:14 +0900
Message-Id: <20221127130919.638324-1-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
References: <20221122154934.13937-1-mailhol.vincent@wanadoo.fr>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 28 Nov 2022 16:31:50 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X/nDh8TpKOaetZNm9H4kb5l3sJZ9fC/4skJvrnTVrPc=;
 b=A8rJC78DONtVFCjU8YfRzhf/A8tTYx/cYxKJfHXanN+ASW+iocYY9tOWjvpvel5RhW
 3jaaIhkLhABrzSdU7E5HbzW7UBKWAdKF7IIt/9Tnx+1E9D10jAxxLm6Gai74ho8jaaXy
 GQctii9VVE6lnI81Re32iQwHAmQbE2RBWEYLg0WA4YtbtGFDCuiFcDbcdKGrbMpU49I8
 cGq3VeOTvV/WzhcBpIrNhEq7Ubm2CgZ4EXa63sp2VL5+0hRvLSnzrC8PFLvlzfvLQPj9
 d3NFvD3/bpMOm84VwowrqAGhp+8qGy36vlM6vANwOHdS55la639OnFUJlYE0igne4Oqe
 nLbQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=A8rJC78D
Subject: [Intel-wired-lan] [PATCH net-next v3 0/5] net: devlink: return the
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

The first two patches clean up the mlxsw driver for both the ethtool
and the devlink (both are supposed to return the same information so
the ethtool got included as well). This is split in two patches
because of the different Fixes tag.

The third patch fulfills the actual goal of this series: modify
devlink core to report the driver name and clean-up all drivers. Both
as to be done in an atomic change to avoid attribute duplication.

The fourth patch removes the devlink_info_driver_name_put() function
to prevent future drivers from reporting the driver name themselves.

Finally, the fifth and last patch allows the core to call
devlink_nl_info_fill() even if the devlink_ops::info_get() callback is
NULL. This allows to do further more clean up in the drivers.
---
* Changelog *

v2 -> v3

  * [PATCH 3/5] remove the call to devlink_info_driver_name_put() in
    mlxsw driver as well (this was missing in v2, making the build
    fail... sorry for the noise).

  * add additional people in CC as pointed by netdev patchwork CI:
    https://patchwork.kernel.org/project/netdevbpf/list/?series=699451

  * Use the "Link:" prefix before URL to silence checkpatch's line
    length warning.

RFC v1 -> v2

  * drop the RFC tag

  * big rework following the discussion on RFC:
    https://lore.kernel.org/netdev/20221122154934.13937-1-mailhol.vincent@wanadoo.fr/
    Went from one patch to a series of five patches:

  * drop the idea to report the USB serial number following Greg's
    comment:
    https://lore.kernel.org/linux-usb/Y3+VfNdt%2FK7UtRcw@kroah.com/

Vincent Mailhol (5):
  mlxsw: minimal: fix mlxsw_m_module_get_drvinfo() to correctly report
    driver name
  mlxsw: core: fix mlxsw_devlink_info_get() to correctly report driver
    name
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
 drivers/net/ethernet/mellanox/mlxsw/minimal.c |  2 +-
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |  4 ---
 .../ethernet/pensando/ionic/ionic_devlink.c   |  4 ---
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |  4 ---
 drivers/net/netdevsim/dev.c                   |  3 --
 drivers/ptp/ptp_ocp.c                         |  4 ---
 include/net/devlink.h                         |  2 --
 net/core/devlink.c                            | 35 ++++++++++++-------
 23 files changed, 27 insertions(+), 131 deletions(-)

-- 
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
