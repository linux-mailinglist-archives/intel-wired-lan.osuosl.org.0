Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D7341C275
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Sep 2021 12:17:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CCC582FB1;
	Wed, 29 Sep 2021 10:16:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZxD9ble_1Dv0; Wed, 29 Sep 2021 10:16:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F2B982F8B;
	Wed, 29 Sep 2021 10:16:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9495B1BF954
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:16:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8E6D7403B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7-56-sQxz5b for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Sep 2021 10:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B27D240012
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Sep 2021 10:16:51 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 646F4613A5;
 Wed, 29 Sep 2021 10:16:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632910611;
 bh=lA8WUo/+NGUBXAShC+sjos7pew5KebdIN8DiTIW2984=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NSpJhV2+J5T+2HEqPitvtj27o68uSnDt46b9mVGz5BBrgUjLbW1CQccH1ATFbj7OG
 7QDWNjlnbCo4AuJbUYK3ZB0kuxPvqWNtszVUVWeSUJFu+xw2Les2D5rJvPQwMskRiw
 +Boj0k4X2Q8bhnw8VsSIO7wst9oAukH196yHabnu2a+NjpD05gu06Yk9LaWaguDtCq
 eYvWnp3roLSM8PRR0R6Fn98qOWKeMvjOl8XIaS/zYG7x6DQT3tDEhbjxO21swCG0aq
 tKQao7GzFXyJfS5U5CZhrPt9frLK3A5G/ID3h/aNFprO+biwuRw6feIloG2x3DCWiY
 Fai7FFCcDc7ag==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 29 Sep 2021 13:16:37 +0300
Message-Id: <4e99e3996118ce0e2da5367b8fc2a427095dfffd.1632909221.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632909221.git.leonro@nvidia.com>
References: <cover.1632909221.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/5] devlink: Allow set specific
 ops callbacks dynamically
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
index cee2be47c40e..71d0c5671f43 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -8907,6 +8907,43 @@ static bool devlink_reload_actions_valid(struct devlink_ops *ops)
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
+#define SET_DEVICE_OP(ptr, name)                                               \
+	do {                                                                   \
+		if (ops->name)                                                 \
+			if (!((ptr)->name))				       \
+				(ptr)->name = ops->name;                       \
+	} while (0)
+
+	/* Keep sorted */
+	SET_DEVICE_OP(dev_ops, reload_actions);
+	SET_DEVICE_OP(dev_ops, reload_down);
+	SET_DEVICE_OP(dev_ops, reload_limits);
+	SET_DEVICE_OP(dev_ops, reload_up);
+
+#undef SET_DEVICE_OP
+}
+EXPORT_SYMBOL_GPL(devlink_set_ops);
+
 /**
  *	devlink_alloc_ns - Allocate new devlink instance resources
  *	in specific namespace
@@ -8927,8 +8964,6 @@ struct devlink *devlink_alloc_ns(struct devlink_ops *ops, size_t priv_size,
 	int ret;
 
 	WARN_ON(!ops || !dev);
-	if (!devlink_reload_actions_valid(ops))
-		return NULL;
 
 	devlink = kzalloc(sizeof(*devlink) + priv_size, GFP_KERNEL);
 	if (!devlink)
@@ -8943,6 +8978,8 @@ struct devlink *devlink_alloc_ns(struct devlink_ops *ops, size_t priv_size,
 
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
