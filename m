Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AFB41813A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 743C382EA2;
	Sat, 25 Sep 2021 11:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwR9OLl1gKPB; Sat, 25 Sep 2021 11:23:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3908F82E19;
	Sat, 25 Sep 2021 11:23:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B9791BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A5CB607CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TZl3GKYv_1Up for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FB6A607DB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4721B61283;
 Sat, 25 Sep 2021 11:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632568990;
 bh=3uCY0iZrxWFrDSXP86vU6Gnic5vFXMQM0QlKZCzTd6I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YNYk0Mv63XX5PqerdlMIOLxUIzh5mfJBU1cn1qTr9FvUEQmPZw4WFkZf3JsdOAIvg
 Ps//rK0fsA3n/Q9f7CJTLCp4yRG28ssNng+d0anCpUptlMKSTkl52iFnzRCJL3vWIV
 DY0xxS4mTDNDx6elazDRWDcQ2byO7wJoGxZwleamszH0C7+Aq/3PQfUNjjdDt9jWQi
 6NlJjTK/y4kVrXiZa8QQBshnRcI94odNI1xzPzB/qharb+WdgDGHeC1YxccquPBvwR
 61o8XtdDanfVfUsNxAPMpX7UZVtoJV3g6hHhfN/Z8n4x1KxlDuCXjiZowCwtKkJsjU
 PUfn4nZNdtUiA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:41 +0300
Message-Id: <0f7f201a059b24c96eac837e1f424e2483254e1c.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 01/21] devlink: Notify users
 when objects are accessible
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
 Sergey Ryazanov <ryazanov.s.a@gmail.com>,
 Michael Guralnik <michaelgur@mellanox.com>, oss-drivers@corigine.com,
 netdev@vger.kernel.org, Jerin Jacob <jerinj@marvell.com>,
 GR-everest-linux-l2@marvell.com, Subbaraya Sundeep <sbhatta@marvell.com>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>, Linu Cherian <lcherian@marvell.com>,
 Intel Corporation <linuxwwan@intel.com>, Tariq Toukan <tariqt@nvidia.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Manish Chopra <manishc@marvell.com>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 Shannon Nelson <snelson@pensando.io>, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Sunil Goutham <sgoutham@marvell.com>, Ariel Elior <aelior@marvell.com>,
 Ido Schimmel <idosch@nvidia.com>, Richard Cochran <richardcochran@gmail.com>,
 Satanand Burla <sburla@marvell.com>, Felix Manlunas <fmanlunas@marvell.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Loic Poulain <loic.poulain@linaro.org>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, linux-omap@vger.kernel.org, Bin Luo <luobin9@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Vadym Kochan <vkochan@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, linux-kernel@vger.kernel.org,
 Coiby Xu <coiby.xu@gmail.com>, UNGLinuxDriver@microchip.com,
 Taras Chornyi <tchornyi@marvell.com>, hariprasad <hkelam@marvell.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 M Chetan Kumar <m.chetan.kumar@intel.com>,
 Derek Chickles <dchickles@marvell.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Geetha sowjanya <gakula@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

The devlink core code notified users about add/remove objects without
relation if this object can be accessible or not. In this patch we unify
such user visible notifications in one place.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/core/devlink.c | 107 +++++++++++++++++++++++++++++++++++++++------
 1 file changed, 93 insertions(+), 14 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index 3ea33c689790..06edb2f1d21e 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -742,6 +742,7 @@ static void devlink_notify(struct devlink *devlink, enum devlink_command cmd)
 	int err;
 
 	WARN_ON(cmd != DEVLINK_CMD_NEW && cmd != DEVLINK_CMD_DEL);
+	WARN_ON(!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED));
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -1040,11 +1041,15 @@ static int devlink_nl_port_fill(struct sk_buff *msg,
 static void devlink_port_notify(struct devlink_port *devlink_port,
 				enum devlink_command cmd)
 {
+	struct devlink *devlink = devlink_port->devlink;
 	struct sk_buff *msg;
 	int err;
 
 	WARN_ON(cmd != DEVLINK_CMD_PORT_NEW && cmd != DEVLINK_CMD_PORT_DEL);
 
+	if (!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED))
+		return;
+
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
 		return;
@@ -1055,18 +1060,19 @@ static void devlink_port_notify(struct devlink_port *devlink_port,
 		return;
 	}
 
-	genlmsg_multicast_netns(&devlink_nl_family,
-				devlink_net(devlink_port->devlink), msg, 0,
-				DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
+	genlmsg_multicast_netns(&devlink_nl_family, devlink_net(devlink), msg,
+				0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
 }
 
 static void devlink_rate_notify(struct devlink_rate *devlink_rate,
 				enum devlink_command cmd)
 {
+	struct devlink *devlink = devlink_rate->devlink;
 	struct sk_buff *msg;
 	int err;
 
 	WARN_ON(cmd != DEVLINK_CMD_RATE_NEW && cmd != DEVLINK_CMD_RATE_DEL);
+	WARN_ON(!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED));
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -1078,9 +1084,8 @@ static void devlink_rate_notify(struct devlink_rate *devlink_rate,
 		return;
 	}
 
-	genlmsg_multicast_netns(&devlink_nl_family,
-				devlink_net(devlink_rate->devlink), msg, 0,
-				DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
+	genlmsg_multicast_netns(&devlink_nl_family, devlink_net(devlink), msg,
+				0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
 }
 
 static int devlink_nl_cmd_rate_get_dumpit(struct sk_buff *msg,
@@ -4150,6 +4155,7 @@ static void __devlink_flash_update_notify(struct devlink *devlink,
 	WARN_ON(cmd != DEVLINK_CMD_FLASH_UPDATE &&
 		cmd != DEVLINK_CMD_FLASH_UPDATE_END &&
 		cmd != DEVLINK_CMD_FLASH_UPDATE_STATUS);
+	WARN_ON(!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED));
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -5145,17 +5151,18 @@ static void devlink_nl_region_notify(struct devlink_region *region,
 				     struct devlink_snapshot *snapshot,
 				     enum devlink_command cmd)
 {
+	struct devlink *devlink = region->devlink;
 	struct sk_buff *msg;
 
 	WARN_ON(cmd != DEVLINK_CMD_REGION_NEW && cmd != DEVLINK_CMD_REGION_DEL);
+	WARN_ON(!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED));
 
 	msg = devlink_nl_region_notify_build(region, snapshot, cmd, 0, 0);
 	if (IS_ERR(msg))
 		return;
 
-	genlmsg_multicast_netns(&devlink_nl_family,
-				devlink_net(region->devlink), msg, 0,
-				DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
+	genlmsg_multicast_netns(&devlink_nl_family, devlink_net(devlink), msg,
+				0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
 }
 
 /**
@@ -6920,10 +6927,12 @@ devlink_nl_health_reporter_fill(struct sk_buff *msg,
 static void devlink_recover_notify(struct devlink_health_reporter *reporter,
 				   enum devlink_command cmd)
 {
+	struct devlink *devlink = reporter->devlink;
 	struct sk_buff *msg;
 	int err;
 
 	WARN_ON(cmd != DEVLINK_CMD_HEALTH_REPORTER_RECOVER);
+	WARN_ON(!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED));
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -6935,9 +6944,8 @@ static void devlink_recover_notify(struct devlink_health_reporter *reporter,
 		return;
 	}
 
-	genlmsg_multicast_netns(&devlink_nl_family,
-				devlink_net(reporter->devlink),
-				msg, 0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
+	genlmsg_multicast_netns(&devlink_nl_family, devlink_net(devlink), msg,
+				0, DEVLINK_MCGRP_CONFIG, GFP_KERNEL);
 }
 
 void
@@ -8955,6 +8963,68 @@ struct devlink *devlink_alloc_ns(const struct devlink_ops *ops,
 }
 EXPORT_SYMBOL_GPL(devlink_alloc_ns);
 
+static void
+devlink_trap_policer_notify(struct devlink *devlink,
+			    const struct devlink_trap_policer_item *policer_item,
+			    enum devlink_command cmd);
+static void
+devlink_trap_group_notify(struct devlink *devlink,
+			  const struct devlink_trap_group_item *group_item,
+			  enum devlink_command cmd);
+static void devlink_trap_notify(struct devlink *devlink,
+				const struct devlink_trap_item *trap_item,
+				enum devlink_command cmd);
+
+static void devlink_notify_register(struct devlink *devlink)
+{
+	struct devlink_trap_policer_item *policer_item;
+	struct devlink_trap_group_item *group_item;
+	struct devlink_trap_item *trap_item;
+	struct devlink_port *devlink_port;
+
+	devlink_notify(devlink, DEVLINK_CMD_NEW);
+	list_for_each_entry(devlink_port, &devlink->port_list, list)
+		devlink_port_notify(devlink_port, DEVLINK_CMD_PORT_NEW);
+
+	list_for_each_entry(policer_item, &devlink->trap_policer_list, list)
+		devlink_trap_policer_notify(devlink, policer_item,
+					    DEVLINK_CMD_TRAP_POLICER_NEW);
+
+	list_for_each_entry(group_item, &devlink->trap_group_list, list)
+		devlink_trap_group_notify(devlink, group_item,
+					  DEVLINK_CMD_TRAP_GROUP_NEW);
+
+	list_for_each_entry(trap_item, &devlink->trap_list, list)
+		devlink_trap_notify(devlink, trap_item, DEVLINK_CMD_TRAP_NEW);
+
+	devlink_params_publish(devlink);
+}
+
+static void devlink_notify_unregister(struct devlink *devlink)
+{
+	struct devlink_trap_policer_item *policer_item;
+	struct devlink_trap_group_item *group_item;
+	struct devlink_trap_item *trap_item;
+	struct devlink_port *devlink_port;
+
+	devlink_params_unpublish(devlink);
+
+	list_for_each_entry_reverse(trap_item, &devlink->trap_list, list)
+		devlink_trap_notify(devlink, trap_item, DEVLINK_CMD_TRAP_DEL);
+
+	list_for_each_entry_reverse(group_item, &devlink->trap_group_list, list)
+		devlink_trap_group_notify(devlink, group_item,
+					  DEVLINK_CMD_TRAP_GROUP_DEL);
+	list_for_each_entry_reverse(policer_item, &devlink->trap_policer_list,
+				    list)
+		devlink_trap_policer_notify(devlink, policer_item,
+					    DEVLINK_CMD_TRAP_POLICER_DEL);
+
+	list_for_each_entry_reverse(devlink_port, &devlink->port_list, list)
+		devlink_port_notify(devlink_port, DEVLINK_CMD_PORT_DEL);
+	devlink_notify(devlink, DEVLINK_CMD_DEL);
+}
+
 /**
  *	devlink_register - Register devlink instance
  *
@@ -8964,7 +9034,7 @@ void devlink_register(struct devlink *devlink)
 {
 	mutex_lock(&devlink_mutex);
 	xa_set_mark(&devlinks, devlink->index, DEVLINK_REGISTERED);
-	devlink_notify(devlink, DEVLINK_CMD_NEW);
+	devlink_notify_register(devlink);
 	mutex_unlock(&devlink_mutex);
 }
 EXPORT_SYMBOL_GPL(devlink_register);
@@ -8982,7 +9052,7 @@ void devlink_unregister(struct devlink *devlink)
 	mutex_lock(&devlink_mutex);
 	WARN_ON(devlink_reload_supported(devlink->ops) &&
 		devlink->reload_enabled);
-	devlink_notify(devlink, DEVLINK_CMD_DEL);
+	devlink_notify_unregister(devlink);
 	xa_clear_mark(&devlinks, devlink->index, DEVLINK_REGISTERED);
 	mutex_unlock(&devlink_mutex);
 }
@@ -10086,6 +10156,9 @@ void devlink_params_publish(struct devlink *devlink)
 {
 	struct devlink_param_item *param_item;
 
+	if (!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED))
+		return;
+
 	list_for_each_entry(param_item, &devlink->param_list, list) {
 		if (param_item->published)
 			continue;
@@ -10631,6 +10704,8 @@ devlink_trap_group_notify(struct devlink *devlink,
 
 	WARN_ON_ONCE(cmd != DEVLINK_CMD_TRAP_GROUP_NEW &&
 		     cmd != DEVLINK_CMD_TRAP_GROUP_DEL);
+	if (!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED))
+		return;
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -10672,6 +10747,8 @@ static void devlink_trap_notify(struct devlink *devlink,
 
 	WARN_ON_ONCE(cmd != DEVLINK_CMD_TRAP_NEW &&
 		     cmd != DEVLINK_CMD_TRAP_DEL);
+	if (!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED))
+		return;
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
@@ -11053,6 +11130,8 @@ devlink_trap_policer_notify(struct devlink *devlink,
 
 	WARN_ON_ONCE(cmd != DEVLINK_CMD_TRAP_POLICER_NEW &&
 		     cmd != DEVLINK_CMD_TRAP_POLICER_DEL);
+	if (!xa_get_mark(&devlinks, devlink->index, DEVLINK_REGISTERED))
+		return;
 
 	msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 	if (!msg)
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
