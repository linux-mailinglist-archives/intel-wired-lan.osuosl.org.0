Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBGpM52r2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:49 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 737673D3942
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC0EA60BAD;
	Fri, 10 Apr 2026 07:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YhwMPKA6hVRK; Fri, 10 Apr 2026 07:49:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 239A660B54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807379;
	bh=OUTCdFQltu1dbkcgiF/618QfP1pIn7qM/kY4ea73GQ0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uYX+uTA72I3MabugBpXN5JBPe6D91jr8cXIEvjXueWXjln2efn6UdKUdKiEXy3fEs
	 bGhkMMLEF+eCfsU3JKYLErget761XnHMFvdsV/U3cFQf8+RmdLMe0xnc+ziDpRPxiP
	 vZ2LLKcW0DpzK+l41MqzgJRAc5RpJ0Pdh7s7huTa5aQicLV6aKJzp6K/ylnIwM5XFA
	 SuzGYbmkh2gLp5L9in2JyOlTh1tp2bh5Coqg5vd44B+6+4A8k0wlVF65qw3MfcqvN+
	 QIFqN0CUsQZ+QOhVgGgnPIXvTaaVhcMOr0ZYtx0d9LPxa6gRZRBY+VjVXY7gb9cAcW
	 +0TaJEhyFoNbg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 239A660B54;
	Fri, 10 Apr 2026 07:49:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 60F321F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4741D81A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 15eKPrPNIfFl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 923CE816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 923CE816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 923CE816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:36 +0000 (UTC)
X-CSE-ConnectionGUID: 2B8tTk+0RoiRgdnLSEi5YA==
X-CSE-MsgGUID: qvenbS4dQO6mbU4/taI+Cg==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007943"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007943"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:36 -0700
X-CSE-ConnectionGUID: P2JMCbCZRdiv7CpQKluA+g==
X-CSE-MsgGUID: us4bh296TrO2QRq2vlpOcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941899"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:35 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 10 Apr 2026 09:49:19 +0200
Message-ID: <20260410074921.1254213-9-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807377; x=1807343377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tl3EkNAWXZS7VSusaCuL0Eb4xS+3persYVF/W/GWM1w=;
 b=hPJQApxj0ob/wlnkioW41Mvu9tT68OjvOk7kjQ8fHMHTpkjqRGFGAEUT
 22Wp0B09kDnfPor6jq1v95iWhgpJX+KuOnpUzMBxlIgaKSKfKQPvWHxkc
 uFFk3bjMjECzjJRAhHrnwUmpjRyVQBmfboxBiMZlYkvu+7s6vnp/FTdoQ
 JOtZzNHstyqOolhw6WqBCMl3MCjl8TT1eWMZqkbKP2bjmeDVmdZRrZcyZ
 LlxFLFpiL2JMRYqp2wMiRd7Klllw8FyDKzyBRMQF3RlaUmLZq/4d2OV2C
 JdzM6r6cQmO9aLD1uCEGTypzFKx/gyGh+GCYcjJ39Zr7iAIhu02c09F+j
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hPJQApxj
Subject: [Intel-wired-lan] [PATCH iwl-next 8/10] ice: move
 ice_phy_get_speed_eth56g() from ice_ptp_hw.c to ice_common.c
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 737673D3942
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ice_phy_get_speed_eth56g() is currently a file-local (static)
helper in ice_ptp_hw.c. Future users outside that compilation
unit require access to it.

Move the function to ice_common.c, add a declaration in
ice_common.h, and relocate the enum ice_eth56g_link_spd from
ice_ptp_hw.h to ice_type.h so it is visible to callers of the
new exported function.

Suggested-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c | 45 +++++++++++++++++++++
 drivers/net/ethernet/intel/ice/ice_common.h |  1 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 45 ---------------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 13 ------
 drivers/net/ethernet/intel/ice/ice_type.h   | 13 ++++++
 5 files changed, 59 insertions(+), 58 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index ce11fea..2cebe4e 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -3513,6 +3513,51 @@ u16 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high)
 		return speed_phy_type_high;
 }
 
+/**
+ * ice_phy_get_speed_eth56g - Get link speed based on PHY link type
+ * @li: pointer to link information struct
+ *
+ * Return: simplified ETH56G PHY speed
+ */
+enum ice_eth56g_link_spd ice_phy_get_speed_eth56g(struct ice_link_status *li)
+{
+	u16 speed = ice_get_link_speed_based_on_phy_type(li->phy_type_low,
+							 li->phy_type_high);
+
+	switch (speed) {
+	case ICE_AQ_LINK_SPEED_1000MB:
+		return ICE_ETH56G_LNK_SPD_1G;
+	case ICE_AQ_LINK_SPEED_2500MB:
+		return ICE_ETH56G_LNK_SPD_2_5G;
+	case ICE_AQ_LINK_SPEED_10GB:
+		return ICE_ETH56G_LNK_SPD_10G;
+	case ICE_AQ_LINK_SPEED_25GB:
+		return ICE_ETH56G_LNK_SPD_25G;
+	case ICE_AQ_LINK_SPEED_40GB:
+		return ICE_ETH56G_LNK_SPD_40G;
+	case ICE_AQ_LINK_SPEED_50GB:
+		switch (li->phy_type_low) {
+		case ICE_PHY_TYPE_LOW_50GBASE_SR:
+		case ICE_PHY_TYPE_LOW_50GBASE_FR:
+		case ICE_PHY_TYPE_LOW_50GBASE_LR:
+		case ICE_PHY_TYPE_LOW_50GBASE_KR_PAM4:
+		case ICE_PHY_TYPE_LOW_50G_AUI1_AOC_ACC:
+		case ICE_PHY_TYPE_LOW_50G_AUI1:
+			return ICE_ETH56G_LNK_SPD_50G;
+		default:
+			return ICE_ETH56G_LNK_SPD_50G2;
+		}
+	case ICE_AQ_LINK_SPEED_100GB:
+		if (li->phy_type_high ||
+		    li->phy_type_low == ICE_PHY_TYPE_LOW_100GBASE_SR2)
+			return ICE_ETH56G_LNK_SPD_100G2;
+		else
+			return ICE_ETH56G_LNK_SPD_100G;
+	default:
+		return ICE_ETH56G_LNK_SPD_1G;
+	}
+}
+
 /**
  * ice_update_phy_type
  * @phy_type_low: pointer to the lower part of phy_type
diff --git a/drivers/net/ethernet/intel/ice/ice_common.h b/drivers/net/ethernet/intel/ice/ice_common.h
index e700ac0..cc5cee8 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.h
+++ b/drivers/net/ethernet/intel/ice/ice_common.h
@@ -342,6 +342,7 @@ ice_aq_get_gpio(struct ice_hw *hw, u16 gpio_ctrl_handle, u8 pin_idx,
 		bool *value, struct ice_sq_cd *cd);
 bool ice_is_100m_speed_supported(struct ice_hw *hw);
 u16 ice_get_link_speed_based_on_phy_type(u64 phy_type_low, u64 phy_type_high);
+enum ice_eth56g_link_spd ice_phy_get_speed_eth56g(struct ice_link_status *li);
 int
 ice_aq_set_lldp_mib(struct ice_hw *hw, u8 mib_type, void *buf, u16 buf_size,
 		    struct ice_sq_cd *cd);
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 61c0a0d..54a8afa 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -1401,51 +1401,6 @@ static int ice_ptp_write_port_cmd_eth56g(struct ice_hw *hw, u8 port,
 	return 0;
 }
 
-/**
- * ice_phy_get_speed_eth56g - Get link speed based on PHY link type
- * @li: pointer to link information struct
- *
- * Return: simplified ETH56G PHY speed
- */
-static enum ice_eth56g_link_spd
-ice_phy_get_speed_eth56g(struct ice_link_status *li)
-{
-	u16 speed = ice_get_link_speed_based_on_phy_type(li->phy_type_low,
-							 li->phy_type_high);
-
-	switch (speed) {
-	case ICE_AQ_LINK_SPEED_1000MB:
-		return ICE_ETH56G_LNK_SPD_1G;
-	case ICE_AQ_LINK_SPEED_2500MB:
-		return ICE_ETH56G_LNK_SPD_2_5G;
-	case ICE_AQ_LINK_SPEED_10GB:
-		return ICE_ETH56G_LNK_SPD_10G;
-	case ICE_AQ_LINK_SPEED_25GB:
-		return ICE_ETH56G_LNK_SPD_25G;
-	case ICE_AQ_LINK_SPEED_40GB:
-		return ICE_ETH56G_LNK_SPD_40G;
-	case ICE_AQ_LINK_SPEED_50GB:
-		switch (li->phy_type_low) {
-		case ICE_PHY_TYPE_LOW_50GBASE_SR:
-		case ICE_PHY_TYPE_LOW_50GBASE_FR:
-		case ICE_PHY_TYPE_LOW_50GBASE_LR:
-		case ICE_PHY_TYPE_LOW_50GBASE_KR_PAM4:
-		case ICE_PHY_TYPE_LOW_50G_AUI1_AOC_ACC:
-		case ICE_PHY_TYPE_LOW_50G_AUI1:
-			return ICE_ETH56G_LNK_SPD_50G;
-		default:
-			return ICE_ETH56G_LNK_SPD_50G2;
-		}
-	case ICE_AQ_LINK_SPEED_100GB:
-		if (li->phy_type_high ||
-		    li->phy_type_low == ICE_PHY_TYPE_LOW_100GBASE_SR2)
-			return ICE_ETH56G_LNK_SPD_100G2;
-		else
-			return ICE_ETH56G_LNK_SPD_100G;
-	default:
-		return ICE_ETH56G_LNK_SPD_1G;
-	}
-}
 
 /**
  * ice_phy_cfg_parpcs_eth56g - Configure TUs per PAR/PCS clock cycle
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 9bfd3e7..a13256a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -50,19 +50,6 @@ enum eth56g_res_type {
 	NUM_ETH56G_PHY_RES
 };
 
-enum ice_eth56g_link_spd {
-	ICE_ETH56G_LNK_SPD_1G,
-	ICE_ETH56G_LNK_SPD_2_5G,
-	ICE_ETH56G_LNK_SPD_10G,
-	ICE_ETH56G_LNK_SPD_25G,
-	ICE_ETH56G_LNK_SPD_40G,
-	ICE_ETH56G_LNK_SPD_50G,
-	ICE_ETH56G_LNK_SPD_50G2,
-	ICE_ETH56G_LNK_SPD_100G,
-	ICE_ETH56G_LNK_SPD_100G2,
-	NUM_ICE_ETH56G_LNK_SPD /* Must be last */
-};
-
 /**
  * struct ice_phy_reg_info_eth56g - ETH56G PHY register parameters
  * @base_addr: base address for each PHY block
diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
index 1e82f4c..4db235a 100644
--- a/drivers/net/ethernet/intel/ice/ice_type.h
+++ b/drivers/net/ethernet/intel/ice/ice_type.h
@@ -859,6 +859,19 @@ struct ice_mbx_data {
 #define ICE_PORTS_PER_QUAD	4
 #define ICE_GET_QUAD_NUM(port) ((port) / ICE_PORTS_PER_QUAD)
 
+enum ice_eth56g_link_spd {
+	ICE_ETH56G_LNK_SPD_1G,
+	ICE_ETH56G_LNK_SPD_2_5G,
+	ICE_ETH56G_LNK_SPD_10G,
+	ICE_ETH56G_LNK_SPD_25G,
+	ICE_ETH56G_LNK_SPD_40G,
+	ICE_ETH56G_LNK_SPD_50G,
+	ICE_ETH56G_LNK_SPD_50G2,
+	ICE_ETH56G_LNK_SPD_100G,
+	ICE_ETH56G_LNK_SPD_100G2,
+	NUM_ICE_ETH56G_LNK_SPD /* Must be last */
+};
+
 #define ATQBAL_FLAGS_INTR_IN_PROGRESS	BIT(0)
 
 struct ice_e810_params {
-- 
2.52.0

