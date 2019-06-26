Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6CB56FD8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E07A0861B2;
	Wed, 26 Jun 2019 17:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHKc7J392PvA; Wed, 26 Jun 2019 17:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CDC7F861C5;
	Wed, 26 Jun 2019 17:47:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 894FA1BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86ADF860E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MZrN02wF-MZa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D337A860FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218152"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:53 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:26 -0700
Message-Id: <20190626092027.52845-15-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 15/16] ice: Remove flag to track VF
 interrupt status
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
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

As a result of refactoring of VF VSIs interrupts code, there is no
need to track its configuration status again with ICE_VF_STATE_CFG_INTR
flag - In fact, it is not being checked anywhere in the code right now, so
this patch removes the dead code as applicable to the flag.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c | 11 -----------
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h |  5 -----
 2 files changed, 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index c26f379713a4..a3849ed283eb 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -297,13 +297,6 @@ void ice_free_vfs(struct ice_pf *pf)
 		if (test_bit(ICE_VF_STATE_INIT, pf->vf[i].vf_states)) {
 			/* disable VF qp mappings */
 			ice_dis_vf_mappings(&pf->vf[i]);
-
-			/* Set this state so that assigned VF vectors can be
-			 * reclaimed by PF for reuse in ice_vsi_release(). No
-			 * need to clear this bit since pf->vf array is being
-			 * freed anyways after this for loop
-			 */
-			set_bit(ICE_VF_STATE_CFG_INTR, pf->vf[i].vf_states);
 			ice_free_vf_res(&pf->vf[i]);
 		}
 	}
@@ -551,7 +544,6 @@ static int ice_alloc_vsi_res(struct ice_vf *vf)
 	 * expect vector assignment to be changed unless there is a request for
 	 * more vectors.
 	 */
-	clear_bit(ICE_VF_STATE_CFG_INTR, vf->vf_states);
 ice_alloc_vsi_res_exit:
 	ice_free_fltr_list(&pf->pdev->dev, &tmp_add_list);
 	return status;
@@ -1283,9 +1275,6 @@ static int ice_alloc_vfs(struct ice_pf *pf, u16 num_alloc_vfs)
 		/* assign default capabilities */
 		set_bit(ICE_VIRTCHNL_VF_CAP_L2, &vfs[i].vf_caps);
 		vfs[i].spoofchk = true;
-
-		/* Set this state so that PF driver does VF vector assignment */
-		set_bit(ICE_VF_STATE_CFG_INTR, vfs[i].vf_states);
 	}
 	pf->num_alloc_vfs = num_alloc_vfs;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index c3ca522c245a..ada69120ff38 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -30,11 +30,6 @@ enum ice_vf_states {
 	ICE_VF_STATE_DIS,
 	ICE_VF_STATE_MC_PROMISC,
 	ICE_VF_STATE_UC_PROMISC,
-	/* state to indicate if PF needs to do vector assignment for VF.
-	 * This needs to be set during first time VF initialization or later
-	 * when VF asks for more Vectors through virtchnl OP.
-	 */
-	ICE_VF_STATE_CFG_INTR,
 	ICE_VF_STATES_NBITS
 };
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
