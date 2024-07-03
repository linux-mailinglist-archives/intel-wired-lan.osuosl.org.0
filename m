Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D39926183
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 15:12:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C33EB60EFD;
	Wed,  3 Jul 2024 13:12:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kNsnwmivW2kY; Wed,  3 Jul 2024 13:12:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95FCB60ED6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720012371;
	bh=J+VFVl69mPJeBtmopcn9gvgQPy5BTXVYAZKj5nyBOV4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nNdbpZV9aytU+3Daa3d3DUH4ZGrJwWkVcsDdPelV0SUjvfFpPrBT3LiXtL5seu3nS
	 8baUaTrzuxw/7QGNs2PUcxZJ5KRkTtsi6zzkQWoP82dlM5zOBGZSKa79nDB64Dsq8s
	 E6U8aHJK8VleUJugWcJjs7/iK+vUYrDKraq7e/Kxj+bNbxyUvtZ24UphuP398i227/
	 ejzYgv3DBs0uIj60vD7TKePbtuss7Q9Dda0nEvdfRAPm9IpPYaX5qHgaNWiLPcXo7L
	 fsjAujUyupL4DTJa0VqPeEpCheIZfIz7OAtpHh3H0TsZ8taZhxaiUJy6oLRVWbHgM9
	 7BmA0seviYkRA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95FCB60ED6;
	Wed,  3 Jul 2024 13:12:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 951FE1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CC0B4056B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W17y9F7InT-O for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 13:12:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0C9E440359
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C9E440359
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0C9E440359
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 13:12:41 +0000 (UTC)
X-CSE-ConnectionGUID: gOj6xTTqRyS+AwqvVeuhNA==
X-CSE-MsgGUID: VEgosB7eRkqYcnIngvK5zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="27857124"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="27857124"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 06:12:34 -0700
X-CSE-ConnectionGUID: iStNduJqR3+TJYwhfvtu6Q==
X-CSE-MsgGUID: /Q7cJ3qgTvKxoHIr+TAEeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="46321579"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa010.fm.intel.com with ESMTP; 03 Jul 2024 06:12:30 -0700
Received: from fedora.igk.intel.com (Metan_eth.igk.intel.com [10.123.220.124])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 9062E28778;
 Wed,  3 Jul 2024 14:12:28 +0100 (IST)
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Jul 2024 08:59:19 -0400
Message-Id: <20240703125922.5625-4-mateusz.polchlopek@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720012362; x=1751548362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VbpwuaK4N6JQq8E2TsRsWG3nt8fWRyquajkSb0g1FEo=;
 b=JPQE7DYvUC9rk1mFmhFaMi+NCWcD+/zqVWtEQcDOMvlEG+8/femMSJdS
 IrY1N4uZZjOyX3ZQHUYQbKFnr8SGQAqitEoJb4OxcVF7X7HCChVFe9gYL
 BaGPeR2NifwkCFs07Kww/RGNvgs9jvp1LbR52F9m7H3jNoR3SMf8mZRdZ
 zE0G3j9nva7C8Dy9OtatclwbuiF/YeFpehsa+ac8osViRxlzuPKQdWWBI
 sN9pMvckRn69Ggne7JVJ1qas4Fr0D1ViRQLu5TRZclmfMBCnKfKwmi/DO
 WCgGJl3o9KYO9/gHkpktUn98qVRKBOBI/M6yn7kDn4uXBiY+xrM8ZkvCD
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JPQE7DYv
Subject: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ice: add Tx hang devlink
 health reporter
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Igor Bagnucki <igor.bagnucki@intel.com>,
 joe@perches.com, edumazet@google.com, netdev@vger.kernel.org,
 apw@canonical.com, lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Add Tx hang devlink health reporter, see struct ice_tx_hang_event to see
what is reported.

Subsequent commits will extend it by more info, for now it dumps
descriptors with little metadata.

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
---
 drivers/net/ethernet/intel/ice/Makefile       |   1 +
 .../intel/ice/devlink/devlink_health.c        | 179 ++++++++++++++++++
 .../intel/ice/devlink/devlink_health.h        |  34 ++++
 drivers/net/ethernet/intel/ice/ice.h          |   2 +
 drivers/net/ethernet/intel/ice/ice_main.c     |  11 +-
 5 files changed, 224 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.c
 create mode 100644 drivers/net/ethernet/intel/ice/devlink/devlink_health.h

diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
index 3307d551f431..f2baba82480c 100644
--- a/drivers/net/ethernet/intel/ice/Makefile
+++ b/drivers/net/ethernet/intel/ice/Makefile
@@ -33,6 +33,7 @@ ice-y := ice_main.o	\
 	 ice_idc.o	\
 	 devlink/devlink.o	\
 	 devlink/devlink_port.o \
+	 devlink/devlink_health.o \
 	 ice_sf_eth.o	\
 	 ice_sf_vsi_vlan_ops.o \
 	 ice_ddp.o	\
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_health.c b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
new file mode 100644
index 000000000000..311719e69ea5
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_health.c
@@ -0,0 +1,179 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Copyright (c) 2024, Intel Corporation. */
+
+#include "devlink_health.h"
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
+	int err;
+
+	if (!reporter)
+		return;
+
+	err = devlink_health_report(reporter, msg, priv_ctx);
+	if (err) {
+		struct ice_pf *pf = devlink_health_reporter_priv(reporter);
+
+		dev_err(ice_pf_to_dev(pf),
+			"failed to report %s via devlink health, err %d\n",
+			msg, err);
+	}
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
+	devlink_fmsg_obj_nest_start(fmsg);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, vsi_num);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, queue);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_clean);
+	ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_use);
+	devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
+	ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
+	ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);
+	devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
+				     size_mul(event->tx_ring->count,
+					      sizeof(struct ice_tx_desc)));
+	devlink_fmsg_obj_nest_end(fmsg);
+
+	return 0;
+}
+
+void ice_report_tx_hang(struct ice_pf *pf, struct ice_tx_ring *tx_ring,
+			u16 vsi_num, u32 head, u32 intr)
+{
+	struct ice_tx_hang_event ev = {
+		.head = head,
+		.intr = intr,
+		.vsi_num = vsi_num,
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
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_health.h b/drivers/net/ethernet/intel/ice/devlink/devlink_health.h
new file mode 100644
index 000000000000..984b8f9f56d4
--- /dev/null
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink_health.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2024, Intel Corporation. */
+
+#ifndef _DEVLINK_HEALTH_H_
+#define _DEVLINK_HEALTH_H_
+
+#include <linux/types.h>
+
+/**
+ * DOC: devlink_health.h
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
+ */
+struct ice_health {
+	struct devlink_health_reporter *tx_hang;
+};
+
+void ice_health_init(struct ice_pf *pf);
+void ice_health_deinit(struct ice_pf *pf);
+void ice_health_clear(struct ice_pf *pf);
+
+void ice_report_tx_hang(struct ice_pf *pf, struct ice_tx_ring *tx_ring,
+			u16 vsi_num, u32 head, u32 intr);
+
+#endif /* _DEVLINK_HEALTH_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 0046684004ff..d2f2ed2d4bfa 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -78,6 +78,7 @@
 #include "ice_irq.h"
 #include "ice_dpll.h"
 #include "ice_adapter.h"
+#include "devlink/devlink_health.h"
 
 #define ICE_BAR0		0
 #define ICE_REQ_DESC_MULTIPLE	32
@@ -667,6 +668,7 @@ struct ice_pf {
 	struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
 	struct ice_dplls dplls;
 	struct device *hwmon_dev;
+	struct ice_health health_reporters;
 };
 
 extern struct workqueue_struct *ice_lag_wq;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 59c4264d8f9b..246dcfe54397 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5053,6 +5053,7 @@ static int ice_init_devlink(struct ice_pf *pf)
 		return err;
 
 	ice_devlink_init_regions(pf);
+	ice_health_init(pf);
 	ice_devlink_register(pf);
 
 	return 0;
@@ -5061,6 +5062,7 @@ static int ice_init_devlink(struct ice_pf *pf)
 static void ice_deinit_devlink(struct ice_pf *pf)
 {
 	ice_devlink_unregister(pf);
+	ice_health_deinit(pf);
 	ice_devlink_destroy_regions(pf);
 	ice_devlink_unregister_params(pf);
 }
@@ -7744,6 +7746,8 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 	/* if we get here, reset flow is successful */
 	clear_bit(ICE_RESET_FAILED, pf->state);
 
+	ice_health_clear(pf);
+
 	ice_plug_aux_dev(pf);
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
@@ -8231,16 +8235,17 @@ void ice_tx_timeout(struct net_device *netdev, unsigned int txqueue)
 
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
+		ice_report_tx_hang(pf, tx_ring, vsi->vsi_num, head, intr);
 	}
 
 	pf->tx_timeout_last_recovery = jiffies;
-- 
2.38.1

