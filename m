Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D20FF895A22
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Apr 2024 18:51:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBAAB81E8A;
	Tue,  2 Apr 2024 16:51:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JfdQ1WCnynEb; Tue,  2 Apr 2024 16:51:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7478D81EAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712076663;
	bh=eFY3Nj9y29J+IsRxowKpGdIg4cmoi6DyfgEgunjaVGg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=d+NmhEiQcy7MMTZohe38+HC6LbZFxNSVRiopm2YX/quQ2KLVa2w2z9ZZDdloxy0Zq
	 PKYN2aphDVezm8paWpWt67+m5FyfM6INbBY08sZnZmua2xkZ8yO+XZY36i+542BTqv
	 MqPP+f989ns0wIBEIhogeNRSAOSwMHsqETd7t3DPBlYET+V0eaCi1FoOQoDKFopGT/
	 kawLe0Pi7gn0onMsL+7YS0CsOqN+DqWjNpTfD5GlQDOrai+uEFxtRtG3vtG6aYfe7A
	 Dc+o3FoxlaktHKy6oXr+jdYG0Vkknd34JPzlqeLLjqZtrMUgTd/L3jlKCtH9hfWX3v
	 D76OgcEW1+ZnQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7478D81EAD;
	Tue,  2 Apr 2024 16:51:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C12D1BF471
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 16:51:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7397340854
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 16:51:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VZujMk9R9L0r for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Apr 2024 16:51:00 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8BFAE40848
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BFAE40848
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BFAE40848
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Apr 2024 16:50:59 +0000 (UTC)
X-CSE-ConnectionGUID: K1pPC4UlSNirDqEpa3hxzQ==
X-CSE-MsgGUID: XMjMQsXrTGuthPaVBQzRtA==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="7449586"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; 
   d="scan'208";a="7449586"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 09:50:58 -0700
X-CSE-ConnectionGUID: g4PDBCFISFSGib9TYnV4Lg==
X-CSE-MsgGUID: AZy40siySzefR1sV5suDLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17950200"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa010.jf.intel.com with ESMTP; 02 Apr 2024 09:50:55 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 548ADC838D;
 Tue,  2 Apr 2024 17:50:45 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Apr 2024 18:52:21 +0200
Message-ID: <20240402165221.11669-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712076659; x=1743612659;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZaZHhl31NJsHkbLnWAAD493S1rmPpnPIzngHPUFGReg=;
 b=jRJBP2wKmeMNJ9tXdeJ3N4Bfs9oiVPvxfi6H4df2moIDYbgO0ZWHYYHu
 Gm6YLHUXYD+6lfk+rbqGBsE48h2P4DDEa/c7FnC9j8kQildGVDPiU4mHI
 SfVI5XskvnlBEBruFVfv7GoyOgTT+eks+OMqg3YYU7KEQCzlRcPAJ90n1
 vsmjNtOjB82guVZd06p9ftkWBrw/2WguWlAvXoG2EzqDMSTO9hNc1o2UR
 G+9t36ctGge93PsUGkYJm/rwMLAYL16X9WENxZf5JY5kCRBundl4AiUJi
 IdfGIGyZ8GU93uBtrtfCfuQ5fLDpigetyDWHJfjp7o7sl0k7hc6ARxu1Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jRJBP2wK
Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: Reset VF on Tx MDD event
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
 Liang-Min Wang <liang-min.wang@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In cases when VF sends malformed packets that are classified as malicious,
sometimes it causes Tx queue to freeze. This frozen queue can be stuck
for several minutes being unusable. This behavior can be reproduced with
a faulty userspace app running on VF.

When any Malicious Driver Detection event occurs and the mdd-auto-reset-vf
private flag is set, perform a graceful VF reset to quickly bring VF back
to operational state. Add a log message to notify about the cause of
the reset. Add a helper for this to be reused for both TX and RX events.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v4: Only perform auto-reset once per VF
v3 [1]: Only auto reset VF if the mdd-auto-reset-vf flag is set
v2 [2]: Revert an unneeded formatting change, fix commit message, fix a log
    message with a correct event name

[1] https://lore.kernel.org/intel-wired-lan/20240326164455.735739-1-marcin.szycik@linux.intel.com
[2] https://lore.kernel.org/netdev/20231102155149.2574209-1-pawel.chmielewski@intel.com
---
 drivers/net/ethernet/intel/ice/ice_main.c  | 57 +++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_sriov.c | 25 +++++++---
 drivers/net/ethernet/intel/ice/ice_sriov.h |  2 +
 3 files changed, 67 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 185c9b13efcf..80bc83f6e1ab 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1745,6 +1745,39 @@ static void ice_service_timer(struct timer_list *t)
 	ice_service_task_schedule(pf);
 }
 
+/**
+ * ice_mdd_maybe_reset_vf - reset VF after MDD event
+ * @pf: pointer to the PF structure
+ * @vf: pointer to the VF structure
+ * @reset_vf_tx: whether Tx MDD has occurred
+ * @reset_vf_rx: whether Rx MDD has occurred
+ *
+ * Since the queue can get stuck on VF MDD events, the PF can be configured to
+ * automatically reset the VF by enabling the private ethtool flag
+ * mdd-auto-reset-vf.
+ */
+static void ice_mdd_maybe_reset_vf(struct ice_pf *pf, struct ice_vf *vf,
+				   bool reset_vf_tx, bool reset_vf_rx)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+
+	if (!test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags))
+		return;
+
+	/* VF MDD event counters will be cleared by reset, so print the event
+	 * prior to reset.
+	 */
+	if (reset_vf_tx)
+		ice_print_vf_tx_mdd_event(vf);
+
+	if (reset_vf_rx)
+		ice_print_vf_rx_mdd_event(vf);
+
+	dev_info(dev, "PF-to-VF reset on PF %d VF %d due to MDD event\n",
+		 pf->hw.pf_id, vf->vf_id);
+	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY | ICE_VF_RESET_LOCK);
+}
+
 /**
  * ice_handle_mdd_event - handle malicious driver detect event
  * @pf: pointer to the PF structure
@@ -1838,6 +1871,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 	 */
 	mutex_lock(&pf->vfs.table_lock);
 	ice_for_each_vf(pf, bkt, vf) {
+		bool reset_vf_tx = false, reset_vf_rx = false;
+
 		reg = rd32(hw, VP_MDET_TX_PQM(vf->vf_id));
 		if (reg & VP_MDET_TX_PQM_VALID_M) {
 			wr32(hw, VP_MDET_TX_PQM(vf->vf_id), 0xFFFF);
@@ -1846,6 +1881,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_PQM detected on VF %d\n",
 					 vf->vf_id);
+
+			reset_vf_tx = true;
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TCLAN(vf->vf_id));
@@ -1856,6 +1893,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
 					 vf->vf_id);
+
+			reset_vf_tx = true;
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TDPU(vf->vf_id));
@@ -1866,6 +1905,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
 					 vf->vf_id);
+
+			reset_vf_tx = true;
 		}
 
 		reg = rd32(hw, VP_MDET_RX(vf->vf_id));
@@ -1877,18 +1918,12 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 				dev_info(dev, "Malicious Driver Detection event RX detected on VF %d\n",
 					 vf->vf_id);
 
-			/* Since the queue is disabled on VF Rx MDD events, the
-			 * PF can be configured to reset the VF through ethtool
-			 * private flag mdd-auto-reset-vf.
-			 */
-			if (test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)) {
-				/* VF MDD event counters will be cleared by
-				 * reset, so print the event prior to reset.
-				 */
-				ice_print_vf_rx_mdd_event(vf);
-				ice_reset_vf(vf, ICE_VF_RESET_LOCK);
-			}
+			reset_vf_rx = true;
 		}
+
+		if (reset_vf_tx || reset_vf_rx)
+			ice_mdd_maybe_reset_vf(pf, vf, reset_vf_tx,
+					       reset_vf_rx);
 	}
 	mutex_unlock(&pf->vfs.table_lock);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index fb2e96db647e..a60dacf8942a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1861,6 +1861,24 @@ void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
 			  ? "on" : "off");
 }
 
+/**
+ * ice_print_vf_tx_mdd_event - print VF Tx malicious driver detect event
+ * @vf: pointer to the VF structure
+ */
+void ice_print_vf_tx_mdd_event(struct ice_vf *vf)
+{
+	struct ice_pf *pf = vf->pf;
+	struct device *dev;
+
+	dev = ice_pf_to_dev(pf);
+
+	dev_info(dev, "%d Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
+		 vf->mdd_tx_events.count, pf->hw.pf_id, vf->vf_id,
+		 vf->dev_lan_addr,
+		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
+			  ? "on" : "off");
+}
+
 /**
  * ice_print_vfs_mdd_events - print VFs malicious driver detect event
  * @pf: pointer to the PF structure
@@ -1869,8 +1887,6 @@ void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
  */
 void ice_print_vfs_mdd_events(struct ice_pf *pf)
 {
-	struct device *dev = ice_pf_to_dev(pf);
-	struct ice_hw *hw = &pf->hw;
 	struct ice_vf *vf;
 	unsigned int bkt;
 
@@ -1897,10 +1913,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 		if (vf->mdd_tx_events.count != vf->mdd_tx_events.last_printed) {
 			vf->mdd_tx_events.last_printed =
 							vf->mdd_tx_events.count;
-
-			dev_info(dev, "%d Tx Malicious Driver Detection events detected on PF %d VF %d MAC %pM.\n",
-				 vf->mdd_tx_events.count, hw->pf_id, vf->vf_id,
-				 vf->dev_lan_addr);
+			ice_print_vf_tx_mdd_event(vf);
 		}
 	}
 	mutex_unlock(&pf->vfs.table_lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 4ba8fb53aea1..8f22313474d6 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -58,6 +58,7 @@ void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
 void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
+void ice_print_vf_tx_mdd_event(struct ice_vf *vf);
 bool
 ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
 u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev);
@@ -69,6 +70,7 @@ static inline
 void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
 static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
 static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
+static inline void ice_print_vf_tx_mdd_event(struct ice_vf *vf) { }
 static inline void ice_restore_all_vfs_msi_state(struct ice_pf *pf) { }
 
 static inline int
-- 
2.41.0

