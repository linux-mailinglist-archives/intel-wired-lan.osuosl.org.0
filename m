Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DBC649DEC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 12:33:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFB43813DA;
	Mon, 12 Dec 2022 11:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFB43813DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670844809;
	bh=LIES8GhddlTwlIPfA1TXCNpGuetHF8IEVznuzNkNVfY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gX0aI+ZOUI1ec7jPisHSv3HwZk2WfULy5CKgEhTRNSknNynp9kkPA60m4fhzUusbC
	 HjZv8pM+ZQO2b+VMD3Dc03ORYnUp1y56xcR7jHNa0Gy6Pa8EaHse5utYGkyApMoq2o
	 IQ2c55GozwrlxmjOD+i3hBgDVDm8rGB34r0UeCOsdtla+vMyE4wbhW4kUJMNbNp9ot
	 XHFMUh26le3cQpO2PHPSk/JRTj/dBFa/Cn45olN4JUW1ewVLvlNZVl/ECGnl4bBbA+
	 ltLwSVjnUsuT43e5A3w89QOwERh7gUvAY11DWwnrdqQL9ak/rRQPW2oPLSvm0HBQdj
	 OwYCG5ligPoCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xclkGfpw8bPN; Mon, 12 Dec 2022 11:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADD13813B9;
	Mon, 12 Dec 2022 11:33:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADD13813B9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7477D1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F354813B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F354813B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2U85wfZ8FTxX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 11:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96AAA81353
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96AAA81353
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 11:33:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="317861534"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="317861534"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:33:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="893459833"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="893459833"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga006.fm.intel.com with ESMTP; 12 Dec 2022 03:33:16 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Dec 2022 12:16:43 +0100
Message-Id: <20221212111645.1198680-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844800; x=1702380800;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=De8/hoqshrRcFoO6dpkoJyws8syDggPVjTXTixkRy+E=;
 b=FxBAzD842elZaRWQHOrAb0X9XBRqNKdakOcQE5FR6v/TFqdnLAw+ad9M
 WWzzT7QEsXlBnGLskdVLPTa1al+2HgXITFqGgB84ppQ9ZHaoxRsJFwg3X
 FY9b7AIFQDQ2syCbmu9gruWuRVHYYMQgDV2ANEMOPFDAsBvpEHD8Ows5J
 pZf+ErQUg2WbVA35iqj5Hzf4Ep8e27q2OMYgmLcnA94h1c6w0LJnGoUiT
 QbGddlm6PbdOxpOBU8T1qC5Zq7S8cWGx1cj4FeE6lbiaDkk8rVxjhY2y0
 CQKcOskn1rhSEIb2zSXF9OwW+chg+gL6gPlsR7Ugku/T1SfjasMML6tw8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FxBAzD84
Subject: [Intel-wired-lan] [PATCH net-next v1 08/10] ice: move VSI delete
 outside deconfig
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com, kuba@kernel.org,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In deconfig VSI shouldn't be deleted from hw.

Rewrite VSI delete function to reflect that sometimes it is only needed
to remove VSI from hw without freeing the memory:
ice_vsi_delete() -> delete from HW and free memory
ice_vsi_delete_from_hw() -> delete only from HW

Value returned from ice_vsi_free() is never used. Change return type to
void.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 28 +++++++++++------------
 drivers/net/ethernet/intel/ice/ice_lib.h  |  1 -
 drivers/net/ethernet/intel/ice/ice_main.c |  5 +---
 3 files changed, 14 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index eba990120a06..ae6ce6a74d03 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -282,10 +282,10 @@ static int ice_get_free_slot(void *array, int size, int curr)
 }
 
 /**
- * ice_vsi_delete - delete a VSI from the switch
+ * ice_vsi_delete_from_hw - delete a VSI from the switch
  * @vsi: pointer to VSI being removed
  */
-void ice_vsi_delete(struct ice_vsi *vsi)
+static void ice_vsi_delete_from_hw(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = vsi->back;
 	struct ice_vsi_ctx *ctxt;
@@ -453,26 +453,21 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
  *
  * This deallocates the VSI's queue resources, removes it from the PF's
  * VSI array if necessary, and deallocates the VSI
- *
- * Returns 0 on success, negative on failure
  */
-int ice_vsi_free(struct ice_vsi *vsi)
+static void ice_vsi_free(struct ice_vsi *vsi)
 {
 	struct ice_pf *pf = NULL;
 	struct device *dev;
 
-	if (!vsi)
-		return 0;
-
-	if (!vsi->back)
-		return -EINVAL;
+	if (!vsi || !vsi->back)
+		return;
 
 	pf = vsi->back;
 	dev = ice_pf_to_dev(pf);
 
 	if (!pf->vsi[vsi->idx] || pf->vsi[vsi->idx] != vsi) {
 		dev_dbg(dev, "vsi does not exist at pf->vsi[%d]\n", vsi->idx);
-		return -EINVAL;
+		return;
 	}
 
 	mutex_lock(&pf->sw_mutex);
@@ -485,8 +480,12 @@ int ice_vsi_free(struct ice_vsi *vsi)
 	ice_vsi_free_arrays(vsi);
 	mutex_unlock(&pf->sw_mutex);
 	devm_kfree(dev, vsi);
+}
 
-	return 0;
+void ice_vsi_delete(struct ice_vsi *vsi)
+{
+	ice_vsi_delete_from_hw(vsi);
+	ice_vsi_free(vsi);
 }
 
 /**
@@ -2843,7 +2842,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
 unroll_alloc_q_vector:
 	ice_vsi_free_q_vectors(vsi);
 unroll_vsi_init:
-	ice_vsi_delete(vsi);
+	ice_vsi_delete_from_hw(vsi);
 unroll_get_qs:
 	ice_vsi_put_qs(vsi);
 unroll_vsi_alloc:
@@ -2904,7 +2903,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_q_vectors(vsi);
-	ice_vsi_delete(vsi);
 	ice_vsi_put_qs(vsi);
 	ice_vsi_free_arrays(vsi);
 
@@ -3308,7 +3306,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
 	 * for ex: during rmmod.
 	 */
 	if (!ice_is_reset_in_progress(pf->state))
-		ice_vsi_free(vsi);
+		ice_vsi_delete(vsi);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index ad4d5314ca76..8905f8721a76 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -42,7 +42,6 @@ void ice_cfg_sw_lldp(struct ice_vsi *vsi, bool tx, bool create);
 int ice_set_link(struct ice_vsi *vsi, bool ena);
 
 void ice_vsi_delete(struct ice_vsi *vsi);
-int ice_vsi_free(struct ice_vsi *vsi);
 
 int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d8f51aee78ff..fbeac890a606 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8689,12 +8689,9 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
 		/* clear the VSI from scheduler tree */
 		ice_rm_vsi_lan_cfg(ch->ch_vsi->port_info, ch->ch_vsi->idx);
 
-		/* Delete VSI from FW */
+		/* Delete VSI from FW, PF and HW VSI arrays */
 		ice_vsi_delete(ch->ch_vsi);
 
-		/* Delete VSI from PF and HW VSI arrays */
-		ice_vsi_free(ch->ch_vsi);
-
 		/* free the channel */
 		kfree(ch);
 	}
-- 
2.36.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
