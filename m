Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC0E7A4117
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Sep 2023 08:28:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D999841481;
	Mon, 18 Sep 2023 06:28:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D999841481
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695018524;
	bh=qlMtruwl/UoWr8RLQif6OImDtaBjC3y6i+eBd+LuHFg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wHaCnS+aHK22neOdOOSW36Llwol38DMSVczQi/1W77b/O5eHlbvGxcwbT3ZQ7kO55
	 FkNok7FhXZTGRrjBF+xZuGN+f3C5SxDyXm97D0oDCDd0kuNOlrGM6piUXMxSeet7Tw
	 tPuRcKhQvvnbpOJWxhQ1NRe+OYJhqnEwvQLbb+yM3SELkAKMTPfAZcGvHnehH16ng4
	 bfqgSZ+/i3+wg7mqeJOvgPA9re6ab+qiHDXJu39oZeGta9UVV8jezegTURKvr+lltd
	 /TbcJ60qb+Ko8BmlYlrguw3q/QmUXtj2kof4er973Ud3P9yFj6/sFaVbqn/POUy5dO
	 hYjjou3Trcggg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RYkBO9zzxaFc; Mon, 18 Sep 2023 06:28:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A5E1D411A1;
	Mon, 18 Sep 2023 06:28:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A5E1D411A1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31AE21BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A6FA611B7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A6FA611B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VjnLY8JXZZRE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Sep 2023 06:28:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F750611B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Sep 2023 06:28:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F750611B4
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="378488619"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="378488619"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 23:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="815893586"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="815893586"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.186])
 by fmsmga004.fm.intel.com with ESMTP; 17 Sep 2023 23:28:31 -0700
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Sep 2023 06:25:42 +0000
Message-Id: <20230918062546.40419-10-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230918062546.40419-1-yahui.cao@intel.com>
References: <20230918062546.40419-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695018517; x=1726554517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MNy2PcBWRzbTHueI2ijmsawCjISW9Er1KUb7rCXIUh4=;
 b=QKkuWOZSZFQxRp4PMncf6Cg+c2CpqmLy3oClbaIqLblhqcjsOPZJ304W
 3QHDCxh016sQu3nzvkroJwLExu6BAQzgMfnvL2vsCRMZHF9z4KqcZcKKq
 pLtZB9FlFhX1LVkTEuwhDPQ7VN8fuqAwkNdG2V0DMpIyvmr4FlmPwvEiN
 WAcJIlv+A8o4eNVhunarr2eZmfQgU+8CZgWUHqnN/8EyKHJvhx8DonpLV
 jl6EZ5hviwjDMbU7I7H3ALPBYQ0vs2X4OhaxcKqwolF5t8a0+X4rX6jSK
 rjTknQ+taNOV99xASuiuuABhEUv1QjEwnDFZXJ9SS7g5phg3zIiPzPQ8C
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QKkuWOZS
Subject: [Intel-wired-lan] [PATCH iwl-next v3 09/13] ice: Save and restore
 RX Queue head
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, edumazet@google.com, shameerali.kolothum.thodi@huawei.com,
 jesse.brandeburg@intel.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, anthony.l.nguyen@intel.com, jgg@nvidia.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

RX Queue head is a fundamental dma ring context which determines the
next RX descriptor to be fetched. However, RX Queue head is not visible
to VF while it is only visible in PF. As a result, PF needs to save and
restore RX Queue Head explicitly.

Since network packets may come in at any time once RX Queue is enabled,
RX Queue head needs to be restored before Queue is enabled.

RX Queue head restoring handler is implemented by reading and then
overwriting queue context with specific HEAD value.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 125 ++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 99faf9acff13..34cfc58ed525 100644
--- a/drivers/net/ethernet/intel/ice/ice_migration.c
+++ b/drivers/net/ethernet/intel/ice/ice_migration.c
@@ -2,9 +2,11 @@
 /* Copyright (C) 2018-2023 Intel Corporation */
 
 #include "ice.h"
+#include "ice_base.h"
 
 #define ICE_MIG_DEVSTAT_MAGIC			0xE8000001
 #define ICE_MIG_DEVSTAT_VERSION			0x1
+#define ICE_MIG_VF_QRX_TAIL_MAX			256
 
 struct ice_migration_virtchnl_msg_slot {
 	u32 opcode;
@@ -26,6 +28,8 @@ struct ice_migration_dev_state {
 	u16 num_rxq;
 
 	u16 vsi_id;
+	/* next RX desc index to be processed by the device */
+	u16 rx_head[ICE_MIG_VF_QRX_TAIL_MAX];
 	u8 virtchnl_msgs[];
 } __aligned(8);
 
@@ -265,6 +269,54 @@ u32 ice_migration_supported_caps(void)
 	return VIRTCHNL_VF_MIGRATION_SUPPORT_FEATURE;
 }
 
+/**
+ * ice_migration_save_rx_head - save rx head into device state buffer
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration buffer
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_save_rx_head(struct ice_vf *vf,
+			   struct ice_migration_dev_state *devstate)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi;
+	int i;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	ice_for_each_rxq(vsi, i) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
+		struct ice_rlan_ctx rlan_ctx = {};
+		struct ice_hw *hw = &vf->pf->hw;
+		u16 rxq_index;
+		int status;
+
+		if (WARN_ON_ONCE(!rx_ring))
+			return -EINVAL;
+
+		devstate->rx_head[i] = 0;
+		if (!test_bit(i, vf->rxq_ena))
+			continue;
+
+		rxq_index = rx_ring->reg_idx;
+		status = ice_read_rxq_ctx(hw, &rlan_ctx, rxq_index);
+		if (status) {
+			dev_err(dev, "Failed to read RXQ[%d] context, err=%d\n",
+				rx_ring->q_index, status);
+			return -EIO;
+		}
+		devstate->rx_head[i] = rlan_ctx.head;
+	}
+
+	return 0;
+}
+
 /**
  * ice_migration_save_devstate - save device state to migration buffer
  * @pf: pointer to PF of migration device
@@ -318,6 +370,12 @@ int ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_s
 	buf = devstate->virtchnl_msgs;
 	devstate->vsi_id = vf->vm_vsi_num;
 
+	ret = ice_migration_save_rx_head(vf, devstate);
+	if (ret) {
+		dev_err(dev, "VF %d failed to save rxq head\n", vf->vf_id);
+		goto out_put_vf;
+	}
+
 	list_for_each_entry(msg_listnode, &vf->virtchnl_msg_list, node) {
 		struct ice_migration_virtchnl_msg_slot *msg_slot;
 		u64 slot_size;
@@ -408,6 +466,57 @@ static int ice_migration_check_match(struct ice_vf *vf, const u8 *buf, u64 buf_s
 	return 0;
 }
 
+/**
+ * ice_migration_restore_rx_head - restore rx head from device state buffer
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_restore_rx_head(struct ice_vf *vf,
+			      struct ice_migration_dev_state *devstate)
+{
+	struct device *dev = ice_pf_to_dev(vf->pf);
+	struct ice_vsi *vsi;
+	int i;
+
+	vsi = ice_get_vf_vsi(vf);
+	if (!vsi) {
+		dev_err(dev, "VF %d VSI is NULL\n", vf->vf_id);
+		return -EINVAL;
+	}
+
+	ice_for_each_rxq(vsi, i) {
+		struct ice_rx_ring *rx_ring = vsi->rx_rings[i];
+		struct ice_rlan_ctx rlan_ctx = {};
+		struct ice_hw *hw = &vf->pf->hw;
+		u16 rxq_index;
+		int status;
+
+		if (WARN_ON_ONCE(!rx_ring))
+			return -EINVAL;
+
+		rxq_index = rx_ring->reg_idx;
+		status = ice_read_rxq_ctx(hw, &rlan_ctx, rxq_index);
+		if (status) {
+			dev_err(dev, "Failed to read RXQ[%d] context, err=%d\n",
+				rx_ring->q_index, status);
+			return -EIO;
+		}
+
+		rlan_ctx.head = devstate->rx_head[i];
+		status = ice_write_rxq_ctx(hw, &rlan_ctx, rxq_index);
+		if (status) {
+			dev_err(dev, "Failed to set LAN RXQ[%d] context, err=%d\n",
+				rx_ring->q_index, status);
+			return -EIO;
+		}
+	}
+
+	return 0;
+}
+
 /**
  * ice_migration_restore_devstate - restore device state at dst
  * @pf: pointer to PF of migration device
@@ -464,6 +573,22 @@ int ice_migration_restore_devstate(struct ice_pf *pf, int vf_id, const u8 *buf,
 				vf->vf_id, msg_slot->opcode);
 			goto out_clear_replay;
 		}
+
+		/* Once RX Queue is enabled, network traffic may come in at any
+		 * time. As a result, RX Queue head needs to be restored before
+		 * RX Queue is enabled.
+		 * For simplicity and integration, overwrite RX head just after
+		 * RX ring context is configured.
+		 */
+		if (msg_slot->opcode == VIRTCHNL_OP_CONFIG_VSI_QUEUES) {
+			ret = ice_migration_restore_rx_head(vf, devstate);
+			if (ret) {
+				dev_err(dev, "VF %d failed to restore rx head\n",
+					vf->vf_id);
+				goto out_clear_replay;
+			}
+		}
+
 		event.msg_buf = NULL;
 		msg_slot = (struct ice_migration_virtchnl_msg_slot *)
 					((char *)msg_slot + slot_sz);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
