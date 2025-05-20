Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49740ABE3DA
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 May 2025 21:40:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D140040B7E;
	Tue, 20 May 2025 19:40:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rdGYalhqfLRU; Tue, 20 May 2025 19:40:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52AC740B87
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747770000;
	bh=GSwD0re+0Qa5LAhOVohX1Kq22QVXhcOc524FQbinf60=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=koKMDOSJW5lo9hSlnv5alOEXB2JzEVQQSpPgdaZUD8zcF4uGfMcbWZAIECbtLC3y9
	 Sie1wwGa1m8Joeo8EzMVvCHgWxjg/D3ehGjsxV7I6Azi0wKnQoocecc3RFl0b1GsQh
	 zfVN8z8ZqfDzKjYUUXTZrH9eJlqkCNMOjUSKkyn7qZX8Djy282x4Z+eVkAtErQydjl
	 0R0s5YQ8Hnv72zsTnRlZO/wHVrg5bPmh+Rn2LQ2M5ESIcCRAMiPF/Bty7+6GKTmJP1
	 kqWI11XRQBA3/X830/bd+a53IlLfTC4RW72JacoamjZtY1V/tfENH8yAvHm78SpMuS
	 oestxp2BWr2sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 52AC740B87;
	Tue, 20 May 2025 19:40:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 50251D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82F7F40A91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cGcOQ7LUnudg for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 May 2025 19:39:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D7AE240A6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D7AE240A6A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D7AE240A6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 May 2025 19:39:55 +0000 (UTC)
X-CSE-ConnectionGUID: QodzL4MYQk2rGvigKNdNdw==
X-CSE-MsgGUID: Nu+/ZggfTLCfOUMHheXpkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="75123547"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="75123547"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:55 -0700
X-CSE-ConnectionGUID: xX7kgLMuSu+ig5dOemSbjw==
X-CSE-MsgGUID: mi3tqiHOQEuC4R0hNvWLeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="140198874"
Received: from dmert-vmdev.jf.intel.com ([10.165.17.51])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 12:39:54 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 20 May 2025 15:39:25 -0400
Message-ID: <20250520193930.3763888-4-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250520193930.3763888-1-david.m.ertman@intel.com>
References: <20250520193930.3763888-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747769996; x=1779305996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KBsE8uGVcqRsutL5mjaIa3g58sw5OOEyzOCAX4q3ZHQ=;
 b=gmTJF9KSWOUIjshKqbiHJfftHD/QQ8iNKmSQSEl8rEi+WetLRlODb14+
 Sf50GjhRpsGhOZfm1kKFwXHLhcQWZvBtbZgPSMBXlzeTQllL8C0FgD5VV
 bNrqj7X9SvgK90glwUZkHN16CdXO2pMjZ+uNeP7P64LFTxOJHVj4kaZER
 LrbV3lnCneU+jhO+PNtEuyk62GVZKlqvYHDZN3XrdRpVOTulQm8arphhV
 2DJaxvz9wSnlyTPmekXG2hyygcD9/sdW1X2avQa9+B2O4dcRNzRFr8n9w
 rgUNUc3kzWhed9mhnLReMdOqRezToIr0hdIiJe+dTj9C3+ZFehDRyk7Yh
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gmTJF9KS
Subject: [Intel-wired-lan] [PATCH iwl-next v2 3/8] [PATCH iwl-next 3/8] ice:
 Add driver specific prefix to LAG defines
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

