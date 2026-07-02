Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LljpM9swRmrXLQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:23 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 972FB6F5526
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=zZBsQEZ5;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4715C822AA;
	Thu,  2 Jul 2026 09:35:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ha3m4TBVqzKL; Thu,  2 Jul 2026 09:35:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 984D6839E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984920;
	bh=2QyC43S2Cuk6CPAzbbVscNiCvfZlloKlHX1Rb5xGG3o=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zZBsQEZ5QaLdB1DUFQgL7k2vddqeWLNdBQDD7heF7033UrqW1W1lDv6qu6WJ44UGJ
	 aRcKD8hyCxJwJ3AM0u8KXQgdI/9VWjg4snT/I+ez1iBzXQrS1MDk0r+jf+Y0nBg8Fb
	 gQ2omPSqIGfxgpgrJhB+FoZw3NDWjD1ZiMW1eILuXmfO9M1QUhVRBkKi22Bbl5g6B0
	 Z/2CZkxUFJySk64o59AGdVYdsmaw0LYDK1sA940sgibHrJPpgw0/hPbXkA/9muYQdu
	 /U7A1Z0BpLkg3p+0oOvWP/9g3Ugqyf9m4ruSPjCbnEAb7njDEkzlOon3IUS/ULT3B/
	 EKXx5Q9PZhExQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 984D6839E0;
	Thu,  2 Jul 2026 09:35:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E09F54B5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2C2A822AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Eukd3d-zkfPQ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:18 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CD01E81E6B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD01E81E6B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CD01E81E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:17 +0000 (UTC)
X-CSE-ConnectionGUID: hsi8RZ+6T5SbuFO7t020hA==
X-CSE-MsgGUID: GNX9IwR2ROijrOzhg2GPnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649817"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649817"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:18 -0700
X-CSE-ConnectionGUID: S2jCqB1KR9GGbdAFDLxo2A==
X-CSE-MsgGUID: YEt9ZdP2RsSxo9uueSSO5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476424"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:16 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 11:15:51 +0200
Message-Id: <20260702091553.57112-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984918; x=1814520918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gmcZ3AOfOUgcWqGiO+no6doGb36KhYEwFOkvQ5A3t0U=;
 b=HWnpmapQeutcAcz9P92PSm8rMfOBkbNtD68yowDQ6T6u22b0vKtIsOC/
 1ibWZVHiyVo72syIKV8qAOfHv0SsfPfAhamkEsOP03ZgtCOkS1n/jQ3Rr
 7eXWSgAtdCz0QJ96xDSwEZYKWI1UzlKdGBmWH9UQowXz3ejQUNQ2T0R3Q
 Rj+AJgQfojMlJQ2dFwSFMlwLWoCENcEY6witobF1xZ/LjTNTVKY/42zYn
 OuEiihBRg/zgWVaDgqAMZP2Q5NjV68rDKs5WAXA7UlfNJe9E4gRZuT5T9
 aSuAyd6HnW74d18rxGQwPEonJity8NptADNychFSYJkwzqRA8KQpQEkUA
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HWnpmapQ
Subject: [Intel-wired-lan] [PATCH iwl-next v1 4/6] ixgbe: E610: re-enable
 LSE unconditionally
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 972FB6F5526

ixgbe_aci_get_link_info() currently allows to [en/dis]able LSE by @ena_lse
param. This isn't proper approach as this function objective is completely
different than toggling LSE feature. Creating such parameter was probably
dictated by the fact the flag corresponding for LSE enablement was placed
within the ACI command used by the function.

LSE should not be switched off while the ixgbe driver is running.
Current driver behavior doesn't provide such possibility for the user.

Enable LSE by default whenever 0x0607 ACI command is sent. Such change
corresponds to the fact that FW disables LSE whenever new event is
triggered. ixgbe_aci_get_link_info() is a part of routine handling LSE
events, so it ensures that LSE remain enabled.

Remove wrappers utilizing @ena_lse param to [en/dis]able LSE as they
are no longer valid.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 25 ++++---------------
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  3 +--
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 +----------------
 4 files changed, 8 insertions(+), 45 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 54cc0f116e88..ec7d8073efe6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1391,7 +1391,7 @@ int ixgbe_update_link_info(struct ixgbe_hw *hw)
 
 	li = &hw->link.link_info;
 
-	err = ixgbe_aci_get_link_info(hw, true, NULL);
+	err = ixgbe_aci_get_link_info(hw, NULL);
 	if (err)
 		return err;
 
@@ -1445,7 +1445,6 @@ int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up)
 /**
  * ixgbe_aci_get_link_info - get the link status
  * @hw: pointer to the HW struct
- * @ena_lse: enable/disable LinkStatusEvent reporting
  * @link: pointer to link status structure - optional
  *
  * Get the current Link Status using ACI command (0x607).
@@ -1454,8 +1453,7 @@ int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up)
  *
  * Return: the link status of the adapter.
  */
-int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
-			    struct ixgbe_link_status *link)
+int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, struct ixgbe_link_status *link)
 {
 	struct ixgbe_aci_cmd_get_link_status_data link_data = {};
 	struct ixgbe_aci_cmd_get_link_status *resp;
@@ -1474,7 +1472,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 	hw_fc_info = &hw->fc;
 
 	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_link_status);
-	cmd_flags = (ena_lse) ? IXGBE_ACI_LSE_ENA : IXGBE_ACI_LSE_DIS;
+	cmd_flags = IXGBE_ACI_LSE_ENA;
 	resp = libie_aq_raw(&desc);
 	resp->cmd_flags = cpu_to_le16(cmd_flags);
 	resp->lport_num = hw->bus.func;
@@ -1561,19 +1559,6 @@ static int ixgbe_aci_init_event_mask(struct ixgbe_hw *hw)
 	return ixgbe_aci_set_event_mask(hw, (u8)hw->bus.func, mask);
 }
 
-/**
- * ixgbe_configure_lse - enable/disable link status events
- * @hw: pointer to the HW struct
- * @activate: true for enable lse, false otherwise
- *
- * Return: the exit code of the operation.
- */
-int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate)
-{
-	/* Enabling link status events generation by fw. */
-	return ixgbe_aci_get_link_info(hw, activate, NULL);
-}
-
 /**
  * ixgbe_start_hw_e610 - Prepare hardware for Tx/Rx
  * @hw: pointer to hardware structure
@@ -1913,7 +1898,7 @@ void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
 	/* Get current link err.
 	 * Current FC mode will be stored in the hw context.
 	 */
-	err = ixgbe_aci_get_link_info(hw, true, NULL);
+	err = ixgbe_aci_get_link_info(hw, NULL);
 	if (err)
 		goto no_autoneg;
 
@@ -2219,7 +2204,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 	u64 phy_type_low = 0, phy_type_high = 0;
 	int err;
 
-	err = ixgbe_aci_get_link_info(hw, true, NULL);
+	err = ixgbe_aci_get_link_info(hw, NULL);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index ecda35a77adb..4fb4ab99d458 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -32,9 +32,8 @@ int ixgbe_aci_set_phy_cfg(struct ixgbe_hw *hw,
 int ixgbe_aci_set_link_restart_an(struct ixgbe_hw *hw, bool ena_link);
 int ixgbe_update_link_info(struct ixgbe_hw *hw);
 int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up);
-int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
+int ixgbe_aci_get_link_info(struct ixgbe_hw *hw,
 			    struct ixgbe_link_status *link);
-int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate);
 int ixgbe_aci_set_port_id_led(struct ixgbe_hw *hw, bool orig_mode);
 enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw);
 int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index b8e85bc91a27..5d71c1011cf4 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -3647,7 +3647,7 @@ static int ixgbe_get_eee_e610(struct net_device *netdev,
 	linkmode_zero(kedata->supported);
 	linkmode_zero(kedata->advertised);
 
-	err = ixgbe_aci_get_link_info(hw, true, &link);
+	err = ixgbe_aci_get_link_info(hw, &link);
 	if (err)
 		return err;
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index f33a534490b5..d1cfe913081f 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5966,19 +5966,6 @@ static void ixgbe_configure(struct ixgbe_adapter *adapter)
 	ixgbe_configure_dfwd(adapter);
 }
 
-/**
- * ixgbe_enable_link_status_events - enable link status events
- * @adapter: pointer to the adapter structure
- *
- * Enables link status events by invoking ixgbe_configure_lse()
- *
- * Return: the exit code of the operation.
- */
-static int ixgbe_enable_link_status_events(struct ixgbe_adapter *adapter)
-{
-	return ixgbe_configure_lse(&adapter->hw, true);
-}
-
 /**
  * ixgbe_sfp_link_config - set up SFP+ link
  * @adapter: pointer to private adapter struct
@@ -6008,8 +5995,6 @@ static void ixgbe_sfp_link_config(struct ixgbe_adapter *adapter)
  **/
 static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 {
-	struct ixgbe_adapter *adapter = container_of(hw, struct ixgbe_adapter,
-						     hw);
 	bool autoneg, link_up = false;
 	int ret = -EIO;
 	u32 speed;
@@ -6035,14 +6020,8 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 	if (ret)
 		return ret;
 
-	if (hw->mac.ops.setup_link) {
-		if (adapter->hw.mac.type == ixgbe_mac_e610) {
-			ret = ixgbe_enable_link_status_events(adapter);
-			if (ret)
-				return ret;
-		}
+	if (hw->mac.ops.setup_link)
 		ret = hw->mac.ops.setup_link(hw, speed, link_up);
-	}
 
 	return ret;
 }
-- 
2.31.1

