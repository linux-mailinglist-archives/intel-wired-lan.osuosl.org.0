Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56290A2EF52
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 15:10:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3C30811B4;
	Mon, 10 Feb 2025 14:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rszvIQ5ELg6i; Mon, 10 Feb 2025 14:10:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2171F812D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739196642;
	bh=VyEqvcIFAVp22v+BJ1hIGC4fG7N/fV0occ89cyeCJYE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2frxYFX1BzIa5UAuIzJ3qOqL7z+HgJ8Ux7qDpKabxkYY+qZD5q7OXa/c2xpvQc/ZK
	 ZfHlyfpv7YREsJ5QGWpg+/GQzeXKL7fhoqIgGLnJvqXEBGjRgygYnZYqt8AAiIU50/
	 xt3+XhHHAnEui0FFHmlmCw7KehHIIctyp779SWR4sJXNnvyT+EuKrHPJE94WTp7/vD
	 RIaF4WZZ7RF+fF2obXxWQxpBaL+UYKSIKAByFwcuz7z1yjsj1MNTpAklbUyrbxZHll
	 W71urGQbXliOrdSozLhzcHbl+p6XkdHUyGjicuBfoonpPEdiw3gu6kAnwSZ+zGHvDB
	 u29WHHf0tmSsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2171F812D2;
	Mon, 10 Feb 2025 14:10:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D10F3199
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:10:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3AA860736
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:10:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 88DHrIPmv6Ai for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 14:10:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 80D6860A9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80D6860A9E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 80D6860A9E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 14:10:38 +0000 (UTC)
X-CSE-ConnectionGUID: +ZvxQr5WTX66DzUD9A1+4A==
X-CSE-MsgGUID: 5BkOZYI5Q12zvo8iQBd7kQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="57190423"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="57190423"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 06:10:39 -0800
X-CSE-ConnectionGUID: saA80b7GTwKKYntu5sUbuw==
X-CSE-MsgGUID: ekv28i8kQFuaYz8iNp76ZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="111964224"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 10 Feb 2025 06:10:36 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Mon, 10 Feb 2025 14:56:34 +0100
Message-Id: <20250210135639.68674-9-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
References: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739196639; x=1770732639;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xEMktiZBbM0wF9cOh+AmGP4ND8OV3NArkDT7rBnBsmg=;
 b=nox1b2tQ5hYixRsuXqrdKeJrffrEAmMisI0L40+byGr1V+w3FJmASIYs
 u0VMB4JBGAXtE5rtM3bCUMTuqRZ7AMGDHSvcx3BPjPn3grOGKNzhA8Gqe
 TXgJY4xjlNxQRjWtVD0jxiXMwPlEV/1why/454fSLASugDrG9CEwwxZN2
 QYLKmm9KJSz8CuTFk7GgQr7rSRGpX3aPlIOnaEdAjgeJL5DMTJDZk8Tqr
 /A9ao6Vn6qpEajk+x8m/SniWtxYI/okNBJjM3gcPKnjWqiKjh8VkmirlJ
 Gn8nEpwKTmBCHVP5wz1+hCAaAM/Z/4WmOhFc01Ff28KHNi/dhhYOiLsgZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nox1b2tQ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 08/13] ixgbe: extend .info_get
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
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 180 ++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  59 ++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   3 +
 3 files changed, 242 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 69d878fe5986..bd27de229ae1 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -6,11 +6,16 @@
 
 struct ixgbe_info_ctx {
 	char buf[128];
+	struct ixgbe_orom_info pending_orom;
+	struct ixgbe_nvm_info pending_nvm;
+	struct ixgbe_netlist_info pending_netlist;
+	struct ixgbe_hw_dev_caps dev_caps;
 };
 
 enum ixgbe_devlink_version_type {
 	IXGBE_DL_VERSION_FIXED,
 	IXGBE_DL_VERSION_RUNNING,
+	IXGBE_DL_VERSION_STORED,
 };
 
 static int ixgbe_devlink_info_put(struct devlink_info_req *req,
@@ -25,6 +30,8 @@ static int ixgbe_devlink_info_put(struct devlink_info_req *req,
 		return devlink_info_version_fixed_put(req, key, value);
 	case IXGBE_DL_VERSION_RUNNING:
 		return devlink_info_version_running_put(req, key, value);
+	case IXGBE_DL_VERSION_STORED:
+		return devlink_info_version_stored_put(req, key, value);
 	}
 
 	return 0;
@@ -96,6 +103,15 @@ static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
 }
 
+static void ixgbe_info_pending_eetrack(struct ixgbe_adapter *adapter,
+				       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_nvm_info *nvm = &ctx->pending_nvm;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm->eetrack);
+}
+
 static void ixgbe_info_fw_api(struct ixgbe_adapter *adapter,
 			      struct ixgbe_info_ctx *ctx)
 {
@@ -121,6 +137,25 @@ static void ixgbe_info_fw_srev(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
 }
 
+static void ixgbe_info_pending_fw_srev(struct ixgbe_adapter *adapter,
+				       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_nvm_info *nvm = &ctx->pending_nvm;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u", nvm->srev);
+}
+
+static void ixgbe_info_pending_orom_ver(struct ixgbe_adapter *adapter,
+					struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_orom_info *orom = &ctx->pending_orom;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_orom)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u.%u.%u",
+			 orom->major, orom->build, orom->patch);
+}
+
 static void ixgbe_info_orom_srev(struct ixgbe_adapter *adapter,
 				 struct ixgbe_info_ctx *ctx)
 {
@@ -129,6 +164,15 @@ static void ixgbe_info_orom_srev(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
 }
 
+static void ixgbe_info_pending_orom_srev(struct ixgbe_adapter *adapter,
+					 struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_orom_info *orom = &ctx->pending_orom;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_orom)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%u", orom->srev);
+}
+
 static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
 			       struct ixgbe_info_ctx *ctx)
 {
@@ -137,6 +181,16 @@ static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x", nvm->major, nvm->minor);
 }
 
+static void ixgbe_info_pending_nvm_ver(struct ixgbe_adapter *adapter,
+				       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_nvm_info *nvm = &ctx->pending_nvm;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_nvm)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%02x",
+			 nvm->major, nvm->minor);
+}
+
 static void ixgbe_info_netlist_ver(struct ixgbe_adapter *adapter,
 				   struct ixgbe_info_ctx *ctx)
 {
@@ -149,6 +203,19 @@ static void ixgbe_info_netlist_ver(struct ixgbe_adapter *adapter,
 		 netlist->rev, netlist->cust_ver);
 }
 
+static void ixgbe_info_pending_netlist_ver(struct ixgbe_adapter *adapter,
+					   struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_netlist_info *netlist = &ctx->pending_netlist;
+
+	/* The netlist version fields are BCD formatted */
+	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x-%x.%x.%x",
+			 netlist->major, netlist->minor,
+			 netlist->type >> 16, netlist->type & 0xFFFF,
+			 netlist->rev, netlist->cust_ver);
+}
+
 static void ixgbe_info_netlist_build(struct ixgbe_adapter *adapter,
 				     struct ixgbe_info_ctx *ctx)
 {
@@ -157,6 +224,50 @@ static void ixgbe_info_netlist_build(struct ixgbe_adapter *adapter,
 	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
 }
 
+static void ixgbe_info_pending_netlist_build(struct ixgbe_adapter *adapter,
+					     struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_netlist_info *netlist = &ctx->pending_netlist;
+
+	if (ctx->dev_caps.common_cap.nvm_update_pending_netlist)
+		snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", netlist->hash);
+}
+
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
@@ -203,6 +314,67 @@ static int ixgbe_devlink_info_get_E610(struct ixgbe_adapter *adapter,
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
+	ixgbe_info_pending_fw_srev(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     "fw.mgmt.srev", ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_pending_eetrack(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
+				     ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_pending_nvm_ver(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     "fw.psid.api", ctx->buf);
+	if (err)
+		return err;
+
+no_nvm:
+	if (!ctx->dev_caps.common_cap.nvm_update_pending_orom)
+		goto no_orom;
+
+	ixgbe_info_pending_orom_ver(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
+				     ctx->buf);
+	if (err)
+		return err;
+
+	ixgbe_info_pending_orom_srev(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     "fw.undi.srev", ctx->buf);
+no_orom:
+	if (err || !ctx->dev_caps.common_cap.nvm_update_pending_netlist)
+		return err;
+
+	ixgbe_info_pending_netlist_ver(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     "fw.netlist", ctx->buf);
+
+	if (err)
+		return err;
+
+	ixgbe_info_pending_netlist_build(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_STORED,
+				     "fw.netlist.build", ctx->buf);
+
+	return err;
+}
+
 static int ixgbe_devlink_info_get(struct devlink *devlink,
 				  struct devlink_info_req *req,
 				  struct netlink_ext_ack *extack)
@@ -244,7 +416,15 @@ static int ixgbe_devlink_info_get(struct devlink *devlink,
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
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index da20071eb938..b08590d05a1a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -588,6 +588,15 @@ static bool ixgbe_parse_e610_caps(struct ixgbe_hw *hw,
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
@@ -2929,6 +2938,23 @@ static int ixgbe_get_orom_ver_info(struct ixgbe_hw *hw,
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
@@ -2972,6 +2998,22 @@ static int ixgbe_get_nvm_ver_info(struct ixgbe_hw *hw,
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
@@ -3052,6 +3094,23 @@ static int ixgbe_get_netlist_info(struct ixgbe_hw *hw,
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

