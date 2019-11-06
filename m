Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FC8F1DA5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Nov 2019 19:36:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B50908A879;
	Wed,  6 Nov 2019 18:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bcqJy39sK5ok; Wed,  6 Nov 2019 18:36:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AC968A862;
	Wed,  6 Nov 2019 18:36:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 25AA11BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 200B98A854
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wBHioXdB8hMd for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Nov 2019 18:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA78C8A86D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Nov 2019 18:36:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 10:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="205918164"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga006.jf.intel.com with ESMTP; 06 Nov 2019 10:36:27 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Nov 2019 02:05:39 -0800
Message-Id: <20191106100541.48639-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
References: <20191106100541.48639-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S32 v3 13/15] ice: Introduce and use
 ice_vsi_type_str
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

ice_vsi_type_str converts an ice_vsi_type enum value to its string
equivalent. This is expected to help easily identify VSI types from
module print statements.

Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 21 ++++++++++++++++++++-
 drivers/net/ethernet/intel/ice/ice_lib.h  |  2 ++
 drivers/net/ethernet/intel/ice/ice_main.c | 16 ++++++++--------
 3 files changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index c9e0b533da47..af7574b0624b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -6,6 +6,24 @@
 #include "ice_lib.h"
 #include "ice_dcb_lib.h"
 
+/**
+ * ice_vsi_type_str - maps VSI type enum to string equivalents
+ * @type: VSI type enum
+ */
+const char *ice_vsi_type_str(enum ice_vsi_type type)
+{
+	switch (type) {
+	case ICE_VSI_PF:
+		return "ICE_VSI_PF";
+	case ICE_VSI_VF:
+		return "ICE_VSI_VF";
+	case ICE_VSI_LB:
+		return "ICE_VSI_LB";
+	default:
+		return "unknown";
+	}
+}
+
 /**
  * ice_vsi_ctrl_rx_rings - Start or stop a VSI's Rx rings
  * @vsi: the VSI being configured
@@ -700,7 +718,8 @@ static void ice_set_rss_vsi_ctx(struct ice_vsi_ctx *ctxt, struct ice_vsi *vsi)
 		hash_type = ICE_AQ_VSI_Q_OPT_RSS_TPLZ;
 		break;
 	case ICE_VSI_LB:
-		dev_dbg(&pf->pdev->dev, "Unsupported VSI type %d\n", vsi->type);
+		dev_dbg(&pf->pdev->dev, "Unsupported VSI type %s\n",
+			ice_vsi_type_str(vsi->type));
 		return;
 	default:
 		dev_warn(&pf->pdev->dev, "Unknown VSI type %d\n", vsi->type);
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
index 1ec2ad98ac46..364588dfc646 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_lib.h
@@ -6,6 +6,8 @@
 
 #include "ice.h"
 
+const char *ice_vsi_type_str(enum ice_vsi_type type);
+
 int
 ice_add_mac_to_list(struct ice_vsi *vsi, struct list_head *add_list,
 		    const u8 *macaddr);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index aaa398759548..ba9a0b74ef0d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -4635,8 +4635,8 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		err = ice_vsi_rebuild(vsi);
 		if (err) {
 			dev_err(&pf->pdev->dev,
-				"rebuild VSI failed, err %d, VSI index %d, type %d\n",
-				err, vsi->idx, type);
+				"rebuild VSI failed, err %d, VSI index %d, type %s\n",
+				err, vsi->idx, ice_vsi_type_str(type));
 			return err;
 		}
 
@@ -4644,8 +4644,8 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		status = ice_replay_vsi(&pf->hw, vsi->idx);
 		if (status) {
 			dev_err(&pf->pdev->dev,
-				"replay VSI failed, status %d, VSI index %d, type %d\n",
-				status, vsi->idx, type);
+				"replay VSI failed, status %d, VSI index %d, type %s\n",
+				status, vsi->idx, ice_vsi_type_str(type));
 			return -EIO;
 		}
 
@@ -4658,13 +4658,13 @@ static int ice_vsi_rebuild_by_type(struct ice_pf *pf, enum ice_vsi_type type)
 		err = ice_ena_vsi(vsi, false);
 		if (err) {
 			dev_err(&pf->pdev->dev,
-				"enable VSI failed, err %d, VSI index %d, type %d\n",
-				err, vsi->idx, type);
+				"enable VSI failed, err %d, VSI index %d, type %s\n",
+				err, vsi->idx, ice_vsi_type_str(type));
 			return err;
 		}
 
-		dev_info(&pf->pdev->dev, "VSI rebuilt. VSI index %d, type %d\n",
-			 vsi->idx, type);
+		dev_info(&pf->pdev->dev, "VSI rebuilt. VSI index %d, type %s\n",
+			 vsi->idx, ice_vsi_type_str(type));
 	}
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
