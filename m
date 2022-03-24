Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5518E4E62AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 12:49:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC41E60E5D;
	Thu, 24 Mar 2022 11:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F1NakizWuiMv; Thu, 24 Mar 2022 11:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D065160E13;
	Thu, 24 Mar 2022 11:49:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9EEA41BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 88F2341C44
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IvYZDrOwqzVL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 11:49:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1EBF41C43
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 11:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648122579; x=1679658579;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fECszOYEZOUyl14+HZj9rYJBYIJYg6fObv2pkVS8d9o=;
 b=Q0SJZKKo1AXZ/KWhCYdnY/LnMSMrdh4Orsw9fZqVqUH/IPLzpmaLkZSk
 lD9V4tBdZU3BEcXLt+zKnQfvd8YUfVqX7rxNVfO5vXF8R5jvkkgsXmLSM
 55K1ZJ4t8Fh5Mdz5UAKeE/Ip+MdA2ludzYaVY5voIm9GNJ4ZZWqtWPbkH
 +ypwKQ8pq1ufNJkTm1bEcTr4+fRa+035WwZ4wUEYtIfzI3oVb7hZjMiYl
 F0pFCZvKQxnp70u3W+WTBSV32Hk/9rOivjy8+f1qq8bYzW6HCGqOvMV0c
 d4Kd3X6RX2wVzszteEdF13FhaRftD8qLvxlIDswLUkdcxT1L33SvLShFg w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258309081"
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="258309081"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 04:49:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,207,1643702400"; d="scan'208";a="717788188"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga005.jf.intel.com with ESMTP; 24 Mar 2022 04:49:17 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Mar 2022 12:49:07 +0100
Message-Id: <20220324114907.73459-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-next] ice: introduce common helper
 for retrieving VSI by vsi_num
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Both ice_idc.c and ice_virtchnl.c carry their own implementation of a
helper function that is looking for a given VSI based on provided
vsi_num. Their functionality is the same, so let's introduce the common
function in ice.h that both of the mentioned sites will use.

This is a strictly cleanup thing, no functionality is changed.

Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h          | 15 +++++++++++++
 drivers/net/ethernet/intel/ice/ice_idc.c      | 15 -------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 22 ++-----------------
 3 files changed, 17 insertions(+), 35 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index e9aa1fb43c3a..a541446b96e8 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -756,6 +756,21 @@ static inline struct ice_vsi *ice_get_ctrl_vsi(struct ice_pf *pf)
 	return pf->vsi[pf->ctrl_vsi_idx];
 }
 
+/**
+ * ice_find_vsi - Find the VSI from VSI ID
+ * @pf: The PF pointer to search in
+ * @vsi_num: The VSI ID to search for
+ */
+static inline struct ice_vsi *ice_find_vsi(struct ice_pf *pf, u16 vsi_num)
+{
+	int i;
+
+	ice_for_each_vsi(pf, i)
+		if (pf->vsi[i] && pf->vsi[i]->vsi_num == vsi_num)
+			return  pf->vsi[i];
+	return NULL;
+}
+
 /**
  * ice_is_switchdev_running - check if switchdev is configured
  * @pf: pointer to PF structure
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 73aa520317d4..56e03d0e319f 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -44,21 +44,6 @@ void ice_send_event_to_aux(struct ice_pf *pf, struct iidc_event *event)
 	device_unlock(&pf->adev->dev);
 }
 
-/**
- * ice_find_vsi - Find the VSI from VSI ID
- * @pf: The PF pointer to search in
- * @vsi_num: The VSI ID to search for
- */
-static struct ice_vsi *ice_find_vsi(struct ice_pf *pf, u16 vsi_num)
-{
-	int i;
-
-	ice_for_each_vsi(pf, i)
-		if (pf->vsi[i] && pf->vsi[i]->vsi_num == vsi_num)
-			return  pf->vsi[i];
-	return NULL;
-}
-
 /**
  * ice_add_rdma_qset - Add Leaf Node for RDMA Qset
  * @pf: PF struct
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 3f1a63815bac..8ddb462e1af2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -514,24 +514,6 @@ static void ice_vc_reset_vf_msg(struct ice_vf *vf)
 		ice_reset_vf(vf, 0);
 }
 
-/**
- * ice_find_vsi_from_id
- * @pf: the PF structure to search for the VSI
- * @id: ID of the VSI it is searching for
- *
- * searches for the VSI with the given ID
- */
-static struct ice_vsi *ice_find_vsi_from_id(struct ice_pf *pf, u16 id)
-{
-	int i;
-
-	ice_for_each_vsi(pf, i)
-		if (pf->vsi[i] && pf->vsi[i]->vsi_num == id)
-			return pf->vsi[i];
-
-	return NULL;
-}
-
 /**
  * ice_vc_isvalid_vsi_id
  * @vf: pointer to the VF info
@@ -544,7 +526,7 @@ bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
 	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 
-	vsi = ice_find_vsi_from_id(pf, vsi_id);
+	vsi = ice_find_vsi(pf, vsi_id);
 
 	return (vsi && (vsi->vf == vf));
 }
@@ -559,7 +541,7 @@ bool ice_vc_isvalid_vsi_id(struct ice_vf *vf, u16 vsi_id)
  */
 static bool ice_vc_isvalid_q_id(struct ice_vf *vf, u16 vsi_id, u8 qid)
 {
-	struct ice_vsi *vsi = ice_find_vsi_from_id(vf->pf, vsi_id);
+	struct ice_vsi *vsi = ice_find_vsi(vf->pf, vsi_id);
 	/* allocated Tx and Rx queues should be always equal for VF VSI */
 	return (vsi && (qid < vsi->alloc_txq));
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
