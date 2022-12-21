Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C78653075
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 12:54:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F0E680F59;
	Wed, 21 Dec 2022 11:54:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F0E680F59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671623676;
	bh=PVyVmJFTytrKljxZfahhn6xM+JC7YZNKVZRAP/pJlGY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HAU+Za9JO9Kmw6cRilL+kg2BvlS6qxnP9aBDV8Q2nGc84kL25uDEg9VTUhUgK/nHD
	 OzHMkt/0ZgidLW4QUa+k0r/E7TlTmmF48fvMtQ4zrXeesd2GJNin74u4Q5igz4gC62
	 JkwZA/mtH6suY+m6cV/M8D4BFvIcZaV4R1QKpuQSrq24umWg8XFx7HUOfd+maTdeKQ
	 /EtXpEqwf8vMmV7a5mdA5nI+5A95afX7h9v+KCzng3TbiWgju9yUnM1q6ue9S1+Aag
	 j8BXHH6Phzx1QZcg75P+13JqJRJ4fd7jmTDK/KIKu+CBtfCcPV00cC/rLNrTqo99un
	 sZEPIvtYF4FEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNRAYHaR-afI; Wed, 21 Dec 2022 11:54:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0830D80FB0;
	Wed, 21 Dec 2022 11:54:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0830D80FB0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F38C51BF616
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE60F812EF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE60F812EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZGT1WsIN7yWP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 11:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 21EB7812EC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 21EB7812EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 11:54:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321766183"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="321766183"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 03:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="714799395"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="714799395"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga008.fm.intel.com with ESMTP; 21 Dec 2022 03:54:21 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Dec 2022 12:38:20 +0100
Message-Id: <20221221113822.12858-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
References: <20221221113822.12858-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671623665; x=1703159665;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ku19TpWfsXpE66OIpQ7Ww0JdApW5eN7AdawzXahiRUY=;
 b=BIKP/Mw2tvZ/rkI+jAQP2P/8X+QtfwabMiUwTdFzP7PjJi9lcu/Oxg/w
 jJMNbMayiFRNDBZBdgKB7vm5gyzf0SRewGNCvmwzQI0jhLBsWXhGy9SQy
 xVbsrTZwskpdeSn32reE9ks3EHq/J5eI2xk6NDNYdzZOuI14OAMWxz1sw
 btpNnH6VeXhOJRmQ3QceWpaiSklWkH4CwHpRBoU3yaZ7YtvTIElqCwp83
 0GlXVTL8JhnFfm4FxeCDS9wV0a2LM9R7L0XXhrYtM2Co5UfDZl4/Nzq5A
 cVG0PJtU8jGZFIiLXknjIPXPL8nZ96RU1AVMsrcA7lMOvOSvMiSm0t36C
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BIKP/Mw2
Subject: [Intel-wired-lan] [PATCH net-next v3 08/10] ice: move VSI delete
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
Cc: mustafa.ismail@intel.com, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 przemyslaw.kitszel@intel.com, shiraz.saleem@intel.com
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
index 4751092e02ef..b1ae17f07a4c 100644
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
@@ -2851,7 +2850,7 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vf *vf, struct ice_channel *ch)
 unroll_alloc_q_vector:
 	ice_vsi_free_q_vectors(vsi);
 unroll_vsi_init:
-	ice_vsi_delete(vsi);
+	ice_vsi_delete_from_hw(vsi);
 unroll_get_qs:
 	ice_vsi_put_qs(vsi);
 unroll_vsi_alloc_stat:
@@ -2914,7 +2913,6 @@ void ice_vsi_decfg(struct ice_vsi *vsi)
 
 	ice_vsi_clear_rings(vsi);
 	ice_vsi_free_q_vectors(vsi);
-	ice_vsi_delete(vsi);
 	ice_vsi_put_qs(vsi);
 	ice_vsi_free_arrays(vsi);
 
@@ -3312,7 +3310,7 @@ int ice_vsi_release(struct ice_vsi *vsi)
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
index 570e94e175ef..0c1acb6cd09c 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8575,12 +8575,9 @@ static void ice_remove_q_channels(struct ice_vsi *vsi, bool rem_fltr)
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
