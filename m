Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6333756CA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 20:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7912C87466;
	Thu, 25 Jul 2019 18:22:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3MEKRzR9Xk0P; Thu, 25 Jul 2019 18:22:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FA2F8746E;
	Thu, 25 Jul 2019 18:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 734B61BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70BBE86582
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S3QGW6PI9jqH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 18:22:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 928118659E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 18:22:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 11:22:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="193897616"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2019 11:22:18 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 02:53:57 -0700
Message-Id: <20190725095401.24590-8-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
References: <20190725095401.24590-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S25 08/12] ice: Introduce a local variable
 for a VSI in the rebuild path
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

From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>

When a VSI is accessed inside the ice_for_each_vsi macro in the rebuild
path (ice_vsi_rebuild_all() and ice_vsi_replay_all()), it is referred to
as pf->vsi[i]. Introduce local variables to improve readability.

Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 1abbea7a69e1..f8746609f065 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3740,22 +3740,23 @@ static int ice_vsi_rebuild_all(struct ice_pf *pf)
 
 	/* loop through pf->vsi array and reinit the VSI if found */
 	ice_for_each_vsi(pf, i) {
+		struct ice_vsi *vsi = pf->vsi[i];
 		int err;
 
-		if (!pf->vsi[i])
+		if (!vsi)
 			continue;
 
-		err = ice_vsi_rebuild(pf->vsi[i], true);
+		err = ice_vsi_rebuild(vsi, true);
 		if (err) {
 			dev_err(&pf->pdev->dev,
 				"VSI at index %d rebuild failed\n",
-				pf->vsi[i]->idx);
+				vsi->idx);
 			return err;
 		}
 
 		dev_info(&pf->pdev->dev,
 			 "VSI at index %d rebuilt. vsi_num = 0x%x\n",
-			 pf->vsi[i]->idx, pf->vsi[i]->vsi_num);
+			 vsi->idx, vsi->vsi_num);
 	}
 
 	return 0;
@@ -3773,25 +3774,27 @@ static int ice_vsi_replay_all(struct ice_pf *pf)
 
 	/* loop through pf->vsi array and replay the VSI if found */
 	ice_for_each_vsi(pf, i) {
-		if (!pf->vsi[i])
+		struct ice_vsi *vsi = pf->vsi[i];
+
+		if (!vsi)
 			continue;
 
-		ret = ice_replay_vsi(hw, pf->vsi[i]->idx);
+		ret = ice_replay_vsi(hw, vsi->idx);
 		if (ret) {
 			dev_err(&pf->pdev->dev,
 				"VSI at index %d replay failed %d\n",
-				pf->vsi[i]->idx, ret);
+				vsi->idx, ret);
 			return -EIO;
 		}
 
 		/* Re-map HW VSI number, using VSI handle that has been
 		 * previously validated in ice_replay_vsi() call above
 		 */
-		pf->vsi[i]->vsi_num = ice_get_hw_vsi_num(hw, pf->vsi[i]->idx);
+		vsi->vsi_num = ice_get_hw_vsi_num(hw, vsi->idx);
 
 		dev_info(&pf->pdev->dev,
 			 "VSI at index %d filter replayed successfully - vsi_num %i\n",
-			 pf->vsi[i]->idx, pf->vsi[i]->vsi_num);
+			 vsi->idx, vsi->vsi_num);
 	}
 
 	/* Clean up replay filter after successful re-configuration */
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
