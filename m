Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 857C0350914
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2997F849C1;
	Wed, 31 Mar 2021 21:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cK400Eo5yzSA; Wed, 31 Mar 2021 21:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E35884958;
	Wed, 31 Mar 2021 21:27:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F136E1BF41E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D598784958
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZYu77eJG030r for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 38A968495C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:26:54 +0000 (UTC)
IronPort-SDR: O5TDg6ak8ddoZGPc5XoLu1CwRkuYFyI9MHg2Gno/La05Xcn/ZxHxJwx0OO3xXo9DdLq7LTJiG3
 VcuSfKBpK1zg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="192117309"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="192117309"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:26:52 -0700
IronPort-SDR: yi0uDKv7qDEnV0Xo0knymbaP95UtoN7t8sa9Rum7eApGguaJ5dIl9dz7ePbKC9yX/MAHeejApe
 pj+Jm3aTF8Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="445819641"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.129])
 by FMSMGA003.fm.intel.com with ESMTP; 31 Mar 2021 14:26:51 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 14:17:02 -0700
Message-Id: <20210331211708.55205-7-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S58 07/13] ice: use local for consistency
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

Do a minor refactor on ice_vsi_rebuild to use a local
variable to store vsi->type.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4c3a8bdfd71b..4e93005686a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3037,6 +3037,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	struct ice_coalesce_stored *coalesce;
 	int prev_num_q_vectors = 0;
 	struct ice_vf *vf = NULL;
+	enum ice_vsi_type vtype;
 	enum ice_status status;
 	struct ice_pf *pf;
 	int ret, i;
@@ -3045,7 +3046,8 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 		return -EINVAL;
 
 	pf = vsi->back;
-	if (vsi->type == ICE_VSI_VF)
+	vtype = vsi->type;
+	if (vtype == ICE_VSI_VF)
 		vf = &pf->vf[vsi->vf_id];
 
 	coalesce = kcalloc(vsi->num_q_vectors,
@@ -3063,7 +3065,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	 * many interrupts each VF needs. SR-IOV MSIX resources are also
 	 * cleared in the same manner.
 	 */
-	if (vsi->type != ICE_VSI_VF) {
+	if (vtype != ICE_VSI_VF) {
 		/* reclaim SW interrupts back to the common pool */
 		ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
 		pf->num_avail_sw_msix += vsi->num_q_vectors;
@@ -3078,7 +3080,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	ice_vsi_put_qs(vsi);
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_arrays(vsi);
-	if (vsi->type == ICE_VSI_VF)
+	if (vtype == ICE_VSI_VF)
 		ice_vsi_set_num_qs(vsi, vf->vf_id);
 	else
 		ice_vsi_set_num_qs(vsi, ICE_INVAL_VFID);
@@ -3097,7 +3099,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 	if (ret < 0)
 		goto err_vsi;
 
-	switch (vsi->type) {
+	switch (vtype) {
 	case ICE_VSI_CTRL:
 	case ICE_VSI_PF:
 		ret = ice_vsi_alloc_q_vectors(vsi);
@@ -3124,7 +3126,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 				goto err_vectors;
 		}
 		/* ICE_VSI_CTRL does not need RSS so skip RSS processing */
-		if (vsi->type != ICE_VSI_CTRL)
+		if (vtype != ICE_VSI_CTRL)
 			/* Do not exit if configuring RSS had an issue, at
 			 * least receive traffic on first queue. Hence no
 			 * need to capture return value
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
