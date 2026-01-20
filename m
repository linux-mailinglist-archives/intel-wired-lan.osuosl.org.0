Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAnBHAqmb2lDEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AA346E3C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 16:58:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 513566FE4F;
	Tue, 20 Jan 2026 14:02:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrSYtTXujTPl; Tue, 20 Jan 2026 14:02:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B64126FE33
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768917755;
	bh=Edn24EZsTu1ektOy5Qj35XyqC7TQBuwYn57VQMeKkG0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hEQ+LpRAWnySOia7hd7qXMmXrWMEDGHvU2Ca86vbngd0K4JLe+8AWU6PSvyBLBwkQ
	 aMC2ieE8OYF6Tq3uoUrHLChPeyKzcIgDjcCc9MeYkrYqg9s15WrQY0dQxysSW25fRF
	 xliHkn4dKYGxGS+QWCN+BQ9dbLt60xqXAMtb2g/ndKs+4p5NPDJ9gC1fANIxQUc3OO
	 +8IukVMk5ZEnWR9yLZHO/oBM9mcBxqac9Zvum9Fs87FrBX9cFlg4lXBwMdGOyZ4Wq+
	 M6VMEdGNUjhA0/Y6v1nJVe4TVGLAsJVsSZDMS+7n1EMugX0eLB37PQWqILhEtBuWoP
	 4zm+KdxU2vwYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B64126FE33;
	Tue, 20 Jan 2026 14:02:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 580622A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48B8F6FE39
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4fHeNP9cXJXK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 14:02:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5274F6FE3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5274F6FE3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5274F6FE3E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 14:02:32 +0000 (UTC)
X-CSE-ConnectionGUID: vUAmBiIvSI+/JBCXFwQMKA==
X-CSE-MsgGUID: q9ln78dcRfe22sdwMYRE8Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="72711776"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="72711776"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 06:02:32 -0800
X-CSE-ConnectionGUID: aIUAD6DzTq6dCAQ/dscZKw==
X-CSE-MsgGUID: NIskrWJ3Thev5t2zVPzy7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210978940"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 06:02:30 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 20 Jan 2026 14:44:32 +0100
Message-Id: <20260120134434.1931602-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
References: <20260120134434.1931602-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768917752; x=1800453752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z8GGmLTECtep00RZrPAB9c3SqFgALCt0CpHkP7Co8pM=;
 b=ieUEk/S1qvEsEeJ4lmZJK3zJcwZj2EIj8mguk5zdDklW1LlgrbzE/wvl
 JtmatbyimIwpN0E5qx/J0aDEgM2E6/mtnqTyfzS4/z3Dmeh2IUMR/lDK+
 bbC5TJSvlUPs0bllWSwJ134z4jzvcKn2UXOQdozc0L1l94cnmqANaId98
 bvFVscMfp3wjoyHmQ+VQzhXaIVKQg0zfYzHdDuOvoeLlpJOSjAusOXApo
 1sGdE0W0IaD1kTZHyu+04j/cfPfDThS2MiMnygH95z4ADJBuzgQigqcjB
 Jf0K10ODf0jZ7uE/Ld4LOrLcEMq2DvEj/0PsmpWpHpf2nOvKcJ7AbEufw
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ieUEk/S1
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/6] ixgbe: E610: update ACI
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 55AA346E3C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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
index 289a04183e03..8a3d8000a79c 100644
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
index db62281c9413..ea305863ba1b 100644
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

