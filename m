Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gO9cC4Pwp2mWlwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 09:42:43 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A8D1FCC39
	for <lists+intel-wired-lan@lfdr.de>; Wed, 04 Mar 2026 09:42:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A6F960792;
	Wed,  4 Mar 2026 08:42:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Sw93Gzl1LUa5; Wed,  4 Mar 2026 08:42:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAA2460769
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772613758;
	bh=SpRG4xOm3agqqJ0NwCz/uivaKqGE9/5HXuAADqvN+F0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=i5PLOwpwPwCX6TP07MT0WdbUASPBhq8iWB2rhXAw8C9R9rQk5Mow3VZgsoDyYqjKP
	 gujO7P+tDfygR10gCHkJXKlJrPUUwTUoZd2evuNAuktdjWODMEGtn7Q57QXCSaBSBU
	 RhU67wgIZZemcBIYcw8V4yKFVUSrLDcSWNYJGNpYEprsd+XvBOGSaIt4jOPPbbZJia
	 o1pfCkXzeRlrnTNkAGrEmGp83r4MgmzGUs9CzB2lmGrAue8BJz88hWIYNfX56F9wFX
	 zx6rp2bx1MUKgvyNnA2eJC78QjIZIJBJDTNcizerxpK6+JTyOrJbX0b0jeTDzLYaAS
	 FJKJzWr22fR0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAA2460769;
	Wed,  4 Mar 2026 08:42:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A5B5925B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 08:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A343B80DC3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 08:42:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AlCjyQH2kHRM for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Mar 2026 08:42:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4136580DBB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4136580DBB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4136580DBB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Mar 2026 08:42:35 +0000 (UTC)
X-CSE-ConnectionGUID: VSdnkDXXR/a3EIdy0xIbnw==
X-CSE-MsgGUID: JU/XkXUTQ+2kWYizsfFMNQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="73736621"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="73736621"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 00:42:35 -0800
X-CSE-ConnectionGUID: OgIxrAcgSuKhqP54zY8mEw==
X-CSE-MsgGUID: bwVf6cETSwS5ob7SiSHtsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="223270421"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa005.jf.intel.com with ESMTP; 04 Mar 2026 00:42:34 -0800
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Wed,  4 Mar 2026 09:42:32 +0100
Message-ID: <20260304084232.2937498-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772613756; x=1804149756;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BKssnUpC3b9eO8LjpnPOwjycyVQrdp45Uj5fbygo95o=;
 b=mgYV3ZW1PGEBfTL+GauFzzN+f2jwoI8RM63Aseka+34UyMDSymxEgp2O
 NojTtREnFpK+qH8BOEl+RDMJf2BchAyBy00CiqKFbXuQt8I8gVJOrPEWP
 InnvXNpiBlS5OvR6BIdBbYDjSy6dFG/rYCH68ibB3VZslaamu6psYfuW3
 h6x3qyPZfoXhkEeGYmdHkDdiGB9Co54oHKvILK64Z1i7rob5VAqXGVdGT
 pRnAwoYjYZsA3bIRv7it/8vV2AUkoDkBHvN06R9M8qDoES/vMSKh1m9zd
 Hn2RA3SlZ8DljGgkkH3wbc3jUQOpKo9cERcKeTxnBzFsC1bwaVrvy1DuO
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mgYV3ZW1
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: stop re-reading flash
 on every get_drvinfo for e610
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
X-Rspamd-Queue-Id: 26A8D1FCC39
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

ixgbe_get_drvinfo() calls ixgbe_refresh_fw_version() on every ethtool
query for e610 adapters.  That ends up in ixgbe_discover_flash_size(),
which bisects the full 16 MB NVM space issuing one ACI command per
step (~20 ms each, ~24 steps total = ~500 ms).

Profiling on an idle E610-XAT2 system with telegraf scraping ethtool
stats every 10 seconds:

  kretprobe:ixgbe_get_drvinfo took 527603 us
  kretprobe:ixgbe_get_drvinfo took 523978 us
  kretprobe:ixgbe_get_drvinfo took 552975 us
  kretprobe:ice_get_drvinfo   took       3 us
  kretprobe:igb_get_drvinfo   took       2 us
  kretprobe:i40e_get_drvinfo  took       5 us

The half-second stall happens under the RTNL lock, causing visible
latency on ip-link and friends.

The FW version can only change after an EMPR reset.  All flash data is
already populated at probe time and the cached adapter->eeprom_id is
what get_drvinfo should be returning.  The only place that needs to
trigger a re-read is ixgbe_devlink_reload_empr_finish(), right after
the EMPR completes and new firmware is running.  Additionally, refresh
the FW version in ixgbe_reinit_locked() so that any PF that undergoes a
reinit after an EMPR (e.g. triggered by another PF's devlink reload)
also picks up the new version in adapter->eeprom_id.

ixgbe_devlink_info_get() keeps its refresh call for explicit
"devlink dev info" queries, which is fine given those are user-initiated.

Fixes: c9e563cae19e ("ixgbe: add support for devlink reload")
Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/devlink/devlink.c |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe.h           |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c   | 13 +++++++------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 10 ++++++++++
 4 files changed, 19 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index d227f4d..f32e640 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -474,7 +474,7 @@ static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 	adapter->flags2 &= ~(IXGBE_FLAG2_API_MISMATCH |
 			     IXGBE_FLAG2_FW_ROLLBACK);
 
-	return 0;
+	return ixgbe_refresh_fw_version(adapter);
 }
 
 static const struct devlink_ops ixgbe_devlink_ops = {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index dce4936..047f040455 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -973,7 +973,7 @@ int ixgbe_init_interrupt_scheme(struct ixgbe_adapter *adapter);
 bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
 			 u16 subdevice_id);
 void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter);
-void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter);
+int ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter);
 #ifdef CONFIG_PCI_IOV
 void ixgbe_full_sync_mac_table(struct ixgbe_adapter *adapter);
 #endif
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index bb4b53f..358b50c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1155,12 +1155,17 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
 	return ret_val;
 }
 
-void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
+int ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	err = ixgbe_get_flash_data(hw);
+	if (err)
+		return err;
 
-	ixgbe_get_flash_data(hw);
 	ixgbe_set_fw_version_e610(adapter);
+	return 0;
 }
 
 static void ixgbe_get_drvinfo(struct net_device *netdev,
@@ -1168,10 +1173,6 @@ static void ixgbe_get_drvinfo(struct net_device *netdev,
 {
 	struct ixgbe_adapter *adapter = ixgbe_from_netdev(netdev);
 
-	/* need to refresh info for e610 in case fw reloads in runtime */
-	if (adapter->hw.mac.type == ixgbe_mac_e610)
-		ixgbe_refresh_fw_version(adapter);
-
 	strscpy(drvinfo->driver, ixgbe_driver_name, sizeof(drvinfo->driver));
 
 	strscpy(drvinfo->fw_version, adapter->eeprom_id,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index c58051e4..8b07f25 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6289,6 +6289,16 @@ void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
 	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
 		msleep(2000);
 	ixgbe_up(adapter);
+
+	/* E610 has no FW event to notify all PFs of an EMPR reset, so
+	 * refresh the FW version here to pick up any new FW version after
+	 * a hardware reset (e.g. EMPR triggered by another PF's devlink
+	 * reload).  ixgbe_refresh_fw_version() updates both hw->flash and
+	 * adapter->eeprom_id so ethtool -i reports the correct string.
+	 */
+	if (adapter->hw.mac.type == ixgbe_mac_e610)
+		(void)ixgbe_refresh_fw_version(adapter);
+
 	clear_bit(__IXGBE_RESETTING, &adapter->state);
 }
 
-- 
2.52.0

