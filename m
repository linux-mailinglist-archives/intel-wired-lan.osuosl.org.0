Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A805466A611
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CF6E082217;
	Fri, 13 Jan 2023 22:38:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CF6E082217
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649506;
	bh=31IcanL80aZWwgUSpPbLYOb7EjF5lwPqJ94ECv8+ywU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=na0JYn9LISsGjC+aNZiD61rwCvhh+up6KguXVEjgAXHXet6PKArQl/55NUvuMgWop
	 4tksMxrQLpzqNQ1WmRiUbkJoGzr4iauEsR/C+OC0H+1jqyxH/jVqvznbM/fmaW0Ibj
	 j0wKQ1dzJD5KPbj8yeZTRh/+LGqJos4OsWGizR5IE75r7+1F2mJgnb4WdDZyMPCTq1
	 c6wp1sL+Gxyqrvc9x2UjtkBC86hxhUOTHAPEQuoI6ydciCyXNVYjGAO6leLotIhdGq
	 WSsB6rrm7WPAI4EcLz7PllSwXSwnr3xoSmfPSmIzQRsOwg5o3YxlhgVJ0GLmbX7Adi
	 yA8X04iV+25TQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SIOv_TANPz6k; Fri, 13 Jan 2023 22:38:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAFD082200;
	Fri, 13 Jan 2023 22:38:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAFD082200
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 247DF1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EE2F41B5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EE2F41B5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W4jSKZ9EjXaR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4224441B55
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4224441B55
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354067"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354067"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:46 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859782"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859782"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:45 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:31 -0800
Message-Id: <20230113223735.2514364-10-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649466; x=1705185466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iq0cdY36rYS0Da+qof1Cyaf4C2y6z/X+RLk9CSm0LmA=;
 b=R1rRGJ7yA8DaK27+hGS4Z98ql9vYebp6ShlnSL4OTITCVS7+qXkcfxH0
 VnINJQQJQGRMKP0LSTOjuy21Wa24nWsNcCZ4vVwgjVZ1VMX8PzACe9SgY
 eQ+fFgo5ZruXQHqC+wHOTqSvUJrTMtN0g0Qhy9aXLjB/eBaydElSiPeCY
 H64KZXYk20bNTQJi2NCuWdF8alaq8uk9lTC1nHOdFLdMUZT49P8am6T/J
 9qK4U+/RbtUSCdD5NN1geAFAOf5a0E2HgdT8K4Sz1vaTB2R4TWGIekjxg
 IGPfCFLq3UqlsY98x0fTROcmTPLtxtsAcJ2SscxiGgtajT83+kClN6E5n
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R1rRGJ7y
Subject: [Intel-wired-lan] [PATCH net-next 09/13] ice: introduce
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
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 36 +------------
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   | 54 +++++++++++++++++++
 .../ethernet/intel/ice/ice_vf_lib_private.h   |  1 +
 3 files changed, 57 insertions(+), 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 834020ca7c71..6f46d23ac382 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -568,51 +568,19 @@ static int ice_set_per_vf_res(struct ice_pf *pf, u16 num_vfs)
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
index 151ffbcebf90..12a5ac272874 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -1169,6 +1169,60 @@ struct ice_vsi *ice_vf_ctrl_vsi_setup(struct ice_vf *vf)
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
