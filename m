Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2157F244F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 03:50:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E0ABB81C6E;
	Tue, 21 Nov 2023 02:50:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E0ABB81C6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700535051;
	bh=RzhWcnqv+LmBMo6J1Nbde/OmGgaP0Xoj7PSCoGRclLc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kClbhblS9pvlyfgd5CErQMEdy3Zq5tZXKd2pMjU7IT1ONaFi+YttvqVYisUo1Gj/H
	 QNtzpN7+mk2EfpMYkpZBVtN+NWR3Gf5wu+I1lDY/tyfP71nBRuNfsrY+Ggff2C/LUb
	 EaryxCDhiesrELcqVLfTp20016+Ajc33nNpYZrktVSjfysBrEeYaVQ1Gsg9RJncYaf
	 5QbYz1wWG86Q4Tm+SL+kygwXDR9Y261Vhlr3ZwrV1rplOPFSoDQCdlWgMldP7dsqez
	 lDsrbxGkr9F9CIXUzmOHTVJCM2kQBWzOgdNbiO3kcy3M3FceyVdtzPEc6CvDt3vwGo
	 OijrUEaWdwdgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwXxCulFExBi; Tue, 21 Nov 2023 02:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 890F280DB2;
	Tue, 21 Nov 2023 02:50:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 890F280DB2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 701E71BF33D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 481E880DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 481E880DB2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eNNHEvymZeSi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 02:50:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CECB81CBA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 02:50:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CECB81CBA
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="458246093"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="458246093"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 18:50:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="832488481"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="832488481"
Received: from dpdk-yahui-icx1.sh.intel.com ([10.67.111.85])
 by fmsmga008.fm.intel.com with ESMTP; 20 Nov 2023 18:50:16 -0800
From: Yahui Cao <yahui.cao@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 21 Nov 2023 02:51:07 +0000
Message-Id: <20231121025111.257597-9-yahui.cao@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231121025111.257597-1-yahui.cao@intel.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700535032; x=1732071032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=chDhMbwAFTAOzcJ9fqd2u6cVrr/ul9wT1vFdAEszvfg=;
 b=cF6Vef0yMIj3B28st8Tdxnvm1TaK2FooeOYIQ1opPRKxCNy+9PrN4JNh
 LC/nL4IY/8ILcL6EBm/wdHYExVY/ep0/UgHrLbbLj3JZ+y6FD0YZWsM2X
 nlDsS8qmasxtnHkhtFAw4o9Cu+xAy/TlzMC4ezNxQylJBYir9kNLvSpeP
 h/UO5GGEbcpAWgaFvyzgbJl9kko0abMsSsml6XWSPX67KHK0g0Wz1Vw/J
 IUntWW+vSzkfapPl8Re0hapwh5kHj08OEcHPvp9b082dk+LKij7xPX1TV
 +O9r8bdqOlLG+QxF47Whis01sVIxgrk4Ki4lbec8HAS6565PkSmJ2zZjF
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cF6Vef0y
Subject: [Intel-wired-lan] [PATCH iwl-next v4 08/12] ice: Save and load RX
 Queue head
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
 kvm@vger.kernel.org, sridhar.samudrala@intel.com, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, jgg@nvidia.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Lingyu Liu <lingyu.liu@intel.com>

RX Queue head is a fundamental dma ring context which determines the
next RX descriptor to be fetched. However, RX Queue head is not visible
to VF while it is only visible in PF. As a result, PF needs to save and
load RX Queue Head explicitly.

Since network packets may come in at any time once RX Queue is enabled,
RX Queue head needs to be loaded before Queue is enabled.

RX Queue head loading handler is implemented by reading and then
overwriting queue context with specific HEAD value.

Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
Signed-off-by: Yahui Cao <yahui.cao@intel.com>
---
 .../net/ethernet/intel/ice/ice_migration.c    | 125 ++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
index 780d2183011a..473be6a83cf3 100644
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
 
@@ -264,6 +268,54 @@ u32 ice_migration_supported_caps(void)
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
@@ -318,6 +370,12 @@ ice_migration_save_devstate(struct ice_pf *pf, int vf_id, u8 *buf, u64 buf_sz)
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
@@ -409,6 +467,57 @@ ice_migration_check_match(struct ice_vf *vf, const u8 *buf, u64 buf_sz)
 	return 0;
 }
 
+/**
+ * ice_migration_load_rx_head - load rx head from device state buffer
+ * @vf: pointer to VF structure
+ * @devstate: pointer to migration device state
+ *
+ * Return 0 for success, negative for error
+ */
+static int
+ice_migration_load_rx_head(struct ice_vf *vf,
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
  * ice_migration_load_devstate - load device state at destination
  * @pf: pointer to PF of migration device
@@ -467,6 +576,22 @@ int ice_migration_load_devstate(struct ice_pf *pf, int vf_id,
 				vf->vf_id, msg_slot->opcode);
 			goto out_clear_replay;
 		}
+
+		/* Once RX Queue is enabled, network traffic may come in at any
+		 * time. As a result, RX Queue head needs to be loaded before
+		 * RX Queue is enabled.
+		 * For simplicity and integration, overwrite RX head just after
+		 * RX ring context is configured.
+		 */
+		if (msg_slot->opcode == VIRTCHNL_OP_CONFIG_VSI_QUEUES) {
+			ret = ice_migration_load_rx_head(vf, devstate);
+			if (ret) {
+				dev_err(dev, "VF %d failed to load rx head\n",
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
