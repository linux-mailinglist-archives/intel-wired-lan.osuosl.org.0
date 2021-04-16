Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C00D362A98
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Apr 2021 23:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EFF3403A3;
	Fri, 16 Apr 2021 21:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4RcmEcDfrNzW; Fri, 16 Apr 2021 21:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CF94403A2;
	Fri, 16 Apr 2021 21:52:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB42F1BF336
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 21:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B6DB3403A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 21:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UcMGHaye-LE for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Apr 2021 21:52:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B124540197
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Apr 2021 21:52:27 +0000 (UTC)
IronPort-SDR: OisXCAGsCv1Kt22xsDBdSDg/x7nUS5IXHmUgp4fSO9rJIvIxX3ZmzJoGkPlKMtGPqmtffhQBPn
 GP5LgQCfZugg==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="215663908"
X-IronPort-AV: E=Sophos;i="5.82,228,1613462400"; d="scan'208";a="215663908"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2021 14:52:25 -0700
IronPort-SDR: op1NkjkqRu8jQ3e+kvhvi3wvXG+svzvc7pDVtbOHurSbmqBN+zno+bNXS/078O2sNxiQ1ULTkN
 X25V3VqECs2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,228,1613462400"; d="scan'208";a="462095371"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga001.jf.intel.com with ESMTP; 16 Apr 2021 14:52:24 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 16 Apr 2021 23:43:57 +0200
Message-Id: <20210416214357.341975-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net] i40e: Remove lldp frame filters
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

Remove filters from being setup in case of software DCB and allow the
lldp frames to be properly transmitted to the wire.

It is not possible to transmit the LLDP frame out of the port, if they
are filtered by control VSI. This prohibits software lldp agent
properly communicate it's DCB capabilities to the neighbors.

Fixes: 4b208eaa8078 ("i40e: Add init and default config of software based DCB")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h        |  1 -
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 42 -------------------
 3 files changed, 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 1116543..e3a4c7b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1222,7 +1222,6 @@ static inline bool i40e_is_sw_dcb(struct i40e_pf *pf)
 	return !!(pf->flags & I40E_FLAG_DISABLE_FW_LLDP);
 }
 
-void i40e_set_lldp_forwarding(struct i40e_pf *pf, bool enable);
 #ifdef CONFIG_I40E_DCB
 void i40e_dcbnl_flush_apps(struct i40e_pf *pf,
 			   struct i40e_dcbx_config *old_cfg,
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index fbe4fe9..936908c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -5280,7 +5280,6 @@ flags_complete:
 			i40e_aq_cfg_lldp_mib_change_event(&pf->hw, false, NULL);
 			i40e_aq_stop_lldp(&pf->hw, true, false, NULL);
 		} else {
-			i40e_set_lldp_forwarding(pf, false);
 			status = i40e_aq_start_lldp(&pf->hw, false, NULL);
 			if (status) {
 				adq_err = pf->hw.aq.asq_last_status;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3180b41..1a39e51 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -6890,40 +6890,6 @@ out:
 }
 #endif /* CONFIG_I40E_DCB */
 
-/**
- * i40e_set_lldp_forwarding - set forwarding of lldp frames
- * @pf: PF being configured
- * @enable: if forwarding to OS shall be enabled
- *
- * Toggle forwarding of lldp frames behavior,
- * When passing DCB control from firmware to software
- * lldp frames must be forwarded to the software based
- * lldp agent.
- */
-void i40e_set_lldp_forwarding(struct i40e_pf *pf, bool enable)
-{
-	if (pf->lan_vsi == I40E_NO_VSI)
-		return;
-
-	if (!pf->vsi[pf->lan_vsi])
-		return;
-
-	/* No need to check the outcome, commands may fail
-	 * if desired value is already set
-	 */
-	i40e_aq_add_rem_control_packet_filter(&pf->hw, NULL, ETH_P_LLDP,
-					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_TX |
-					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC,
-					      pf->vsi[pf->lan_vsi]->seid, 0,
-					      enable, NULL, NULL);
-
-	i40e_aq_add_rem_control_packet_filter(&pf->hw, NULL, ETH_P_LLDP,
-					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_RX |
-					      I40E_AQC_ADD_CONTROL_PACKET_FLAGS_IGNORE_MAC,
-					      pf->vsi[pf->lan_vsi]->seid, 0,
-					      enable, NULL, NULL);
-}
-
 /**
  * i40e_print_link_message - print link up or down
  * @vsi: the VSI for which link needs a message
@@ -10749,10 +10715,6 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	 */
 	i40e_add_filter_to_drop_tx_flow_control_frames(&pf->hw,
 						       pf->main_vsi_seid);
-#ifdef CONFIG_I40E_DCB
-	if (pf->flags & I40E_FLAG_DISABLE_FW_LLDP)
-		i40e_set_lldp_forwarding(pf, true);
-#endif /* CONFIG_I40E_DCB */
 
 	/* restart the VSIs that were rebuilt and running before the reset */
 	i40e_pf_unquiesce_all_vsi(pf);
@@ -15796,10 +15758,6 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 */
 	i40e_add_filter_to_drop_tx_flow_control_frames(&pf->hw,
 						       pf->main_vsi_seid);
-#ifdef CONFIG_I40E_DCB
-	if (pf->flags & I40E_FLAG_DISABLE_FW_LLDP)
-		i40e_set_lldp_forwarding(pf, true);
-#endif /* CONFIG_I40E_DCB */
 
 	if ((pf->hw.device_id == I40E_DEV_ID_10G_BASE_T) ||
 		(pf->hw.device_id == I40E_DEV_ID_10G_BASE_T4))

base-commit: ca4303103f33952646218db4e0869e6f6aa1c840
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
