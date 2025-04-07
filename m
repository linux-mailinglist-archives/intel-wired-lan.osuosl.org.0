Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C26A7EC63
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 21:16:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 77DB540CD0;
	Mon,  7 Apr 2025 19:15:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYiwwPSxDsLA; Mon,  7 Apr 2025 19:15:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4A8340C92
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744053356;
	bh=8L8DIB2cJRjggSxN7IzNjPkzJ0VYcDJdPj2s4xMdudo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bRAlCjiDjtkl91KSVk0jKuYH0ZLm1t2yYqbl78sq2EsPUCIjjT8qYH/45p03ovQJ6
	 9VJOr9hUgGR+hGY2DRzFthahP9sD7PSqHP8dvX6P1oDPf1v9ozR2GgoHWUEkwVbHD5
	 6brX5DwB7RHoQmgX92wvXjLFb5S/Ur2hbBaOjtPxLdnfWeTZWt/ZHuJZMbF8qn0qb0
	 t8e70osKwfO3rGRuAZ90Y1k0qfKJqWbWRoFAVoO8uIKpCq9DWdzgl3S5W0/O9VZVp7
	 oeR0qzotjWCRmtvMqP+z2HkTrFOXcB4KozH5KVat43Zo4+EuI9APmirQeMtTpeJ5WF
	 392rwVJ7v5kOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4A8340C92;
	Mon,  7 Apr 2025 19:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E19F1DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA52A41412
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R9fuuh1qI5yB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 511A04019E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 511A04019E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 511A04019E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 19:15:52 +0000 (UTC)
X-CSE-ConnectionGUID: zTVLsvXMSHyKNJxEljMU3Q==
X-CSE-MsgGUID: 4r1Q8cjlREyFkMZP5USlcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49307036"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49307036"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
X-CSE-ConnectionGUID: S1BRLwLURDKCyIuIA/igHA==
X-CSE-MsgGUID: lLFFiWtBToOFHtJsPlbN/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="128979587"
Received: from dmert-vmdev.jf.intel.com ([10.165.18.186])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 12:15:51 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  7 Apr 2025 15:15:12 -0400
Message-ID: <20250407191517.767433-4-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250407191517.767433-1-david.m.ertman@intel.com>
References: <20250407191517.767433-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744053352; x=1775589352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4WUUqibsrUUglvX0P2dvLEnqgx1rbM8PS7dbbDQ0tKo=;
 b=k4uWMzmsWvpWFpJ7xQXBvVJJ8aN4ItBdy5Jox3jx7UOXu5fxTH+xtF5P
 RaJn7B9FprzZZzeyJYjspeoJLqvWOju3YwWRgTpvF+nT2PFC7e2k8/iQX
 ZNUWKL02lHVFTI+CPE+mNEbevO0+RZ/ETDlg3zuJ1r29u+ll1TH8wUwjl
 nPZDYsJPM0d2u9Ahfo9FM4BaJtmJtLUZsmjPm3PbcUlvElh5jnhCX+K+f
 Q/jS+lDyOK72/1Sr+YwinE+BckE8f8lEkKqX0MhxkhnA9i7BtFQXMfJaK
 EsDG3yMPL2P0KA6QAM7MUS5yZflgonDJW0RXNqNKKV2zojCLjnCF45CPA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k4uWMzms
Subject: [Intel-wired-lan] [PATCH iwl-next 3/8] ice: Add driver specific
 prefix to LAG defines
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

A define in the LAG code is missing a driver specific prefix.
Add a prefix to the define.

Also shorten a defines name and move to a more logical place.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index e64615d5d1b7..536328dd00ef 100644
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

