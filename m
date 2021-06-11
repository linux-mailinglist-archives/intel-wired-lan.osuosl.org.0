Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBC13A24DE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 08:57:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 351D2405AA;
	Thu, 10 Jun 2021 06:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DpUy_WdxemNi; Thu, 10 Jun 2021 06:57:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A9EC40573;
	Thu, 10 Jun 2021 06:57:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4A3271BF38D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 06:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 38AE682D49
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 06:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BMJ0_fcPG3hf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 06:57:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7F32682D2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 06:57:36 +0000 (UTC)
IronPort-SDR: d1NEJG1QV7D/0i/sEelU42dh88fBvx5A9RhJF+EFVsVMN2hrJipQ0puR+XZ8PW13ROzetHFIsY
 ksIsKDZAO/dw==
X-IronPort-AV: E=McAfee;i="6200,9189,10010"; a="184930434"
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="184930434"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 23:57:30 -0700
IronPort-SDR: ntIpl58dB6WSda4Kab0f+DHAGB6NZoJITuR538qLIbZfVcL/Ousr+CbnowIESv4URNdqMF4zcx
 jUDSicxenuXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,262,1616482800"; d="scan'208";a="552945541"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 09 Jun 2021 23:57:29 -0700
From: =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Jun 2021 22:54:35 +0000
Message-Id: <20210611225435.95070-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor arrow operator
 usage in i40e_update_adq_vsi_queues()
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 =?UTF-8?q?J=C4=99drzej=20Jagielski?= <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use local pf & hw variables instead of multiple arrow operators.
Move pf & hw variables initialization after checking if vsi is not NULL.

Co-developed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index fce05ad24..6a11002c8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5450,16 +5450,18 @@ static void i40e_vsi_update_queue_map(struct i40e_vsi *vsi,
  */
 int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
 {
-	struct i40e_pf *pf = vsi->back;
-	struct i40e_hw *hw = &pf->hw;
 	struct i40e_vsi_context ctxt = {};
-	int ret = 0;
+	struct i40e_pf *pf;
+	struct i40e_hw *hw;
+	int ret;
 
 	if (!vsi)
 		return I40E_ERR_PARAM;
+	pf = vsi->back;
+	hw = &pf->hw;
 
 	ctxt.seid = vsi->seid;
-	ctxt.pf_num = vsi->back->hw.pf_id;
+	ctxt.pf_num = hw->pf_id;
 	ctxt.vf_num = vsi->vf_id + hw->func_caps.vf_base_id + vsi_offset;
 	ctxt.uplink_seid = vsi->uplink_seid;
 	ctxt.connection_type = I40E_AQ_VSI_CONN_TYPE_NORMAL;
@@ -5469,11 +5471,11 @@ int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
 	i40e_vsi_setup_queue_map(vsi, &ctxt, vsi->tc_config.enabled_tc,
 				 false);
 	if (vsi->reconfig_rss) {
-		vsi->rss_size = min_t(int, vsi->back->alloc_rss_size,
+		vsi->rss_size = min_t(int, pf->alloc_rss_size,
 				      vsi->num_queue_pairs);
 		ret = i40e_vsi_config_rss(vsi);
 		if (ret) {
-			dev_info(&vsi->back->pdev->dev, "Failed to reconfig rss for num_queues\n");
+			dev_info(&pf->pdev->dev, "Failed to reconfig rss for num_queues\n");
 			return ret;
 		}
 		vsi->reconfig_rss = false;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
