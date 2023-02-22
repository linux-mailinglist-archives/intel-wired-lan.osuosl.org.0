Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B426269F9C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48991417C1;
	Wed, 22 Feb 2023 17:16:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48991417C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086193;
	bh=oyDU3y6idGnRb7OZWhRMMGaZvKVbQ/Jt/GSirWBvQ24=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3vsMUKw3sbtirnbfTbwuCk7GtzpDukIvlQjTkD+udKLKu9v9olBHDsxSrxhw7zaem
	 SGtq1dnaJsNK0V1c6PGpaTUgYTeuXOnvwDAn0whIjKeDpinvMV4NR3k1O0gqye7xvT
	 AV/gZiH9YmR01Nv4SB5xwoSMoonPADqayNQNLIkNfM+g454ui2oUGfCNdyQxKEmoZj
	 hgy3qA72512QQauFe+ZScCQdaMGSO2onpOtTf1GuGX6z4pGbWd9KXQwY1J1vN0LzU5
	 N2SUyZix3BaFJGepBCFOa3I0vgxCJtCkG7WsP5tyNaqkYyBqdmrjVqcZ2UccAD2e8B
	 tkiOgD3brSduQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l_xlyKYSE72c; Wed, 22 Feb 2023 17:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 886D841743;
	Wed, 22 Feb 2023 17:16:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 886D841743
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 620D31BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C6D760B12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C6D760B12
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ej6c4Q8GtQ6w for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD17A6115A
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BD17A6115A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466663"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466663"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980076"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980076"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:26 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:19 -0800
Message-Id: <20230222170920.1629293-14-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085789; x=1708621789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qq+wC2tQTLgwLJub4nUILRqksxwzWCPQ7t3FwerKEyc=;
 b=FiJap95oXJ3mMcNNx1UyMTxolE6uBwRCYxsQNuHG1ForPge4LzibFAyU
 tjXUFSZ9Ld6FeuVXzYwNv0dUFHJeO9Ng5WNypPpMZlwEsoOy8RePySrCZ
 OrRN2R7S6wAIo6nX1nzb8JNlfsDERFQltp7vRmnYZPlnwNtgvDWkgjq1H
 YPTCP6ZOTUyDxNSYNKd4upjKKgjFrt09fNG40M0f1jK3kA6pFWez0Pdqt
 M285GUlo+RBjUQWNsBupoi0xY0ZrAGS5AVOvrU9YwWd1sLJRr93OP+gXG
 pXm72RaH8LnCNuJEr9YZSLLxLpyDOvPpvHLQnWhPm1QK9VmEKgi81zd7w
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FiJap95o
Subject: [Intel-wired-lan] [intel-next PATCH 13/14] ice: move
 ice_is_malicious_vf() to ice_virtchnl.c
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_is_malicious_vf() function is currently implemented in ice_sriov.c
This function is not Single Root specific, and a future change is going to
refactor the ice_vc_process_vf_msg() function to call this instead of
calling it before ice_vc_process_vf_msg() in the main loop of
__ice_clean_ctrlq.

To make that change easier to review, first move this function into
ice_virtchnl.c but leave the call in __ice_clean_ctrlq() alone.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 45 -------------------
 drivers/net/ethernet/intel/ice/ice_sriov.h    | 11 -----
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 45 +++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_virtchnl.h | 11 +++++
 4 files changed, 56 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index f0daeda236de..6fa62c3cedb0 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1777,48 +1777,3 @@ void ice_restore_all_vfs_msi_state(struct pci_dev *pdev)
 		}
 	}
 }
-
-/**
- * ice_is_malicious_vf - helper function to detect a malicious VF
- * @pf: ptr to struct ice_pf
- * @event: pointer to the AQ event
- * @mbxdata: data about the state of the mailbox
- */
-bool
-ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
-		    struct ice_mbx_data *mbxdata)
-{
-	s16 vf_id = le16_to_cpu(event->desc.retval);
-	struct device *dev = ice_pf_to_dev(pf);
-	bool report_malvf = false;
-	struct ice_vf *vf;
-	int status;
-
-	vf = ice_get_vf_by_id(pf, vf_id);
-	if (!vf)
-		return false;
-
-	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states))
-		goto out_put_vf;
-
-	/* check to see if we have a newly malicious VF */
-	status = ice_mbx_vf_state_handler(&pf->hw, mbxdata, &vf->mbx_info,
-					  &report_malvf);
-	if (status)
-		dev_warn_ratelimited(dev, "Unable to check status of mailbox overflow for VF %u MAC %pM, status %d\n",
-				     vf->vf_id, vf->dev_lan_addr, status);
-
-	if (report_malvf) {
-		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
-		u8 zero_addr[ETH_ALEN] = {};
-
-		dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
-			 vf->dev_lan_addr,
-			 pf_vsi ? pf_vsi->netdev->dev_addr : zero_addr);
-	}
-
-out_put_vf:
-	ice_put_vf(vf);
-
-	return vf->mbx_info.malicious;
-}
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 8fa61d954fae..346cb2666f3a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -34,9 +34,6 @@ ice_get_vf_cfg(struct net_device *netdev, int vf_id, struct ifla_vf_info *ivi);
 
 void ice_free_vfs(struct ice_pf *pf);
 void ice_restore_all_vfs_msi_state(struct pci_dev *pdev);
-bool
-ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
-		    struct ice_mbx_data *mbxdata);
 
 int
 ice_set_vf_port_vlan(struct net_device *netdev, int vf_id, u16 vlan_id, u8 qos,
@@ -72,14 +69,6 @@ static inline void ice_print_vfs_mdd_events(struct ice_pf *pf) { }
 static inline void ice_print_vf_rx_mdd_event(struct ice_vf *vf) { }
 static inline void ice_restore_all_vfs_msi_state(struct pci_dev *pdev) { }
 
-static inline bool
-ice_is_malicious_vf(struct ice_pf __always_unused *pf,
-		    struct ice_rq_event_info __always_unused *event,
-		    struct ice_mbx_data *mbxdata)
-{
-	return false;
-}
-
 static inline int
 ice_sriov_configure(struct pci_dev __always_unused *pdev,
 		    int __always_unused num_vfs)
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index e24e3f5017ca..e0c573d9d1b9 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3833,6 +3833,51 @@ void ice_virtchnl_set_repr_ops(struct ice_vf *vf)
 	vf->virtchnl_ops = &ice_virtchnl_repr_ops;
 }
 
+/**
+ * ice_is_malicious_vf - helper function to detect a malicious VF
+ * @pf: ptr to struct ice_pf
+ * @event: pointer to the AQ event
+ * @mbxdata: data about the state of the mailbox
+ */
+bool
+ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
+		    struct ice_mbx_data *mbxdata)
+{
+	s16 vf_id = le16_to_cpu(event->desc.retval);
+	struct device *dev = ice_pf_to_dev(pf);
+	bool report_malvf = false;
+	struct ice_vf *vf;
+	int status;
+
+	vf = ice_get_vf_by_id(pf, vf_id);
+	if (!vf)
+		return false;
+
+	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states))
+		goto out_put_vf;
+
+	/* check to see if we have a newly malicious VF */
+	status = ice_mbx_vf_state_handler(&pf->hw, mbxdata, &vf->mbx_info,
+					  &report_malvf);
+	if (status)
+		dev_warn_ratelimited(dev, "Unable to check status of mailbox overflow for VF %u MAC %pM, status %d\n",
+				     vf->vf_id, vf->dev_lan_addr, status);
+
+	if (report_malvf) {
+		struct ice_vsi *pf_vsi = ice_get_main_vsi(pf);
+		u8 zero_addr[ETH_ALEN] = {};
+
+		dev_warn(dev, "VF MAC %pM on PF MAC %pM is generating asynchronous messages and may be overflowing the PF message queue. Please see the Adapter User Guide for more information\n",
+			 vf->dev_lan_addr,
+			 pf_vsi ? pf_vsi->netdev->dev_addr : zero_addr);
+	}
+
+out_put_vf:
+	ice_put_vf(vf);
+
+	return vf->mbx_info.malicious;
+}
+
 /**
  * ice_vc_process_vf_msg - Process request from VF
  * @pf: pointer to the PF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
index 6d5af29c855e..648a383fad85 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
@@ -63,6 +63,9 @@ int
 ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 		      enum virtchnl_status_code v_retval, u8 *msg, u16 msglen);
 bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id);
+bool
+ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
+		    struct ice_mbx_data *mbxdata);
 void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event);
 #else /* CONFIG_PCI_IOV */
 static inline void ice_virtchnl_set_dflt_ops(struct ice_vf *vf) { }
@@ -83,6 +86,14 @@ static inline bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 	return false;
 }
 
+static inline bool
+ice_is_malicious_vf(struct ice_pf __always_unused *pf,
+		    struct ice_rq_event_info __always_unused *event,
+		    struct ice_mbx_data *mbxdata)
+{
+	return false;
+}
+
 static inline void
 ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
 {
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
