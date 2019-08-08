Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E12486DAE
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 01:08:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1311B87667;
	Thu,  8 Aug 2019 23:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtRMUzckAt9Q; Thu,  8 Aug 2019 23:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 645298769E;
	Thu,  8 Aug 2019 23:08:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2EE6D1BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2477E88363
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZO1YqlFVlYEK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1280388355
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:08:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169141835"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:08:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 07:39:33 -0700
Message-Id: <20190808143938.4968-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S27 10/15] ice: Add ice_get_main_vsi to
 get PF/main VSI
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

From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>

There are multiple places where we currently use ice_find_vsi_by_type
to get the PF (a.k.a. main) VSI. The PF VSI by definition is always
the first element in the pf->vsi array (i.e. pf->vsi[0]). So instead
add and use a new helper function ice_get_main_vsi, which just returns
pf->vsi[0].

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 20 +++++++-------------
 drivers/net/ethernet/intel/ice/ice_main.c |  6 +++---
 2 files changed, 10 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index dae79bb635f7..681224c1de0e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -425,21 +425,15 @@ ice_irq_dynamic_ena(struct ice_hw *hw, struct ice_vsi *vsi,
 }
 
 /**
- * ice_find_vsi_by_type - Find and return VSI of a given type
- * @pf: PF to search for VSI
- * @type: Value indicating type of VSI we are looking for
+ * ice_get_main_vsi - Get the PF VSI
+ * @pf: PF instance
+ *
+ * returns pf->vsi[0], which by definition is the PF VSI
  */
-static inline struct ice_vsi *
-ice_find_vsi_by_type(struct ice_pf *pf, enum ice_vsi_type type)
+static inline struct ice_vsi *ice_get_main_vsi(struct ice_pf *pf)
 {
-	int i;
-
-	for (i = 0; i < pf->num_alloc_vsi; i++) {
-		struct ice_vsi *vsi = pf->vsi[i];
-
-		if (vsi && vsi->type == type)
-			return vsi;
-	}
+	if (pf->vsi)
+		return pf->vsi[0];
 
 	return NULL;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index cfa06a69f029..2850f8e41408 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -120,7 +120,7 @@ static int ice_init_mac_fltr(struct ice_pf *pf)
 	u8 broadcast[ETH_ALEN];
 	struct ice_vsi *vsi;
 
-	vsi = ice_find_vsi_by_type(pf, ICE_VSI_PF);
+	vsi = ice_get_main_vsi(pf);
 	if (!vsi)
 		return -EINVAL;
 
@@ -826,7 +826,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (link_up == old_link && link_speed == old_link_speed)
 		return result;
 
-	vsi = ice_find_vsi_by_type(pf, ICE_VSI_PF);
+	vsi = ice_get_main_vsi(pf);
 	if (!vsi || !vsi->port_info)
 		return -EINVAL;
 
@@ -1439,7 +1439,7 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 	struct ice_vsi *vsi;
 	int err;
 
-	vsi = ice_find_vsi_by_type(pf, ICE_VSI_PF);
+	vsi = ice_get_main_vsi(pf);
 	if (!vsi)
 		return;
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
