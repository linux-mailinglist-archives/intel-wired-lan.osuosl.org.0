Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E87D5889E2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Aug 2022 11:53:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 878F1812C9;
	Wed,  3 Aug 2022 09:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 878F1812C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659520419;
	bh=oRQk7JOp+nShGxBsQfgsO+JTQtMcogAxOk9Ts2PLtFg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TW7151DAQQVdpDQVZ0VHRZ/LbHGbS3HelLy3wWXBB9acszJCf3SF4FTVLuzPhpMhT
	 kctmeslYTN6A9MhZXCLahECrgUaSfz/dzGKLa8gr2BCoy/giTrHnxgLYtk8KoPmakp
	 GSsIOfsnL2xDP0Y5PL1upjpSQYfSF/U22boXvvcp2mt2Jmgd8QejNBZW4wBnrqdxbz
	 NwqDdG1YZo3HjGxcuLFPiVUsJ6XlIIoJIyLQ0bgyX5qZP+cv6P0jy4iCHhRhySgNmX
	 7+xSh+U+F0Xc1I8cD2dzL00D3Wt4fooHz5Om8SShIvVpAAieirgnBtpjJaM3tTMCma
	 B1vOYa77K5cfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bu_CeO_vFHnP; Wed,  3 Aug 2022 09:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 68F1180C1C;
	Wed,  3 Aug 2022 09:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68F1180C1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 399511BF2A6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 09:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 206406058F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 09:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 206406058F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EboWD3wY1Wee for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Aug 2022 09:53:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2C2A600CC
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F2C2A600CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Aug 2022 09:53:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="353635683"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="353635683"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 02:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="670805407"
Received: from amlin-018-218.igk.intel.com ([10.102.18.218])
 by fmsmga004.fm.intel.com with ESMTP; 03 Aug 2022 02:53:19 -0700
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	anthony.l.nguyen@intel.com
Date: Wed,  3 Aug 2022 11:50:37 +0200
Message-Id: <20220803095037.129444-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659520412; x=1691056412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=UsVyMpPqc36tNIC4rXnzPHXGUDdGCsydW5Epmc9a50g=;
 b=AsJFhsCRJEtCTjZycvycoVsMtwqvcPRgSf/WPpfMpbrlFH6nB41+alWi
 LIUgT0cL3JIZqyXfE7DgpDYa9/1+Mp7DVz0bjfzPUGVM6+BSvRa5a/GRb
 sX4O0pxLB2hW33HXNhYhRXEb73QphzMczKrkMnCxXXhCR/p6Qp2ljjIwW
 LPAQiKexQwkPGkTiuo8zQ+OQqwYPLz4vVD4wAH3qH4427ZISnfV/PHOAi
 nOmwxuJouwPWYyVrSAzOZHSrfHupUzUpkZt8dJbOHtpuWlWGLLxGTzX+9
 02YmkNv4NJtS19+AM6Sri9iKD1NeImbutkcsKCodHDA9NUB81sCyWaq08
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AsJFhsCR
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add source-pruning flag
 Add source-pruning flag to meet UI requirements for command names.
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

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
