Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D17406280EC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 14:12:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B9D78186B;
	Mon, 14 Nov 2022 13:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B9D78186B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668431563;
	bh=XJpx1CrGSAFYHNK7lkabGs/rWMN/EZNCB3rBNqlVuSo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FoFHqdGNNGP+d/lqVAj/59tmJDWtpQgznh1qMjeRuXA7zqxfIf98LjSLNuvGI2XYl
	 7EiDAO8iO5HjW26iRrTECO3GFrfkxPLW4QwXFXhdPGkSOI+27+Hnr+hprTr/Z5VVSf
	 44PeqNkw1MZ9qyZI97/ZUmbhDH//QbvGT4l30cQt09E1agJjHkmumgmWEoi1cp9QO6
	 GVqNhNnesAU7KNgPNSYarHUbVDZsPiWRLfp1nxZBpmLNRS4OeUKZG1XfbqpDsz9OJE
	 xRvEZPWmLduks/4Lfz0HBZAayd9eV/Kzcn5C/UEdrvmvlx2+ZZPQsGzJdl/VpKky/n
	 Sezx17WX4innw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ty2WWVycD_D8; Mon, 14 Nov 2022 13:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4520D81886;
	Mon, 14 Nov 2022 13:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4520D81886
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E15C81BF379
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C829681987
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C829681987
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3laogJvAWmJk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 13:12:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37B7E817FF
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37B7E817FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 13:12:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313766737"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="313766737"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 05:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="616306029"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="616306029"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga006.jf.intel.com with ESMTP; 14 Nov 2022 05:12:27 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
 pabeni@redhat.com, edumazet@google.com
Date: Mon, 14 Nov 2022 13:57:50 +0100
Message-Id: <20221114125755.13659-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
References: <20221114125755.13659-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668431552; x=1699967552;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BoNdE6LmPMBapYPb9imTZwp+5J8dOM4lJJ0qwSGKJOQ=;
 b=WBnw9U0nuktbbwQ56eMb//Wprfypnx79JSNhAfF7aLH9MyBQtcgpTyhU
 o+JNSB0moVouaZJUFnoPFi3kCv1hgoDEwUIar1qpSyRNkWCeqCwALlwCb
 GRCq2lmhxie1awLlElZIK664lcfELX1DKWUdRBtDu3x3dA0jbWuhqqTAL
 yIDD7rNTfzltvC7PIrzdL7Kvpit1kLUlc6MfVhuNVahhI86YHxZF/2a8I
 ktoe1A10c56w31CyHnhM46I4TDPxy84AW8WvKckZd0h2vyGML0t9Jvw6k
 1IbAINM6zG1Y1/s3jZ+BMHssmzcaR5Y5rBC1bd0Q7M8DnL7osSsu3z2AZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WBnw9U0n
Subject: [Intel-wired-lan] [PATCH net-next 08/13] ice: move VSI delete
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
Cc: mustafa.ismail@intel.com, leszek.kaliszczuk@intel.com, jiri@nvidia.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com,
 przemyslaw.kitszel@intel.com
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
index dc672af10c25..32da2da74056 100644
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
@@ -353,26 +353,21 @@ static void ice_vsi_free_arrays(struct ice_vsi *vsi)
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
@@ -384,8 +379,12 @@ int ice_vsi_free(struct ice_vsi *vsi)
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
@@ -2681,7 +2680,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
 unroll_alloc_q_vector:
 	ice_vsi_free_q_vectors(vsi);
 unroll_vsi_init:
-	ice_vsi_delete(vsi);
+	ice_vsi_delete_from_hw(vsi);
 unroll_get_qs:
 	ice_vsi_put_qs(vsi);
 unroll_vsi_alloc:
@@ -2742,7 +2741,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_q_vectors(vsi);
-	ice_vsi_delete(vsi);
 	ice_vsi_put_qs(vsi);
 	ice_vsi_free_arrays(vsi);
 
@@ -3140,7 +3138,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
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
index bf98334fadbc..49d29eb61c17 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8555,12 +8555,9 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
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
