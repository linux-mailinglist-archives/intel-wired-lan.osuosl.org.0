Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B85735D79D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jul 2019 22:43:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6AA4987A80;
	Tue,  2 Jul 2019 20:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id abXxXurkOCyc; Tue,  2 Jul 2019 20:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53BA487D0E;
	Tue,  2 Jul 2019 20:43:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 438551BF589
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4033A869B6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRaVoOTPPMew for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jul 2019 20:43:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 13914867EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jul 2019 20:43:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP; 02 Jul 2019 13:43:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,444,1557212400"; d="scan'208";a="190805474"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2019 13:43:21 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jul 2019 08:22:59 -0400
Message-Id: <20190702122259.79070-9-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190702122259.79070-1-alice.michael@intel.com>
References: <20190702122259.79070-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S7 9/9] i40e: Remove unicast log when
 VF is leaving multicast mode.
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
Cc: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Czeslaw Zagorski <czeslawx.zagorski@intel.com>

This patch removes unicast log when VF is leaving multicast mode.
Added check of vf->vf_states &
I40E_VF_STATE_MC_PROMISC/I40E_VF_STATE_UC_PROMISC.
Without this commit, leaving multicast mode logs "unset unicast"
in dmsg.

Signed-off-by: Czeslaw Zagorski <czeslawx.zagorski@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 39 ++++++++++---------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 618781b3b7ac..7bc4e397d56d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -2043,30 +2043,33 @@ static int i40e_vc_config_promiscuous_mode_msg(struct i40e_vf *vf, u8 *msg)
 		alluni = true;
 	aq_ret = i40e_config_vf_promiscuous_mode(vf, info->vsi_id, allmulti,
 						 alluni);
-	if (!aq_ret) {
-		if (allmulti) {
+	if (aq_ret)
+		goto err_out;
+
+	if (allmulti) {
+		if (!test_and_set_bit(I40E_VF_STATE_MC_PROMISC,
+				      &vf->vf_states))
 			dev_info(&pf->pdev->dev,
 				 "VF %d successfully set multicast promiscuous mode\n",
 				 vf->vf_id);
-			set_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
-		} else {
-			dev_info(&pf->pdev->dev,
-				 "VF %d successfully unset multicast promiscuous mode\n",
-				 vf->vf_id);
-			clear_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states);
-		}
-		if (alluni) {
+	} else if (test_and_clear_bit(I40E_VF_STATE_MC_PROMISC,
+				      &vf->vf_states))
+		dev_info(&pf->pdev->dev,
+			 "VF %d successfully unset multicast promiscuous mode\n",
+			 vf->vf_id);
+
+	if (alluni) {
+		if (!test_and_set_bit(I40E_VF_STATE_UC_PROMISC,
+				      &vf->vf_states))
 			dev_info(&pf->pdev->dev,
 				 "VF %d successfully set unicast promiscuous mode\n",
 				 vf->vf_id);
-			set_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states);
-		} else {
-			dev_info(&pf->pdev->dev,
-				 "VF %d successfully unset unicast promiscuous mode\n",
-				 vf->vf_id);
-			clear_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states);
-		}
-	}
+	} else if (test_and_clear_bit(I40E_VF_STATE_UC_PROMISC,
+				      &vf->vf_states))
+		dev_info(&pf->pdev->dev,
+			 "VF %d successfully unset unicast promiscuous mode\n",
+			 vf->vf_id);
+
 err_out:
 	/* send the response to the VF */
 	return i40e_vc_send_resp_to_vf(vf,
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
