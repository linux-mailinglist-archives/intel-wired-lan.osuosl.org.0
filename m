Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4431350E1
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 02:09:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 678CF87E14;
	Thu,  9 Jan 2020 01:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e3UCuRfUGrF7; Thu,  9 Jan 2020 01:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CB2E87E30;
	Thu,  9 Jan 2020 01:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F68F1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3A09F86447
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gbaRMw7ezJrf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 90016864C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 17:09:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="223112620"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2020 17:09:34 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Jan 2020 17:08:16 -0800
Message-Id: <20200109010818.1326575-2-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109010818.1326575-1-jacob.e.keller@intel.com>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/4] devlink: correct misspelling of
 snapshot
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
Cc: jiri@resnulli.us, valex@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The function to obtain a unique snapshot id was mistakenly typo'd as
devlink_region_shapshot_id_get. Fix this typo by renaming the function
and all of its users.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/mellanox/mlx4/crdump.c | 2 +-
 drivers/net/netdevsim/dev.c                 | 2 +-
 include/net/devlink.h                       | 2 +-
 net/core/devlink.c                          | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/crdump.c b/drivers/net/ethernet/mellanox/mlx4/crdump.c
index eaf08f7ad128..64ed725aec28 100644
--- a/drivers/net/ethernet/mellanox/mlx4/crdump.c
+++ b/drivers/net/ethernet/mellanox/mlx4/crdump.c
@@ -182,7 +182,7 @@ int mlx4_crdump_collect(struct mlx4_dev *dev)
 	crdump_enable_crspace_access(dev, cr_space);
 
 	/* Get the available snapshot ID for the dumps */
-	id = devlink_region_shapshot_id_get(devlink);
+	id = devlink_region_snapshot_id_get(devlink);
 
 	/* Try to capture dumps */
 	mlx4_crdump_collect_crspace(dev, cr_space, id);
diff --git a/drivers/net/netdevsim/dev.c b/drivers/net/netdevsim/dev.c
index 059711edfc61..4b39aba2e9c4 100644
--- a/drivers/net/netdevsim/dev.c
+++ b/drivers/net/netdevsim/dev.c
@@ -53,7 +53,7 @@ static ssize_t nsim_dev_take_snapshot_write(struct file *file,
 
 	get_random_bytes(dummy_data, NSIM_DEV_DUMMY_REGION_SIZE);
 
-	id = devlink_region_shapshot_id_get(priv_to_devlink(nsim_dev));
+	id = devlink_region_snapshot_id_get(priv_to_devlink(nsim_dev));
 	err = devlink_region_snapshot_create(nsim_dev->dummy_region,
 					     dummy_data, id, kfree);
 	if (err) {
diff --git a/include/net/devlink.h b/include/net/devlink.h
index 47f87b2fcf63..38b4acb93f74 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -938,7 +938,7 @@ struct devlink_region *devlink_region_create(struct devlink *devlink,
 					     u32 region_max_snapshots,
 					     u64 region_size);
 void devlink_region_destroy(struct devlink_region *region);
-u32 devlink_region_shapshot_id_get(struct devlink *devlink);
+u32 devlink_region_snapshot_id_get(struct devlink *devlink);
 int devlink_region_snapshot_create(struct devlink_region *region,
 				   u8 *data, u32 snapshot_id,
 				   devlink_snapshot_data_dest_t *data_destructor);
diff --git a/net/core/devlink.c b/net/core/devlink.c
index 4c63c9a4c09e..b6fc67dbd612 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -7563,7 +7563,7 @@ void devlink_region_destroy(struct devlink_region *region)
 EXPORT_SYMBOL_GPL(devlink_region_destroy);
 
 /**
- *	devlink_region_shapshot_id_get - get snapshot ID
+ *	devlink_region_snapshot_id_get - get snapshot ID
  *
  *	This callback should be called when adding a new snapshot,
  *	Driver should use the same id for multiple snapshots taken
@@ -7571,7 +7571,7 @@ EXPORT_SYMBOL_GPL(devlink_region_destroy);
  *
  *	@devlink: devlink
  */
-u32 devlink_region_shapshot_id_get(struct devlink *devlink)
+u32 devlink_region_snapshot_id_get(struct devlink *devlink)
 {
 	u32 id;
 
@@ -7581,7 +7581,7 @@ u32 devlink_region_shapshot_id_get(struct devlink *devlink)
 
 	return id;
 }
-EXPORT_SYMBOL_GPL(devlink_region_shapshot_id_get);
+EXPORT_SYMBOL_GPL(devlink_region_snapshot_id_get);
 
 /**
  *	devlink_region_snapshot_create - create a new snapshot
-- 
2.25.0.rc1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
