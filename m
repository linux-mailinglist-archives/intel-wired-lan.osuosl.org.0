Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 819C5ADB948
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 21:03:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64A5F809C5;
	Mon, 16 Jun 2025 19:03:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4fjvZuOEuYv1; Mon, 16 Jun 2025 19:03:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC4B5809AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750100583;
	bh=KgnaD+YDWz3wrWf8pTrsn5SKppk9JCl6ooUUvJRIPec=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9S5eCbXha8sMRCvXcN3RToWJSt89x7S0UxEjXybLYX++i6wnWsskC1ZzFbzkGiwpq
	 PEHExteY/8vV/JCnMa1z8TIg8qbv1gRjcXLTOnCee0floIhGCaysU816uYlg/94EVQ
	 608tDeNE+HFlTzeFc+lgFUq1qNTNqDag/ZTeo9SHTUlVb1ZM4R7fW0GZbsiUw72mKd
	 DrnucKWd+9nhlNVymZJHJEAGy2RlIGxwL7wyb5i0k30wy0MoDQSw6zTErm8e1F5/Oj
	 L2bLoYAKyBoR/2GIrPk1rUOXzp90gNy4lij0UrVPLRZsjkQNJ6Dhm3/g1lU1ksKdG2
	 VuXWSt1lAqEMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC4B5809AC;
	Mon, 16 Jun 2025 19:03:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 213E3CA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A7DEC8087F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IoHY5gSa5A_S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 19:02:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 16E0080885
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16E0080885
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16E0080885
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 19:02:57 +0000 (UTC)
X-CSE-ConnectionGUID: D7Lr/2Q+RpCvBz7YAZxYqA==
X-CSE-MsgGUID: Zpjuqqf6TIaAf+jhLI6m/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52122668"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52122668"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
X-CSE-ConnectionGUID: YS6WotyyTRe3HJPxn0OCLg==
X-CSE-MsgGUID: xB/1ACRySSOnLwm1y9upZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153513104"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 12:02:56 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon, 16 Jun 2025 13:03:18 +0200
Message-ID: <20250616110323.788970-4-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616110323.788970-1-david.m.ertman@intel.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750100578; x=1781636578;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6vC3dlSxBpWiWClb/Iae2lJ0QvAdxZgMygkJ75Z7Upk=;
 b=m9bQkLAFYj82reFRGxc2AHwCBS2HD8WwSEwvOn+byXzS/NPWG1QO9diG
 60b8VaFSeW1TT+0UUayJos7y99UX4gwsTEEtNURL37vY93i8MCi1ApuDt
 z9OUzGWnfYjCuqlN81B1JI98FoYh59YBW5JTAmmaXlXdK0RxLU+vac1hC
 ySnJYGOnxXTVjmPMIBzpFaZrhE7E8l6gb1wpKCXvP5Daisw95ERCERr8r
 BKI3fXjV5rPommVelKFF/F9CHwuyTpDSD/x+l2p6GjIn1OLXR6+w1g7Z9
 5KsQBERji4sIAhwMJUn1ITMjiT7zOhAOnMSsXAXmzK+VcXufflm08n4sf
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m9bQkLAF
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/8] [PATCH iwl-next v3 3/8]
 ice: Add driver specific prefix to LAG
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

defines

A define in the LAG code is missing a driver specific prefix.
Add a prefix to the define.

Also shorten a defines name and move to a more logical place.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 5cb3e1a9657d..3d5918a270a4 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -10,12 +10,14 @@
 #define ICE_LAG_RES_SHARED	BIT(14)
 #define ICE_LAG_RES_VALID	BIT(15)
 
-#define LACP_TRAIN_PKT_LEN		16
-static const u8 lacp_train_pkt[LACP_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
-						       0, 0, 0, 0, 0, 0,
-						       0x88, 0x09, 0, 0 };
+#define ICE_TRAIN_PKT_LEN		16
+static const u8 lacp_train_pkt[ICE_TRAIN_PKT_LEN] = { 0, 0, 0, 0, 0, 0,
+						      0, 0, 0, 0, 0, 0,
+						      0x88, 0x09, 0, 0 };
 
 #define ICE_RECIPE_LEN			64
+#define ICE_LAG_SRIOV_CP_RECIPE		10
+
 static const u8 ice_dflt_vsi_rcp[ICE_RECIPE_LEN] = {
 	0x05, 0, 0, 0, 0x20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 	0x85, 0, 0x01, 0, 0, 0, 0xff, 0xff, 0x08, 0, 0, 0, 0, 0, 0, 0,
@@ -766,9 +768,6 @@ void ice_lag_move_vf_nodes_cfg(struct ice_lag *lag, u8 src_prt, u8 dst_prt)
 	ice_lag_destroy_netdev_list(lag, &ndlist);
 }
 
-#define ICE_LAG_SRIOV_CP_RECIPE		10
-#define ICE_LAG_SRIOV_TRAIN_PKT_LEN	16
-
 /**
  * ice_lag_cfg_cp_fltr - configure filter for control packets
  * @lag: local interface's lag struct
@@ -783,8 +782,7 @@ ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
 
 	vsi = lag->pf->vsi[0];
 
-	buf_len = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule,
-					     ICE_LAG_SRIOV_TRAIN_PKT_LEN);
+	buf_len = ICE_SW_RULE_RX_TX_HDR_SIZE(s_rule, ICE_TRAIN_PKT_LEN);
 	s_rule = kzalloc(buf_len, GFP_KERNEL);
 	if (!s_rule) {
 		netdev_warn(lag->netdev, "-ENOMEM error configuring CP filter\n");
@@ -799,8 +797,8 @@ ice_lag_cfg_cp_fltr(struct ice_lag *lag, bool add)
 					  ICE_SINGLE_ACT_LAN_ENABLE |
 					  ICE_SINGLE_ACT_VALID_BIT |
 					  FIELD_PREP(ICE_SINGLE_ACT_VSI_ID_M, vsi->vsi_num));
-		s_rule->hdr_len = cpu_to_le16(ICE_LAG_SRIOV_TRAIN_PKT_LEN);
-		memcpy(s_rule->hdr_data, lacp_train_pkt, LACP_TRAIN_PKT_LEN);
+		s_rule->hdr_len = cpu_to_le16(ICE_TRAIN_PKT_LEN);
+		memcpy(s_rule->hdr_data, lacp_train_pkt, ICE_TRAIN_PKT_LEN);
 		opc = ice_aqc_opc_add_sw_rules;
 	} else {
 		opc = ice_aqc_opc_remove_sw_rules;
-- 
2.49.0

