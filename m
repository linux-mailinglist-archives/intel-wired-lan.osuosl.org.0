Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D21B3D1310F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jan 2026 15:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8406C84ED3;
	Mon, 12 Jan 2026 14:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MRrdcgCWJwWG; Mon, 12 Jan 2026 14:18:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A77384EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768227525;
	bh=tWhUCkIXXEhH7iqjTsIjGW5gmV0/vVT4RoYUuqum20o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xSp2H6nWMgQCmeYe1+eSlbRrSS7g83LbPPkrZf6Be5rb/+bLTxWrCPJBrIYHyNuub
	 zIp1xMinybQ6ZjmRUIaG16rqd81kYIfp1uPBTcRdu0DRpMlFsF9jKZt3XxJf9xqU4F
	 LDsRYPDgO9nWavAJZ5RqXb1oiCJui4X5tb6Lu7juHpMUPuuTNyEUmXGpDq7ObjmASF
	 czZhw4vwNCyY/DxOge+ulPxjs62h8gf/skOirx5BLQE/CuQ/zs1ta4ZjRR/WPJIkF3
	 PHUDRlJzztOY5yb+KkuL6Frj4Ztm34uO3h+/P7TimgWzm/3Y9IL5S6zR1hwg7cglxH
	 w2sYoIeSZucmw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A77384EDA;
	Mon, 12 Jan 2026 14:18:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6BAD118D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 52B736F4F6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u4sXPnpU8zpm for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jan 2026 14:18:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 522E76F4E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 522E76F4E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 522E76F4E5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jan 2026 14:18:43 +0000 (UTC)
X-CSE-ConnectionGUID: XfGcgcuJR/ungN9lswWbNQ==
X-CSE-MsgGUID: tpHmfsQoTg6CawvT4IB4xg==
X-IronPort-AV: E=McAfee;i="6800,10657,11669"; a="73352290"
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="73352290"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2026 06:18:43 -0800
X-CSE-ConnectionGUID: L5T3XLv2S5CaZ+BxoaWxJg==
X-CSE-MsgGUID: ToUo+3LAQ02ZhbFnMXf90g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,221,1763452800"; d="scan'208";a="227355638"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa002.fm.intel.com with ESMTP; 12 Jan 2026 06:18:42 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon, 12 Jan 2026 15:01:05 +0100
Message-Id: <20260112140108.1173835-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
References: <20260112140108.1173835-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768227523; x=1799763523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Db2Hdgge48JGuy8qCHZIzSL/1URNsiaA8fMzQrcP3v8=;
 b=CJX3B44mqkhK18u4+uCzCXCNYSZxstwiLAP6dAXRwzZz+8M3UvP39RPk
 f8u96cF/wLigwRZxfRb4Ylby8zeXuoWcqBvsk2roB/b7cGJ8J+d1s8Xz/
 tRomEvupKzP/GKRmY9RXjEsQsqyLxhOyZCw+2hCGb40sulAOqumLpdfSf
 ba8CEmJmwe+JM2c0f7xWuIWuvR9f4s1dl91NQSbwsyYbEgJIRey8n5VMZ
 50T1M1aXQx3HxBMCyAcaml1YYQ6mj4sCwrWPDJmfRqstr3HNIIs9S0ITG
 6CQiO2A7bmddtNlEjkdEz3LUcMbvGqtz+U110u4BKyccKl3wwroQiZc7X
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CJX3B44m
Subject: [Intel-wired-lan] [PATCH iwl-next v1 4/7] ixgbe: E610: update ACI
 command structs with EEE fields
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

There were recent changes in some of the ACI commands,
which have been extended with EEE related fields.
Set PHY Config, Get PHY Caps and Get Link Info have been
affected.

Align SW structs to the recent FW changes.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c    |  2 ++
 .../net/ethernet/intel/ixgbe/ixgbe_type_e610.h   | 16 +++++++++-------
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index bd0345ae863a..6818504a25f6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1076,6 +1076,7 @@ void ixgbe_copy_phy_caps_to_cfg(struct ixgbe_aci_cmd_get_phy_caps_data *caps,
 	cfg->link_fec_opt = caps->link_fec_options;
 	cfg->module_compliance_enforcement =
 		caps->module_compliance_enforcement;
+	cfg->eee_entry_delay = caps->eee_entry_delay;
 }
 
 /**
@@ -1404,6 +1405,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 	li->topo_media_conflict = link_data.topo_media_conflict;
 	li->pacing = link_data.cfg & (IXGBE_ACI_CFG_PACING_M |
 				      IXGBE_ACI_CFG_PACING_TYPE_M);
+	li->eee_status = link_data.eee_status;
 
 	/* Update fc info. */
 	tx_pause = !!(link_data.an_info & IXGBE_ACI_LINK_PAUSE_TX);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index e790974bc3d3..5622ba0c7acb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -323,10 +323,8 @@ struct ixgbe_aci_cmd_get_phy_caps_data {
 #define IXGBE_ACI_PHY_EEE_EN_100BASE_TX			BIT(0)
 #define IXGBE_ACI_PHY_EEE_EN_1000BASE_T			BIT(1)
 #define IXGBE_ACI_PHY_EEE_EN_10GBASE_T			BIT(2)
-#define IXGBE_ACI_PHY_EEE_EN_1000BASE_KX		BIT(3)
-#define IXGBE_ACI_PHY_EEE_EN_10GBASE_KR			BIT(4)
-#define IXGBE_ACI_PHY_EEE_EN_25GBASE_KR			BIT(5)
-#define IXGBE_ACI_PHY_EEE_EN_10BASE_T			BIT(11)
+#define IXGBE_ACI_PHY_EEE_EN_5GBASE_T			BIT(11)
+#define IXGBE_ACI_PHY_EEE_EN_2_5GBASE_T			BIT(12)
 	__le16 eeer_value;
 	u8 phy_id_oui[4]; /* PHY/Module ID connected on the port */
 	u8 phy_fw_ver[8];
@@ -356,7 +354,9 @@ struct ixgbe_aci_cmd_get_phy_caps_data {
 #define IXGBE_ACI_MOD_TYPE_BYTE2_SFP_PLUS		0xA0
 #define IXGBE_ACI_MOD_TYPE_BYTE2_QSFP_PLUS		0x86
 	u8 qualified_module_count;
-	u8 rsvd2[7];	/* Bytes 47:41 reserved */
+	u8 rsvd2;
+	__le16 eee_entry_delay;
+	u8 rsvd3[4];
 #define IXGBE_ACI_QUAL_MOD_COUNT_MAX			16
 	struct {
 		u8 v_oui[3];
@@ -512,8 +512,9 @@ struct ixgbe_aci_cmd_get_link_status_data {
 #define IXGBE_ACI_LINK_SPEED_200GB		BIT(11)
 #define IXGBE_ACI_LINK_SPEED_UNKNOWN		BIT(15)
 	__le16 reserved3;
-	u8 ext_fec_status;
-#define IXGBE_ACI_LINK_RS_272_FEC_EN	BIT(0) /* RS 272 FEC enabled */
+	u8 eee_status;
+#define IXGBE_ACI_LINK_EEE_ENABLED		BIT(2)
+#define IXGBE_ACI_LINK_EEE_ACTIVE		BIT(3)
 	u8 reserved4;
 	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
 	__le64 phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
@@ -816,6 +817,7 @@ struct ixgbe_link_status {
 	 * of ixgbe_aci_get_phy_caps structure
 	 */
 	u8 module_type[IXGBE_ACI_MODULE_TYPE_TOTAL_BYTE];
+	u8 eee_status;
 };
 
 /* Common HW capabilities for SW use */
-- 
2.31.1

