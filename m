Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2689672DF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8324E610C1;
	Thu, 19 Jan 2023 01:17:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8324E610C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091073;
	bh=s4WSVdG8qecEwZgX0S5BrBy38ek7bC2YDwME7I71VYE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mkxa6pANYa6On2FTB3hY4GemlrqOTK3Zpr/3LQS0O/aExllhkkAQ6+sVY62bIuH07
	 l648f5yjeNbC49Seg4LDKWmbCLI8+MXvJFP56xbx+YR9IgMaYPO+O6V+bLHlfZSvgC
	 w5oRekZZ8/79HpQKEhZZGCBpY+4vceOyUN5Q7zoHh4OVFcvsqZTWM2iZuNgImsj6sl
	 NoRDolO+91tMyoLsZ8Y6Cb0Bd0DGgIzkAvIToPTWyGjLbxPc+5hzPgwA2U+JRJ0j/L
	 wel1OqkQuQXjU+elXdW3ShY3cL2I5SHXcoangmwY/uPRYV0UgxQvGTxygZOFhJBuPf
	 HetFZw8mZDY+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5-KS2wS-HIyB; Thu, 19 Jan 2023 01:17:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6570A6107E;
	Thu, 19 Jan 2023 01:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6570A6107E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 92D251BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D262541900
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D262541900
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMmC8I9DfQLs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4934F41926
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4934F41926
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840729"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840729"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881883"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881883"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:49 -0800
Message-Id: <20230119011653.311675-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1YyqJ9xl8uCNeNfliEVUtvt3i9cezHcwHtKHrBKDG2w=;
 b=ZEFn/MdKnx9PIYqGW6O4wTBRyYFKGCgpDBtLQ1/SH7obYW5QvyHijIyj
 xzhYo+7WJId7IR9Zo8yzOfcZaiWmH5TCnDYlZycWfPyNDtLKa8Me4/tWe
 MdB4dlr4DNtDx5uMiQpYk0FAwgEvyqoF7wY3rChMd3pRzu1qi88ioLHdH
 SnX0wb9MhTZF7+I0LJEE+vQpQqUJ+yhPRm+N+0o/K8/Sd8cvI3Tf6y3z4
 afqE+DQy+t5hk9X1FbfE6mlA1BYgvBAsqhaaJ3B3d9/YLURQidnV1hNhJ
 24BBFXnr19X2aGbZ97qC4YtTsSHl587VkBayF//Bfv4xb4nfg9uS6eV5X
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZEFn/MdK
Subject: [Intel-wired-lan] [PATCH net-next v2 09/13] ice: introduce
 ice_vf_init_host_cfg function
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Introduce a new generic helper ice_vf_init_host_cfg which performs common
host configuration initialization tasks that will need to be done for both
Single Root IOV and the new Scalable IOV implementation.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No changes since v1.

 drivers/net/ethernet/intel/ice/ice_sriov.c    | 36 +------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 54 +++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
 3 files changed, 57 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 6c07f661d44c..5450fa122729 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -573,51 +573,19 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
  */
 static int ice_init_vf_vsi_res(struct ice_vf *vf)
 {
-	struct ice_vsi_vlan_ops *vlan_ops;
 	struct ice_pf *pf = vf->pf;
-	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
-	struct device *dev;
 	int err;
 
 	vf->first_vector_idx = ice_calc_vf_first_vector_idx(pf, vf);
 
-	dev = ice_pf_to_dev(pf);
 	vsi = ice_vf_vsi_setup(vf);
 	if (!vsi)
 		return -ENOMEM;
 
-	err = ice_vsi_add_vlan_zero(vsi);
-	if (err) {
-		dev_warn(dev, "Failed to add VLAN 0 filter for VF %d\n",
-			 vf->vf_id);
+	err = ice_vf_init_host_cfg(vf, vsi);
+	if (err)
 		goto release_vsi;
-	}
-
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-	err = vlan_ops->ena_rx_filtering(vsi);
-	if (err) {
-		dev_warn(dev, "Failed to enable Rx VLAN filtering for VF %d\n",
-			 vf->vf_id);
-		goto release_vsi;
-	}
-
-	eth_broadcast_addr(broadcast);
-	err = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
-	if (err) {
-		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, error %d\n",
-			vf->vf_id, err);
-		goto release_vsi;
-	}
-
-	err = ice_vsi_apply_spoofchk(vsi, vf->spoofchk);
-	if (err) {
-		dev_warn(dev, "Failed to initialize spoofchk setting for VF %d\n",
-			 vf->vf_id);
-		goto release_vsi;
-	}
-
-	vf->num_mac = 1;
 
 	return 0;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index b6fd1e852968..c93d24fee60d 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1174,6 +1174,60 @@ struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
 	return vsi;
 }
 
+/**
+ * ice_vf_init_host_cfg - Initialize host admin configuration
+ * @vf: VF to initialize
+ * @vsi: the VSI created at initialization
+ *
+ * Initialize the VF host configuration. Called during VF creation to setup
+ * VLAN 0, add the VF VSI broadcast filter, and setup spoof checking. It
+ * should only be called during VF creation.
+ */
+int ice_vf_init_host_cfg(struct ice_vf *vf, struct ice_vsi *vsi)
+{
+	struct ice_vsi_vlan_ops *vlan_ops;
+	struct ice_pf *pf = vf->pf;
+	u8 broadcast[ETH_ALEN];
+	struct device *dev;
+	int err;
+
+	dev = ice_pf_to_dev(pf);
+
+	err = ice_vsi_add_vlan_zero(vsi);
+	if (err) {
+		dev_warn(dev, "Failed to add VLAN 0 filter for VF %d\n",
+			 vf->vf_id);
+		return err;
+	}
+
+	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
+	err = vlan_ops->ena_rx_filtering(vsi);
+	if (err) {
+		dev_warn(dev, "Failed to enable Rx VLAN filtering for VF %d\n",
+			 vf->vf_id);
+		return err;
+	}
+
+	eth_broadcast_addr(broadcast);
+	err = ice_fltr_add_mac(vsi, broadcast, ICE_FWD_TO_VSI);
+	if (err) {
+		dev_err(dev, "Failed to add broadcast MAC filter for VF %d, status %d\n",
+			vf->vf_id, err);
+		return err;
+	}
+
+	vf->num_mac = 1;
+
+	err = ice_vsi_apply_spoofchk(vsi, vf->spoofchk);
+	if (err) {
+		dev_warn(dev, "Failed to initialize spoofchk setting for VF %d\n",
+			 vf->vf_id);
+		return err;
+	}
+
+	return 0;
+}
+
 /**
  * ice_vf_invalidate_vsi - invalidate vsi_idx/vsi_num to remove VSI access
  * @vf: VF to remove access to VSI for
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
index 552d1d02982d..6f3293b793b5 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib_private.h
@@ -36,6 +36,7 @@ void ice_vf_rebuild_host_cfg(struct ice_vf *vf);
 void ice_vf_ctrl_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_ctrl_vsi_release(struct ice_vf *vf);
 struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf);
+int ice_vf_init_host_cfg(struct ice_vf *vf, struct ice_vsi *vsi);
 void ice_vf_invalidate_vsi(struct ice_vf *vf);
 void ice_vf_vsi_release(struct ice_vf *vf);
 void ice_vf_set_initialized(struct ice_vf *vf);
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
