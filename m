Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CF3454D18
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Nov 2021 19:26:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D134606BF;
	Wed, 17 Nov 2021 18:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FstmuK07GFkg; Wed, 17 Nov 2021 18:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28C1260A6F;
	Wed, 17 Nov 2021 18:26:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E16B1BF309
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A96640243
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7deY_d3GSvSH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Nov 2021 18:26:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F07540147
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Nov 2021 18:26:33 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0897A61BD3;
 Wed, 17 Nov 2021 18:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637173593;
 bh=egTOWZok2LDjlwNFZaUiL4p9ekcH/5KxuwhLpRQVX54=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qM01AiRFituJX5zzSS2GSL824fLNVYiatRUoewCIYAB3QvufLFANfD47AvKp4k6J+
 ZC3KzlYBKZVJIdRgvJ+9VOWwZ1/YaKFbih6WQG6R5ehJFjUnXkTWZyV+9WYRT1swja
 PeDdCRerL/TO9HKwe1HWNdf73cwnN0LbyKBoSnhEuE7lXKw/DfccPOQPX8dHBzaaFc
 80wYBuMTFlnwwHTjEzkjgULzLLa03ZxP7coBq9Ye3BSwmT6KgO/EPwDzX9w7CHkMB+
 07mTZYULQRTWns+UpJ4Bp0ktaw6UFrv3HTnclLYtLonPqU9p8lf8XIpw2KeQNm2KX/
 XEnzzMu7Rb7sw==
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Date: Wed, 17 Nov 2021 20:26:18 +0200
Message-Id: <de107b4b9e547f0adc5946b0cc720de7ee3e8c14.1637173517.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <cover.1637173517.git.leonro@nvidia.com>
References: <cover.1637173517.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/6] devlink: Delete useless
 checks of holding devlink lock
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

The snapshot API is fully protected by devlink->lock and these internal
functions are not exported directly to the code outside of the devlink.c.
This makes the checks of holding devlink lock as completely redundant.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 net/core/devlink.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/net/core/devlink.c b/net/core/devlink.c
index 1cb2e0ae9173..dcc09c62f3e5 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -5223,8 +5223,6 @@ static int __devlink_snapshot_id_increment(struct devlink *devlink, u32 id)
 	unsigned long count;
 	void *p;
 
-	lockdep_assert_held(&devlink->lock);
-
 	p = xa_load(&devlink->snapshot_ids, id);
 	if (WARN_ON(!p))
 		return -EINVAL;
@@ -5259,8 +5257,6 @@ static void __devlink_snapshot_id_decrement(struct devlink *devlink, u32 id)
 	unsigned long count;
 	void *p;
 
-	lockdep_assert_held(&devlink->lock);
-
 	p = xa_load(&devlink->snapshot_ids, id);
 	if (WARN_ON(!p))
 		return;
@@ -5298,8 +5294,6 @@ static void __devlink_snapshot_id_decrement(struct devlink *devlink, u32 id)
  */
 static int __devlink_snapshot_id_insert(struct devlink *devlink, u32 id)
 {
-	lockdep_assert_held(&devlink->lock);
-
 	if (xa_load(&devlink->snapshot_ids, id))
 		return -EEXIST;
 
@@ -5325,8 +5319,6 @@ static int __devlink_snapshot_id_insert(struct devlink *devlink, u32 id)
  */
 static int __devlink_region_snapshot_id_get(struct devlink *devlink, u32 *id)
 {
-	lockdep_assert_held(&devlink->lock);
-
 	return xa_alloc(&devlink->snapshot_ids, id, xa_mk_value(1),
 			xa_limit_32b, GFP_KERNEL);
 }
@@ -5353,8 +5345,6 @@ __devlink_region_snapshot_create(struct devlink_region *region,
 	struct devlink_snapshot *snapshot;
 	int err;
 
-	lockdep_assert_held(&devlink->lock);
-
 	/* check if region can hold one more snapshot */
 	if (region->cur_snapshots == region->max_snapshots)
 		return -ENOSPC;
@@ -5391,8 +5381,6 @@ static void devlink_region_snapshot_del(struct devlink_region *region,
 {
 	struct devlink *devlink = region->devlink;
 
-	lockdep_assert_held(&devlink->lock);
-
 	devlink_nl_region_notify(region, snapshot, DEVLINK_CMD_REGION_DEL);
 	region->cur_snapshots--;
 	list_del(&snapshot->list);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
