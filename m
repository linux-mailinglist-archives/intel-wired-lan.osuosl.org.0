Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B24048EA7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jan 2022 14:20:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B6E440522;
	Fri, 14 Jan 2022 13:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HxeqDQys14yv; Fri, 14 Jan 2022 13:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48D80404B7;
	Fri, 14 Jan 2022 13:20:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45B2A1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F57E60B56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QTsniIE2WVUg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jan 2022 13:19:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6338F60B4B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jan 2022 13:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642166391; x=1673702391;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rE3giuAp3xgk+Zls5VgAyPFIealpVtiCpllrWwEVgdY=;
 b=ml9H1dM23hPkge9MArOMa/PVivQNYB6SpsSFkiB1W7nr5JPNEXdNW5y3
 zEajn2+PRhvxjFk9GpHlKKOdan8rXDIe4gb3BhMItR80naPi6VbtxYX7v
 6+u00rV58JxT622eB558yfWo0zDiXfbxnGL1xDthPnidq16nPejif9cGp
 dqyKW1yBJzFLI6Q/etS+De358fdFBJADelg4L+avGaA7eVBrGA56TLP8V
 xLL7TVcWcavppBLJbrJ/1RvdeeOo3w66z2Zp7nONb38WA5MCBx8uDNuwg
 TMyrdb3wnLD56QHoiTQ9+WqCjWatODbLUGLBJF0golkK8vyk/RFgV6NWK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="330591854"
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="330591854"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 05:19:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,288,1635231600"; d="scan'208";a="670851140"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jan 2022 05:19:50 -0800
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 14 Jan 2022 13:19:31 +0000
Message-Id: <20220114131931.346687-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
References: <20220114131931.346687-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 4/4] i40e: Fix race condition
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

From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

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
index d2830e6396d9..de6c4fc8745a 100644
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
2.18.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
