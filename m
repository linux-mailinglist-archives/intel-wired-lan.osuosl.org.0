Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8817A73B7BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 14:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 121E2419BA;
	Fri, 23 Jun 2023 12:42:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 121E2419BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687524144;
	bh=eY7inWWl8orSwRA4cLqNWSi5QAk8Jqm7M4YIwFJPYdc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZvDwQj03f/WJKNMavSt/SIseFcImMpOK8qWgrawN/wg+9o/eV5xER4ld/A+O6Fe9T
	 OEyHGqvYFNMrRZY1xKlkYUpFRuPdf4biJPKrZ6jsflSiQbno9r1b+uAGS3qLd3kZ0x
	 FdcDu4K2++Pjy9HQFTPZrwCgXH7bhQhSrk+MjvggcLHnFDqksg1kUse3T1Pkr1aqD/
	 2MuUsCemysLRziJ9TZW3oW5dpZlj2sOZOy8QT5x7wAHSe9eYy09jatYQHjmUZKcVQ0
	 OnnwxQXvkNx1YKZeL80MldNMVI1M2U1kPL05IdNOm6qCcSF5aGyjkKNgD/Jh2bh5ZP
	 rWH897DYNULVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BMnI0KK-wgTE; Fri, 23 Jun 2023 12:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C348F4199E;
	Fri, 23 Jun 2023 12:42:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C348F4199E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2392B1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:42:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAC17419B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:42:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAC17419B5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NINUqOhXyqfL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 12:42:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1E9B419BC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1E9B419BC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 12:42:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="341096955"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="341096955"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 05:42:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10750"; a="785321399"
X-IronPort-AV: E=Sophos;i="6.01,152,1684825200"; d="scan'208";a="785321399"
Received: from amlin-018-114.igk.intel.com ([10.102.18.114])
 by fmsmga004.fm.intel.com with ESMTP; 23 Jun 2023 05:42:02 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: kuba@kernel.org, jiri@resnulli.us, arkadiusz.kubalewski@intel.com,
 vadfed@meta.com, jonathan.lemon@gmail.com, pabeni@redhat.com
Date: Fri, 23 Jun 2023 14:38:20 +0200
Message-Id: <20230623123820.42850-11-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687524134; x=1719060134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cRe2O4cFvCOuO+eCYpwGmgP2suSJEl/aU3LjhlTHcM4=;
 b=e5Iq5AHChgKyJwNVdI3CLH3jTTdFV+Y/W95wzM6NzI/03o0BzBx/RNca
 ssMJLnObanoAiwCPXCzLFUlJok85OI/wYzE1HwbSeE3VIEXRFlBH05niL
 sIrVYh/uzW6OHPPkYHOgH2Cb2fd29zcNIubLUKahsLwc5eJRRFIU1w4Jk
 a8GUpmKtBak8FFNccYRkzvyKy8U/NY2hgAdr2gZLdXkCs/orqA5yd4sGF
 A8kjq4pwUo9GVHm5nrmd+9E9QyMKlaXIObLls4pPR0KGIg1PJdZPUM5x/
 yjijmpqiDAM/1FOTNC4Kbnc3fzdHJwjhxkEti5+eGD1iRZFcZO2Rv1cI9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e5Iq5AHC
Subject: [Intel-wired-lan] [RFC PATCH v9 10/10] mlx5: Implement SyncE
 support using DPLL infrastructure
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, airlied@redhat.com, vadfed@fb.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 Jiri Pirko <jiri@nvidia.com>, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, netdev@vger.kernel.org,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jiri Pirko <jiri@nvidia.com>

Implement SyncE support using newly introduced DPLL support.
Make sure that each PFs/VFs/SFs probed with appropriate capability
will spawn a dpll auxiliary device and register appropriate dpll device
and pin instances.

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 .../net/ethernet/mellanox/mlx5/core/Kconfig   |   8 +
 .../net/ethernet/mellanox/mlx5/core/Makefile  |   3 +
 drivers/net/ethernet/mellanox/mlx5/core/dev.c |  17 +
 .../net/ethernet/mellanox/mlx5/core/dpll.c    | 432 ++++++++++++++++++
 include/linux/mlx5/driver.h                   |   2 +
 include/linux/mlx5/mlx5_ifc.h                 |  59 ++-
 6 files changed, 520 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/mellanox/mlx5/core/dpll.c

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/Kconfig b/drivers/net/ethernet/mellanox/mlx5/core/Kconfig
index bb1d7b039a7e..15a48d376eb3 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/Kconfig
+++ b/drivers/net/ethernet/mellanox/mlx5/core/Kconfig
@@ -188,3 +188,11 @@ config MLX5_SF_MANAGER
 	port is managed through devlink.  A subfunction supports RDMA, netdevice
 	and vdpa device. It is similar to a SRIOV VF but it doesn't require
 	SRIOV support.
+
+config MLX5_DPLL
+	tristate "Mellanox 5th generation network adapters (ConnectX series) DPLL support"
+	depends on NETDEVICES && ETHERNET && PCI && MLX5_CORE
+	select DPLL
+	help
+	  DPLL support in Mellanox Technologies ConnectX NICs.
+
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/Makefile b/drivers/net/ethernet/mellanox/mlx5/core/Makefile
index 35f00700a4d6..3965249c1c34 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/Makefile
+++ b/drivers/net/ethernet/mellanox/mlx5/core/Makefile
@@ -124,3 +124,6 @@ mlx5_core-$(CONFIG_MLX5_SF) += sf/vhca_event.o sf/dev/dev.o sf/dev/driver.o irq_
 # SF manager
 #
 mlx5_core-$(CONFIG_MLX5_SF_MANAGER) += sf/cmd.o sf/hw_table.o sf/devlink.o
+
+obj-$(CONFIG_MLX5_DPLL) += mlx5_dpll.o
+mlx5_dpll-y :=	dpll.o
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dev.c b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
index 617ac7e5d75c..a3186abb6884 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/dev.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
@@ -211,6 +211,19 @@ static bool is_ib_enabled(struct mlx5_core_dev *dev)
 	return err ? false : val.vbool;
 }
 
+static bool is_dpll_supported(struct mlx5_core_dev *dev)
+{
+	if (!IS_ENABLED(CONFIG_MLX5_DPLL))
+		return false;
+
+	if (!MLX5_CAP_MCAM_REG2(dev, synce_registers)) {
+		mlx5_core_warn(dev, "Missing SyncE capability\n");
+		return false;
+	}
+
+	return true;
+}
+
 enum {
 	MLX5_INTERFACE_PROTOCOL_ETH,
 	MLX5_INTERFACE_PROTOCOL_ETH_REP,
@@ -220,6 +233,8 @@ enum {
 	MLX5_INTERFACE_PROTOCOL_MPIB,
 
 	MLX5_INTERFACE_PROTOCOL_VNET,
+
+	MLX5_INTERFACE_PROTOCOL_DPLL,
 };
 
 static const struct mlx5_adev_device {
@@ -242,6 +257,8 @@ static const struct mlx5_adev_device {
 					   .is_supported = &is_ib_rep_supported },
 	[MLX5_INTERFACE_PROTOCOL_MPIB] = { .suffix = "multiport",
 					   .is_supported = &is_mp_supported },
+	[MLX5_INTERFACE_PROTOCOL_DPLL] = { .suffix = "dpll",
+					   .is_supported = &is_dpll_supported },
 };
 
 int mlx5_adev_idx_alloc(void)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dpll.c b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
new file mode 100644
index 000000000000..9bff7044c614
--- /dev/null
+++ b/drivers/net/ethernet/mellanox/mlx5/core/dpll.c
@@ -0,0 +1,432 @@
+// SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
+/* Copyright (c) 2023, NVIDIA CORPORATION & AFFILIATES. All rights reserved. */
+
+#include <linux/dpll.h>
+#include <linux/mlx5/driver.h>
+
+/* This structure represents a reference to DPLL, one is created
+ * per mdev instance.
+ */
+struct mlx5_dpll {
+	struct dpll_device *dpll;
+	struct dpll_pin *dpll_pin;
+	struct mlx5_core_dev *mdev;
+	struct workqueue_struct *wq;
+	struct delayed_work work;
+	struct {
+		bool valid;
+		enum dpll_lock_status lock_status;
+		enum dpll_pin_state pin_state;
+	} last;
+	struct notifier_block mdev_nb;
+	struct net_device *tracking_netdev;
+};
+
+static int mlx5_dpll_clock_id_get(struct mlx5_core_dev *mdev, u64 *clock_id)
+{
+	u32 out[MLX5_ST_SZ_DW(msecq_reg)] = {};
+	u32 in[MLX5_ST_SZ_DW(msecq_reg)] = {};
+	int err;
+
+	err = mlx5_core_access_reg(mdev, in, sizeof(in), out, sizeof(out),
+				   MLX5_REG_MSECQ, 0, 0);
+	if (err)
+		return err;
+	*clock_id = MLX5_GET64(msecq_reg, out, local_clock_identity);
+	return 0;
+}
+
+static int
+mlx5_dpll_synce_status_get(struct mlx5_core_dev *mdev,
+			   enum mlx5_msees_admin_status *admin_status,
+			   enum mlx5_msees_oper_status *oper_status,
+			   bool *ho_acq)
+{
+	u32 out[MLX5_ST_SZ_DW(msees_reg)] = {};
+	u32 in[MLX5_ST_SZ_DW(msees_reg)] = {};
+	int err;
+
+	err = mlx5_core_access_reg(mdev, in, sizeof(in), out, sizeof(out),
+				   MLX5_REG_MSEES, 0, 0);
+	if (err)
+		return err;
+	if (admin_status)
+		*admin_status = MLX5_GET(msees_reg, out, admin_status);
+	*oper_status = MLX5_GET(msees_reg, out, oper_status);
+	if (ho_acq)
+		*ho_acq = MLX5_GET(msees_reg, out, ho_acq);
+	return 0;
+}
+
+static int
+mlx5_dpll_synce_status_set(struct mlx5_core_dev *mdev,
+			   enum mlx5_msees_admin_status admin_status)
+{
+	u32 out[MLX5_ST_SZ_DW(msees_reg)] = {};
+	u32 in[MLX5_ST_SZ_DW(msees_reg)] = {};
+
+	MLX5_SET(msees_reg, in, field_select,
+		 MLX5_MSEES_FIELD_SELECT_ENABLE |
+		 MLX5_MSEES_FIELD_SELECT_ADMIN_STATUS);
+	MLX5_SET(msees_reg, in, admin_status, admin_status);
+	return mlx5_core_access_reg(mdev, in, sizeof(in), out, sizeof(out),
+				    MLX5_REG_MSEES, 0, 1);
+}
+
+static enum dpll_lock_status
+mlx5_dpll_lock_status_get(enum mlx5_msees_oper_status oper_status, bool ho_acq)
+{
+	switch (oper_status) {
+	case MLX5_MSEES_OPER_STATUS_SELF_TRACK:
+		fallthrough;
+	case MLX5_MSEES_OPER_STATUS_OTHER_TRACK:
+		return ho_acq ? DPLL_LOCK_STATUS_LOCKED_HO_ACQ :
+				DPLL_LOCK_STATUS_LOCKED;
+	case MLX5_MSEES_OPER_STATUS_HOLDOVER:
+		fallthrough;
+	case MLX5_MSEES_OPER_STATUS_FAIL_HOLDOVER:
+		return DPLL_LOCK_STATUS_HOLDOVER;
+	default:
+		return DPLL_LOCK_STATUS_UNLOCKED;
+	}
+}
+
+static enum dpll_pin_state
+mlx5_dpll_pin_state_get(enum mlx5_msees_admin_status admin_status,
+			enum mlx5_msees_oper_status oper_status)
+{
+	return (admin_status == MLX5_MSEES_ADMIN_STATUS_TRACK &&
+		(oper_status == MLX5_MSEES_OPER_STATUS_SELF_TRACK ||
+		 oper_status == MLX5_MSEES_OPER_STATUS_OTHER_TRACK)) ?
+	       DPLL_PIN_STATE_CONNECTED : DPLL_PIN_STATE_DISCONNECTED;
+}
+
+static int mlx5_dpll_device_lock_status_get(const struct dpll_device *dpll,
+					    void *priv,
+					    enum dpll_lock_status *status,
+					    struct netlink_ext_ack *extack)
+{
+	enum mlx5_msees_oper_status oper_status;
+	struct mlx5_dpll *mdpll = priv;
+	bool ho_acq;
+	int err;
+
+	err = mlx5_dpll_synce_status_get(mdpll->mdev, NULL,
+					 &oper_status, &ho_acq);
+	if (err)
+		return err;
+
+	*status = mlx5_dpll_lock_status_get(oper_status, ho_acq);
+	return 0;
+}
+
+static int mlx5_dpll_device_mode_get(const struct dpll_device *dpll,
+				     void *priv,
+				     u32 *mode, struct netlink_ext_ack *extack)
+{
+	*mode = DPLL_MODE_MANUAL;
+	return 0;
+}
+
+static bool mlx5_dpll_device_mode_supported(const struct dpll_device *dpll,
+					    void *priv,
+					    enum dpll_mode mode,
+					    struct netlink_ext_ack *extack)
+{
+	return mode == DPLL_MODE_MANUAL;
+}
+
+static const struct dpll_device_ops mlx5_dpll_device_ops = {
+	.lock_status_get = mlx5_dpll_device_lock_status_get,
+	.mode_get = mlx5_dpll_device_mode_get,
+	.mode_supported = mlx5_dpll_device_mode_supported,
+};
+
+static int mlx5_dpll_pin_direction_get(const struct dpll_pin *pin,
+				       void *pin_priv,
+				       const struct dpll_device *dpll,
+				       void *dpll_priv,
+				       enum dpll_pin_direction *direction,
+				       struct netlink_ext_ack *extack)
+{
+	*direction = DPLL_PIN_DIRECTION_INPUT;
+	return 0;
+}
+
+static int mlx5_dpll_state_on_dpll_get(const struct dpll_pin *pin,
+				       void *pin_priv,
+				       const struct dpll_device *dpll,
+				       void *dpll_priv,
+				       enum dpll_pin_state *state,
+				       struct netlink_ext_ack *extack)
+{
+	enum mlx5_msees_admin_status admin_status;
+	enum mlx5_msees_oper_status oper_status;
+	struct mlx5_dpll *mdpll = pin_priv;
+	int err;
+
+	err = mlx5_dpll_synce_status_get(mdpll->mdev, &admin_status,
+					 &oper_status, NULL);
+	if (err)
+		return err;
+	*state = mlx5_dpll_pin_state_get(admin_status, oper_status);
+	return 0;
+}
+
+static int mlx5_dpll_state_on_dpll_set(const struct dpll_pin *pin,
+				       void *pin_priv,
+				       const struct dpll_device *dpll,
+				       void *dpll_priv,
+				       enum dpll_pin_state state,
+				       struct netlink_ext_ack *extack)
+{
+	struct mlx5_dpll *mdpll = pin_priv;
+
+	return mlx5_dpll_synce_status_set(mdpll->mdev,
+					  state == DPLL_PIN_STATE_CONNECTED ?
+					  MLX5_MSEES_ADMIN_STATUS_TRACK :
+					  MLX5_MSEES_ADMIN_STATUS_FREE_RUNNING);
+}
+
+static const struct dpll_pin_ops mlx5_dpll_pins_ops = {
+	.direction_get = mlx5_dpll_pin_direction_get,
+	.state_on_dpll_get = mlx5_dpll_state_on_dpll_get,
+	.state_on_dpll_set = mlx5_dpll_state_on_dpll_set,
+};
+
+static const struct dpll_pin_properties mlx5_dpll_pin_properties = {
+	.type = DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+	.capabilities = DPLL_PIN_CAPS_STATE_CAN_CHANGE,
+};
+
+#define MLX5_DPLL_PERIODIC_WORK_INTERVAL 500 /* ms */
+
+static void mlx5_dpll_periodic_work_queue(struct mlx5_dpll *mdpll)
+{
+	queue_delayed_work(mdpll->wq, &mdpll->work,
+			   msecs_to_jiffies(MLX5_DPLL_PERIODIC_WORK_INTERVAL));
+}
+
+static void mlx5_dpll_periodic_work(struct work_struct *work)
+{
+	struct mlx5_dpll *mdpll = container_of(work, struct mlx5_dpll,
+					       work.work);
+	enum mlx5_msees_admin_status admin_status;
+	enum mlx5_msees_oper_status oper_status;
+	enum dpll_lock_status lock_status;
+	enum dpll_pin_state pin_state;
+	bool ho_acq;
+	int err;
+
+	err = mlx5_dpll_synce_status_get(mdpll->mdev, &admin_status,
+					 &oper_status, &ho_acq);
+	if (err)
+		goto err_out;
+	lock_status = mlx5_dpll_lock_status_get(oper_status, ho_acq);
+	pin_state = mlx5_dpll_pin_state_get(admin_status, oper_status);
+
+	if (!mdpll->last.valid)
+		goto invalid_out;
+
+	if (mdpll->last.lock_status != lock_status)
+		dpll_device_change_ntf(mdpll->dpll);
+	if (mdpll->last.pin_state != pin_state)
+		dpll_pin_change_ntf(mdpll->dpll_pin);
+
+invalid_out:
+	mdpll->last.lock_status = lock_status;
+	mdpll->last.pin_state = pin_state;
+	mdpll->last.valid = true;
+err_out:
+	mlx5_dpll_periodic_work_queue(mdpll);
+}
+
+static void mlx5_dpll_netdev_dpll_pin_set(struct mlx5_dpll *mdpll,
+					  struct net_device *netdev)
+{
+	if (mdpll->tracking_netdev)
+		return;
+	netdev_dpll_pin_set(netdev, mdpll->dpll_pin);
+	mdpll->tracking_netdev = netdev;
+}
+
+static void mlx5_dpll_netdev_dpll_pin_clear(struct mlx5_dpll *mdpll)
+{
+	if (!mdpll->tracking_netdev)
+		return;
+	netdev_dpll_pin_clear(mdpll->tracking_netdev);
+	mdpll->tracking_netdev = NULL;
+}
+
+static int mlx5_dpll_mdev_notifier_event(struct notifier_block *nb,
+					 unsigned long event, void *data)
+{
+	struct mlx5_dpll *mdpll = container_of(nb, struct mlx5_dpll, mdev_nb);
+	struct net_device *netdev = data;
+
+	switch (event) {
+	case MLX5_DRIVER_EVENT_UPLINK_NETDEV:
+		if (netdev)
+			mlx5_dpll_netdev_dpll_pin_set(mdpll, netdev);
+		else
+			mlx5_dpll_netdev_dpll_pin_clear(mdpll);
+		break;
+	default:
+		return NOTIFY_DONE;
+	}
+
+	return NOTIFY_OK;
+}
+
+static void mlx5_dpll_mdev_netdev_track(struct mlx5_dpll *mdpll,
+					struct mlx5_core_dev *mdev)
+{
+	mdpll->mdev_nb.notifier_call = mlx5_dpll_mdev_notifier_event;
+	mlx5_blocking_notifier_register(mdev, &mdpll->mdev_nb);
+	mlx5_core_uplink_netdev_event_replay(mdev);
+}
+
+static void mlx5_dpll_mdev_netdev_untrack(struct mlx5_dpll *mdpll,
+					  struct mlx5_core_dev *mdev)
+{
+	mlx5_blocking_notifier_unregister(mdev, &mdpll->mdev_nb);
+	mlx5_dpll_netdev_dpll_pin_clear(mdpll);
+}
+
+static int mlx5_dpll_probe(struct auxiliary_device *adev,
+			   const struct auxiliary_device_id *id)
+{
+	struct mlx5_adev *edev = container_of(adev, struct mlx5_adev, adev);
+	struct mlx5_core_dev *mdev = edev->mdev;
+	struct mlx5_dpll *mdpll;
+	u64 clock_id;
+	int err;
+
+	err = mlx5_dpll_synce_status_set(mdev,
+					 MLX5_MSEES_ADMIN_STATUS_FREE_RUNNING);
+	if (err)
+		return err;
+
+	err = mlx5_dpll_clock_id_get(mdev, &clock_id);
+	if (err)
+		return err;
+
+	mdpll = kzalloc(sizeof(*mdpll), GFP_KERNEL);
+	if (!mdpll)
+		return -ENOMEM;
+	mdpll->mdev = mdev;
+	auxiliary_set_drvdata(adev, mdpll);
+
+	/* Multiple mdev instances might share one DPLL device. */
+	mdpll->dpll = dpll_device_get(clock_id, 0, THIS_MODULE);
+	if (IS_ERR(mdpll->dpll)) {
+		err = PTR_ERR(mdpll->dpll);
+		goto err_free_mdpll;
+	}
+
+	err = dpll_device_register(mdpll->dpll, DPLL_TYPE_EEC,
+				   &mlx5_dpll_device_ops, mdpll);
+	if (err)
+		goto err_put_dpll_device;
+
+	/* Multiple mdev instances might share one DPLL pin. */
+	mdpll->dpll_pin = dpll_pin_get(clock_id, mlx5_get_dev_index(mdev),
+				       THIS_MODULE, &mlx5_dpll_pin_properties);
+	if (IS_ERR(mdpll->dpll_pin)) {
+		err = PTR_ERR(mdpll->dpll_pin);
+		goto err_unregister_dpll_device;
+	}
+
+	err = dpll_pin_register(mdpll->dpll, mdpll->dpll_pin,
+				&mlx5_dpll_pins_ops, mdpll);
+	if (err)
+		goto err_put_dpll_pin;
+
+	mdpll->wq = create_singlethread_workqueue("mlx5_dpll");
+	if (!mdpll->wq) {
+		err = -ENOMEM;
+		goto err_unregister_dpll_pin;
+	}
+
+	mlx5_dpll_mdev_netdev_track(mdpll, mdev);
+
+	INIT_DELAYED_WORK(&mdpll->work, &mlx5_dpll_periodic_work);
+	mlx5_dpll_periodic_work_queue(mdpll);
+
+	return 0;
+
+err_unregister_dpll_pin:
+	dpll_pin_unregister(mdpll->dpll, mdpll->dpll_pin,
+			    &mlx5_dpll_pins_ops, mdpll);
+err_put_dpll_pin:
+	dpll_pin_put(mdpll->dpll_pin);
+err_unregister_dpll_device:
+	dpll_device_unregister(mdpll->dpll, &mlx5_dpll_device_ops, mdpll);
+err_put_dpll_device:
+	dpll_device_put(mdpll->dpll);
+err_free_mdpll:
+	kfree(mdpll);
+	return err;
+}
+
+static void mlx5_dpll_remove(struct auxiliary_device *adev)
+{
+	struct mlx5_dpll *mdpll = auxiliary_get_drvdata(adev);
+	struct mlx5_core_dev *mdev = mdpll->mdev;
+
+	cancel_delayed_work(&mdpll->work);
+	mlx5_dpll_mdev_netdev_untrack(mdpll, mdev);
+	destroy_workqueue(mdpll->wq);
+	dpll_pin_unregister(mdpll->dpll, mdpll->dpll_pin,
+			    &mlx5_dpll_pins_ops, mdpll);
+	dpll_pin_put(mdpll->dpll_pin);
+	dpll_device_unregister(mdpll->dpll, &mlx5_dpll_device_ops, mdpll);
+	dpll_device_put(mdpll->dpll);
+	kfree(mdpll);
+
+	mlx5_dpll_synce_status_set(mdev,
+				   MLX5_MSEES_ADMIN_STATUS_FREE_RUNNING);
+}
+
+static int mlx5_dpll_suspend(struct auxiliary_device *adev, pm_message_t state)
+{
+	return 0;
+}
+
+static int mlx5_dpll_resume(struct auxiliary_device *adev)
+{
+	return 0;
+}
+
+static const struct auxiliary_device_id mlx5_dpll_id_table[] = {
+	{ .name = MLX5_ADEV_NAME ".dpll", },
+	{},
+};
+
+MODULE_DEVICE_TABLE(auxiliary, mlx5_dpll_id_table);
+
+static struct auxiliary_driver mlx5_dpll_driver = {
+	.name = "dpll",
+	.probe = mlx5_dpll_probe,
+	.remove = mlx5_dpll_remove,
+	.suspend = mlx5_dpll_suspend,
+	.resume = mlx5_dpll_resume,
+	.id_table = mlx5_dpll_id_table,
+};
+
+static int __init mlx5_dpll_init(void)
+{
+	return auxiliary_driver_register(&mlx5_dpll_driver);
+}
+
+static void __exit mlx5_dpll_exit(void)
+{
+	auxiliary_driver_unregister(&mlx5_dpll_driver);
+}
+
+module_init(mlx5_dpll_init);
+module_exit(mlx5_dpll_exit);
+
+MODULE_AUTHOR("Jiri Pirko <jiri@nvidia.com>");
+MODULE_DESCRIPTION("Mellanox 5th generation network adapters (ConnectX series) DPLL driver");
+MODULE_LICENSE("Dual BSD/GPL");
diff --git a/include/linux/mlx5/driver.h b/include/linux/mlx5/driver.h
index 06a09b2ff7f0..5baecd71d980 100644
--- a/include/linux/mlx5/driver.h
+++ b/include/linux/mlx5/driver.h
@@ -154,6 +154,8 @@ enum {
 	MLX5_REG_MCC		 = 0x9062,
 	MLX5_REG_MCDA		 = 0x9063,
 	MLX5_REG_MCAM		 = 0x907f,
+	MLX5_REG_MSECQ		 = 0x9155,
+	MLX5_REG_MSEES		 = 0x9156,
 	MLX5_REG_MIRC		 = 0x9162,
 	MLX5_REG_SBCAM		 = 0xB01F,
 	MLX5_REG_RESOURCE_DUMP   = 0xC000,
diff --git a/include/linux/mlx5/mlx5_ifc.h b/include/linux/mlx5/mlx5_ifc.h
index 354c7e326eab..5deb3a77ebb9 100644
--- a/include/linux/mlx5/mlx5_ifc.h
+++ b/include/linux/mlx5/mlx5_ifc.h
@@ -10211,7 +10211,9 @@ struct mlx5_ifc_mcam_access_reg_bits2 {
 	u8         mirc[0x1];
 	u8         regs_97_to_96[0x2];
 
-	u8         regs_95_to_64[0x20];
+	u8         regs_95_to_87[0x09];
+	u8         synce_registers[0x2];
+	u8         regs_84_to_64[0x15];
 
 	u8         regs_63_to_32[0x20];
 
@@ -12573,4 +12575,59 @@ struct mlx5_ifc_modify_page_track_obj_in_bits {
 	struct mlx5_ifc_page_track_bits obj_context;
 };
 
+struct mlx5_ifc_msecq_reg_bits {
+	u8         reserved_at_0[0x20];
+
+	u8         reserved_at_20[0x12];
+	u8         network_option[0x2];
+	u8         local_ssm_code[0x4];
+	u8         local_enhanced_ssm_code[0x8];
+
+	u8         local_clock_identity[0x40];
+
+	u8         reserved_at_80[0x180];
+};
+
+enum {
+	MLX5_MSEES_FIELD_SELECT_ENABLE			= BIT(0),
+	MLX5_MSEES_FIELD_SELECT_ADMIN_STATUS		= BIT(1),
+	MLX5_MSEES_FIELD_SELECT_ADMIN_FREQ_MEASURE	= BIT(2),
+};
+
+enum mlx5_msees_admin_status {
+	MLX5_MSEES_ADMIN_STATUS_FREE_RUNNING		= 0x0,
+	MLX5_MSEES_ADMIN_STATUS_TRACK			= 0x1,
+};
+
+enum mlx5_msees_oper_status {
+	MLX5_MSEES_OPER_STATUS_FREE_RUNNING		= 0x0,
+	MLX5_MSEES_OPER_STATUS_SELF_TRACK		= 0x1,
+	MLX5_MSEES_OPER_STATUS_OTHER_TRACK		= 0x2,
+	MLX5_MSEES_OPER_STATUS_HOLDOVER			= 0x3,
+	MLX5_MSEES_OPER_STATUS_FAIL_HOLDOVER		= 0x4,
+	MLX5_MSEES_OPER_STATUS_FAIL_FREE_RUNNING	= 0x5,
+};
+
+struct mlx5_ifc_msees_reg_bits {
+	u8         reserved_at_0[0x8];
+	u8         local_port[0x8];
+	u8         pnat[0x2];
+	u8         lp_msb[0x2];
+	u8         reserved_at_14[0xc];
+
+	u8         field_select[0x20];
+
+	u8         admin_status[0x4];
+	u8         oper_status[0x4];
+	u8         ho_acq[0x1];
+	u8         reserved_at_49[0xc];
+	u8         admin_freq_measure[0x1];
+	u8         oper_freq_measure[0x1];
+	u8         failure_reason[0x9];
+
+	u8         frequency_diff[0x20];
+
+	u8         reserved_at_80[0x180];
+};
+
 #endif /* MLX5_IFC_H */
-- 
2.39.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
