Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KuiIK059S2oPSQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 12:02:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1DD70EDDA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Jul 2026 12:02:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LCUTYzv3;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A273C608D4;
	Mon,  6 Jul 2026 10:02:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ea9kDRLca38f; Mon,  6 Jul 2026 10:02:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDCF6608D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783332171;
	bh=n/pnLXlixpDFGremVEM5Ndqi7N2jYLu1n5EEizzeeNI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=LCUTYzv33ysMA9bpgX+tTxxImzRJZawQMcqRElRKs1B22IjBTeg5ps+6MA44eWFCe
	 9qWHQfQ97c1q/iWNgaWBNrG7V3VdfWQrg+JkAZ3FDbDEdVY9qexRh/w9F0fSto2VMH
	 NsDqNe0Tl4pNY5Xvq2MIPWrLFVjHXOGln/GMqg8Lf7IXJnqkxwn+VeoHnQaqfxPOh+
	 PNW/YJF7klCoi5eAoaJPrvlVq/JVaYBZoPow2CAXPtoZjgkN4xmDctQPTXARrQgIc6
	 X0TrnXqaBpdGvznVqpeqDOesLOV/eMFTDbSQLUdCRZPj84DTiWAsI/AtUjpePbtHjM
	 5Ewo/ta82uY7w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDCF6608D6;
	Mon,  6 Jul 2026 10:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2797C2A8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 10:02:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DBE640386
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 10:02:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EU4cSFj2ihBB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jul 2026 10:02:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 47031400AE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47031400AE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 47031400AE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jul 2026 10:02:48 +0000 (UTC)
X-CSE-ConnectionGUID: ieorSVYMQKCapxBYAS8Pnw==
X-CSE-MsgGUID: /VMAxHK+RyqLiMQTbBTOag==
X-IronPort-AV: E=McAfee;i="6800,10657,11838"; a="94566406"
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="94566406"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 03:02:47 -0700
X-CSE-ConnectionGUID: uUOeQ0LSSqCEQ38s38Xcmg==
X-CSE-MsgGUID: ECgfHR/gQtupEWtSNd6oJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,149,1779174000"; d="scan'208";a="251930799"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa006.jf.intel.com with ESMTP; 06 Jul 2026 03:02:47 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Mon,  6 Jul 2026 11:43:29 +0200
Message-Id: <20260706094330.186341-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783332168; x=1814868168;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2yPPPI4sVPsogh1N8K42E/+yAXC8cm8D6ZakBHj/BSM=;
 b=QepcjkmT0abBR7HoP3p/mDCO5UcV7mKQNxcWlBiPZ/EMaJgTCvd5LTr9
 J6t5XJvxVi/NHL3T5KEmoBwxm7Uh0Bi5NRntMZQEhY79nhJnTXTbpr34L
 BCwECeWcAQgXaTM7+AiTBZqg15++4ClfXMchdoqIXLCeMnrI0eVyJbF9r
 wH08ALvzKvX7kkfBMPOm8gNyf4pgANHkqIwIlEbwHEfKRLssrfVhafWyI
 zVGDxgmctRI9tgNsYlu8G4MlPWwXiaHCwIkaXLKZjzSXVeDntx2lddMX4
 iMfZbIjhNqJ4F5Xnn2ZZbjMF4Ygwis8RkPP+hJiZfbJcJ4+erFAUNgkOE
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QepcjkmT
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: E610: force phy link
 to get down when interface is down
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:from_smtp,osuosl.org:dkim,intel.com:from_mime,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F1DD70EDDA

For the E610 family, similarly to the E8xx adapters, the default behavior
is for the PHY link to remain up even when the corresponding OS interface
is down.

Add function setting down the PHY config IXGBE_ACI_PHY_ENA_LINK bit
what leads to disabling PHY link.

Now ixgbe_close() needs to share some of the ixgbe_watchdog_link_is_down
code so move the common part into the separate function.

Align functionality with the implementation of the ice driver.

Let user to configure link-down-on-close enablement through ethtool.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: apply Paul's notes
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 35 ++++++++++++++++++-
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  1 +
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 15 ++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 27 +++++++++++---
 5 files changed, 73 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 30f62174acf2..7bbb82dd962c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -685,6 +685,7 @@ struct ixgbe_adapter {
 #define IXGBE_FLAG2_MOD_POWER_UNSUPPORTED	BIT(22)
 #define IXGBE_FLAG2_API_MISMATCH		BIT(23)
 #define IXGBE_FLAG2_FW_ROLLBACK			BIT(24)
+#define IXGBE_FLAG2_LINK_DOWN_ON_CLOSE		BIT(25)
 
 	/* Tx fast path data */
 	int num_tx_queues;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 831cfe9a4697..02bc0dac5123 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1923,6 +1923,33 @@ void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
 	hw->fc.current_mode = hw->fc.requested_mode;
 }
 
+/**
+ * ixgbe_disable_phy_link - force phy link to get down
+ * @hw: pointer to hardware structure
+ *
+ * Send 0x0601 with the IXGBE_ACI_PHY_ENA_LINK bit set down.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_disable_phy_link(struct ixgbe_hw *hw)
+{
+	struct ixgbe_aci_cmd_get_phy_caps_data pcaps = {};
+	struct ixgbe_aci_cmd_set_phy_cfg_data pcfg = {};
+	int err;
+
+	err = ixgbe_aci_get_phy_caps(hw, false, IXGBE_ACI_REPORT_ACTIVE_CFG,
+				     &pcaps);
+	if (err)
+		return err;
+
+	ixgbe_copy_phy_caps_to_cfg(&pcaps, &pcfg);
+
+	pcfg.caps &= ~IXGBE_ACI_PHY_ENA_LINK;
+	pcfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
+
+	return ixgbe_aci_set_phy_cfg(hw, &pcfg);
+}
+
 /**
  * ixgbe_disable_rx_e610 - Disable RX unit
  * @hw: pointer to hardware structure
@@ -2207,6 +2234,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 	u8 rmode = IXGBE_ACI_REPORT_TOPO_CAP_MEDIA;
 	u64 sup_phy_type_low, sup_phy_type_high;
 	u64 phy_type_low = 0, phy_type_high = 0;
+	bool force_on_required;
 	int err;
 
 	err = ixgbe_aci_get_link_info(hw, false, NULL);
@@ -2272,6 +2300,11 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 		phy_type_high |= IXGBE_PHY_TYPE_HIGH_10G_USXGMII;
 	}
 
+	/* If IXGBE_ACI_PHY_ENA_LINK has been explicitly disabled that means
+	 * we need to force PHY link UP state during PHY link setup
+	 */
+	force_on_required = !(pcfg.caps & IXGBE_ACI_PHY_ENA_LINK);
+
 	/* Mask the set values to avoid requesting unsupported link types. */
 	phy_type_low &= sup_phy_type_low;
 	pcfg.phy_type_low = cpu_to_le64(phy_type_low);
@@ -2280,7 +2313,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 
 	if (pcfg.phy_type_high != pcaps.phy_type_high ||
 	    pcfg.phy_type_low != pcaps.phy_type_low ||
-	    pcfg.caps != pcaps.caps) {
+	    pcfg.caps != pcaps.caps || force_on_required) {
 		pcfg.caps |= IXGBE_ACI_PHY_ENA_LINK;
 		pcfg.caps |= IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 2cb76a3d30ae..59044d67ebeb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -50,6 +50,7 @@ int ixgbe_cfg_phy_fc(struct ixgbe_hw *hw,
 		     enum ixgbe_fc_mode req_mode);
 int ixgbe_setup_fc_e610(struct ixgbe_hw *hw);
 void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw);
+int ixgbe_disable_phy_link(struct ixgbe_hw *hw);
 void ixgbe_disable_rx_e610(struct ixgbe_hw *hw);
 int ixgbe_init_phy_ops_e610(struct ixgbe_hw *hw);
 int ixgbe_identify_phy_e610(struct ixgbe_hw *hw);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index b8e85bc91a27..16e26d54f3be 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -139,6 +139,8 @@ static const char ixgbe_priv_flags_strings[][ETH_GSTRING_LEN] = {
 	"vf-ipsec",
 #define IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF	BIT(2)
 	"mdd-disable-vf",
+#define IXGBE_PRIV_LINK_DOWN_ON_CLOSE	BIT(3)
+	"link-down-on-close",
 };
 
 #define IXGBE_PRIV_FLAGS_STR_LEN ARRAY_SIZE(ixgbe_priv_flags_strings)
@@ -3822,6 +3824,9 @@ static u32 ixgbe_get_priv_flags(struct net_device *netdev)
 	if (adapter->flags2 & IXGBE_FLAG2_AUTO_DISABLE_VF)
 		priv_flags |= IXGBE_PRIV_FLAGS_AUTO_DISABLE_VF;
 
+	if (adapter->flags2 & IXGBE_FLAG2_LINK_DOWN_ON_CLOSE)
+		priv_flags |= IXGBE_PRIV_LINK_DOWN_ON_CLOSE;
+
 	return priv_flags;
 }
 
@@ -3859,6 +3864,16 @@ static int ixgbe_set_priv_flags(struct net_device *netdev, u32 priv_flags)
 		}
 	}
 
+	flags2 &= ~IXGBE_FLAG2_LINK_DOWN_ON_CLOSE;
+	if (priv_flags & IXGBE_PRIV_LINK_DOWN_ON_CLOSE) {
+		if (adapter->hw.mac.type == ixgbe_mac_e610) {
+			flags2 |= IXGBE_FLAG2_LINK_DOWN_ON_CLOSE;
+		} else {
+			e_info(probe, "Cannot set private flags: Feature supported only for E610 devices\n");
+			return -EOPNOTSUPP;
+		}
+	}
+
 	if (flags2 != adapter->flags2) {
 		adapter->flags2 = flags2;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7a0783c1abc1..f650fa45b9ef 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -7551,6 +7551,17 @@ static void ixgbe_close_suspend(struct ixgbe_adapter *adapter)
 	ixgbe_free_all_rx_resources(adapter);
 }
 
+static void ixgbe_handle_link_down(struct ixgbe_adapter *adapter)
+{
+	struct net_device *netdev = adapter->netdev;
+
+	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
+		ixgbe_ptp_start_cyclecounter(adapter);
+
+	e_info(drv, "NIC Link is Down\n");
+	netif_carrier_off(netdev);
+}
+
 /**
  * ixgbe_close - Disables a network interface
  * @netdev: network interface device structure
@@ -7573,6 +7584,16 @@ int ixgbe_close(struct net_device *netdev)
 
 	ixgbe_fdir_filter_exit(adapter);
 
+	if (adapter->flags2 & IXGBE_FLAG2_LINK_DOWN_ON_CLOSE) {
+		int err;
+
+		err = ixgbe_disable_phy_link(&adapter->hw);
+		if (err)
+			e_error(drv, "Cannot set PHY link down\n");
+
+		ixgbe_handle_link_down(adapter);
+	}
+
 	ixgbe_release_hw_control(adapter);
 
 	return 0;
@@ -8251,11 +8272,7 @@ static void ixgbe_watchdog_link_is_down(struct ixgbe_adapter *adapter)
 	if (ixgbe_is_sfp(hw) && hw->mac.type == ixgbe_mac_82598EB)
 		adapter->flags2 |= IXGBE_FLAG2_SEARCH_FOR_SFP;
 
-	if (test_bit(__IXGBE_PTP_RUNNING, &adapter->state))
-		ixgbe_ptp_start_cyclecounter(adapter);
-
-	e_info(drv, "NIC Link is Down\n");
-	netif_carrier_off(netdev);
+	ixgbe_handle_link_down(adapter);
 }
 
 static bool ixgbe_ring_tx_pending(struct ixgbe_adapter *adapter)
-- 
2.31.1

