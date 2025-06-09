Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 548FDAD287A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 23:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D0CF41DD4;
	Mon,  9 Jun 2025 21:11:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U0iaoiQN7Wxj; Mon,  9 Jun 2025 21:11:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F13241DC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749503475;
	bh=GSwD0re+0Qa5LAhOVohX1Kq22QVXhcOc524FQbinf60=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vkSxdKg/WEVoLcSJSlanyE/uzGpmwXnS3meC37k/a5ndNTW7T4rmjt2KVsc6BeBdJ
	 DL6z9K6HykVOO3OgzCck1KKiEhyxWixCox52eEOxwWKN6Egi7YgQ/wGJHV3VjB6Vg6
	 qJ83YHekCCepSCR80a9DbpfGVWSruTBjIQjHmbT67kKwOWZuA5TxmFrainG/kHlKYM
	 HEtqaHLQb+kSeH/rNZkLwjn1UGIAfqwQV/Xuercow+LSLwEoOb+8uV0CBoMgD9M3Fn
	 kaFtiMK2L39/XuYlTFbGz0oMgPfsjAy6LIhOul4A0UgpSjY6J+zDLgpbNUBNgQjFBY
	 KHnMHrDIFXPbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1F13241DC6;
	Mon,  9 Jun 2025 21:11:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C17271A4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DC6C41DC5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PTFQVsqu7i_o for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8D8A641D97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D8A641D97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8D8A641D97
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 21:11:10 +0000 (UTC)
X-CSE-ConnectionGUID: 06zLrePvSsWLbOGHRTzS1g==
X-CSE-MsgGUID: +yXMZPLNRO+ruD1tHtFXOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11459"; a="50703104"
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="50703104"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
X-CSE-ConnectionGUID: dwlXUHUtQTOmuC6qlJqevA==
X-CSE-MsgGUID: ABaOktaBSe6Kuz+2O/3n8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,223,1744095600"; d="scan'208";a="146540440"
Received: from dmert-mdev.jf.intel.com ([10.166.5.145])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2025 14:11:08 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Mon,  9 Jun 2025 15:11:35 +0200
Message-ID: <20250609131141.758051-4-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609131141.758051-1-david.m.ertman@intel.com>
References: <20250609131141.758051-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749503470; x=1781039470;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KBsE8uGVcqRsutL5mjaIa3g58sw5OOEyzOCAX4q3ZHQ=;
 b=RlxqCbeOYvUx6PZoHuCs3r7rlWw6Tr2UEZ6v7xrbM2TumwDDpAkPtbZp
 6h78o/pMdWK3bC0F9rxV76nrj866Xj1v96eIz5AoYJK8Zb11IwfbX1fsK
 6oFzfgRPB+oRAxX/U+1Ov4Z5uPNXOiJHEXZCqhTrL1H77dL8qf8ptaa3h
 TVMlqawZfceWOQexPZOFOxSDHXBD/GjMYibn+me7Mz2TSPbfpXY4AbDd3
 QEjqnSJenpaE+tuVU1apgB0V2GJBLFidnlGT0FenYfw4H86DT1OsOBTq3
 qGw16iy+kI8drF9djpElw7AYVd8llwmqchxfUnCN8vX5gpHnj/Ma17O+W
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RlxqCbeO
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/8] ice: Add driver specific
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

