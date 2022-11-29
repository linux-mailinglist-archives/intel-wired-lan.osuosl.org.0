Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9508D63B64B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Nov 2022 01:06:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BFC440AA4;
	Tue, 29 Nov 2022 00:06:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BFC440AA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669680408;
	bh=blJc+9T2ctluf7+SWT1bvhiTi/CysgEQ4SW9EkEO4HM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YU/CC26kaIKJQnNS7xFRdqvdOQTopncaXah8+pZp/lAQYFp6UgmYOd9iFxf7L2QEw
	 CmSZlButgYza8jWMq60DQpMyZZZ1iTD6jVIyMFkdVCXr3UDKZD+pCe33WgE1LWXNC8
	 npjlj5WFDQWISsCnnv0RMQm/JQvWBx0r0y4dBnQJd28HUBglOZHGNXNI8qJh3VIrp/
	 UvzLuSz9G3zuIDv5o4a/GCNSsVKcsO/eO50fNls3YwajmxZpSNkzjGW+wUbt1nFL90
	 6JqnUbqL0eFvq6bEu6az9COJEt92M0pML/5catrUi4W5B9utE1G+XmCNP5/Bi/lV+z
	 Ji2aDYFq7FLNw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wJoMebZefzpc; Tue, 29 Nov 2022 00:06:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9354740AB6;
	Tue, 29 Nov 2022 00:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9354740AB6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4FCFB1BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29FC140A8B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29FC140A8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4Nr_hfohDr0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Nov 2022 00:06:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0CB6401A2
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A0CB6401A2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Nov 2022 00:06:03 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 e7-20020a17090a77c700b00216928a3917so15679921pjs.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Nov 2022 16:06:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OzEu0mNuawYU4A8ixhfSekIPSykA7cQRGHNQPCvkxKI=;
 b=xZ9zlKSI3i1MnP/zfRTGpLfvKU8yBedW0b9hNVmh4sGlzN29EAnxrlaG5vc3uCcpxD
 /DgPKGi/M72PPNvb3LoN1aVE9s8NCN/HtKiPxrBZ0xcE9XORrGUPyxMZhdjEk0Ya95SN
 jN+pD6SDtDAusDIe1+Me0JYKk6tITrOaVTAJbsubUi566iJsv4yw2lqj7VcotKGzyuUz
 QvSmu07s8q7hQaubbrk8DZVxGo2iepvBloFqXFfIEtISLrWwfSO3TuPrhp38CClNJCMz
 j+8J2roQSjske4Qph1qnwQd09bQApnW+yOBQZ7DhmbIuVVUgxh8YA+VOVeHyLHDsy319
 rv+A==
X-Gm-Message-State: ANoB5pnjr1Gjfof2Ra4dZsjH+O39wVS7aADbuF61oWo0UAWOKX4El8yL
 TyHrj8Jyam3OKYqDdDIe44U=
X-Google-Smtp-Source: AA0mqf5ipK95N6mLuCtYJaUwnBnc7IAnNZxYL5uhNiBjgXpNw+6EjQZrnW+cTdQFxZblASBjjVTDLg==
X-Received: by 2002:a17:90b:48c8:b0:20b:16bc:8493 with SMTP id
 li8-20020a17090b48c800b0020b16bc8493mr57596434pjb.210.1669680362942; 
 Mon, 28 Nov 2022 16:06:02 -0800 (PST)
Received: from XH22050090-L.ad.ts.tri-ad.global ([103.175.111.222])
 by smtp.gmail.com with ESMTPSA id
 r2-20020aa79ec2000000b00572198393c2sm8588147pfq.194.2022.11.28.16.05.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Nov 2022 16:06:02 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Tue, 29 Nov 2022 09:05:46 +0900
Message-Id: <20221129000550.3833570-1-mailhol.vincent@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 29 Nov 2022 00:06:42 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:sender:from:to:cc:subject:date:message-id:reply-to;
 bh=OzEu0mNuawYU4A8ixhfSekIPSykA7cQRGHNQPCvkxKI=;
 b=c29fOTJkGhrSOl14tX8ALzL7Z8JRbAKENjvd46LnS0GWYkCtROYEQPHeBQmx9KXnA+
 8171rCzdumIi9h1Vb4X0SOxj2L5/Z4ZXw8GKF+twWDpryQu+3JfZDmSHCoSchfko62ij
 aO4n9mj/JgBDdgzHvTxNopuX3f+tK2dFxRSObYj2PB2SQU/S4vkEwXQj0yJX7cw56tfS
 JGOaaS48ijJ5gqg7+h2uXsNcPPdOtUOzxVEf6hUrk65gCrXNNqGFO0iSMblLpWywGo6U
 mw0CwvdFdK69r+MbWD9OGDZldzntUIpPUUQYsyWQW8HjdKSoVwepJHyIvcNHdGwmsqzm
 OQCg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=c29fOTJk
Subject: [Intel-wired-lan] [PATCH net-next v5 0/4] net: devlink: return the
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

The third patch allows the core to call devlink_nl_info_fill() even if
the devlink_ops::info_get() callback is NULL. This leads to the fourth
and final patch which cleans up the drivers which have an empty
info_get().
---
* Changelog *

v4 -> v5

  * [PATCH 1/4] add Tested-by: Ido Schimmel tag.

  * split patch 3/3 in two patches.

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

Vincent Mailhol (4):
  net: devlink: let the core report the driver name instead of the
    drivers
  net: devlink: remove devlink_info_driver_name_put()
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
