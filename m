Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34294247B80
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Aug 2020 02:29:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD48786D16;
	Tue, 18 Aug 2020 00:29:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K2cML9e9A0le; Tue, 18 Aug 2020 00:29:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F83686C12;
	Tue, 18 Aug 2020 00:29:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7061BF97F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 00:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 03B3D204E1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 00:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1RUj2JfjwUTx for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Aug 2020 00:29:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id DE6F8204C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Aug 2020 00:29:47 +0000 (UTC)
IronPort-SDR: t3wxz0q3jOxe1ELFVNzZVKmqGYJzIJfPWtroKiRsBDQYN2O6zA2u2FwKquaB7xGE1D752ga4wD
 6RbaQhqjtFwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9716"; a="154788612"
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="154788612"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2020 17:29:47 -0700
IronPort-SDR: mqDGvsCXn8XuKzT3dFhdJjdLKX+lsRZTLzmTMf8F5ArLhVZmvaJbDerPtADPAcjS3sfLLqjwjW
 7KVWnGmwfK+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,324,1592895600"; d="scan'208";a="277902319"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2020 17:29:46 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Aug 2020 17:25:03 -0700
Message-Id: <20200818002503.44781-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] ice: remove repeated words
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

From: Bruce Allan <bruce.w.allan@intel.com>

A new test in checkpatch detects repeated words; cleanup all pre-existing
occurrences of those now.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_flex_pipe.c   | 2 +-
 drivers/net/ethernet/intel/ice/ice_flow.c        | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c        | 2 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 2 +-
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
index ac448d223e9a..9095b4d274ad 100644
--- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
+++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
@@ -4876,7 +4876,7 @@ ice_rem_prof_id_flow(struct ice_hw *hw, enum ice_block blk, u16 vsi, u64 hdl)
 
 			if (last_profile) {
 				/* If there are no profiles left for this VSIG,
-				 * then simply remove the the VSIG.
+				 * then simply remove the VSIG.
 				 */
 				status = ice_rem_vsig(hw, blk, vsig, &chg);
 				if (status)
diff --git a/drivers/net/ethernet/intel/ice/ice_flow.c b/drivers/net/ethernet/intel/ice/ice_flow.c
index fe677621dd51..45fa3d9e3af2 100644
--- a/drivers/net/ethernet/intel/ice/ice_flow.c
+++ b/drivers/net/ethernet/intel/ice/ice_flow.c
@@ -385,7 +385,7 @@ ice_flow_xtract_fld(struct ice_hw *hw, struct ice_flow_prof_params *params,
  * ice_flow_xtract_raws - Create extract sequence entries for raw bytes
  * @hw: pointer to the HW struct
  * @params: information about the flow to be processed
- * @seg: index of packet segment whose raw fields are to be be extracted
+ * @seg: index of packet segment whose raw fields are to be extracted
  */
 static enum ice_status
 ice_flow_xtract_raws(struct ice_hw *hw, struct ice_flow_prof_params *params,
@@ -999,7 +999,7 @@ enum ice_status ice_flow_rem_entry(struct ice_hw *hw, enum ice_block blk,
  *
  * This helper function stores information of a field being matched, including
  * the type of the field and the locations of the value to match, the mask, and
- * and the upper-bound value in the start of the input buffer for a flow entry.
+ * the upper-bound value in the start of the input buffer for a flow entry.
  * This function should only be used for fixed-size data structures.
  *
  * This function also opportunistically determines the protocol headers to be
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4d79e5c1d6e6..6b6e982e2658 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2417,7 +2417,7 @@ int ice_destroy_xdp_rings(struct ice_vsi *vsi)
 	int i, v_idx;
 
 	/* q_vectors are freed in reset path so there's no point in detaching
-	 * rings; in case of rebuild being triggered not from reset reset bits
+	 * rings; in case of rebuild being triggered not from reset bits
 	 * in pf->state won't be set, so additionally check first q_vector
 	 * against NULL
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index bce35ba997a8..c8b2705a8aed 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -872,7 +872,7 @@ static int ice_get_max_valid_res_idx(struct ice_res_tracker *res)
  * always be caught by ice_set_per_vf_res().
  *
  * Return 0 on success, and -EINVAL when there are not enough MSIX vectors in
- * in the PF's space available for SR-IOV.
+ * the PF's space available for SR-IOV.
  */
 static int ice_sriov_set_msix_res(struct ice_pf *pf, u16 num_msix_needed)
 {
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
