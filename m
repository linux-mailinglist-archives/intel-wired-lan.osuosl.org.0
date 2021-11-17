Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FF1454D22
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 19:26:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93559404A6;
	Wed, 17 Nov 2021 18:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r8pa4imdTUDr; Wed, 17 Nov 2021 18:26:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4ACDB40243;
	Wed, 17 Nov 2021 18:26:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EB9C1BF309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1AEAA81D68
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YFv7q5RB8vMF for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 18:26:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BCC981BD4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:44 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42EC261BD3;
 Wed, 17 Nov 2021 18:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637173604;
 bh=9GifBOLGSt92YGCLXeltZ5sxLbD7rh+yoqUpg2uHSto=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kally2Xxf6HW0dc9sixj9XBFUhD0ZYcEmZeZ6/yG7ptkLtALMd+zjbI/E1Mlpd8lN
 +XRvcYyQQSfQ+AVZr3g7XnTwVlRGUV6tRfEe0I2ui/WxTxhpFt9xkdXT7uq7SerEjo
 9mLXZWyacsRbuZdMoEIkS4M/3r5Zi1ltJBimLdxs4kYYGLFnecIoj9yXd1WkEjcrzT
 BLqEET89BTEGoHzsq2vvOEVCVBZixhAjr5tyWOmG5xkOIW3aSCGRsw15Enfh0TJatt
 daiP2YoPM9jVpqPhQ6eBhAe0XAH98x6RlBV9ltBgbjtROttUs3+t8XKxQEGkTSJ6F7
 /NPaG/PI+N9aw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 Nov 2021 20:26:21 +0200
Message-Id: <6176a137a4ded48501e8a06fda0e305f9cfc787c.1637173517.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <cover.1637173517.git.leonro@nvidia.com>
References: <cover.1637173517.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 5/6] devlink: Reshuffle resource
 registration logic
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

The devlink->lock doesn't need to be held during whole execution of
function, but only when recursive path walk and list addition are
performed. So reshuffle the resource registration logic to allocate
resource and configure it without lock.

As part of this change, complain more louder if driver authors used
already existed resource_id. It is performed outside of the locks as
drivers were supposed to provide unique IDs and such error can't happen.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/core/devlink.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index 356057ea2e52..1dda313d6d1b 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -9833,17 +9833,9 @@ int devlink_resource_register(struct devlink *devlink,
 {
 	struct devlink_resource *resource;
 	struct list_head *resource_list;
-	bool top_hierarchy;
 	int err = 0;
 
-	top_hierarchy = parent_resource_id == DEVLINK_RESOURCE_ID_PARENT_TOP;
-
-	mutex_lock(&devlink->lock);
-	resource = devlink_resource_find(devlink, NULL, resource_id);
-	if (resource) {
-		err = -EINVAL;
-		goto out;
-	}
+	WARN_ON(devlink_resource_find(devlink, NULL, resource_id));
 
 	resource = kzalloc(sizeof(*resource), GFP_KERNEL);
 	if (!resource) {
@@ -9851,7 +9843,17 @@ int devlink_resource_register(struct devlink *devlink,
 		goto out;
 	}
 
-	if (top_hierarchy) {
+	resource->name = resource_name;
+	resource->size = resource_size;
+	resource->size_new = resource_size;
+	resource->id = resource_id;
+	resource->size_valid = true;
+	memcpy(&resource->size_params, size_params,
+	       sizeof(resource->size_params));
+	INIT_LIST_HEAD(&resource->resource_list);
+
+	mutex_lock(&devlink->lock);
+	if (parent_resource_id == DEVLINK_RESOURCE_ID_PARENT_TOP) {
 		resource_list = &devlink->resource_list;
 	} else {
 		struct devlink_resource *parent_resource;
@@ -9868,14 +9870,6 @@ int devlink_resource_register(struct devlink *devlink,
 		}
 	}
 
-	resource->name = resource_name;
-	resource->size = resource_size;
-	resource->size_new = resource_size;
-	resource->id = resource_id;
-	resource->size_valid = true;
-	memcpy(&resource->size_params, size_params,
-	       sizeof(resource->size_params));
-	INIT_LIST_HEAD(&resource->resource_list);
 	list_add_tail(&resource->list, resource_list);
 out:
 	mutex_unlock(&devlink->lock);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
