Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 381C341C416
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 14:01:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CCCA760BDD;
	Wed, 29 Sep 2021 12:01:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sXbkMuiJeWZc; Wed, 29 Sep 2021 12:01:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB81060B0D;
	Wed, 29 Sep 2021 12:01:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40FD91BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F913827B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MWxkBU1YfoYm for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 12:00:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 928D982FE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 12:00:58 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5F75561414;
 Wed, 29 Sep 2021 12:00:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632916858;
 bh=sWOMc53F6fyjiBJQ3ELzEBwFAXedaQQqVi7cxDeJKLU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rs/XvNYxmfzCfL9jh91wFmivkm84vokPpMn/jA+yIEPJXh+T0IRl7w5dJyY6tHPX8
 Spof3xyYVDwokJtnoqfRfDVC35T8dDtJlCZ0CcXK3XoIcFVUDR1CYuUzaUJAjkecru
 15O0f1m9pRiLpiZuMaU7nSSoSd5Yh8UzS4Ioy4/kIpTuxaa/aZEl92wcdYJWHlDwsS
 8h2TCijNo0rJfapU0b+HI+hfEji8mA7wK+HwJqQLgiG9q71uRANLbC4nY+RqjENwFL
 OR1ZxPGIB4JYvN2pGlck1ysSDYcDwQh4wMkYJnGejtJlttb3ipc/7uPP+ppTXYrHJE
 1axdAYORcnFLw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 Sep 2021 15:00:44 +0300
Message-Id: <aac64d4861d6207a90a6d45245ee5ed59114659a.1632916329.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632916329.git.leonro@nvidia.com>
References: <cover.1632916329.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 3/5] devlink: Allow set
 specific ops callbacks dynamically
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
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Tariq Toukan <tariqt@nvidia.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Eric Dumazet <eric.dumazet@gmail.com>, linux-rdma@vger.kernel.org,
 Moshe Shemesh <moshe@nvidia.com>, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Vadym Kochan <vkochan@marvell.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 Salil Mehta <salil.mehta@huawei.com>, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Shay Drory <shayd@nvidia.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Introduce new devlink call to set specific ops callback during
device initialization phase after devlink_alloc() is already
called.

This allows us to set reload_* specific ops based on device property
which sometimes is known almost at the end of driver initialization.

For the sake of simplicity, this API lacks any type of locking and
needs to be called before devlink_register() to make sure that no
parallel access to the ops is possible at this stage.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/devlink.h |  1 +
 net/core/devlink.c    | 41 +++++++++++++++++++++++++++++++++++++++--
 2 files changed, 40 insertions(+), 2 deletions(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index 317b09917c41..305be548ac21 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -1565,6 +1565,7 @@ static inline struct devlink *devlink_alloc(struct devlink_ops *ops,
 {
 	return devlink_alloc_ns(ops, priv_size, &init_net, dev);
 }
+void devlink_set_ops(struct devlink *devlink, struct devlink_ops *ops);
 void devlink_register(struct devlink *devlink);
 void devlink_unregister(struct devlink *devlink);
 void devlink_reload_enable(struct devlink *devlink);
diff --git a/net/core/devlink.c b/net/core/devlink.c
index 9ae38128d6e1..67a846d424b7 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -8906,6 +8906,43 @@ static bool devlink_reload_actions_valid(struct devlink_ops *ops)
 	return true;
 }
 
+/**
+ *	devlink_set_ops - Set devlink ops dynamically
+ *
+ *	@devlink: devlink
+ *	@ops: devlink ops to set
+ *
+ *	This interface allows us to set ops based on device property
+ *	which is known after devlink_alloc() was already called. For now,
+ *	it is applicable for reload_* assignments only and all other
+ *	callbacks are ignored.
+ *
+ *	It should be called before devlink_register(), so doesn't have any
+ *	protection from concurent access.
+ */
+void devlink_set_ops(struct devlink *devlink, struct devlink_ops *ops)
+{
+	struct devlink_ops *dev_ops = devlink->ops;
+
+	WARN_ON(!devlink_reload_actions_valid(ops));
+
+#define SET_DEVICE_OP(ptr, op, name)                                           \
+	do {                                                                   \
+		if ((op)->name)                                                \
+			if (!((ptr)->name))                                    \
+				(ptr)->name = (op)->name;                      \
+	} while (0)
+
+	/* Keep sorted */
+	SET_DEVICE_OP(dev_ops, ops, reload_actions);
+	SET_DEVICE_OP(dev_ops, ops, reload_down);
+	SET_DEVICE_OP(dev_ops, ops, reload_limits);
+	SET_DEVICE_OP(dev_ops, ops, reload_up);
+
+#undef SET_DEVICE_OP
+}
+EXPORT_SYMBOL_GPL(devlink_set_ops);
+
 /**
  *	devlink_alloc_ns - Allocate new devlink instance resources
  *	in specific namespace
@@ -8926,8 +8963,6 @@ struct devlink *devlink_alloc_ns(struct devlink_ops *ops, size_t priv_size,
 	int ret;
 
 	WARN_ON(!ops || !dev);
-	if (!devlink_reload_actions_valid(ops))
-		return NULL;
 
 	devlink = kzalloc(sizeof(*devlink) + priv_size, GFP_KERNEL);
 	if (!devlink)
@@ -8942,6 +8977,8 @@ struct devlink *devlink_alloc_ns(struct devlink_ops *ops, size_t priv_size,
 
 	devlink->dev = dev;
 	devlink->ops = ops;
+	/* To check validity of reload actions */
+	devlink_set_ops(devlink, ops);
 	xa_init_flags(&devlink->snapshot_ids, XA_FLAGS_ALLOC);
 	write_pnet(&devlink->_net, net);
 	INIT_LIST_HEAD(&devlink->port_list);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
