Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8GtTN9bXvGmd3gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:15:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F262D5EB7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 06:15:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F14CF41C69;
	Fri, 20 Mar 2026 05:15:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wo4U3_FeygZS; Fri, 20 Mar 2026 05:15:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 594DD41C67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773983700;
	bh=3yl4+mmL8povEqeqmLDvoZG0g0+q7JcyvdbQMjmyd0s=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=mc4Z5tpu2lBI6dBJ0r7Yq5WHiy7TmrWsICCrgw1iZ8HasRpFex12F2mPOGBQ0a27Z
	 WNSBE3FvgLakKK49GVJc+8iitewEqcEFFyjmxCBXTuh4nJgWU+LjEMoSnL+6TpkHy+
	 6PD3a3Brhrbqq0+JfVumJAOLCs3GlfNvcNx2YYNQJT/YkMC2mucwWPR867i7b9YXH1
	 Hso5GOwZdooz9Hd0iaAXWYUy1DmnXx3NvcSjVQ70INghxI/IWXKxFvdWLNnvC6M3er
	 DPPmTh2V2UNdAT4Bk2ULqhvOaS1EIB8PSrWW++4D3RaVs4jTj0p8DLKJz+Eebi6Ops
	 MiAcrrfqELd/g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 594DD41C67;
	Fri, 20 Mar 2026 05:15:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 68DA51B6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:14:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5AF258465C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:14:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U_VMyZdhsKxw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 05:14:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D915984652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D915984652
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D915984652
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 05:14:57 +0000 (UTC)
X-CSE-ConnectionGUID: Fj+h8En4QrCEg3aLNqgy7Q==
X-CSE-MsgGUID: tFqxSKS4SZSWhnj1n62tJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="74953121"
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="74953121"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 22:14:57 -0700
X-CSE-ConnectionGUID: nbJRB5fsThGddNC0s2ziWA==
X-CSE-MsgGUID: ZbSy+zUuQAebaM08h1bx7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,130,1770624000"; d="scan'208";a="227655587"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 19 Mar 2026 22:14:56 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri, 20 Mar 2026 06:14:54 +0100
Message-ID: <20260320051455.427282-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773983698; x=1805519698;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JJU4I7UA/q5GDFgsGUT3lC5tGNNViouZPIthfhHmqrw=;
 b=GzvoZEBH1T12Di8M+hZC+Un04P+a79dUs3CqssxyZpxiG1mM9EIct+ei
 CmccE8BzTfwji/TvCV6DmRjnVx7jU3PFDXytO85zOaZQ7xhFkXln9tTLv
 J8Go9DPAKm3MVL4/EX2WSurt/p3MPzPLsbXoaUY4tRymJ59+eOxq7LrIR
 M5MJGDeI/FPyU5+h3v8lsOs7xvHvTKhC3zDPwym4VjVKho6ekSfI/NwJw
 tsFsF71chUUlfoin3qtnWka6qHj5riFL8qFz3Zwg+UGkY/wfp3DtAbmid
 yYLcXl1Be5MyvzKAXa2RUI2XUcGuVucQtt7i+hSz4IwFuIw2YhAqjD9Kg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GzvoZEBH
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: fix eeprom_id
 staleness and non-fatal EMPR reload failure
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 68F262D5EB7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Three related bugs around FW version reporting after EMPR reset on E610:

1. ixgbe_refresh_fw_version() silently discarded the error return from
   ixgbe_get_flash_data(), so a failed NVM re-read left adapter->eeprom_id
   with whatever stale data it held before the reset.  Propagate the error
   and set eeprom_id to "unknown" on failure so that ethtool -i and
   devlink dev info never show a version that no longer reflects reality.

2. ixgbe_devlink_reload_empr_finish() returned 0 without ever refreshing
   the FW version after the EMPR completed.  Add the refresh call, but
   treat it as best-effort: a failure to re-read flash does not mean the
   EMPR itself failed.  Log a netdev_warn() and return 0 so devlink
   reports the correct reload outcome.

3. ixgbe_reinit_locked() never refreshed the FW version for E610.
   Because E610 has no FW event that notifies peer PFs when an EMPR
   triggered by another PF's devlink reload completes, any PF that
   subsequently goes through reinit would keep stale data in hw->flash
   and adapter->eeprom_id.  Add the same best-effort refresh here,
   gated on ixgbe_mac_e610, with a netdev_warn() on failure.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 25 ++++++++++++++++---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  2 +-
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 ++++++++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 15 +++++++++++
 4 files changed, 57 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index b0404f3..4581605 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -322,8 +322,13 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	if (!ctx)
 		return -ENOMEM;
 
-	if (hw->mac.type == ixgbe_mac_e610)
-		ixgbe_refresh_fw_version(adapter);
+	if (hw->mac.type == ixgbe_mac_e610) {
+		err = ixgbe_refresh_fw_version(adapter);
+		if (err)
+			netdev_warn(adapter->netdev,
+				    "Failed to refresh FW version for devlink info: %d\n",
+				    err);
+	}
 
 	ixgbe_info_get_dsn(adapter, ctx);
 	err = devlink_info_serial_number_put(req, ctx->buf);
@@ -442,7 +447,9 @@ static int ixgbe_devlink_reload_empr_start(struct devlink *devlink,
  *
  * Wait for new NVM to be loaded during EMP reset.
  *
- * Return: -ETIME when timer is exceeded, 0 on success.
+ * Return: -ETIME when timer is exceeded, 0 on success. A failure to re-read
+ * the FW version after the reset completes is non-fatal and does not cause
+ * this function to return an error.
  */
 static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 					    enum devlink_reload_action action,
@@ -452,7 +459,7 @@ static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 {
 	struct ixgbe_adapter *adapter = devlink_priv(devlink);
 	struct ixgbe_hw *hw = &adapter->hw;
-	int i = 0;
+	int i = 0, err;
 	u32 fwsm;
 
 	do {
@@ -474,6 +481,16 @@ static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 	adapter->flags2 &= ~(IXGBE_FLAG2_API_MISMATCH |
 			     IXGBE_FLAG2_FW_ROLLBACK);
 
+	/* Re-reading the FW version is best-effort; the EMPR itself completed
+	 * successfully.  Log any failure so the user knows eeprom_id has been
+	 * reset to "unknown".
+	 */
+	err = ixgbe_refresh_fw_version(adapter);
+	if (err)
+		netdev_warn(adapter->netdev,
+			    "Failed to refresh FW version after EMPR: %d\n",
+			    err);
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 59a1cee4..9b82175 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -974,7 +974,7 @@ int ixgbe_init_interrupt_scheme(struct ixgbe_adapter *adapter);
 bool ixgbe_wol_supported(struct ixgbe_adapter *adapter, u16 device_id,
 			 u16 subdevice_id);
 void ixgbe_set_fw_version_e610(struct ixgbe_adapter *adapter);
-void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter);
+int ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter);
 #ifdef CONFIG_PCI_IOV
 void ixgbe_full_sync_mac_table(struct ixgbe_adapter *adapter);
 #endif
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 56aabaa..40d593b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -1155,12 +1155,30 @@ static int ixgbe_set_eeprom(struct net_device *netdev,
 	return ret_val;
 }
 
-void ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
+/**
+ * ixgbe_refresh_fw_version - re-read flash data and update eeprom_id cache
+ * @adapter: board private structure
+ *
+ * Re-reads the NVM/flash and refreshes the cached adapter->eeprom_id string.
+ * On failure the cache is set to "unknown" so that ethtool -i never shows a
+ * stale version string after a failed reset.
+ *
+ * Return: 0 on success, negative error code on failure.
+ */
+int ixgbe_refresh_fw_version(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
+	int err;
+
+	err = ixgbe_get_flash_data(hw);
+	if (err) {
+		strscpy(adapter->eeprom_id, "unknown",
+			sizeof(adapter->eeprom_id));
+		return err;
+	}
 
-	ixgbe_get_flash_data(hw);
 	ixgbe_set_fw_version_e610(adapter);
+	return 0;
 }
 
 static void ixgbe_get_drvinfo(struct net_device *netdev,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 0bc806a..d209cfc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -6289,6 +6289,21 @@ void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
 	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
 		msleep(2000);
 	ixgbe_up(adapter);
+
+	/* E610 has no FW event to notify peer PFs that an EMPR reset occurred.
+	 * Refresh the cached FW version here so that a PF completing reinit
+	 * after an EMPR triggered by another PF's devlink reload picks up the
+	 * new version in adapter->eeprom_id.
+	 */
+	if (adapter->hw.mac.type == ixgbe_mac_e610) {
+		int err = ixgbe_refresh_fw_version(adapter);
+
+		if (err)
+			netdev_warn(adapter->netdev,
+				    "Failed to refresh FW version after reset: %d\n",
+				    err);
+	}
+
 	clear_bit(__IXGBE_RESETTING, &adapter->state);
 }
 
-- 
2.52.0

