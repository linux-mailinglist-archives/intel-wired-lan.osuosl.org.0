Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC41498A57C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AA9F4059E;
	Mon, 30 Sep 2024 13:39:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jxglb5ClRIxd; Mon, 30 Sep 2024 13:39:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 97DBC404D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727703575;
	bh=o5VrBEik29U5a6gmPGt1AAMiFANwpr3yj9gUMcdhkuU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=chVdZQKmEA3RNigxLQ/dQt1ef1WruV1StB+zAI+yTTFAl2QEdOGduq3Z819Oi31E6
	 isNdaLLGWQ5YUcV3EKswAzW4wCOJQVIrhA43nGTLRyjxGF5neDQTzSVIJOr+KLwhAB
	 C6uCJCSDWpkWkxEHCuBjKhhEgN6c5rH4Fx+Fk+tCFjGCBqkyvjCgwrXvoxFEAX/lXz
	 vpXbwnmJlnbGRqdo60m0xJSLuilt3mSUcZl1pUTiPtZpBOW1l8hTomggS8fwdXKjlM
	 Uli1/FROXZWmFAZmHvKvbsUb4FgViflpUoBSlTD0stjBJV6YTrDPnMfDD6ce/FIj7l
	 h42klDXlvMzwQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97DBC404D1;
	Mon, 30 Sep 2024 13:39:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 525EF1BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4160560676
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dNhLsH0kA5Cr for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:39:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2434860635
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2434860635
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2434860635
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:31 +0000 (UTC)
X-CSE-ConnectionGUID: bkjWquBIRYmTLdDcXSa7lQ==
X-CSE-MsgGUID: IAcrKLIpQeeuNxel+WG3kA==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="26601063"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26601063"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:39:31 -0700
X-CSE-ConnectionGUID: yRedaJRyQQumJE/yrAlPBw==
X-CSE-MsgGUID: mwVNZCGnRjKjo1GhJfoQag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="104109642"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 30 Sep 2024 06:39:27 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 41A5228169;
 Mon, 30 Sep 2024 14:39:25 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 30 Sep 2024 15:37:22 +0200
Message-Id: <20240930133724.610512-6-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
References: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727703572; x=1759239572;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oS7BSRg4SLKiTYpufVvAYqCZIIxn7WTzI5JUwekP7jE=;
 b=KYV6ZyTfJun80VbANcBF4nmWGnwZDs7ZgRkm9F/G+7Ko76wKSv9esWOb
 Yu9rz9XmB1YP1/kbJAmUPILKjYgI0xszLpF1qMjEM+xOBLkkqriWTli46
 VHEE/E7Dp0u4AlNltvkV/99MU5IdYpgwoKF9Nh2UB8naEX2QWWwoMMiTp
 M7O/RYVumY2TnJjzpU00Q0jKBVH7yoPTkr+5zndSv9qO4aeCrKKn4P96Q
 OS5KJUw73bqZtcTN1tQdtW6lAj6TnM4jIW05kDLlJ8yOJnp/0ca834qek
 Ar/sq2AwmTdOAJoSwz4DKzhfg7nq/7BEVVwYNGdVOXmL1qei6YA+EwUdh
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KYV6ZyTf
Subject: [Intel-wired-lan] [PATCH 5/7] ice: add Tx hang devlink health
 reporter
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add Tx hang devlink health reporter, see struct ice_tx_hang_event to see
what is reported.

Subsequent commits will extend it by more info, for now it dumps
descriptors with little metadata.

Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../net/ethernet/intel/ice/devlink/health.h   |  48 +++++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 .../net/ethernet/intel/ice/devlink/health.c   | 188 ++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_main.c     |  18 +-
 5 files changed, 252 insertions(+), 5 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/health.h
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/health.c

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 56aa23aee472..9e0d9f710441 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -32,6 +32,7 @@ ice-y := ice_main.o	\
 	 ice_parser_rt.o \
 	 ice_idc.o	\
 	 devlink/devlink.o	\
+	 devlink/health.o \
 	 devlink/port.o \
 	 ice_sf_eth.o	\
 	 ice_sf_vsi_vlan_ops.o \
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.h b/drivers/net/ethernet/intel/ice/devlink/health.h
new file mode 100644
index 000000000000..92e40d790e72
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/health.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2024, Intel Corporation. */
+
+#ifndef _HEALTH_H_
+#define _HEALTH_H_
+
+#include <linux/types.h>
+
+/**
+ * DOC: health.h
+ *
+ * This header file stores everything that is needed for broadly understood
+ * devlink health mechanism for ice driver.
+ */
+
+struct ice_pf;
+struct ice_tx_ring;
+
+/**
+ * struct ice_health - stores ice devlink health reporters and accompanied data
+ * @tx_hang: devlink health reporter for tx_hang event
+ * @tx_hang_buf: pre-allocated place to put info for Tx hang reporter from
+ *               non-sleeping context
+ * @tx_ring: ring that the hang occured on
+ * @head: descriptior head
+ * @intr: interrupt register value
+ * @vsi_num: VSI owning the queue that the hang occured on
+ */
+struct ice_health {
+	struct devlink_health_reporter *tx_hang;
+	struct_group_tagged(ice_health_tx_hang_buf, tx_hang_buf,
+		struct ice_tx_ring *tx_ring;
+		u32 head;
+		u32 intr;
+		u16 vsi_num;
+	);
+};
+
+
+void ice_health_init(struct ice_pf *pf);
+void ice_health_deinit(struct ice_pf *pf);
+void ice_health_clear(struct ice_pf *pf);
+
+void ice_prep_tx_hang_report(struct ice_pf *pf, struct ice_tx_ring *tx_ring,
+			     u16 vsi_num, u32 head, u32 intr);
+void ice_report_tx_hang(struct ice_pf *pf);
+
+#endif /* _HEALTH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 84d047ee7585..de52f04a7622 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -78,6 +78,7 @@
 #include "ice_irq.h"
 #include "ice_dpll.h"
 #include "ice_adapter.h"
+#include "devlink/health.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -668,6 +669,7 @@ struct ice_pf {
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 	struct ice_dplls dplls;
 	struct device *hwmon_dev;
+	struct ice_health health_reporters;
 };
 
 extern struct workqueue_struct *ice_lag_wq;
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
new file mode 100644
index 000000000000..b8c5a1c372dc
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -0,0 +1,188 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2024, Intel Corporation. */
+
+#include "health.h"
+#include "ice.h"
+
+#define ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, obj, name) \
+	devlink_fmsg_put(fmsg, #name, (obj)->name)
+
+/**
+ * ice_devlink_health_report - boilerplate to call given @reporter
+ *
+ * @reporter: devlink health reporter to call, do nothing on NULL
+ * @msg: message to pass up, "event name" is fine
+ * @priv_ctx: typically some event struct
+ */
+static void ice_devlink_health_report(struct devlink_health_reporter *reporter,
+				      const char *msg, void *priv_ctx)
+{
+	if (!reporter)
+		return;
+
+	/* We do not do auto recovering, so return value of the below function
+	 * will always be 0, thus we do ignore it.
+	 */
+	devlink_health_report(reporter, msg, priv_ctx);
+}
+
+/**
+ * ice_fmsg_put_ptr - put hex value of pointer into fmsg
+ *
+ * @fmsg: devlink fmsg under construction
+ * @name: name to pass
+ * @ptr: 64 bit value to print as hex and put into fmsg
+ */
+static void ice_fmsg_put_ptr(struct devlink_fmsg *fmsg, const char *name,
+			     void *ptr)
+{
+	char buf[sizeof(ptr) * 3];
+
+	sprintf(buf, "%p", ptr);
+	devlink_fmsg_put(fmsg, name, buf);
+}
+
+struct ice_tx_hang_event {
+	u32 head;
+	u32 intr;
+	u16 vsi_num;
+	u16 queue;
+	u16 next_to_clean;
+	u16 next_to_use;
+	struct ice_tx_ring *tx_ring;
+};
+
+static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
+				     struct devlink_fmsg *fmsg, void *priv_ctx,
+				     struct netlink_ext_ack *extack)
+{
+	struct ice_tx_hang_event *event = priv_ctx;
+
+	if (!event)
+		return 0;
+
+	devlink_fmsg_obj_nest_start(fmsg);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, vsi_num);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, queue);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_clean);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_use);
+	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
+	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
+	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)(long)event->tx_ring->dma);
+	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
+				     event->tx_ring->count * sizeof(struct ice_tx_desc));
+	devlink_fmsg_obj_nest_end(fmsg);
+
+	return 0;
+}
+
+void ice_prep_tx_hang_report(struct ice_pf *pf, struct ice_tx_ring *tx_ring,
+			     u16 vsi_num, u32 head, u32 intr)
+{
+	struct ice_health_tx_hang_buf *buf = &pf->health_reporters.tx_hang_buf;
+
+	buf->tx_ring = tx_ring;
+	buf->vsi_num = vsi_num;
+	buf->head = head;
+	buf->intr = intr;
+}
+
+void ice_report_tx_hang(struct ice_pf *pf)
+{
+	struct ice_health_tx_hang_buf *buf = &pf->health_reporters.tx_hang_buf;
+	struct ice_tx_ring *tx_ring = buf->tx_ring;
+
+	struct ice_tx_hang_event ev = {
+		.head = buf->head,
+		.intr = buf->intr,
+		.vsi_num = buf->vsi_num,
+		.queue = tx_ring->q_index,
+		.next_to_clean = tx_ring->next_to_clean,
+		.next_to_use = tx_ring->next_to_use,
+		.tx_ring = tx_ring,
+	};
+
+	ice_devlink_health_report(pf->health_reporters.tx_hang, "Tx hang", &ev);
+}
+
+static struct devlink_health_reporter *
+ice_init_devlink_rep(struct ice_pf *pf,
+		     const struct devlink_health_reporter_ops *ops)
+{
+	struct devlink *devlink = priv_to_devlink(pf);
+	struct devlink_health_reporter *rep;
+	const u64 graceful_period = 0;
+
+	rep = devl_health_reporter_create(devlink, ops, graceful_period, pf);
+	if (IS_ERR(rep)) {
+		struct device *dev = ice_pf_to_dev(pf);
+
+		dev_err(dev, "failed to create devlink %s health report er",
+			ops->name);
+		return NULL;
+	}
+	return rep;
+}
+
+#define ICE_DEFINE_HEALTH_REPORTER_OPS(_name) \
+	static const struct devlink_health_reporter_ops ice_ ## _name ## _reporter_ops = { \
+	.name = #_name, \
+	.dump = ice_ ## _name ## _reporter_dump, \
+}
+
+ICE_DEFINE_HEALTH_REPORTER_OPS(tx_hang);
+
+/**
+ * ice_health_init - allocate and init all ice devlink health reporters and
+ * accompanied data
+ *
+ * @pf: PF struct
+ */
+void ice_health_init(struct ice_pf *pf)
+{
+	struct ice_health *reps = &pf->health_reporters;
+
+	reps->tx_hang = ice_init_devlink_rep(pf, &ice_tx_hang_reporter_ops);
+}
+
+/**
+ * ice_deinit_devl_reporter - destroy given devlink health reporter
+ * @reporter: reporter to destroy
+ */
+static void ice_deinit_devl_reporter(struct devlink_health_reporter *reporter)
+{
+	if (reporter)
+		devl_health_reporter_destroy(reporter);
+}
+
+/**
+ * ice_health_deinit - deallocate all ice devlink health reporters and
+ * accompanied data
+ *
+ * @pf: PF struct
+ */
+void ice_health_deinit(struct ice_pf *pf)
+{
+	ice_deinit_devl_reporter(pf->health_reporters.tx_hang);
+}
+
+static
+void ice_health_assign_healthy_state(struct devlink_health_reporter *reporter)
+{
+	if (reporter)
+		devlink_health_reporter_state_update(reporter,
+						     DEVLINK_HEALTH_REPORTER_STATE_HEALTHY);
+}
+
+/**
+ * ice_health_clear - clear devlink health issues after a reset
+ * @pf: the PF device structure
+ *
+ * Mark the PF in healthy state again after a reset has completed.
+ */
+void ice_health_clear(struct ice_pf *pf)
+{
+	ice_health_assign_healthy_state(pf->health_reporters.tx_hang);
+}
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8fc5be85c2ea..899bd7f8abec 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2364,9 +2364,11 @@ static void ice_service_task(struct work_struct *work)
 	struct ice_pf *pf = container_of(work, struct ice_pf, serv_task);
 	unsigned long start_time = jiffies;
 
-	/* subtasks */
+	if (pf->health_reporters.tx_hang_buf.tx_ring) {
+		ice_report_tx_hang(pf);
+		pf->health_reporters.tx_hang_buf.tx_ring = NULL;
+	}
 
-	/* process reset requests first */
 	ice_reset_subtask(pf);
 
 	/* bail if a reset/recovery cycle is pending or rebuild failed */
@@ -5093,14 +5095,16 @@ static int ice_init_devlink(struct ice_pf *pf)
 		return err;
 
 	ice_devlink_init_regions(pf);
+	ice_health_init(pf);
 	ice_devlink_register(pf);
 
 	return 0;
 }
 
 static void ice_deinit_devlink(struct ice_pf *pf)
 {
 	ice_devlink_unregister(pf);
+	ice_health_deinit(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_devlink_unregister_params(pf);
 }
@@ -7830,6 +7834,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* if we get here, reset flow is successful */
 	clear_bit(ICE_RESET_FAILED, pf->state);
 
+	ice_health_clear(pf);
+
 	ice_plug_aux_dev(pf);
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
@@ -8320,16 +8326,18 @@ void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 
 	if (tx_ring) {
 		struct ice_hw *hw = &pf->hw;
-		u32 head, val = 0;
+		u32 head, intr = 0;
 
 		head = FIELD_GET(QTX_COMM_HEAD_HEAD_M,
 				 rd32(hw, QTX_COMM_HEAD(vsi->txq_map[txqueue])));
 		/* Read interrupt register */
-		val = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
+		intr = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));
 
 		netdev_info(netdev, "tx_timeout: VSI_num: %d, Q %u, NTC: 0x%x, HW_HEAD: 0x%x, NTU: 0x%x, INT: 0x%x\n",
 			    vsi->vsi_num, txqueue, tx_ring->next_to_clean,
-			    head, tx_ring->next_to_use, val);
+			    head, tx_ring->next_to_use, intr);
+
+		ice_prep_tx_hang_report(pf, tx_ring, vsi->vsi_num, head, intr);
 	}
 
 	pf->tx_timeout_last_recovery = jiffies;
-- 
2.39.3

