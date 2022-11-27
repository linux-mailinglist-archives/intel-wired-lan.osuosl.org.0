Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6DF63ADC3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Nov 2022 17:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD8C260BF9;
	Mon, 28 Nov 2022 16:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD8C260BF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669653127;
	bh=MgR6kvYEWn6dfsGqHW4K/0KJ/mj3loqpNlVdMigeyzU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hms6y/DFctOSPip8mFT4rfE6AKhO4DQbNgY0whYcaFOW31RKDrW1ZWxPITr622Ns4
	 kuVAXGCzIoxnJ/OZp7T/xubrLmPO5CODeT76oHJP1KS5nsPdIrwIIoeMzVg8Tuggw1
	 OyPjgflQ8BHdCQTwc7fEAB/y2HsgURyh6VT87qsblyf99B2huRPDAmszS5sLmm114V
	 K/6sR1KkldCTakXxjCdidOCmV9ILO3G/TabX1dWFQD6IGcxtV8kh0ZrOZkMuMkVvJU
	 XeY/PR9UJeFW1lVKpD30k2NT1P7M16JL2q8UwArmc0tTV20PNgt52GsPHDCbWvQ6ES
	 qlMfLQSSuSw/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6SVLMQ0X-0Nf; Mon, 28 Nov 2022 16:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C27CE60B69;
	Mon, 28 Nov 2022 16:32:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C27CE60B69
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8011BF470
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7976940292
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7976940292
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMMGe7pliQSB for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Nov 2022 08:16:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5196E400D2
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com
 [IPv6:2607:f8b0:4864:20::630])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5196E400D2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 08:16:30 +0000 (UTC)
Received: by mail-pl1-x630.google.com with SMTP id k7so7488536pll.6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Nov 2022 00:16:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=jtFXWEJ1f4pp6qiyXKj5arMcKw9TkHekZMlzR/UCnY4=;
 b=eIQ6BbybNgcGZsb8F4QSIMPbk7z+SrA00WRI76QdteQFHIkkQN3nGZQEEDmbO85+AK
 nEkaJTZbsnHzkyD8rH9FWnE6e5eZJyt/kD172ncZmQ7qN8XXDy07O2XkdY+UeywW4i7O
 yatkJegYNBRpu4ESwoJjks7fkFcVcb9ZkhiJPRDap/fUJNYEWwzLqR+90y5J/XOhcbyS
 dUeE2JMU2evkUCIx0NZfvVmGR8Go2O6+keD+tfoLXBGzVRuSvlN6XOOYOt5cYeFIt6Xo
 EpexxiG8i4Ov82Gt9hDSuvzm9VwxnX/J+yIRRvGwSiihYFV2qcUu//lGe5ebw51sFcBf
 XPPw==
X-Gm-Message-State: ANoB5pnh0dnJPklgdoDef/+pdxTO5PIrDF5TKeIKqWAzgSuofoJcF9Ef
 /ajEdBWYVKWPubz1ctnfbww=
X-Google-Smtp-Source: AA0mqf7E33SagQ9eCqtOUMPlG3tjkVYgrg25yhdp/y54PDogJWizI4UPgacnqj4NzSjZynYVWcB90Q==
X-Received: by 2002:a17:90a:9313:b0:213:2168:1c78 with SMTP id
 p19-20020a17090a931300b0021321681c78mr49467293pjo.72.1669536989682; 
 Sun, 27 Nov 2022 00:16:29 -0800 (PST)
Received: from localhost.localdomain (124x33x176x97.ap124.ftth.ucom.ne.jp.
 [124.33.176.97]) by smtp.gmail.com with ESMTPSA id
 a3-20020aa794a3000000b00572c12a1e91sm5799915pfl.48.2022.11.27.00.16.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Nov 2022 00:16:29 -0800 (PST)
From: Vincent Mailhol <mailhol.vincent@wanadoo.fr>
To: Jiri Pirko <jiri@nvidia.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Date: Sun, 27 Nov 2022 17:15:59 +0900
Message-Id: <20221127081604.5242-1-mailhol.vincent@wanadoo.fr>
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
 bh=jtFXWEJ1f4pp6qiyXKj5arMcKw9TkHekZMlzR/UCnY4=;
 b=A85/oNogWnVHeGFDcwnBsCBzVg6EgoXg2fl7K2Y4LWxkT5hu0+sQAS9UC6D2YFRGj/
 B8NK1gr/KBZeTPQNSoKFdeCRAiru+jO71sox5JO7qXStGpCaesPOHHDgqlFrfUNOZSFE
 jcWWXJm4LHm8lxGdWyWDLFzFmmrbaercTYyaThYaYhJ/XZ4R/IMASvEKymKu3RcKhHRl
 uV8+ApBTEmWL3wypN7BpatPMiJ7MoE4QC/faAXPleW0bwkdTfDzeWDlAQgf2XglOw1PM
 h5/kqnhknOYQ6qYtVbfsKvzkqNNI3v9tkIg+bndLjOysIXsLnl0YiSs6GkQoctSZrcPc
 u/rQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=A85/oNog
Subject: [Intel-wired-lan] [PATCH net-next v2 0/5] net: devlink: return the
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
Cc: Andrew Lunn <andrew@lunn.ch>, Simon Horman <simon.horman@corigine.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, Eric Dumazet <edumazet@google.com>,
 Jerin Jacob <jerinj@marvell.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, drivers@pensando.io,
 Linu Cherian <lcherian@marvell.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Shalom Toledo <shalomt@mellanox.com>, Srujana Challa <schalla@marvell.com>,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadfed@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>, Sunil Goutham <sgoutham@marvell.com>,
 Ariel Elior <aelior@marvell.com>, Ido Schimmel <idosch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>, Arnaud Ebalard <arno@natisbad.org>,
 Michael Chan <michael.chan@broadcom.com>,
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
 drivers/net/ethernet/mellanox/mlxsw/core.c    |  3 +-
 drivers/net/ethernet/mellanox/mlxsw/minimal.c |  2 +-
 .../net/ethernet/netronome/nfp/nfp_devlink.c  |  4 ---
 .../ethernet/pensando/ionic/ionic_devlink.c   |  4 ---
 drivers/net/ethernet/qlogic/qed/qed_devlink.c |  4 ---
 drivers/net/netdevsim/dev.c                   |  3 --
 drivers/ptp/ptp_ocp.c                         |  4 ---
 include/net/devlink.h                         |  2 --
 net/core/devlink.c                            | 35 ++++++++++++-------
 23 files changed, 29 insertions(+), 127 deletions(-)

-- 
2.37.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
