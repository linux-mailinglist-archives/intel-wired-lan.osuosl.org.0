Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0889AA32704
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Feb 2025 14:28:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0115426A6;
	Wed, 12 Feb 2025 13:28:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oo1iDOZasgim; Wed, 12 Feb 2025 13:28:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34918426B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739366894;
	bh=8TwN8dbz9Nvurr/xYp9a4/Vxclff40DnjenTdWZ3XuY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Izh8FC2J1bssNlPIHIJ2vK83CsfzjXFnNPFmjDeh67KNA8SQzrQ6g2TcGDWPYYova
	 1y5BAy5XjuuoUaP/TcICzsC+pZPpcZOf5J/aPo6U1BvHvLAFhHmBrPVrwUL/ac0Row
	 seM+MkRLNhsYA3uEfKYiKCiD1byKAS0gYTONBnsTQv8cs1v4P+fcM9CIZI1zAvDv8B
	 PcW+AAVYeeIbzLw67Bc1kK25oubHBRDOaalBc1KqT06czQTa7DZP/iHEvjT+b6hz7Z
	 RuMY6h/W7DrZyopt96xQb4bVpmy8N831edQee0DIH0vUzCwhmWsFvE6hcYOHXVW1Ba
	 HDRIwTtqNk9NQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34918426B7;
	Wed, 12 Feb 2025 13:28:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 463F7194
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A836608D1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tsvWaQSqdUvG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Feb 2025 13:28:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9AC6260A94
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AC6260A94
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9AC6260A94
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Feb 2025 13:28:09 +0000 (UTC)
X-CSE-ConnectionGUID: kNlRrdB3QjeooT2ymy0dAQ==
X-CSE-MsgGUID: GzQ14EkEQZCCLbY+dxE2yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50665547"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="50665547"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 05:28:09 -0800
X-CSE-ConnectionGUID: YekhExjwQmyruhVXUNwERQ==
X-CSE-MsgGUID: y9ey1axySsyBwNbUz7YCtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="117830676"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa004.jf.intel.com with ESMTP; 12 Feb 2025 05:28:07 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, jiri@resnulli.us,
 horms@kernel.org, Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Wed, 12 Feb 2025 14:14:06 +0100
Message-Id: <20250212131413.91787-8-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
References: <20250212131413.91787-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739366890; x=1770902890;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JorduLMnSJfU1Xw9H3NR0D+3N6WwDY8Wo6F0E55kiFs=;
 b=E4UCxwuNH18veeSpXyhmcaNGJttRSgxYexvk0FF6AQ5Pv1odhqHYRdtJ
 LUUNqXH7/0eILWxSFddAfotBkn9mmAXTmOXOj4r/HTxcl17EUwBuDNgl1
 LysN1eWTmGn+NpeqN3mc+5FfhpxPfMnGebtMbut40erqm7RJqO0h5JOyg
 Li2gmJp+wJ+mh1zdUowfIHeLgAQpbFcxUv+Gxl04oCdkdyi+A6KNKy6qy
 +joEkx7Zaggt/RIiaoJrPJl9f9AA8jIA8P6u2+HxaQSFBR31GbbGO3WXY
 0zFPJ3sxxGEKUKxKBvCgaptLzTNnZIDFlH+xXN0UCLF5VMt9H6ZzrNf7H
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E4UCxwuN
Subject: [Intel-wired-lan] [PATCH iwl-next v3 07/14] ixgbe: add .info_get
 extension specific for E610 devices
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

E610 devices give possibility to show more detailed info than the previous
boards.
Extend reporting NVM info with following pieces:
 fw.mgmt.api -> version number of the API
 fw.mgmt.build -> identifier of the source for the FW
 fw.psid.api -> version defining the format of the flash contents
 fw.netlist -> version of the netlist module
 fw.netlist.build -> first 4 bytes of the netlist hash

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 Documentation/networking/devlink/ixgbe.rst    |  26 ++++
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 130 +++++++++++++++++-
 2 files changed, 153 insertions(+), 3 deletions(-)

diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
index b63645de37e8..a41073a62776 100644
--- a/Documentation/networking/devlink/ixgbe.rst
+++ b/Documentation/networking/devlink/ixgbe.rst
@@ -38,3 +38,29 @@ The ``ixgbe`` driver reports the following versions
       - 0x80000d0d
       - Unique identifier of the firmware image file that was loaded onto
         the device. Also referred to as the EETRACK identifier of the NVM.
+    * - ``fw.mgmt.api``
+      - running
+      - 1.5.1
+      - 3-digit version number (major.minor.patch) of the API exported over
+        the AdminQ by the management firmware. Used by the driver to
+        identify what commands are supported. Historical versions of the
+        kernel only displayed a 2-digit version number (major.minor).
+    * - ``fw.mgmt.build``
+      - running
+      - 0x305d955f
+      - Unique identifier of the source for the management firmware.
+    * - ``fw.psid.api``
+      - running
+      - 0.80
+      - Version defining the format of the flash contents.
+    * - ``fw.netlist``
+      - running
+      - 1.1.2000-6.7.0
+      - The version of the netlist module. This module defines the device's
+        Ethernet capabilities and default settings, and is used by the
+        management firmware as part of managing link and device
+        connectivity.
+    * - ``fw.netlist.build``
+      - running
+      - 0xee16ced7
+      - The first 4 bytes of the hash of the netlist module contents.
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index f721ccde3bf8..87e61b4eb435 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -19,14 +19,22 @@ static void ixgbe_info_get_dsn(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "%8phD", dsn);
 }
 
-static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
-			       struct ixgbe_info_ctx *ctx)
+static void ixgbe_info_orom_ver(struct ixgbe_adapter *adapter,
+				struct ixgbe_info_ctx *ctx)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ixgbe_nvm_version nvm_ver;
 
 	ctx->buf[0] = '\0';
 
+	if (hw->mac.type == ixgbe_mac_e610) {
+		struct ixgbe_orom_info *orom = &adapter->hw.flash.orom;
+
+		snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
+			 orom->major, orom->build, orom->patch);
+		return;
+	}
+
 	ixgbe_get_oem_prod_version(hw, &nvm_ver);
 	if (nvm_ver.oem_valid) {
 		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x",
@@ -48,6 +56,12 @@ static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ixgbe_nvm_version nvm_ver;
 
+	if (hw->mac.type == ixgbe_mac_e610) {
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x",
+			 hw->flash.nvm.eetrack);
+		return;
+	}
+
 	ixgbe_get_oem_prod_version(hw, &nvm_ver);
 
 	/* No ETRACK version for OEM */
@@ -60,6 +74,112 @@ static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
 }
 
+static void ixgbe_info_fw_api(struct ixgbe_adapter *adapter,
+			      struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
+		 hw->api_maj_ver, hw->api_min_ver, hw->api_patch);
+}
+
+static void ixgbe_info_fw_build(struct ixgbe_adapter *adapter,
+				struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", hw->fw_build);
+}
+
+static void ixgbe_info_fw_srev(struct ixgbe_adapter *adapter,
+			       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_nvm_info *nvm = &adapter->hw.flash.nvm;
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
+}
+
+static void ixgbe_info_orom_srev(struct ixgbe_adapter *adapter,
+				 struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_orom_info *orom = &adapter->hw.flash.orom;
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
+}
+
+static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
+			       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_nvm_info *nvm = &adapter->hw.flash.nvm;
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
+}
+
+static void ixgbe_info_netlist_ver(struct ixgbe_adapter *adapter,
+				   struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_netlist_info *netlist = &adapter->hw.flash.netlist;
+
+	/* The netlist version fields are BCD formatted */
+	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
+		 netlist->major, netlist->minor,
+		 netlist->type >> 16, netlist->type & 0xFFFF,
+		 netlist->rev, netlist->cust_ver);
+}
+
+static void ixgbe_info_netlist_build(struct ixgbe_adapter *adapter,
+				     struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_netlist_info *netlist = &adapter->hw.flash.netlist;
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
+}
+
+static int ixgbe_devlink_info_get_E610(struct ixgbe_adapter *adapter,
+				       struct devlink_info_req *req,
+				       struct ixgbe_info_ctx *ctx)
+{
+	int err;
+
+	ixgbe_info_fw_api(adapter, ctx);
+	err = devlink_info_version_running_put(req,
+				DEVLINK_INFO_VERSION_GENERIC_FW_MGMT_API,
+				ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_fw_build(adapter, ctx);
+	err = devlink_info_version_running_put(req, "fw.mgmt.build", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_fw_srev(adapter, ctx);
+	err = devlink_info_version_running_put(req, "fw.mgmt.srev", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_orom_srev(adapter, ctx);
+	err = devlink_info_version_running_put(req, "fw.undi.srev", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_nvm_ver(adapter, ctx);
+	err = devlink_info_version_running_put(req, "fw.psid.api", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_netlist_ver(adapter, ctx);
+	err = devlink_info_version_running_put(req, "fw.netlist", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_netlist_build(adapter, ctx);
+	err = devlink_info_version_running_put(req, "fw.netlist.build",
+					       ctx->buf);
+
+	return err;
+}
+
 static int ixgbe_devlink_info_get(struct devlink *devlink,
 				  struct devlink_info_req *req,
 				  struct netlink_ext_ack *extack)
@@ -79,7 +199,7 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	if (err)
 		goto free_ctx;
 
-	ixgbe_info_nvm_ver(adapter, ctx);
+	ixgbe_info_orom_ver(adapter, ctx);
 	err = devlink_info_version_running_put(req,
 					DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
 					ctx->buf);
@@ -101,6 +221,10 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 					DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
 					ctx->buf);
 
+	if (err || hw->mac.type != ixgbe_mac_e610)
+		goto free_ctx;
+
+	err = ixgbe_devlink_info_get_E610(adapter, req, ctx);
 free_ctx:
 	kfree(ctx);
 	return err;
-- 
2.31.1

