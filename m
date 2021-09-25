Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 906D2418153
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Sep 2021 13:23:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0791440358;
	Sat, 25 Sep 2021 11:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJ00lSnNb95s; Sat, 25 Sep 2021 11:23:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 893B14024C;
	Sat, 25 Sep 2021 11:23:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7CFC61BF869
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 78B8C607DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Kshng4L2UNR for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Sep 2021 11:23:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2478607CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Sep 2021 11:23:30 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A281B6127C;
 Sat, 25 Sep 2021 11:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632569010;
 bh=pc8zwS3r8HsfwOxk/n265zyCXchtl5rU8VYtSBAYXS0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XYVdSyk4Nov6ULK/fPAslkGEtxWs0lZ0lQ/xfjQJBfscVFxRhWcOjoJwGYAe3satN
 8otZtplAxDDhaNxERQKpq4F5wivWdImoSGdiUEjg4zXYIBpMRoa2bdDUpJGmNmgW71
 hpwFL/LKTPg4zAqy+Vpi1KFY5mrg0eDX1+zEsBSyoYzlimYAkMM6nlCYEXnESWKD+5
 hR7FPTAGNobhoUjByJKm8aaWrF0iFNv4F0o7emLxQvym3sK9pGu0/MhhTqiNbazSCD
 5+t8qDq7tx8Mm/fxLtgCvBT4lUN+5qTi9rwAt7SWJcT5MuB7K5KAZ/tPg0jWvkOHAK
 F+PsGCvrkN1fA==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Sat, 25 Sep 2021 14:22:48 +0300
Message-Id: <0e3101259046a001c417415b84b834ca56d1bfd3.1632565508.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1632565508.git.leonro@nvidia.com>
References: <cover.1632565508.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 08/21] net/prestera: Split
 devlink and traps registrations to separate routines
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

Separate devlink registrations and traps registrations so devlink will
be registered when driver is fully initialized.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../marvell/prestera/prestera_devlink.c       | 29 ++++---------------
 .../marvell/prestera/prestera_devlink.h       |  4 ++-
 .../ethernet/marvell/prestera/prestera_main.c |  8 +++--
 3 files changed, 14 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/marvell/prestera/prestera_devlink.c b/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
index 5cca007a3e17..06279cd6da67 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_devlink.c
@@ -345,8 +345,6 @@ static struct prestera_trap prestera_trap_items_arr[] = {
 	},
 };
 
-static void prestera_devlink_traps_fini(struct prestera_switch *sw);
-
 static int prestera_drop_counter_get(struct devlink *devlink,
 				     const struct devlink_trap *trap,
 				     u64 *p_drops);
@@ -381,8 +379,6 @@ static int prestera_trap_action_set(struct devlink *devlink,
 				    enum devlink_trap_action action,
 				    struct netlink_ext_ack *extack);
 
-static int prestera_devlink_traps_register(struct prestera_switch *sw);
-
 static const struct devlink_ops prestera_dl_ops = {
 	.info_get = prestera_dl_info_get,
 	.trap_init = prestera_trap_init,
@@ -407,34 +403,18 @@ void prestera_devlink_free(struct prestera_switch *sw)
 	devlink_free(dl);
 }
 
-int prestera_devlink_register(struct prestera_switch *sw)
+void prestera_devlink_register(struct prestera_switch *sw)
 {
 	struct devlink *dl = priv_to_devlink(sw);
-	int err;
 
 	devlink_register(dl);
-
-	err = prestera_devlink_traps_register(sw);
-	if (err) {
-		devlink_unregister(dl);
-		dev_err(sw->dev->dev, "devlink_traps_register failed: %d\n",
-			err);
-		return err;
-	}
-
-	return 0;
 }
 
 void prestera_devlink_unregister(struct prestera_switch *sw)
 {
-	struct prestera_trap_data *trap_data = sw->trap_data;
 	struct devlink *dl = priv_to_devlink(sw);
 
-	prestera_devlink_traps_fini(sw);
 	devlink_unregister(dl);
-
-	kfree(trap_data->trap_items_arr);
-	kfree(trap_data);
 }
 
 int prestera_devlink_port_register(struct prestera_port *port)
@@ -482,7 +462,7 @@ struct devlink_port *prestera_devlink_get_port(struct net_device *dev)
 	return &port->dl_port;
 }
 
-static int prestera_devlink_traps_register(struct prestera_switch *sw)
+int prestera_devlink_traps_register(struct prestera_switch *sw)
 {
 	const u32 groups_count = ARRAY_SIZE(prestera_trap_groups_arr);
 	const u32 traps_count = ARRAY_SIZE(prestera_trap_items_arr);
@@ -621,8 +601,9 @@ static int prestera_drop_counter_get(struct devlink *devlink,
 						 cpu_code_type, p_drops);
 }
 
-static void prestera_devlink_traps_fini(struct prestera_switch *sw)
+void prestera_devlink_traps_unregister(struct prestera_switch *sw)
 {
+	struct prestera_trap_data *trap_data = sw->trap_data;
 	struct devlink *dl = priv_to_devlink(sw);
 	const struct devlink_trap *trap;
 	int i;
@@ -634,4 +615,6 @@ static void prestera_devlink_traps_fini(struct prestera_switch *sw)
 
 	devlink_trap_groups_unregister(dl, prestera_trap_groups_arr,
 				       ARRAY_SIZE(prestera_trap_groups_arr));
+	kfree(trap_data->trap_items_arr);
+	kfree(trap_data);
 }
diff --git a/drivers/net/ethernet/marvell/prestera/prestera_devlink.h b/drivers/net/ethernet/marvell/prestera/prestera_devlink.h
index cc34c3db13a2..b322295bad3a 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_devlink.h
+++ b/drivers/net/ethernet/marvell/prestera/prestera_devlink.h
@@ -9,7 +9,7 @@
 struct prestera_switch *prestera_devlink_alloc(struct prestera_device *dev);
 void prestera_devlink_free(struct prestera_switch *sw);
 
-int prestera_devlink_register(struct prestera_switch *sw);
+void prestera_devlink_register(struct prestera_switch *sw);
 void prestera_devlink_unregister(struct prestera_switch *sw);
 
 int prestera_devlink_port_register(struct prestera_port *port);
@@ -22,5 +22,7 @@ struct devlink_port *prestera_devlink_get_port(struct net_device *dev);
 
 void prestera_devlink_trap_report(struct prestera_port *port,
 				  struct sk_buff *skb, u8 cpu_code);
+int prestera_devlink_traps_register(struct prestera_switch *sw);
+void prestera_devlink_traps_unregister(struct prestera_switch *sw);
 
 #endif /* _PRESTERA_DEVLINK_H_ */
diff --git a/drivers/net/ethernet/marvell/prestera/prestera_main.c b/drivers/net/ethernet/marvell/prestera/prestera_main.c
index 44c670807fb3..78a7a00bce22 100644
--- a/drivers/net/ethernet/marvell/prestera/prestera_main.c
+++ b/drivers/net/ethernet/marvell/prestera/prestera_main.c
@@ -851,7 +851,7 @@ static int prestera_switch_init(struct prestera_switch *sw)
 	if (err)
 		goto err_span_init;
 
-	err = prestera_devlink_register(sw);
+	err = prestera_devlink_traps_register(sw);
 	if (err)
 		goto err_dl_register;
 
@@ -863,12 +863,13 @@ static int prestera_switch_init(struct prestera_switch *sw)
 	if (err)
 		goto err_ports_create;
 
+	prestera_devlink_register(sw);
 	return 0;
 
 err_ports_create:
 	prestera_lag_fini(sw);
 err_lag_init:
-	prestera_devlink_unregister(sw);
+	prestera_devlink_traps_unregister(sw);
 err_dl_register:
 	prestera_span_fini(sw);
 err_span_init:
@@ -888,9 +889,10 @@ static int prestera_switch_init(struct prestera_switch *sw)
 
 static void prestera_switch_fini(struct prestera_switch *sw)
 {
+	prestera_devlink_unregister(sw);
 	prestera_destroy_ports(sw);
 	prestera_lag_fini(sw);
-	prestera_devlink_unregister(sw);
+	prestera_devlink_traps_unregister(sw);
 	prestera_span_fini(sw);
 	prestera_acl_fini(sw);
 	prestera_event_handlers_unregister(sw);
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
