Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB0A454D23
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 19:26:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D42840497;
	Wed, 17 Nov 2021 18:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r4Td6Ay7Z19x; Wed, 17 Nov 2021 18:26:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AD47C40243;
	Wed, 17 Nov 2021 18:26:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16DC61BF309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0662C81D68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1mq9DA9yZpZN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 18:26:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52E3A81BD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0E3B161BC1;
 Wed, 17 Nov 2021 18:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637173608;
 bh=QPquNXgImB4Oa49ucF6VehzZ8a7je6X23RfNQvsdXzg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h86nxP6ANuEv1VwkitSi4FJ0O0r3K7pI0qYMJcN1QtjSwHdPqbXB6F7YyFpuU/IHq
 5lz2E48rFEms1S3wGaYHwO9uM1zHFS9B9eJ5L+YrXSXIu0/dkYp513cVfioStJw8Hj
 pehXUzI4pt3q4CrcHmXLV+CATzbzc4vM9xkUV+Ghg/E7Qd9Qzi65cqiZNoxPL02+Rr
 xMK8VG0mh8/g12D2wugh7bIwNyVU4xvF0/Bw96a48K1d0iQr4G2Hy4XwIcbzVaZbko
 0T17NupnlXvfHHNyUOHGysABu4xDLuJ6sK+l3MtvVNmEeD9MbOdNpBYvkiD8aVNneo
 IL5lCJw4zmZ1A==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 Nov 2021 20:26:22 +0200
Message-Id: <be4b1f0a3452352068a81473a653f4f837197481.1637173517.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <cover.1637173517.git.leonro@nvidia.com>
References: <cover.1637173517.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 6/6] devlink: Inline sb related
 functions
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
 Ioana Ciornei <ioana.ciornei@nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Michael Chan <michael.chan@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rdma@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Vladimir Oltean <vladimir.oltean@nxp.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Ido Schimmel <idosch@nvidia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Jiri Pirko <jiri@nvidia.com>,
 drivers@pensando.io, Aya Levin <ayal@mellanox.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 UNGLinuxDriver@microchip.com, Taras Chornyi <tchornyi@marvell.com>,
 Shannon Nelson <snelson@pensando.io>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Remove useless indirection of sb related functions, which called only
once and do nothing except accessing specific struct field.

As part of this cleanup, properly report an programming erro if already
existing sb index was supplied during SB registration.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/core/devlink.c | 110 ++++++++++++++-------------------------------
 1 file changed, 33 insertions(+), 77 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index 1dda313d6d1b..fb5d3ba331f8 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -361,12 +361,6 @@ static struct devlink_sb *devlink_sb_get_by_index(struct devlink *devlink,
 	return NULL;
 }
 
-static bool devlink_sb_index_exists(struct devlink *devlink,
-				    unsigned int sb_index)
-{
-	return devlink_sb_get_by_index(devlink, sb_index);
-}
-
 static struct devlink_sb *devlink_sb_get_from_attrs(struct devlink *devlink,
 						    struct nlattr **attrs)
 {
@@ -382,16 +376,11 @@ static struct devlink_sb *devlink_sb_get_from_attrs(struct devlink *devlink,
 	return ERR_PTR(-EINVAL);
 }
 
-static struct devlink_sb *devlink_sb_get_from_info(struct devlink *devlink,
-						   struct genl_info *info)
-{
-	return devlink_sb_get_from_attrs(devlink, info->attrs);
-}
-
-static int devlink_sb_pool_index_get_from_attrs(struct devlink_sb *devlink_sb,
-						struct nlattr **attrs,
-						u16 *p_pool_index)
+static int devlink_sb_pool_index_get_from_info(struct devlink_sb *devlink_sb,
+					       struct genl_info *info,
+					       u16 *p_pool_index)
 {
+	struct nlattr **attrs = info->attrs;
 	u16 val;
 
 	if (!attrs[DEVLINK_ATTR_SB_POOL_INDEX])
@@ -404,18 +393,11 @@ static int devlink_sb_pool_index_get_from_attrs(struct devlink_sb *devlink_sb,
 	return 0;
 }
 
-static int devlink_sb_pool_index_get_from_info(struct devlink_sb *devlink_sb,
-					       struct genl_info *info,
-					       u16 *p_pool_index)
-{
-	return devlink_sb_pool_index_get_from_attrs(devlink_sb, info->attrs,
-						    p_pool_index);
-}
-
 static int
-devlink_sb_pool_type_get_from_attrs(struct nlattr **attrs,
-				    enum devlink_sb_pool_type *p_pool_type)
+devlink_sb_pool_type_get_from_info(struct genl_info *info,
+				   enum devlink_sb_pool_type *p_pool_type)
 {
+	struct nlattr **attrs = info->attrs;
 	u8 val;
 
 	if (!attrs[DEVLINK_ATTR_SB_POOL_TYPE])
@@ -430,16 +412,10 @@ devlink_sb_pool_type_get_from_attrs(struct nlattr **attrs,
 }
 
 static int
-devlink_sb_pool_type_get_from_info(struct genl_info *info,
-				   enum devlink_sb_pool_type *p_pool_type)
-{
-	return devlink_sb_pool_type_get_from_attrs(info->attrs, p_pool_type);
-}
-
-static int
-devlink_sb_th_type_get_from_attrs(struct nlattr **attrs,
-				  enum devlink_sb_threshold_type *p_th_type)
+devlink_sb_th_type_get_from_info(struct genl_info *info,
+				 enum devlink_sb_threshold_type *p_th_type)
 {
+	struct nlattr **attrs = info->attrs;
 	u8 val;
 
 	if (!attrs[DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE])
@@ -454,18 +430,12 @@ devlink_sb_th_type_get_from_attrs(struct nlattr **attrs,
 }
 
 static int
-devlink_sb_th_type_get_from_info(struct genl_info *info,
-				 enum devlink_sb_threshold_type *p_th_type)
-{
-	return devlink_sb_th_type_get_from_attrs(info->attrs, p_th_type);
-}
-
-static int
-devlink_sb_tc_index_get_from_attrs(struct devlink_sb *devlink_sb,
-				   struct nlattr **attrs,
-				   enum devlink_sb_pool_type pool_type,
-				   u16 *p_tc_index)
+devlink_sb_tc_index_get_from_info(struct devlink_sb *devlink_sb,
+				  struct genl_info *info,
+				  enum devlink_sb_pool_type pool_type,
+				  u16 *p_tc_index)
 {
+	struct nlattr **attrs = info->attrs;
 	u16 val;
 
 	if (!attrs[DEVLINK_ATTR_SB_TC_INDEX])
@@ -482,16 +452,6 @@ devlink_sb_tc_index_get_from_attrs(struct devlink_sb *devlink_sb,
 	return 0;
 }
 
-static int
-devlink_sb_tc_index_get_from_info(struct devlink_sb *devlink_sb,
-				  struct genl_info *info,
-				  enum devlink_sb_pool_type pool_type,
-				  u16 *p_tc_index)
-{
-	return devlink_sb_tc_index_get_from_attrs(devlink_sb, info->attrs,
-						  pool_type, p_tc_index);
-}
-
 struct devlink_region {
 	struct devlink *devlink;
 	struct devlink_port *port;
@@ -1972,7 +1932,7 @@ static int devlink_nl_cmd_sb_get_doit(struct sk_buff *skb,
 	struct sk_buff *msg;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2090,7 +2050,7 @@ static int devlink_nl_cmd_sb_pool_get_doit(struct sk_buff *skb,
 	u16 pool_index;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2214,7 +2174,7 @@ static int devlink_nl_cmd_sb_pool_set_doit(struct sk_buff *skb,
 	u32 size;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2305,7 +2265,7 @@ static int devlink_nl_cmd_sb_port_pool_get_doit(struct sk_buff *skb,
 	u16 pool_index;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2435,7 +2395,7 @@ static int devlink_nl_cmd_sb_port_pool_set_doit(struct sk_buff *skb,
 	u32 threshold;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2528,7 +2488,7 @@ static int devlink_nl_cmd_sb_tc_pool_bind_get_doit(struct sk_buff *skb,
 	u16 tc_index;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2689,7 +2649,7 @@ static int devlink_nl_cmd_sb_tc_pool_bind_set_doit(struct sk_buff *skb,
 	u32 threshold;
 	int err;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2723,7 +2683,7 @@ static int devlink_nl_cmd_sb_occ_snapshot_doit(struct sk_buff *skb,
 	const struct devlink_ops *ops = devlink->ops;
 	struct devlink_sb *devlink_sb;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -2739,7 +2699,7 @@ static int devlink_nl_cmd_sb_occ_max_clear_doit(struct sk_buff *skb,
 	const struct devlink_ops *ops = devlink->ops;
 	struct devlink_sb *devlink_sb;
 
-	devlink_sb = devlink_sb_get_from_info(devlink, info);
+	devlink_sb = devlink_sb_get_from_attrs(devlink, info->attrs);
 	if (IS_ERR(devlink_sb))
 		return PTR_ERR(devlink_sb);
 
@@ -9636,29 +9596,24 @@ int devlink_sb_register(struct devlink *devlink, unsigned int sb_index,
 			u16 egress_tc_count)
 {
 	struct devlink_sb *devlink_sb;
-	int err = 0;
 
-	mutex_lock(&devlink->lock);
-	if (devlink_sb_index_exists(devlink, sb_index)) {
-		err = -EEXIST;
-		goto unlock;
-	}
+	WARN_ON(devlink_sb_get_by_index(devlink, sb_index));
 
 	devlink_sb = kzalloc(sizeof(*devlink_sb), GFP_KERNEL);
-	if (!devlink_sb) {
-		err = -ENOMEM;
-		goto unlock;
-	}
+	if (!devlink_sb)
+		return -ENOMEM;
+
 	devlink_sb->index = sb_index;
 	devlink_sb->size = size;
 	devlink_sb->ingress_pools_count = ingress_pools_count;
 	devlink_sb->egress_pools_count = egress_pools_count;
 	devlink_sb->ingress_tc_count = ingress_tc_count;
 	devlink_sb->egress_tc_count = egress_tc_count;
+
+	mutex_lock(&devlink->lock);
 	list_add_tail(&devlink_sb->list, &devlink->sb_list);
-unlock:
 	mutex_unlock(&devlink->lock);
-	return err;
+	return 0;
 }
 EXPORT_SYMBOL_GPL(devlink_sb_register);
 
@@ -9666,9 +9621,10 @@ void devlink_sb_unregister(struct devlink *devlink, unsigned int sb_index)
 {
 	struct devlink_sb *devlink_sb;
 
-	mutex_lock(&devlink->lock);
 	devlink_sb = devlink_sb_get_by_index(devlink, sb_index);
 	WARN_ON(!devlink_sb);
+
+	mutex_lock(&devlink->lock);
 	list_del(&devlink_sb->list);
 	mutex_unlock(&devlink->lock);
 	kfree(devlink_sb);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
