Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 566B388C9A0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 17:43:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0A23E40430;
	Tue, 26 Mar 2024 16:43:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id woIvQhdYqNKK; Tue, 26 Mar 2024 16:43:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89F5E40484
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711471428;
	bh=U/1hkNBP5idNBurXuib3kKILOq1SL7lRT5UWYjTgBo4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=vv9WENJ0lcI870KnuusIVY7IsLl2btoQjBLfvVMSaOh0uGYQiEbioh/xhw+6B5CMl
	 X9OAO+aQH1v60qr0JiWqphwPNWHvXmD0h6l5tpXYXOi63ICrGHrCG4sXNzwWPH50xN
	 RI1W20wJMTVSnNdhjigKlDqXgyjgl6xPU4zJ2u8+xp77jcOxIoadySFhFmPYSSyOiO
	 1p3bsxNkacpLXOcoawXPfN6ajUsamrKbszmHel92LBvtbGBEN3HvgQZtUIzuDvjx6v
	 aRSlGB1FO/T+MdvGL8H4xeK7k9wXMZ4l5MgqA3zKSixm8RjJpEyLWVWJY9U4Vj5Axn
	 wqxjtBE77D7ZQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89F5E40484;
	Tue, 26 Mar 2024 16:43:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 197EE1BF364
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1301D403FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:43:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uFUzeFSA_MGc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 16:43:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9968440196
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9968440196
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9968440196
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 16:43:45 +0000 (UTC)
X-CSE-ConnectionGUID: We7SbziPTgOKzqFHO0m9jg==
X-CSE-MsgGUID: +bg1pLWZRv2u5PhelbXO+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6400085"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; 
   d="scan'208";a="6400085"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 09:43:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20491767"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 26 Mar 2024 09:43:42 -0700
Received: from mystra-4.igk.intel.com (mystra-4.igk.intel.com [10.123.220.40])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 444F52819C;
 Tue, 26 Mar 2024 16:43:41 +0000 (GMT)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 26 Mar 2024 17:44:55 +0100
Message-ID: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711471426; x=1743007426;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IUHvMlawWzgPfC0WV4QxC1756pzh9dMdtNUM8GIIUCc=;
 b=QA8Zf54+lDLJ5FLUleyN2RocV4B5mUFXK4lWfUcsFLdroVQevc8e14ai
 3OlsRrcN/bBitg5vuSYQLh7uT1J11z0V9hcY2q5+s4NiSklLiEx9DdDgK
 CQKEfBdmnbETmMckDkX7W741h8SP5t5pNMSrIBMKeJ+ZnBj59Jy6LkYj2
 1dK8zgErcmONgJ3h99f0IgcHOOYO6xcSjd0Emp8SBKnRZTpE4wlUw4pcg
 F0OfzcSwaxhzTcD5WAQDHul97taSZvYcsuoI3cv+l1cMgu/Q5NYZZZ1GR
 DeLJYd82Ny1XJ9LU+WBswcygWoZHexdXaqCAsmIUiRChE2iXXPr/VnEen
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QA8Zf54+
Subject: [Intel-wired-lan] [PATCH iwl-next v3] ice: Reset VF on Tx MDD event
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, Marcin Szycik <marcin.szycik@linux.intel.com>,
 anthony.l.nguyen@intel.com, Liang-Min Wang <liang-min.wang@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In cases when VF sends malformed packets that are classified as malicious,
sometimes it causes Tx queue to freeze. This frozen queue can be stuck
for several minutes being unusable. This behavior can be reproduced with
a faulty userspace app running on VF.

When Malicious Driver Detection event occurs and the mdd-auto-reset-vf
private flag is set, perform a graceful VF reset to quickly bring VF back
to operational state. Add a log message to notify about the cause of
the reset. Add a helper for this to be reused for both TX and RX events.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v3: Only auto reset VF if the mdd-auto-reset-vf flag is set
v2 [1]: Revert an unneeded formatting change, fix commit message, fix a log
    message with a correct event name

[1] https://lore.kernel.org/netdev/20231102155149.2574209-1-pawel.chmielewski@intel.com
---
 drivers/net/ethernet/intel/ice/ice_main.c  | 47 +++++++++++++++++-----
 drivers/net/ethernet/intel/ice/ice_sriov.c | 14 ++++---
 drivers/net/ethernet/intel/ice/ice_sriov.h |  4 +-
 3 files changed, 46 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3dea0d4c767c..e5d00491e41e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1744,6 +1744,35 @@ static void ice_service_timer(struct timer_list *t)
 	ice_service_task_schedule(pf);
 }
 
+/**
+ * ice_mdd_maybe_reset_vf - reset VF after MDD event
+ * @pf: pointer to the PF structure
+ * @vf: pointer to the VF structure
+ * @is_rx: true for RX event, false for TX event
+ *
+ * Since the queue can get stuck on VF MDD events, the PF can be configured to
+ * automatically reset the VF by enabling the private ethtool flag
+ * mdd-auto-reset-vf.
+ */
+static void ice_mdd_maybe_reset_vf(struct ice_pf *pf, struct ice_vf *vf,
+				   bool is_rx)
+{
+	struct device *dev = ice_pf_to_dev(pf);
+
+	if (!test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags))
+		return;
+
+	/* VF MDD event counters will be cleared by reset, so print the event
+	 * prior to reset.
+	 */
+	ice_print_vf_mdd_event(vf, is_rx);
+
+	dev_info(dev, "PF-to-VF reset on VF %d due to %s MDD event\n",
+		 vf->vf_id,
+		 is_rx ? "Rx" : "Tx");
+	ice_reset_vf(vf, ICE_VF_RESET_NOTIFY | ICE_VF_RESET_LOCK);
+}
+
 /**
  * ice_handle_mdd_event - handle malicious driver detect event
  * @pf: pointer to the PF structure
@@ -1845,6 +1874,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_PQM detected on VF %d\n",
 					 vf->vf_id);
+
+			ice_mdd_maybe_reset_vf(pf, vf, false);
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TCLAN(vf->vf_id));
@@ -1855,6 +1886,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TCLAN detected on VF %d\n",
 					 vf->vf_id);
+
+			ice_mdd_maybe_reset_vf(pf, vf, false);
 		}
 
 		reg = rd32(hw, VP_MDET_TX_TDPU(vf->vf_id));
@@ -1865,6 +1898,8 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 			if (netif_msg_tx_err(pf))
 				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
 					 vf->vf_id);
+
+			ice_mdd_maybe_reset_vf(pf, vf, false);
 		}
 
 		reg = rd32(hw, VP_MDET_RX(vf->vf_id));
@@ -1876,17 +1911,7 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
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
+			ice_mdd_maybe_reset_vf(pf, vf, true);
 		}
 	}
 	mutex_unlock(&pf->vfs.table_lock);
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 65e1986af777..b56bda9f66e3 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1848,19 +1848,21 @@ ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
 }
 
 /**
- * ice_print_vf_rx_mdd_event - print VF Rx malicious driver detect event
+ * ice_print_vf_mdd_event - print VF Rx malicious driver detect event
  * @vf: pointer to the VF structure
+ * @is_rx: true for RX event, false for TX event
  */
-void ice_print_vf_rx_mdd_event(struct ice_vf *vf)
+void ice_print_vf_mdd_event(struct ice_vf *vf, bool is_rx)
 {
 	struct ice_pf *pf = vf->pf;
 	struct device *dev;
 
 	dev = ice_pf_to_dev(pf);
 
-	dev_info(dev, "%d Rx Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
-		 vf->mdd_rx_events.count, pf->hw.pf_id, vf->vf_id,
-		 vf->dev_lan_addr,
+	dev_info(dev, "%d %s Malicious Driver Detection events detected on PF %d VF %d MAC %pM. mdd-auto-reset-vfs=%s\n",
+		 is_rx ? vf->mdd_rx_events.count : vf->mdd_tx_events.count,
+		 is_rx ? "Rx" : "Tx",
+		 pf->hw.pf_id, vf->vf_id, vf->dev_lan_addr,
 		 test_bit(ICE_FLAG_MDD_AUTO_RESET_VF, pf->flags)
 			  ? "on" : "off");
 }
@@ -1894,7 +1896,7 @@ void ice_print_vfs_mdd_events(struct ice_pf *pf)
 		if (vf->mdd_rx_events.count != vf->mdd_rx_events.last_printed) {
 			vf->mdd_rx_events.last_printed =
 							vf->mdd_rx_events.count;
-			ice_print_vf_rx_mdd_event(vf);
+			ice_print_vf_mdd_event(vf, true);
 		}
 
 		/* only print Tx MDD event message if there are new events */
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 8488df38b586..a9d3ee36d0df 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -57,7 +57,7 @@ ice_get_vf_stats(struct net_device *netdev, int vf_id,
 void
 ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event);
 void ice_print_vfs_mdd_events(struct ice_pf *pf);
-void ice_print_vf_rx_mdd_event(struct ice_vf *vf);
+void ice_print_vf_mdd_event(struct ice_vf *vf, bool is_tx);
 bool
 ice_vc_validate_pattern(struct ice_vf *vf, struct virtchnl_proto_hdrs *proto);
 u32 ice_sriov_get_vf_total_msix(struct pci_dev *pdev);
@@ -68,7 +68,7 @@ static inline void ice_free_vfs(struct ice_pf *pf) { }
 static inline
 void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
 static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
-static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
+static inline void ice_print_vf_mdd_event(struct ice_vf *vf, bool is_tx) { }
 static inline void ice_restore_all_vfs_msi_state(struct ice_pf *pf) { }
 
 static inline int
-- 
2.41.0

