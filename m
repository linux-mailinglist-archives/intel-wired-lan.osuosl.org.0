Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9031DA35F2B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 14:30:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 491266FC19;
	Fri, 14 Feb 2025 13:30:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rGq8hC5l6LMI; Fri, 14 Feb 2025 13:30:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F7946FC1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739539855;
	bh=ocIYBcwEwDoy3+5gTnF64KFrnR9HlBwQRS0sRoim9ws=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n+0lXyw3d+3Yfqq1d7VaB+Awhhc5AXNtHgswT3SMCjEFwSFKfAmCekzmqTsv8Ztfb
	 LcCKWfero41BLdgPm2hJkFazNN9jMsxIFodBLOfrgh1FjLImWXWpzXit/dhuoXlfoJ
	 4xn3nh6ZeHeSOcpyJQZFmtTdgDUXV81uOsMok+tZZHkyyIzu0s6B7mzgY4XqHhMC5+
	 AWnu/z677jVYZOrbwDPyWmUt9NY4xRQ4I9AAUNl59SuUL2CtuIzVzcK8nRQ6WatY9Z
	 V+2u5hQjBYhT/wN0+Iow+Kn6/SlksYAaGHBE1TFpTxXj+FAUjR8qhN4FS7UOuEw0j+
	 FFrMyHL9KlSrQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F7946FC1F;
	Fri, 14 Feb 2025 13:30:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DF15B1C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE2FD80EDA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:30:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OSwrQDhJl9IZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 13:30:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 809D18490E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 809D18490E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 809D18490E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:30:52 +0000 (UTC)
X-CSE-ConnectionGUID: SEh46j2vRRGcGknTcE7Nfg==
X-CSE-MsgGUID: yvKWHG7UQryH//U1E2T2vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40159372"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40159372"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 05:30:52 -0800
X-CSE-ConnectionGUID: k/MybvKrT/avkLJr50oq5Q==
X-CSE-MsgGUID: m/22hchmRJCqZi8ovax+Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="114094362"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa009.fm.intel.com with ESMTP; 14 Feb 2025 05:30:49 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 mailto:przemyslaw.kitszel@intel.com, jiri@nvidia.com, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Fri, 14 Feb 2025 14:16:41 +0100
Message-Id: <20250214131646.118437-11-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250214131646.118437-1-jedrzej.jagielski@intel.com>
References: <20250214131646.118437-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739539852; x=1771075852;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2kFystS9ZAVp3fMsBhr0YpPVn6njwNcxeZB307NBna8=;
 b=Dfefg964PNFwJRwEhYaulaDeOihwPG7dOEWImfqgS440WOTnJOdztIfZ
 8AwCJbvEv+gCCssNaXtFLrwwYlWRrywS3NFuAj9xlcpDJm9JjEY81qnbF
 Q0lcGuTiCHBzBm2+B1zRTiCVQwH7hEBNpJHPkXBdTwrAL1fwyS55xjZrm
 P8Rc/eZB5By6/uK+9rvC+MCqCGuKPYu8Edy2esMPuehwtGf+eJEBnTcl7
 KRvDwez8utse9B2IrDOK8Eks/gaedAaNkYEjZVAiMMdeeNuMm844w8qil
 mv1DOnT3Px8UvR/yUNPOsHqoYeLLOVxquPI+OaSv432tWMmxKm9zU0d1g
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dfefg964
Subject: [Intel-wired-lan] [PATCH iwl-next v4 10/15] ixgbe: extend .info_get
 with stored versions
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

Add functions reading inactive versions from the inactive flash
banks.

Print stored NVM, OROM and netlist versions by devlink when there
is an ongoing update for E610 devices.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Co-developed-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v3: use devlink_info_version_*_put() function; squash functions dealing with
running and stored versions into single ones
---
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 196 ++++++++++++++++--
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  59 ++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   3 +
 3 files changed, 236 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index b13a10d430eb..e45f9ba3d97f 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -6,6 +6,15 @@
 
 struct ixgbe_info_ctx {
 	char buf[128];
+	struct ixgbe_orom_info pending_orom;
+	struct ixgbe_nvm_info pending_nvm;
+	struct ixgbe_netlist_info pending_netlist;
+	struct ixgbe_hw_dev_caps dev_caps;
+};
+
+enum ixgbe_devlink_version_type {
+	IXGBE_DL_VERSION_RUNNING,
+	IXGBE_DL_VERSION_STORED
 };
 
 static void ixgbe_info_get_dsn(struct ixgbe_adapter *adapter,
@@ -20,7 +29,8 @@ static void ixgbe_info_get_dsn(struct ixgbe_adapter *adapter,
 }
 
 static void ixgbe_info_orom_ver(struct ixgbe_adapter *adapter,
-				struct ixgbe_info_ctx *ctx)
+				struct ixgbe_info_ctx *ctx,
+				enum ixgbe_devlink_version_type type)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ixgbe_nvm_version nvm_ver;
@@ -28,7 +38,12 @@ static void ixgbe_info_orom_ver(struct ixgbe_adapter *adapter,
 	ctx->buf[0] = '\0';
 
 	if (hw->mac.type == ixgbe_mac_e610) {
-		struct ixgbe_orom_info *orom = &adapter->hw.flash.orom;
+		struct ixgbe_orom_info *orom;
+
+		if (type == IXGBE_DL_VERSION_RUNNING)
+			orom = &adapter->hw.flash.orom;
+		else if (type == IXGBE_DL_VERSION_STORED)
+			orom = &ctx->pending_orom;
 
 		snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
 			 orom->major, orom->build, orom->patch);
@@ -51,14 +66,21 @@ static void ixgbe_info_orom_ver(struct ixgbe_adapter *adapter,
 }
 
 static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
-			       struct ixgbe_info_ctx *ctx)
+			       struct ixgbe_info_ctx *ctx,
+			       enum ixgbe_devlink_version_type type)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	struct ixgbe_nvm_version nvm_ver;
 
 	if (hw->mac.type == ixgbe_mac_e610) {
-		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x",
-			 hw->flash.nvm.eetrack);
+		u32 eetrack;
+
+		if (type == IXGBE_DL_VERSION_RUNNING)
+			eetrack = hw->flash.nvm.eetrack;
+		else if (type == IXGBE_DL_VERSION_STORED)
+			eetrack = ctx->pending_nvm.eetrack;
+
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", eetrack);
 		return;
 	}
 
@@ -92,33 +114,57 @@ static void ixgbe_info_fw_build(struct ixgbe_adapter *adapter,
 }
 
 static void ixgbe_info_fw_srev(struct ixgbe_adapter *adapter,
-			       struct ixgbe_info_ctx *ctx)
+			       struct ixgbe_info_ctx *ctx,
+			       enum ixgbe_devlink_version_type type)
 {
-	struct ixgbe_nvm_info *nvm = &adapter->hw.flash.nvm;
+	struct ixgbe_nvm_info *nvm;
+
+	if (type == IXGBE_DL_VERSION_RUNNING)
+		nvm = &adapter->hw.flash.nvm;
+	else if (type == IXGBE_DL_VERSION_STORED)
+		nvm = &ctx->pending_nvm;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
 }
 
 static void ixgbe_info_orom_srev(struct ixgbe_adapter *adapter,
-				 struct ixgbe_info_ctx *ctx)
+				 struct ixgbe_info_ctx *ctx,
+				 enum ixgbe_devlink_version_type type)
 {
-	struct ixgbe_orom_info *orom = &adapter->hw.flash.orom;
+	struct ixgbe_orom_info *orom;
+
+	if (type == IXGBE_DL_VERSION_RUNNING)
+		orom = &adapter->hw.flash.orom;
+	else if (type == IXGBE_DL_VERSION_STORED)
+		orom = &ctx->pending_orom;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
 }
 
 static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
-			       struct ixgbe_info_ctx *ctx)
+			       struct ixgbe_info_ctx *ctx,
+			       enum ixgbe_devlink_version_type type)
 {
-	struct ixgbe_nvm_info *nvm = &adapter->hw.flash.nvm;
+	struct ixgbe_nvm_info *nvm;
+
+	if (type == IXGBE_DL_VERSION_RUNNING)
+		nvm = &adapter->hw.flash.nvm;
+	else if (type == IXGBE_DL_VERSION_STORED)
+		nvm = &ctx->pending_nvm;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
 }
 
 static void ixgbe_info_netlist_ver(struct ixgbe_adapter *adapter,
-				   struct ixgbe_info_ctx *ctx)
+				   struct ixgbe_info_ctx *ctx,
+				   enum ixgbe_devlink_version_type type)
 {
-	struct ixgbe_netlist_info *netlist = &adapter->hw.flash.netlist;
+	struct ixgbe_netlist_info *netlist;
+
+	if (type == IXGBE_DL_VERSION_RUNNING)
+		netlist = &adapter->hw.flash.netlist;
+	else if (type == IXGBE_DL_VERSION_STORED)
+		netlist = &ctx->pending_netlist;
 
 	/* The netlist version fields are BCD formatted */
 	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
@@ -128,13 +174,54 @@ static void ixgbe_info_netlist_ver(struct ixgbe_adapter *adapter,
 }
 
 static void ixgbe_info_netlist_build(struct ixgbe_adapter *adapter,
-				     struct ixgbe_info_ctx *ctx)
+				     struct ixgbe_info_ctx *ctx,
+				     enum ixgbe_devlink_version_type type)
 {
-	struct ixgbe_netlist_info *netlist = &adapter->hw.flash.netlist;
+	struct ixgbe_netlist_info *netlist;
+
+	if (type == IXGBE_DL_VERSION_RUNNING)
+		netlist = &adapter->hw.flash.netlist;
+	else if (type == IXGBE_DL_VERSION_STORED)
+		netlist = &ctx->pending_netlist;
 
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
 }
 
+static int ixgbe_set_ctx_dev_caps(struct ixgbe_hw *hw,
+				  struct ixgbe_info_ctx *ctx,
+				  struct netlink_ext_ack *extack)
+{
+	int err = ixgbe_discover_dev_caps(hw, &ctx->dev_caps);
+
+	if (err) {
+		NL_SET_ERR_MSG_MOD(extack,
+				   "Unable to discover device capabilities");
+		return err;
+	}
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_orom) {
+		err = ixgbe_get_inactive_orom_ver(hw, &ctx->pending_orom);
+		if (err)
+			ctx->dev_caps.common_cap.nvm_update_pending_orom =
+			false;
+	}
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm) {
+		err = ixgbe_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
+		if (err)
+			ctx->dev_caps.common_cap.nvm_update_pending_nvm = false;
+	}
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist) {
+		err = ixgbe_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
+		if (err)
+			ctx->dev_caps.common_cap.nvm_update_pending_netlist =
+				false;
+	}
+
+	return 0;
+}
+
 static int ixgbe_devlink_info_get_E610(struct ixgbe_adapter *adapter,
 				       struct devlink_info_req *req,
 				       struct ixgbe_info_ctx *ctx)
@@ -153,33 +240,90 @@ static int ixgbe_devlink_info_get_E610(struct ixgbe_adapter *adapter,
 	if (err)
 		return err;
 
-	ixgbe_info_fw_srev(adapter, ctx);
+	ixgbe_info_fw_srev(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req, "fw.mgmt.srev", ctx->buf);
 	if (err)
 		return err;
 
-	ixgbe_info_orom_srev(adapter, ctx);
+	ixgbe_info_orom_srev(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req, "fw.undi.srev", ctx->buf);
 	if (err)
 		return err;
 
-	ixgbe_info_nvm_ver(adapter, ctx);
+	ixgbe_info_nvm_ver(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req, "fw.psid.api", ctx->buf);
 	if (err)
 		return err;
 
-	ixgbe_info_netlist_ver(adapter, ctx);
+	ixgbe_info_netlist_ver(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req, "fw.netlist", ctx->buf);
 	if (err)
 		return err;
 
-	ixgbe_info_netlist_build(adapter, ctx);
+	ixgbe_info_netlist_build(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req, "fw.netlist.build",
 					       ctx->buf);
 
 	return err;
 }
 
+static int
+ixgbe_devlink_pending_info_get_E610(struct ixgbe_adapter *adapter,
+				    struct devlink_info_req *req,
+				    struct ixgbe_info_ctx *ctx)
+{
+	int err = 0;
+
+	if (!ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		goto no_nvm;
+
+	ixgbe_info_fw_srev(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req, "fw.mgmt.srev", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_eetrack(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req,
+				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
+				     ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_nvm_ver(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req, "fw.psid.api", ctx->buf);
+	if (err)
+		return err;
+
+no_nvm:
+	if (!ctx->dev_caps.common_cap.nvm_update_pending_orom)
+		goto no_orom;
+
+	ixgbe_info_orom_ver(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req,
+				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
+				     ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_orom_srev(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req, "fw.undi.srev", ctx->buf);
+no_orom:
+	if (err || !ctx->dev_caps.common_cap.nvm_update_pending_netlist)
+		return err;
+
+	ixgbe_info_netlist_ver(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req, "fw.netlist", ctx->buf);
+
+	if (err)
+		return err;
+
+	ixgbe_info_netlist_build(adapter, ctx, IXGBE_DL_VERSION_STORED);
+	err = devlink_info_version_stored_put(req, "fw.netlist.build",
+					      ctx->buf);
+
+	return err;
+}
+
 static int ixgbe_devlink_info_get(struct devlink *devlink,
 				  struct devlink_info_req *req,
 				  struct netlink_ext_ack *extack)
@@ -198,14 +342,14 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	if (err)
 		goto free_ctx;
 
-	ixgbe_info_orom_ver(adapter, ctx);
+	ixgbe_info_orom_ver(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req,
 					DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
 					ctx->buf);
 	if (err)
 		goto free_ctx;
 
-	ixgbe_info_eetrack(adapter, ctx);
+	ixgbe_info_eetrack(adapter, ctx, IXGBE_DL_VERSION_RUNNING);
 	err = devlink_info_version_running_put(req,
 					DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
 					ctx->buf);
@@ -220,7 +364,15 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
 	if (err || hw->mac.type != ixgbe_mac_e610)
 		goto free_ctx;
 
+	err = ixgbe_set_ctx_dev_caps(hw, ctx, extack);
+	if (err)
+		goto free_ctx;
+
 	err = ixgbe_devlink_info_get_E610(adapter, req, ctx);
+	if (err)
+		goto free_ctx;
+
+	err = ixgbe_devlink_pending_info_get_E610(adapter, req, ctx);
 free_ctx:
 	kfree(ctx);
 	return err;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index 2b1549992754..87a646659e45 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -589,6 +589,15 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
 		break;
 	case IXGBE_ACI_CAPS_NVM_VER:
 		break;
+	case IXGBE_ACI_CAPS_PENDING_NVM_VER:
+		caps->nvm_update_pending_nvm = true;
+		break;
+	case IXGBE_ACI_CAPS_PENDING_OROM_VER:
+		caps->nvm_update_pending_orom = true;
+		break;
+	case IXGBE_ACI_CAPS_PENDING_NET_VER:
+		caps->nvm_update_pending_netlist = true;
+		break;
 	case IXGBE_ACI_CAPS_MAX_MTU:
 		caps->max_mtu = number;
 		break;
@@ -2932,6 +2941,23 @@ static int ixgbe_get_orom_ver_info(struct ixgbe_hw *hw,
 	return err;
 }
 
+/**
+ * ixgbe_get_inactive_orom_ver - Read Option ROM version from the inactive bank
+ * @hw: pointer to the HW structure
+ * @orom: storage for Option ROM version information
+ *
+ * Read the Option ROM version and security revision data for the inactive
+ * section of flash. Used to access version data for a pending update that has
+ * not yet been activated.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_inactive_orom_ver(struct ixgbe_hw *hw,
+				struct ixgbe_orom_info *orom)
+{
+	return ixgbe_get_orom_ver_info(hw, IXGBE_INACTIVE_FLASH_BANK, orom);
+}
+
 /**
  * ixgbe_get_nvm_ver_info - Read NVM version information
  * @hw: pointer to the HW struct
@@ -2975,6 +3001,22 @@ static int ixgbe_get_nvm_ver_info(struct ixgbe_hw *hw,
 	return 0;
 }
 
+/**
+ * ixgbe_get_inactive_nvm_ver - Read Option ROM version from the inactive bank
+ * @hw: pointer to the HW structure
+ * @nvm: storage for Option ROM version information
+ *
+ * Read the NVM EETRACK ID, Map version, and security revision of the
+ * inactive NVM bank. Used to access version data for a pending update that
+ * has not yet been activated.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_inactive_nvm_ver(struct ixgbe_hw *hw, struct ixgbe_nvm_info *nvm)
+{
+	return ixgbe_get_nvm_ver_info(hw, IXGBE_INACTIVE_FLASH_BANK, nvm);
+}
+
 /**
  * ixgbe_get_netlist_info - Read the netlist version information
  * @hw: pointer to the HW struct
@@ -3055,6 +3097,23 @@ static int ixgbe_get_netlist_info(struct ixgbe_hw *hw,
 	return err;
 }
 
+/**
+ * ixgbe_get_inactive_netlist_ver - Read netlist version from the inactive bank
+ * @hw: pointer to the HW struct
+ * @netlist: pointer to netlist version info structure
+ *
+ * Read the netlist version data from the inactive netlist bank. Used to
+ * extract version data of a pending flash update in order to display the
+ * version data.
+ *
+ * Return: the exit code of the operation.
+ */
+int ixgbe_get_inactive_netlist_ver(struct ixgbe_hw *hw,
+				   struct ixgbe_netlist_info *netlist)
+{
+	return ixgbe_get_netlist_info(hw, IXGBE_INACTIVE_FLASH_BANK, netlist);
+}
+
 /**
  * ixgbe_get_flash_data - get flash data
  * @hw: pointer to the HW struct
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 2c971a34200b..07c888d554d5 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -67,6 +67,9 @@ int ixgbe_aci_read_nvm(struct ixgbe_hw *hw, u16 module_typeid, u32 offset,
 		       u16 length, void *data, bool last_command,
 		       bool read_shadow_ram);
 int ixgbe_nvm_validate_checksum(struct ixgbe_hw *hw);
+int ixgbe_get_inactive_orom_ver(struct ixgbe_hw *hw, struct ixgbe_orom_info *orom);
+int ixgbe_get_inactive_nvm_ver(struct ixgbe_hw *hw, struct ixgbe_nvm_info *nvm);
+int ixgbe_get_inactive_netlist_ver(struct ixgbe_hw *hw, struct ixgbe_netlist_info *netlist);
 int ixgbe_read_sr_word_aci(struct ixgbe_hw  *hw, u16 offset, u16 *data);
 int ixgbe_read_flat_nvm(struct ixgbe_hw  *hw, u32 offset, u32 *length,
 			u8 *data, bool read_shadow_ram);
-- 
2.31.1

