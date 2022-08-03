Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DA15890A6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 18:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E17760C34;
	Wed,  3 Aug 2022 16:41:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E17760C34
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659544867;
	bh=uW+wnuAaLFvm80D4H+6UBLRGh7H1S6khqOZt4U/tXZg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=X8i+XagkqBrmE+rbYOEHio3VvlMEuMF8u8ZLpAuwPPtJs4EYHoFaqqzXwIbdWluIs
	 HtDeCknzDIqiFvAWfrRTLfXqW7LlIlr6y3DEUbJLP1nHPlRyYZV6mbK1nGS8pl6EE6
	 ue4hm7BnKiMClASU4SfkNmbXqCZsbTNNyWqT9G729ejRaCYmbJ2ZUGpKUkU/0M/sNV
	 X7i6iXTYjtGhogtFAK7iffEX/5gHjnlie9cVPf6Sz6xT7eB1rjyvHrLoIxKMIIYn3/
	 OvKkyPcuu8mvtBJtW/mFbuDBGl5LggcMk0LdatWXamVZDzBee0LwVbE+3mGGtnpyhV
	 Il4UPmb6g2S1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OC9shU51OWMY; Wed,  3 Aug 2022 16:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F14F160BDC;
	Wed,  3 Aug 2022 16:41:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F14F160BDC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 263D71BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 16:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EF71F40142
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 16:41:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF71F40142
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HcSLGxBTqG6 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Aug 2022 16:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FA3940131
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8FA3940131
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 16:40:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10428"; a="272768080"
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="272768080"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 09:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,214,1654585200"; d="scan'208";a="692307467"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Aug 2022 09:40:56 -0700
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Wed,  3 Aug 2022 18:38:21 +0200
Message-Id: <20220803163821.229317-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659544859; x=1691080859;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EguyO5nV9HgQWRR0WKv+3DsB22q/04n6Vl9eDugxKTs=;
 b=lWXPPs9TOetyYhs65bfePr7etdu3WfA8STyDvS6LI6usnIXLIeG78uRd
 dCw8cIE4wEhazEedz+dJ2Hq7UcLS2R3em2uVyyxIsq4bBDHXwxpomb90H
 NbEDvRgoYZLQG51fIWyDAJwukxq8LjwQRDma+CoEYzlFfLA898K+M5il4
 2pncClY/xlZTo77RN/PBLFt+eSJFXW+squBDq59dIqUFXxjAoebMSSAqY
 q96iDAGBaH5poGUnpYBm0ikteJlogWp66wJFpMAsyb7cK18o35AGugJLM
 zIlmgy9bcfECLBL7oGUDo/Q4fVBGcA/tvT9Wxy8+KXDDm1c74f7WKO+Jk
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lWXPPs9T
Subject: [Intel-wired-lan] [PATCH net-next v3] i40e: Add source-pruning flag
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
Cc: Michal Jaron <michalx.jaron@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Michal Jaron <michalx.jaron@intel.com>

Add source-pruning flag to meet UI requirements for command names.

Source-pruning flag have opposite value to disable-source-pruning.

Signed-off-by: Michal Jaron michalx.jaron@intel.com
Signed-off-by: Aleksandr Loktionov aleksandr.loktionov@intel.com
---
 drivers/net/ethernet/intel/i40e/i40e.h         |  7 +++++--
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 17 ++++++++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_main.c    | 13 +++++++++----
 3 files changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index d86b6d3..d2b2769 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -559,14 +559,17 @@ struct i40e_pf {
 #define I40E_FLAG_PTP				BIT(17)
 #define I40E_FLAG_IWARP_ENABLED			BIT(18)
 #define I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED	BIT(19)
-#define I40E_FLAG_SOURCE_PRUNING_DISABLED       BIT(20)
+#define I40E_FLAG_SOURCE_PRUNING_DISABLED	BIT(20)
 #define I40E_FLAG_TC_MQPRIO			BIT(21)
 #define I40E_FLAG_FD_SB_INACTIVE		BIT(22)
 #define I40E_FLAG_FD_SB_TO_CLOUD_FILTER		BIT(23)
 #define I40E_FLAG_DISABLE_FW_LLDP		BIT(24)
 #define I40E_FLAG_RS_FEC			BIT(25)
 #define I40E_FLAG_BASE_R_FEC			BIT(26)
-#define I40E_FLAG_VF_VLAN_PRUNING		BIT(27)
+/* 27..29 bits are reserved for compatibility purposes */
+#define I40E_FLAG_VF_VLAN_PRUNING		BIT(30)
+#define I40E_FLAG_SOURCE_PRUNING		BIT(31)
+
 /* TOTAL_PORT_SHUTDOWN
  * Allows to physically disable the link on the NIC's port.
  * If enabled, (after link down request from the OS)
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 156e92c..58ca3f7 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -457,6 +457,8 @@ static const struct i40e_priv_flags i40e_gstrings_priv_flags[] = {
 	I40E_PRIV_FLAG("base-r-fec", I40E_FLAG_BASE_R_FEC, 0),
 	I40E_PRIV_FLAG("vf-vlan-pruning",
 		       I40E_FLAG_VF_VLAN_PRUNING, 0),
+	I40E_PRIV_FLAG("source-pruning",
+		       I40E_FLAG_SOURCE_PRUNING, 0),
 };
 
 #define I40E_PRIV_FLAGS_STR_LEN ARRAY_SIZE(i40e_gstrings_priv_flags)
@@ -5283,7 +5285,8 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 	if (changed_flags & I40E_FLAG_DISABLE_FW_LLDP)
 		reset_needed = I40E_PF_RESET_AND_REBUILD_FLAG;
 	if (changed_flags & (I40E_FLAG_VEB_STATS_ENABLED |
-	    I40E_FLAG_LEGACY_RX | I40E_FLAG_SOURCE_PRUNING_DISABLED))
+	    I40E_FLAG_LEGACY_RX | I40E_FLAG_SOURCE_PRUNING_DISABLED |
+	    I40E_FLAG_SOURCE_PRUNING))
 		reset_needed = BIT(__I40E_PF_RESET_REQUESTED);
 
 	/* Before we finalize any flag changes, we need to perform some
@@ -5397,6 +5400,18 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 		dev_warn(&pf->pdev->dev,
 			 "Turning on link-down-on-close flag may affect other partitions\n");
 
+	if (changed_flags & I40E_FLAG_SOURCE_PRUNING_DISABLED) {
+		if (new_flags & I40E_FLAG_SOURCE_PRUNING_DISABLED)
+			new_flags &= ~(I40E_FLAG_SOURCE_PRUNING);
+		else
+			new_flags |= I40E_FLAG_SOURCE_PRUNING;
+	} else if (changed_flags & I40E_FLAG_SOURCE_PRUNING) {
+		if (new_flags & I40E_FLAG_SOURCE_PRUNING)
+			new_flags &= ~(I40E_FLAG_SOURCE_PRUNING_DISABLED);
+		else
+			new_flags |= I40E_FLAG_SOURCE_PRUNING_DISABLED;
+	}
+
 	if (changed_flags & I40E_FLAG_DISABLE_FW_LLDP) {
 		if (new_flags & I40E_FLAG_DISABLE_FW_LLDP) {
 #ifdef CONFIG_I40E_DCB
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b36bf9c..fe3fea4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12834,6 +12834,9 @@ static int i40e_sw_init(struct i40e_pf *pf)
 		dev_info(&pf->pdev->dev,
 			 "total-port-shutdown was enabled, link-down-on-close is forced on\n");
 	}
+	/* VSIs have source pruning enabled by default */
+	pf->flags |= I40E_FLAG_SOURCE_PRUNING;
+
 	mutex_init(&pf->switch_mutex);
 
 sw_init_done:
@@ -13880,11 +13883,13 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 
 		enabled_tc = i40e_pf_get_tc_map(pf);
 
-		/* Source pruning is enabled by default, so the flag is
-		 * negative logic - if it's set, we need to fiddle with
-		 * the VSI to disable source pruning.
+		/* Source pruning is enabled by default, one flag is negative
+		 * logic and the second is positive logic if source pruning is
+		 * enabled, we need to fiddle with the VSI to disable source
+		 * pruning.
 		 */
-		if (pf->flags & I40E_FLAG_SOURCE_PRUNING_DISABLED) {
+		if ((pf->flags & I40E_FLAG_SOURCE_PRUNING_DISABLED) ||
+		    !(pf->flags & I40E_FLAG_SOURCE_PRUNING)) {
 			memset(&ctxt, 0, sizeof(ctxt));
 			ctxt.seid = pf->main_vsi_seid;
 			ctxt.pf_num = pf->hw.pf_id;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
