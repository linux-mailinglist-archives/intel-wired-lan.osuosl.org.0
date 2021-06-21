Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C923AE4FC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Jun 2021 10:34:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9221D40186;
	Mon, 21 Jun 2021 08:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id plw-02GG4APk; Mon, 21 Jun 2021 08:34:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7549040197;
	Mon, 21 Jun 2021 08:34:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A0B71BF41F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 352FD402DC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4eDYYx8p6-vD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Jun 2021 08:34:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5AEDD402C3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Jun 2021 08:34:30 +0000 (UTC)
IronPort-SDR: TEAGRZUYtComIY4fhMwybNr9hcDFx8sEh9V1WoSvRHsrnsQLSaZF7N+FeL07A79UGnXBdgMPXJ
 665VGYqj18Nw==
X-IronPort-AV: E=McAfee;i="6200,9189,10021"; a="270647393"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="270647393"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2021 01:34:27 -0700
IronPort-SDR: q9XwmIybxGf39flOyoEryVsgIZRTGLdmWerrYzYRoyCO2jF55fu3ea2o4F66Ao7H8tkGfvjLwe
 ZqraWKKml4Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; d="scan'208";a="486408101"
Received: from amlin-018-224.igk.intel.com ([10.102.18.224])
 by orsmga001.jf.intel.com with ESMTP; 21 Jun 2021 01:34:26 -0700
From: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 21 Jun 2021 08:33:34 +0000
Message-Id: <1624264414-10328-1-git-send-email-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix creation of first queue
 by omitting it if is not power of two
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
Cc: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
Content-Type: multipart/mixed; boundary="===============9182820898891811588=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============9182820898891811588==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Reject TCs creation with proper message if the first queue
assignment is not equal to the power of two.
The first queue number was checked too late in the second queue
iteration, if second queue was configured at all. Now if first queue value
is not a power of two, then trying to create qdisc will be rejected.

Fixes: 8f88b3034db3 ("i40e: Add infrastructure for queue channel support")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Jędrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 59 ++++++++++-------------------
 1 file changed, 19 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 7a0a740..7ddd414 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5786,24 +5786,6 @@ static void i40e_remove_queue_channels(struct i40e_vsi *vsi)
 }
 
 /**
- * i40e_is_any_channel - channel exist or not
- * @vsi: ptr to VSI to which channels are associated with
- *
- * Returns true or false if channel(s) exist for associated VSI or not
- **/
-static bool i40e_is_any_channel(struct i40e_vsi *vsi)
-{
-	struct i40e_channel *ch, *ch_tmp;
-
-	list_for_each_entry_safe(ch, ch_tmp, &vsi->ch_list, list) {
-		if (ch->initialized)
-			return true;
-	}
-
-	return false;
-}
-
-/**
  * i40e_get_max_queues_for_channel
  * @vsi: ptr to VSI to which channels are associated with
  *
@@ -6309,26 +6291,15 @@ int i40e_create_queue_channel(struct i40e_vsi *vsi,
 	/* By default we are in VEPA mode, if this is the first VF/VMDq
 	 * VSI to be added switch to VEB mode.
 	 */
-	if ((!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) ||
-	    (!i40e_is_any_channel(vsi))) {
-		if (!is_power_of_2(vsi->tc_config.tc_info[0].qcount)) {
-			dev_dbg(&pf->pdev->dev,
-				"Failed to create channel. Override queues (%u) not power of 2\n",
-				vsi->tc_config.tc_info[0].qcount);
-			return -EINVAL;
-		}
 
-		if (!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) {
-			pf->flags |= I40E_FLAG_VEB_MODE_ENABLED;
+	if (!(pf->flags & I40E_FLAG_VEB_MODE_ENABLED)) {
+		pf->flags |= I40E_FLAG_VEB_MODE_ENABLED;
 
-			if (vsi->type == I40E_VSI_MAIN) {
-				if (pf->flags & I40E_FLAG_TC_MQPRIO)
-					i40e_do_reset(pf, I40E_PF_RESET_FLAG,
-						      true);
-				else
-					i40e_do_reset_safe(pf,
-							   I40E_PF_RESET_FLAG);
-			}
+		if (vsi->type == I40E_VSI_MAIN) {
+			if (pf->flags & I40E_FLAG_TC_MQPRIO)
+				i40e_do_reset(pf, I40E_PF_RESET_FLAG, true);
+			else
+				i40e_do_reset_safe(pf, I40E_PF_RESET_FLAG);
 		}
 		/* now onwards for main VSI, number of queues will be value
 		 * of TC0's queue count
@@ -7979,12 +7950,20 @@ config_tc:
 			    vsi->seid);
 		need_reset = true;
 		goto exit;
-	} else {
-		dev_info(&vsi->back->pdev->dev,
-			 "Setup channel (id:%u) utilizing num_queues %d\n",
-			 vsi->seid, vsi->tc_config.tc_info[0].qcount);
+	} else if (enabled_tc &&
+		   (!is_power_of_2(vsi->tc_config.tc_info[0].qcount))) {
+		netdev_info(netdev,
+			    "Failed to create channel. Override queues (%u) not power of 2\n",
+			    vsi->tc_config.tc_info[0].qcount);
+		ret = -EINVAL;
+		need_reset = true;
+		goto exit;
 	}
 
+	dev_info(&vsi->back->pdev->dev,
+		 "Setup channel (id:%u) utilizing num_queues %d\n",
+		 vsi->seid, vsi->tc_config.tc_info[0].qcount);
+
 	if (pf->flags & I40E_FLAG_TC_MQPRIO) {
 		if (vsi->mqprio_qopt.max_rate[0]) {
 			u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];
-- 
1.8.3.1


--===============9182820898891811588==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============9182820898891811588==--
