Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D480A1350E0
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Jan 2020 02:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9209387916;
	Thu,  9 Jan 2020 01:09:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0Sv7InRQyd6; Thu,  9 Jan 2020 01:09:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51FD587E09;
	Thu,  9 Jan 2020 01:09:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70A961BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6B441864DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SmRQkF+PkZII for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58A8486447
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jan 2020 01:09:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 17:09:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,412,1571727600"; d="scan'208";a="223112626"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.244.172])
 by orsmga006.jf.intel.com with ESMTP; 08 Jan 2020 17:09:34 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed,  8 Jan 2020 17:08:18 -0800
Message-Id: <20200109010818.1326575-4-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.25.0.rc1
In-Reply-To: <20200109010818.1326575-1-jacob.e.keller@intel.com>
References: <20200109010818.1326575-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 3/4] devlink: add support for triggering
 snapshots from userspace
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

Currently, devlink region snapshots are captured by the driver at some
internal trigger. There is no standard method for userspace to request
that a snapshot be created.

For some use cases of regions, this is acceptable. The snapshots only
make sense if taken in response to some internal driver event.

However, regions could be used for other purposes. For example, a driver
might export a region that represents the contents of some portion of
the device flash. In this case, there is no event that triggers
a snapshot. Instead, it makes sense for user space to request a snapshot
in some manner.

Currently, drivers must implement such a trigger through an out-of-band
mechanism. The netdevsim driver does this through a debugfs file.

Create a standard interface for requesting snapshots via a new devlink
command: DEVLINK_CMG_REGION_TRIGGER_SNAPSHOT.

At region creation time, drivers may optionally define
a trigger_snapshot function callback. If not defined, the
DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT will simply report EOPNOTSUPP.

If defined, the command will call the trigger_snapshot function
callback, resulting in a new snapshot being created.

With this, there is a standard mechanism for requesting new snapshots of
a given devlink region.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/mellanox/mlx4/crdump.c |  4 +-
 drivers/net/netdevsim/dev.c                 | 37 +++++++++++++-----
 include/net/devlink.h                       | 12 ++++--
 include/uapi/linux/devlink.h                |  2 +
 net/core/devlink.c                          | 43 +++++++++++++++++++--
 5 files changed, 78 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx4/crdump.c b/drivers/net/ethernet/mellanox/mlx4/crdump.c
index 64ed725aec28..4b1373414b0b 100644
--- a/drivers/net/ethernet/mellanox/mlx4/crdump.c
+++ b/drivers/net/ethernet/mellanox/mlx4/crdump.c
@@ -207,7 +207,7 @@ int mlx4_crdump_init(struct mlx4_dev *dev)
 		devlink_region_create(devlink,
 				      region_cr_space_str,
 				      MAX_NUM_OF_DUMPS_TO_STORE,
-				      pci_resource_len(pdev, 0));
+				      pci_resource_len(pdev, 0), NULL);
 	if (IS_ERR(crdump->region_crspace))
 		mlx4_warn(dev, "crdump: create devlink region %s err %ld\n",
 			  region_cr_space_str,
@@ -218,7 +218,7 @@ int mlx4_crdump_init(struct mlx4_dev *dev)
 		devlink_region_create(devlink,
 				      region_fw_health_str,
 				      MAX_NUM_OF_DUMPS_TO_STORE,
-				      HEALTH_BUFFER_SIZE);
+				      HEALTH_BUFFER_SIZE, NULL);
 	if (IS_ERR(crdump->region_fw_health))
 		mlx4_warn(dev, "crdump: create devlink region %s err %ld\n",
 			  region_fw_health_str,
diff --git a/drivers/net/netdevsim/dev.c b/drivers/net/netdevsim/dev.c
index 4b39aba2e9c4..4ed9c8d8de7c 100644
--- a/drivers/net/netdevsim/dev.c
+++ b/drivers/net/netdevsim/dev.c
@@ -38,30 +38,46 @@ static struct dentry *nsim_dev_ddir;
 
 #define NSIM_DEV_DUMMY_REGION_SIZE (1024 * 32)
 
-static ssize_t nsim_dev_take_snapshot_write(struct file *file,
-					    const char __user *data,
-					    size_t count, loff_t *ppos)
+static int nsim_dev_trigger_snapshot(struct devlink *devlink,
+				     struct devlink_region *region,
+				     struct netlink_ext_ack *extack)
 {
-	struct nsim_dev *nsim_dev = file->private_data;
 	void *dummy_data;
 	int err;
 	u32 id;
 
 	dummy_data = kmalloc(NSIM_DEV_DUMMY_REGION_SIZE, GFP_KERNEL);
-	if (!dummy_data)
+	if (!dummy_data) {
+		NL_SET_ERR_MSG(extack, "Out of memory");
 		return -ENOMEM;
+	}
 
 	get_random_bytes(dummy_data, NSIM_DEV_DUMMY_REGION_SIZE);
 
-	id = devlink_region_snapshot_id_get(priv_to_devlink(nsim_dev));
-	err = devlink_region_snapshot_create(nsim_dev->dummy_region,
-					     dummy_data, id, kfree);
+	id = devlink_region_snapshot_id_get(devlink);
+	err = devlink_region_snapshot_create(region, dummy_data, id, kfree);
 	if (err) {
-		pr_err("Failed to create region snapshot\n");
+		NL_SET_ERR_MSG(extack, "Failed to create region snapshot");
 		kfree(dummy_data);
 		return err;
 	}
 
+	return (0);
+
+}
+
+static ssize_t nsim_dev_take_snapshot_write(struct file *file,
+					    const char __user *data,
+					    size_t count, loff_t *ppos)
+{
+	struct nsim_dev *nsim_dev = file->private_data;
+	int err;
+
+	err = nsim_dev_trigger_snapshot(priv_to_devlink(nsim_dev),
+					nsim_dev->dummy_region, NULL);
+	if (err)
+		return err;
+
 	return count;
 }
 
@@ -248,7 +264,8 @@ static int nsim_dev_dummy_region_init(struct nsim_dev *nsim_dev,
 	nsim_dev->dummy_region =
 		devlink_region_create(devlink, "dummy",
 				      NSIM_DEV_DUMMY_REGION_SNAPSHOT_MAX,
-				      NSIM_DEV_DUMMY_REGION_SIZE);
+				      NSIM_DEV_DUMMY_REGION_SIZE,
+				      nsim_dev_trigger_snapshot);
 	return PTR_ERR_OR_ZERO(nsim_dev->dummy_region);
 }
 
diff --git a/include/net/devlink.h b/include/net/devlink.h
index 38b4acb93f74..f93b1a07c9f2 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -491,6 +491,10 @@ struct devlink_info_req;
 
 typedef void devlink_snapshot_data_dest_t(const void *data);
 
+typedef int devlink_trigger_snapshot_t(struct devlink *devlink,
+				       struct devlink_region *region,
+				       struct netlink_ext_ack *extack);
+
 struct devlink_fmsg;
 struct devlink_health_reporter;
 
@@ -933,10 +937,10 @@ void devlink_port_param_value_changed(struct devlink_port *devlink_port,
 				      u32 param_id);
 void devlink_param_value_str_fill(union devlink_param_value *dst_val,
 				  const char *src);
-struct devlink_region *devlink_region_create(struct devlink *devlink,
-					     const char *region_name,
-					     u32 region_max_snapshots,
-					     u64 region_size);
+struct devlink_region *
+devlink_region_create(struct devlink *devlink, const char *region_name,
+		      u32 region_max_snapshots, u64 region_size,
+		      devlink_trigger_snapshot_t *trigger_snapshot);
 void devlink_region_destroy(struct devlink_region *region);
 u32 devlink_region_snapshot_id_get(struct devlink *devlink);
 int devlink_region_snapshot_create(struct devlink_region *region,
diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
index ae37fd4d194a..19bec058691d 100644
--- a/include/uapi/linux/devlink.h
+++ b/include/uapi/linux/devlink.h
@@ -117,6 +117,8 @@ enum devlink_command {
 	DEVLINK_CMD_TRAP_GROUP_NEW,
 	DEVLINK_CMD_TRAP_GROUP_DEL,
 
+	DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT,
+
 	/* add new commands above here */
 	__DEVLINK_CMD_MAX,
 	DEVLINK_CMD_MAX = __DEVLINK_CMD_MAX - 1
diff --git a/net/core/devlink.c b/net/core/devlink.c
index b6fc67dbd612..ffc87dd54dbd 100644
--- a/net/core/devlink.c
+++ b/net/core/devlink.c
@@ -349,6 +349,7 @@ struct devlink_region {
 	u32 max_snapshots;
 	u32 cur_snapshots;
 	u64 size;
+	devlink_trigger_snapshot_t *trigger_snapshot;
 };
 
 struct devlink_snapshot {
@@ -4052,6 +4053,30 @@ static int devlink_nl_cmd_region_read_dumpit(struct sk_buff *skb,
 	return err;
 }
 
+static int devlink_nl_cmd_region_trigger_snapshot(struct sk_buff *skb,
+						  struct genl_info *info)
+{
+	struct devlink *devlink = info->user_ptr[0];
+	struct devlink_region *region;
+	const char *region_name;
+	struct sk_buff *msg;
+	u32 snapshot_id;
+	int err;
+
+	if (!info->attrs[DEVLINK_ATTR_REGION_NAME])
+		return -EINVAL;
+
+	region_name = nla_data(info->attrs[DEVLINK_ATTR_REGION_NAME]);
+	region = devlink_region_get_by_name(devlink, region_name);
+	if (!region)
+		return -EINVAL;
+
+	if (!region->trigger_snapshot)
+		return -EOPNOTSUPP;
+
+	return region->trigger_snapshot(devlink, region, info->extack);
+}
+
 struct devlink_info_req {
 	struct sk_buff *msg;
 };
@@ -6158,6 +6183,14 @@ static const struct genl_ops devlink_nl_ops[] = {
 		.flags = GENL_ADMIN_PERM,
 		.internal_flags = DEVLINK_NL_FLAG_NEED_DEVLINK,
 	},
+	{
+		.cmd = DEVLINK_CMD_REGION_TRIGGER_SNAPSHOT,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit = devlink_nl_cmd_region_trigger_snapshot,
+		.flags = GENL_ADMIN_PERM,
+		.internal_flags = DEVLINK_NL_FLAG_NEED_DEVLINK |
+				  DEVLINK_NL_FLAG_NO_LOCK,
+	},
 	{
 		.cmd = DEVLINK_CMD_INFO_GET,
 		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
@@ -7499,11 +7532,12 @@ EXPORT_SYMBOL_GPL(devlink_param_value_str_fill);
  *	@region_name: region name
  *	@region_max_snapshots: Maximum supported number of snapshots for region
  *	@region_size: size of region
+ *	@trigger_snapshot: function to trigger creation of snapshot
  */
-struct devlink_region *devlink_region_create(struct devlink *devlink,
-					     const char *region_name,
-					     u32 region_max_snapshots,
-					     u64 region_size)
+struct devlink_region *
+devlink_region_create(struct devlink *devlink, const char *region_name,
+		      u32 region_max_snapshots, u64 region_size,
+		      devlink_trigger_snapshot_t *trigger_snapshot)
 {
 	struct devlink_region *region;
 	int err = 0;
@@ -7525,6 +7559,7 @@ struct devlink_region *devlink_region_create(struct devlink *devlink,
 	region->max_snapshots = region_max_snapshots;
 	region->name = region_name;
 	region->size = region_size;
+	region->trigger_snapshot = trigger_snapshot;
 	INIT_LIST_HEAD(&region->snapshot_list);
 	list_add_tail(&region->list, &devlink->region_list);
 	devlink_nl_region_notify(region, NULL, DEVLINK_CMD_REGION_NEW);
-- 
2.25.0.rc1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
