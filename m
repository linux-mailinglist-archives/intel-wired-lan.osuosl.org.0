Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 627CD48997B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jan 2022 14:12:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1AF46401EC;
	Mon, 10 Jan 2022 13:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtFCQdJjWYPC; Mon, 10 Jan 2022 13:12:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 885F6401F0;
	Mon, 10 Jan 2022 13:12:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8B2641BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 782E4404ED
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMWRJv4YMN34 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jan 2022 13:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EB43D405F5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jan 2022 13:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641820312; x=1673356312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=unh7yceVDF/NpU0OnlWQchCEsNWlX77R4K74hdupfVg=;
 b=Mu0e6Df129yhCX3SA3VWD/Vi/SHPnEyY8Dq5WkVprhyqqGKloA+hSBP9
 M7/9/kJfeQ0FlR5OH7jFJyK4xJjcnSVVrxbqYfd13W/pGIwygzAIIOf+G
 wOWNGaBF6ZXGLs7muKN9/+WkZie3aYTuysXviqPAbfCbYYP9t7a3Qatlh
 Tg6eZupSwGS1MU/ttgQSKhASd7KsBhx5Y6exAJnOnoLvH8of7iEiZLuSU
 PYk7HxuQp/gjQQHLAwF0bkrOmGw37fQ5mWyyDTbeYMC5MWB939M67maxv
 0ZZkBSYhk4tf9iRe4qPkIEUwwdX/sQKKbGvH93NsBzBLsYzMzaemI6oAY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10222"; a="240771008"
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="240771008"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2022 05:11:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,277,1635231600"; d="scan'208";a="575811990"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2022 05:11:51 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jan 2022 13:11:41 +0000
Message-Id: <20220110131142.8481-4-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
References: <20220110131142.8481-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 3/4] i40e: Fix race condition
 while adding/deleting MAC/VLAN filters
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

There was a race condition in access to hw->aq.asq_last_status
while adding and deleting  MAC/VLAN filters causing
incorrect error status to be printed as ERROR OK instead of
the correct error.

Change calls to i40e_aq_add_macvlan in i40e_aqc_add_filters
and i40e_aq_remove_macvlan in i40e_aqc_del_filters
to  _v2 versions that return Admin Queue status on the stack
to avoid race conditions in access to hw->aq.asq_last_status.

Fixes: 0093631966aa ("i40e: remove duplicate add/delete adminq command code for filters")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 24 +++++++++++----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index d80b758a1423..304d7f1296ed 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -2187,19 +2187,19 @@ void i40e_aqc_del_filters(struct i40e_vsi *vsi, const char *vsi_name,
 			  int num_del, int *retval)
 {
 	struct i40e_hw *hw = &vsi->back->hw;
+	enum i40e_admin_queue_err aq_status;
 	i40e_status aq_ret;
-	int aq_err;
 
-	aq_ret = i40e_aq_remove_macvlan(hw, vsi->seid, list, num_del, NULL);
-	aq_err = hw->aq.asq_last_status;
+	aq_ret = i40e_aq_remove_macvlan_v2(hw, vsi->seid, list, num_del, NULL,
+					   &aq_status);
 
 	/* Explicitly ignore and do not report when firmware returns ENOENT */
-	if (aq_ret && !(aq_err == I40E_AQ_RC_ENOENT)) {
+	if (aq_ret && !(aq_status == I40E_AQ_RC_ENOENT)) {
 		*retval = -EIO;
 		dev_info(&vsi->back->pdev->dev,
 			 "ignoring delete macvlan error on %s, err %s, aq_err %s\n",
 			 vsi_name, i40e_stat_str(hw, aq_ret),
-			 i40e_aq_str(hw, aq_err));
+			 i40e_aq_str(hw, aq_status));
 	}
 }
 
@@ -2222,10 +2222,10 @@ void i40e_aqc_add_filters(struct i40e_vsi *vsi, const char *vsi_name,
 			  int num_add)
 {
 	struct i40e_hw *hw = &vsi->back->hw;
-	int aq_err, fcnt;
+	enum i40e_admin_queue_err aq_status;
+	int fcnt;
 
-	i40e_aq_add_macvlan(hw, vsi->seid, list, num_add, NULL);
-	aq_err = hw->aq.asq_last_status;
+	i40e_aq_add_macvlan_v2(hw, vsi->seid, list, num_add, NULL, &aq_status);
 	fcnt = i40e_update_filter_state(num_add, list, add_head);
 
 	if (fcnt != num_add) {
@@ -2233,17 +2233,19 @@ void i40e_aqc_add_filters(struct i40e_vsi *vsi, const char *vsi_name,
 			set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 			dev_warn(&vsi->back->pdev->dev,
 				 "Error %s adding RX filters on %s, promiscuous mode forced on\n",
-				 i40e_aq_str(hw, aq_err), vsi_name);
+				 i40e_aq_str(hw, aq_status), vsi_name);
 		} else if (vsi->type == I40E_VSI_SRIOV ||
 			   vsi->type == I40E_VSI_VMDQ1 ||
 			   vsi->type == I40E_VSI_VMDQ2) {
 			dev_warn(&vsi->back->pdev->dev,
 				 "Error %s adding RX filters on %s, please set promiscuous on manually for %s\n",
-				 i40e_aq_str(hw, aq_err), vsi_name, vsi_name);
+				 i40e_aq_str(hw, aq_status), vsi_name,
+					     vsi_name);
 		} else {
 			dev_warn(&vsi->back->pdev->dev,
 				 "Error %s adding RX filters on %s, incorrect VSI type: %i.\n",
-				 i40e_aq_str(hw, aq_err), vsi_name, vsi->type);
+				 i40e_aq_str(hw, aq_status), vsi_name,
+					     vsi->type);
 		}
 	}
 }
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
