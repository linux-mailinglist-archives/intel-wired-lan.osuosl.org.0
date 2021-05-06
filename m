Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D533757E8
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 May 2021 17:51:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDAF44066F;
	Thu,  6 May 2021 15:51:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MdLjEYFtQNzw; Thu,  6 May 2021 15:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 62F7D40570;
	Thu,  6 May 2021 15:51:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F6D61BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4A69E405CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Rk4xEdqQgaN for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 May 2021 15:50:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15A3C40570
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 May 2021 15:50:37 +0000 (UTC)
IronPort-SDR: rtTjIIUaU+rEkgKHBzZ8lzdnhvfUFaGlY3MyAsY3KVaT9422Z0VoLAMTSxmnsQ5C6SqtYBKI3H
 GAjbIn6oA7lQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="219389319"
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="219389319"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 08:50:35 -0700
IronPort-SDR: 1C7LeIJgDaq8DGI3nkSaGIxAd/540xrZkojyKh6y66cdXNeOX4YVR1Ly60VM288VaW9aePCY/V
 BZM4JXkhDydQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,277,1613462400"; d="scan'208";a="459369474"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2021 08:50:35 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 May 2021 08:39:56 -0700
Message-Id: <20210506154008.12880-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S59 01/13] ice: use static inline for
 dummy functions
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Trivial:
The driver had previously attempted to use #define
macros to make functions that have no use in certain
configs disappear. Using static inlines instead allows
for certain static checkers to process the code better,
and results in no functional change.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_arfs.h     | 12 +++++-----
 drivers/net/ethernet/intel/ice/ice_dcb_lib.h  | 15 +++++++------
 drivers/net/ethernet/intel/ice/ice_dcb_nl.h   |  9 ++++----
 .../net/ethernet/intel/ice/ice_virtchnl_pf.h  | 22 ++++++++++---------
 drivers/net/ethernet/intel/ice/ice_xsk.h      |  4 ++--
 5 files changed, 33 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_arfs.h b/drivers/net/ethernet/intel/ice/ice_arfs.h
index f39cd16403ed..80ed76f0cace 100644
--- a/drivers/net/ethernet/intel/ice/ice_arfs.h
+++ b/drivers/net/ethernet/intel/ice/ice_arfs.h
@@ -52,12 +52,12 @@ bool
 ice_is_arfs_using_perfect_flow(struct ice_hw *hw,
 			       enum ice_fltr_ptype flow_type);
 #else
-#define ice_sync_arfs_fltrs(pf) do {} while (0)
-#define ice_init_arfs(vsi) do {} while (0)
-#define ice_clear_arfs(vsi) do {} while (0)
-#define ice_remove_arfs(pf) do {} while (0)
-#define ice_free_cpu_rx_rmap(vsi) do {} while (0)
-#define ice_rebuild_arfs(pf) do {} while (0)
+static inline void ice_clear_arfs(struct ice_vsi *vsi) { }
+static inline void ice_free_cpu_rx_rmap(struct ice_vsi *vsi) { }
+static inline void ice_init_arfs(struct ice_vsi *vsi) { }
+static inline void ice_sync_arfs_fltrs(struct ice_pf *pf) { }
+static inline void ice_remove_arfs(struct ice_pf *pf) { }
+static inline void ice_rebuild_arfs(struct ice_pf *pf) { }
 
 static inline int ice_set_cpu_rx_rmap(struct ice_vsi __always_unused *vsi)
 {
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
index 35c21d9ae009..261b6e2ed7bc 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.h
@@ -60,7 +60,7 @@ static inline bool ice_is_dcb_active(struct ice_pf *pf)
 		test_bit(ICE_FLAG_DCB_ENA, pf->flags));
 }
 #else
-#define ice_dcb_rebuild(pf) do {} while (0)
+static inline void ice_dcb_rebuild(struct ice_pf *pf) { }
 
 static inline u8 ice_dcb_get_ena_tc(struct ice_dcbx_cfg __always_unused *dcbcfg)
 {
@@ -113,11 +113,12 @@ ice_is_pfc_causing_hung_q(struct ice_pf __always_unused *pf,
 	return false;
 }
 
-#define ice_update_dcb_stats(pf) do {} while (0)
-#define ice_pf_dcb_recfg(pf) do {} while (0)
-#define ice_vsi_cfg_dcb_rings(vsi) do {} while (0)
-#define ice_dcb_process_lldp_set_mib_change(pf, event) do {} while (0)
-#define ice_set_cgd_num(tlan_ctx, ring) do {} while (0)
-#define ice_vsi_cfg_netdev_tc(vsi, ena_tc) do {} while (0)
+static inline void ice_pf_dcb_recfg(struct ice_pf *pf) { }
+static inline void ice_vsi_cfg_dcb_rings(struct ice_vsi *vsi) { }
+static inline void ice_update_dcb_stats(struct ice_pf *pf) { }
+static inline void
+ice_dcb_process_lldp_set_mib_change(struct ice_pf *pf, struct ice_rq_event_info *event) { }
+static inline void ice_vsi_cfg_netdev_tc(struct ice_vsi *vsi, u8 ena_tc) { }
+static inline void ice_set_cgd_num(struct ice_tlan_ctx *tlan_ctx, struct ice_ring *ring) { }
 #endif /* CONFIG_DCB */
 #endif /* _ICE_DCB_LIB_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_nl.h b/drivers/net/ethernet/intel/ice/ice_dcb_nl.h
index 6c630a362293..eac2f34bdcdd 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_nl.h
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_nl.h
@@ -11,9 +11,10 @@ void
 ice_dcbnl_flush_apps(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
 		     struct ice_dcbx_cfg *new_cfg);
 #else
-#define ice_dcbnl_setup(vsi) do {} while (0)
-#define ice_dcbnl_set_all(vsi) do {} while (0)
-#define ice_dcbnl_flush_apps(pf, old_cfg, new_cfg) do {} while (0)
+static inline void ice_dcbnl_setup(struct ice_vsi *vsi) { }
+static inline void ice_dcbnl_set_all(struct ice_vsi *vsi) { }
+static inline void
+ice_dcbnl_flush_apps(struct ice_pf *pf, struct ice_dcbx_cfg *old_cfg,
+		     struct ice_dcbx_cfg *new_cfg) { }
 #endif /* CONFIG_DCB */
-
 #endif /* _ICE_DCB_NL_H_ */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 77ff0023f7be..842cb077df86 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -158,16 +158,18 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
 #else /* CONFIG_PCI_IOV */
-#define ice_process_vflr_event(pf) do {} while (0)
-#define ice_free_vfs(pf) do {} while (0)
-#define ice_vc_process_vf_msg(pf, event) do {} while (0)
-#define ice_vc_notify_link_state(pf) do {} while (0)
-#define ice_vc_notify_reset(pf) do {} while (0)
-#define ice_set_vf_state_qs_dis(vf) do {} while (0)
-#define ice_vf_lan_overflow_event(pf, event) do {} while (0)
-#define ice_print_vfs_mdd_events(pf) do {} while (0)
-#define ice_print_vf_rx_mdd_event(vf) do {} while (0)
-#define ice_restore_all_vfs_msi_state(pdev) do {} while (0)
+static inline void ice_process_vflr_event(struct ice_pf *pf) { }
+static inline void ice_free_vfs(struct ice_pf *pf) { }
+static inline
+void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event) { }
+static inline void ice_vc_notify_link_state(struct ice_pf *pf) { }
+static inline void ice_vc_notify_reset(struct ice_pf *pf) { }
+static inline void ice_set_vf_state_qs_dis(struct ice_vf *vf) { }
+static inline
+void ice_vf_lan_overflow_event(struct ice_pf *pf, struct ice_rq_event_info *event) { }
+static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
+static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
+static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
 
 static inline bool
 ice_is_malicious_vf(struct ice_pf __always_unused *pf,
diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.h b/drivers/net/ethernet/intel/ice/ice_xsk.h
index fad783690134..ea208808623a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.h
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.h
@@ -60,7 +60,7 @@ ice_xsk_wakeup(struct net_device __always_unused *netdev,
 	return -EOPNOTSUPP;
 }
 
-#define ice_xsk_clean_rx_ring(rx_ring) do {} while (0)
-#define ice_xsk_clean_xdp_ring(xdp_ring) do {} while (0)
+static inline void ice_xsk_clean_rx_ring(struct ice_ring *rx_ring) { }
+static inline void ice_xsk_clean_xdp_ring(struct ice_ring *xdp_ring) { }
 #endif /* CONFIG_XDP_SOCKETS */
 #endif /* !_ICE_XSK_H_ */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
