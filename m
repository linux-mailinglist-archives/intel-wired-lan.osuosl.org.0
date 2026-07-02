Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QLCzCNgwRmrTLQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2496F5517
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=utoxTTOk;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 802ED82179;
	Thu,  2 Jul 2026 09:35:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eaSGNtba3Ije; Thu,  2 Jul 2026 09:35:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CE447822AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984915;
	bh=AOiTf9eUGkAa3f8rKcY8M0hM5jAZbVEVnBAVbAJpEM4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=utoxTTOkB+OMjgcgXAlFSnKnqjUmfzCgkTRBRakrlMHtkyXHKLkLR6GKNXaj1Tanm
	 ZDFzyonp0B6yhpA1mM/UxMSjomS7+Sur8AQC6TvoLUc8dgqLmVm+1F5mrRt34orFHy
	 LMb8ovwQNo84xp0FJDG+71v6wUUhCIYj5XvY5Nf8EmcLs43eZJ4Tj9zTRJ4AHsqG/H
	 uTrii1GPJidOosCNVZufS3Y/IHts5coYdZV7amu1pW3wnirn9akSVk9givJwuA0zLK
	 v0zvts62xzHsDZpeJQnt8nElAa1WCXMAMcNhRrAzW1Z7StpicjUgzGzxexjeCPN3in
	 fuytkzpc9ivUg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id CE447822AA;
	Thu,  2 Jul 2026 09:35:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 21A6E127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0793381E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Gu9Yr3r_iZJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E7D6381E37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7D6381E37
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E7D6381E37
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:12 +0000 (UTC)
X-CSE-ConnectionGUID: Kr0nuVULQsmERkxo56XqOg==
X-CSE-MsgGUID: mQMsqkenQ0uwKpHGlsuMUQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649803"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649803"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:13 -0700
X-CSE-ConnectionGUID: jn5wKI0QSae2XjIB7R2G4Q==
X-CSE-MsgGUID: U9Aft8JYQwW7k4OajYLUig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476405"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:12 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 11:15:48 +0200
Message-Id: <20260702091553.57112-2-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984913; x=1814520913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NoRhnNPu9yFlRsA8qdXk5V8zjS4iJyDdqtRGbyso1oQ=;
 b=cOAtX+0kHCr9bXT11Gqe0r6F26X7ZCFukLWJN8Hba0Z+E2nGngu2bI1c
 aS1cy2jubRJ6tVsAth5QlSwOS0tCBAtmMSpWU0e/aXpZI2A8aCUFtUG93
 MPRUOqjbyr4GX/d2HB3pe1n5EJgy1TaBADc0jaeSdJIk7+QjeLgmQmOTy
 SFZ5sZ7Vr+xPAOvlnb/HkZurGSIOfZ8YAegCxf88FBPvOSWukIKUiL9/Z
 59cUzwyMxirZrhtM+JgIofVkT1NkgOjAMSzuutW7OQsWwPNQjyOPnKCTn
 Xie7By9kZlduYWuWYDtHOEwzesJDHrcfXkwr33COBazgPbh2LQlVlzmcU
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cOAtX+0k
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/6] ixgbe: E610: init Link
 Status Events mask just once
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
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
X-Rspamd-Queue-Id: 8C2496F5517

Current approach is that LSE mask is configured each time the LSE feature
itself is toggled. The set of bits corresponding to LSE trigger causes
remain the same for the whole ixgbe lifecycle. There's no support for
enabling or disabling specific bits within LSE mask.

This is redundant; there's no need to configure LSE mask over and over.
The mask persists in hardware and only needs to be set once so should
be separated from the LSE toggling logic.

Do it just once at the init phase.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 -
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 34 ++++++++++++-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  3 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 28 +++------------
 4 files changed, 27 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 30f62174acf2..17e0a9824777 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -821,7 +821,6 @@ struct ixgbe_adapter {
 	struct ixgbe_mac_addr *mac_table;
 	u8 tx_hang_count[IXGBE_MAX_TX_QUEUES];
 	struct kobject *info_kobj;
-	u16 lse_mask;
 #ifdef CONFIG_IXGBE_HWMON
 	struct hwmon_buff *ixgbe_hwmon_buff;
 #endif /* CONFIG_IXGBE_HWMON */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 831cfe9a4697..d451da68fd6d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1536,7 +1536,7 @@ int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
  *
  * Return: the exit code of the operation.
  */
-int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
+static int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
 {
 	struct ixgbe_aci_cmd_set_event_mask *cmd;
 	struct libie_aq_desc desc;
@@ -1551,25 +1551,25 @@ int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask)
 	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
 }
 
+static int ixgbe_aci_init_event_mask(struct ixgbe_hw *hw)
+{
+	u16 mask = ~((u16)(IXGBE_ACI_LINK_EVENT_UPDOWN |
+			   IXGBE_ACI_LINK_EVENT_MEDIA_NA |
+			   IXGBE_ACI_LINK_EVENT_MODULE_QUAL_FAIL |
+			   IXGBE_ACI_LINK_EVENT_PHY_FW_LOAD_FAIL));
+
+	return ixgbe_aci_set_event_mask(hw, (u8)hw->bus.func, mask);
+}
+
 /**
  * ixgbe_configure_lse - enable/disable link status events
  * @hw: pointer to the HW struct
  * @activate: true for enable lse, false otherwise
- * @mask: event mask to be set; a set bit means deactivation of the
- * corresponding event
- *
- * Set the event mask and then enable or disable link status events
  *
  * Return: the exit code of the operation.
  */
-int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask)
+int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate)
 {
-	int err;
-
-	err = ixgbe_aci_set_event_mask(hw, (u8)hw->bus.func, mask);
-	if (err)
-		return err;
-
 	/* Enabling link status events generation by fw. */
 	return ixgbe_aci_get_link_info(hw, activate, NULL);
 }
@@ -1597,6 +1597,16 @@ static int ixgbe_start_hw_e610(struct ixgbe_hw *hw)
 
 	ixgbe_start_hw_gen2(hw);
 
+	err = ixgbe_aci_init_event_mask(hw);
+	/* In case of error just log it, don't fail the whole init */
+	if (err) {
+		struct ixgbe_adapter *adapter =
+				container_of(hw, struct ixgbe_adapter, hw);
+
+		e_dev_err("Cannot configure Link Status Event mask, err = %d\n",
+			   err);
+	}
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 2cb76a3d30ae..ecda35a77adb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -34,8 +34,7 @@ int ixgbe_update_link_info(struct ixgbe_hw *hw);
 int ixgbe_get_link_status(struct ixgbe_hw *hw, bool *link_up);
 int ixgbe_aci_get_link_info(struct ixgbe_hw *hw, bool ena_lse,
 			    struct ixgbe_link_status *link);
-int ixgbe_aci_set_event_mask(struct ixgbe_hw *hw, u8 port_num, u16 mask);
-int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate, u16 mask);
+int ixgbe_configure_lse(struct ixgbe_hw *hw, bool activate);
 int ixgbe_aci_set_port_id_led(struct ixgbe_hw *hw, bool orig_mode);
 enum ixgbe_media_type ixgbe_get_media_type_e610(struct ixgbe_hw *hw);
 int ixgbe_setup_link_e610(struct ixgbe_hw *hw, ixgbe_link_speed speed,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 7a0783c1abc1..2c8968b9b86c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5969,23 +5969,14 @@ static void ixgbe_configure(struct ixgbe_adapter *adapter)
 /**
  * ixgbe_enable_link_status_events - enable link status events
  * @adapter: pointer to the adapter structure
- * @mask: event mask to be set
  *
  * Enables link status events by invoking ixgbe_configure_lse()
  *
  * Return: the exit code of the operation.
  */
-static int ixgbe_enable_link_status_events(struct ixgbe_adapter *adapter,
-					   u16 mask)
+static int ixgbe_enable_link_status_events(struct ixgbe_adapter *adapter)
 {
-	int err;
-
-	err = ixgbe_configure_lse(&adapter->hw, true, mask);
-	if (err)
-		return err;
-
-	adapter->lse_mask = mask;
-	return 0;
+	return ixgbe_configure_lse(&adapter->hw, true);
 }
 
 /**
@@ -5998,14 +5989,7 @@ static int ixgbe_enable_link_status_events(struct ixgbe_adapter *adapter,
  */
 static int ixgbe_disable_link_status_events(struct ixgbe_adapter *adapter)
 {
-	int err;
-
-	err = ixgbe_configure_lse(&adapter->hw, false, adapter->lse_mask);
-	if (err)
-		return err;
-
-	adapter->lse_mask = 0;
-	return 0;
+	return ixgbe_configure_lse(&adapter->hw, false);
 }
 
 /**
@@ -6039,10 +6023,6 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 {
 	struct ixgbe_adapter *adapter = container_of(hw, struct ixgbe_adapter,
 						     hw);
-	u16 mask = ~((u16)(IXGBE_ACI_LINK_EVENT_UPDOWN |
-			   IXGBE_ACI_LINK_EVENT_MEDIA_NA |
-			   IXGBE_ACI_LINK_EVENT_MODULE_QUAL_FAIL |
-			   IXGBE_ACI_LINK_EVENT_PHY_FW_LOAD_FAIL));
 	bool autoneg, link_up = false;
 	int ret = -EIO;
 	u32 speed;
@@ -6070,7 +6050,7 @@ static int ixgbe_non_sfp_link_config(struct ixgbe_hw *hw)
 
 	if (hw->mac.ops.setup_link) {
 		if (adapter->hw.mac.type == ixgbe_mac_e610) {
-			ret = ixgbe_enable_link_status_events(adapter, mask);
+			ret = ixgbe_enable_link_status_events(adapter);
 			if (ret)
 				return ret;
 		}
-- 
2.31.1

