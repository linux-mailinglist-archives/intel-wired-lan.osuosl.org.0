Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3253063C52A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 17:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5439A40351;
	Tue, 29 Nov 2022 16:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5439A40351
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669739410;
	bh=G5NXO+qGIaLZ/zUq/IASEBoOSnbTfd+/meiffunhqpo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=h/M70G7sswpo6xbJLddZ1A6jnhp8czF4rLBNJpJUzlDN7YyQ7nt+2ksmDIY/o3wed
	 yym6tNqcJvhEVyUcZFYCFucQDsJEwdQP7Xn3GTiHQyaAL0sRBwEe9rGGlgLvGJgIOZ
	 bkbacV9QAsa1p9dOW/BC83mXdPaFQFuHt49G+94zmorv2kXk5XqSp1KOfeUdH5fzCW
	 /0uoF5c36piwKWUpZdDzJIU5Gu0byayLJExnneAbo5pO1UjXZgvGe10yhRIk1IPDkO
	 QsOF2J6pLuVGs4BA98FVcCi0KPeDknLjQInsqBcket5BT2fFE0HuOsfSovnsXaf/Ri
	 55vOaqMoiSjNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wG12PptSOBR2; Tue, 29 Nov 2022 16:30:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8E694032F;
	Tue, 29 Nov 2022 16:30:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8E694032F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 188FD1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E59744016C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E59744016C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qG2_qNgR4oRa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 09:52:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06D0240144
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06D0240144
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 09:52:25 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 3-20020a17090a098300b00219041dcbe9so11708120pjo.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 01:52:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DoHQzm8iYHF80spHwuizizw7dl9whlXqQdx1rDh9IHE=;
 b=QHtf4YuqRnZecXQ8+qD+G8lmY3l7l+YhYfiBwr9AQwWoYv60X+OLXWhWbTKVL41VAJ
 r5eurbXZKFRzsG8U7EfmjT+AKgoWw8WfyJlMn0VRkDat+Zto3w/9iqoOMd6ReStd2/YL
 iSzeJaP06E9y6JSDkECsezj7iPZ1pf4+GY4IpwRziw5lK2Oe05vTc+huTu3rIfslGqWR
 dBnawiidr6Ta+H4qeB6xDcfAB9IIeYe1QR8pthB3ZvLJiumDd0uFaaJKSri1UpcGepcU
 V8e2AfL/QmWwizmo8VwW7L8+oqknYuoci9GwnGMhozrpJrvoDt5t9IdGxu1ovDYd9iHS
 xJZQ==
X-Gm-Message-State: ANoB5pmUN3twr1eXr0l5wgJ7wSQEqoGiJ5MzprBAHCqLJsx6azxsNuGm
 2rBwNUonBemqL86RULLQF9oopFzKBzlU5Q==
X-Google-Smtp-Source: AA0mqf63NvlKwgOFBgeDyFi/Klb4ymtSS/HrjV70mCgba2uIa+LJ+++Eg3CUtocEiNZqs+qoOIBw2w==
X-Received: by 2002:a17:90b:3944:b0:214:1df0:fe53 with SMTP id
 oe4-20020a17090b394400b002141df0fe53mr63738466pjb.214.1669715545345; 
 Tue, 29 Nov 2022 01:52:25 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 mv15-20020a17090b198f00b0021937b2118bsm941346pjb.54.2022.11.29.01.52.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Nov 2022 01:52:25 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 18:51:37 +0900
Message-Id: <20221129095140.3913303-1-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Nov 2022 16:29:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=DoHQzm8iYHF80spHwuizizw7dl9whlXqQdx1rDh9IHE=;
 b=bejrZVaKDSalOuYZ2B4bydrehFoiPv/luw7eftEZ+420oFiz0yNbZcsJH8YBOGTZXg
 ilG/oS/g5sxPYVPM66IwLJCszDO5hSQ2qmfZ2Y9C4JMNz1lesIZmB+AqeBRAOjz2qVR8
 GALd0VrCWA3+gVysZ39W69HIeyJn/a0BB7c+L5aKweukPU4JFJtJ2mPw3l+g37QAXQ2n
 gVbMCJUdxXADPF+br8E1KmW/piaBj36Foy3ymKF5n8lpic5jofeUkMRPy8D+RYzyPxrX
 4rtvUENtwE49BpPwayakeJbKCxXYuifofz0eCmo4EIAOm0UgbmPTJayYwmslpQdoUugN
 QOCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=bejrZVaK
Subject: [Intel-wired-lan] [PATCH net-next v6 0/3] net: devlink: return the
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
have to be done in an atomic change to avoid attribute
duplication. This same patch also removes the
devlink_info_driver_name_put() function to prevent future drivers from
reporting the driver name themselves.

The second patch allows the core to call devlink_nl_info_fill() even
if the devlink_ops::info_get() callback is NULL. This leads to the
third and final patch which cleans up the drivers which have an empty
info_get().
---
* Changelog *

v5 -> v6:

  * No change in code.

  * add Reviewed-by: Jacob Keller tag.

  * add Reviewed-by: Jiri Pirko tag.

  * squash patches 1 and 2 together.

  * [PATCH 1/3]: remove the paragraph explaining why attributes get
    duplicated if nla_put() is called twice.

v4 -> v5:

  * No change in code.

  * [PATCH 1/4] add Tested-by: Ido Schimmel tag.

  * split patch 3/3 in two patches.

v3 -> v4:

  * Ido pointed out that the mlxsw did not need to be fixed:
    https://lore.kernel.org/netdev/Y4ONgD4dAj8yU2%2F+@shredder/
    Remove the first two patches from the series.

v2 -> v3:

  * [PATCH 3/5] remove the call to devlink_info_driver_name_put() in
    mlxsw driver as well (this was missing in v2, making the build
    fail... sorry for the noise).

  * add additional people in CC as pointed by netdev patchwork CI:
    https://patchwork.kernel.org/project/netdevbpf/list/?series=699451

  * use the "Link:" prefix before URL to silence checkpatch's line
    length warning.


RFC v1 -> v2:

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
  net: devlink: make the devlink_ops::info_get() callback optional
  net: devlink: clean-up empty devlink_ops::info_get()

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
