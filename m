Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C783E5F750C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 10:09:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D35EF41937;
	Fri,  7 Oct 2022 08:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D35EF41937
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665130156;
	bh=eQi/k9m7u/h4JtNwCS8wRMNrr25v9Zv0/AYt3Rx9C0k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jedOPoJ4H/28fV9Xs4j3xnBKZOhjWw7usX6aXJNjz5vmLpcS1JqJ+CRzubPZmRe4B
	 VVnFfHmCWirTagOLPWb5ZA3BNIZ9CEBVDDiCCRmU8fP1y8OOIT1U/CeHuBrbxi+YAE
	 zm/i12Sgv957VgODvtDRZtM5cGemoyDEy2rjtLVnC/7EMmsYsrZrVNGphAihtwxFfH
	 62qCPYP5b3xe3tNae35XSvZbYoXXVTzZsFr/cKVJwk73z5tOjD2tfYpQfgIyWG0RCA
	 twdywXptIXDzRMEwBt5D1P+eRcAFc76plCWlihyiQ3M0KgaSVnTJZbU8M7s7OSxvhS
	 RFBO8D/6c5rhA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kqwqflqBVfx8; Fri,  7 Oct 2022 08:09:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38D9D4187D;
	Fri,  7 Oct 2022 08:09:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38D9D4187D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED3531BF423
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:09:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3E5B8134F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:09:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3E5B8134F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bWTR8Iwlt95x for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 08:09:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10E59826C2
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10E59826C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 08:09:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="283399909"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="283399909"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 01:09:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="870198067"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="870198067"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga006.fm.intel.com with ESMTP; 07 Oct 2022 01:09:07 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 04:07:22 -0400
Message-Id: <20221007080722.99641-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665130149; x=1696666149;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vEn20Codbp8WiZUxGrY75mfYIOZXGejCJT3m4f+yzh0=;
 b=AgKZFcVaLFKG3u9RNQWOv/F6Q2xmsAUJrfRhQ47S2qO3U4alBQHvFmTq
 v0+aIEl/5KGgZuOL/BeNjKPuL2EOuIz3YLogZ4TiKd33bFpkn3l01dtkU
 KVEQZc4Q1JI/FFsV8XwG29u7DAUmEqSJdORRXkh171KcAXIopZNlzVoin
 HBc1OIZOnh8tmj+HdJ1siUr022Iiln8l9sJx7AkAzLtJ8S33ZldCQlxs8
 Nd1ZPxic0WuSTiEOcOLE4e+HhePLWGyqtl1zP556J70dvdi/IRM64CY6P
 Fyumfq2Nm/8Ih8OtavhORHhO88y0p+xzUuDNMyCygn8fkW7T/l9wPFPbJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AgKZFcVa
Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix spurious interrupt during
 removal of trusted VF
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
Cc: Norbert Zulinski <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Zulinski <norbertx.zulinski@intel.com>

Previously, during removal of trusted VF when VF is down there was
number of spurious interrupt equal to number of queues on VF.

Add check if VF already has inactive queues. If VF is disabled and
has inactive rx queues then do not disable rx queues.
Add check in ice_vsi_stop_tx_ring if it's VF's vsi and if VF is
disabled.

Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c    | 25 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_lib.h    |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c |  5 ++++-
 4 files changed, 31 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1e3243808178..9ee022bb8ec2 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -959,7 +959,7 @@ ice_vsi_stop_tx_ring(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 	 * associated to the queue to schedule NAPI handler
 	 */
 	q_vector = ring->q_vector;
-	if (q_vector)
+	if (q_vector && !(vsi->vf && ice_is_vf_disabled(vsi->vf)))
 		ice_trigger_sw_intr(hw, q_vector);
 
 	status = ice_dis_vsi_txq(vsi->port_info, txq_meta->vsi_idx,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 58d483e2f539..156a684831b4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2222,6 +2222,31 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
 	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings, vsi->num_xdp_txq);
 }
 
+/**
+ * ice_vsi_is_rx_queue_active
+ * @vsi: the VSI being configured
+ *
+ * Return true if at least one queue is active.
+ */
+bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi)
+{
+	struct ice_pf *pf = vsi->back;
+	struct ice_hw *hw = &pf->hw;
+	int i = 0;
+
+	for (i = 0; i < vsi->num_rxq; i++) {
+		int pf_q;
+		u32 rx_reg;
+
+		pf_q = vsi->rxq_map[i];
+		rx_reg = rd32(hw, QRX_CTRL(pf_q));
+		if (rx_reg & QRX_CTRL_QENA_STAT_M)
+			return true;
+	}
+
+	return false;
+}
+
 /**
  * ice_vsi_is_vlan_pruning_ena - check if VLAN pruning is enabled or not
  * @vsi: VSI to check whether or not VLAN pruning is enabled.
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 8712b1d2ceec..441fb132f194 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -127,4 +127,5 @@ u16 ice_vsi_num_non_zero_vlans(struct ice_vsi *vsi);
 bool ice_is_feature_supported(struct ice_pf *pf, enum ice_feature f);
 void ice_clear_feature_support(struct ice_pf *pf, enum ice_feature f);
 void ice_init_feature_support(struct ice_pf *pf);
+bool ice_vsi_is_rx_queue_active(struct ice_vsi *vsi);
 #endif /* !_ICE_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 0abeed092de1..1c51778db951 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -576,7 +576,10 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 			return -EINVAL;
 		}
 		ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
-		ice_vsi_stop_all_rx_rings(vsi);
+
+		if (ice_vsi_is_rx_queue_active(vsi))
+			ice_vsi_stop_all_rx_rings(vsi);
+
 		dev_dbg(dev, "VF is already disabled, there is no need for resetting it, telling VM, all is fine %d\n",
 			vf->vf_id);
 		return 0;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
