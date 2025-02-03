Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6832BA25E42
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Feb 2025 16:17:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D079060EC5;
	Mon,  3 Feb 2025 15:17:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PtF4Ie1GW-G2; Mon,  3 Feb 2025 15:17:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C7DCB60ECD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738595840;
	bh=Wx3zY4QqZNlldyzRWrMzJH5zTCjOmX8fOHP9d96lVBU=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qVYF6Vz7dIeAtCyVNFDu+TXVccdKDkxkwUVjYBACSZguHhzGSdTJCv2BafV1HSeC+
	 cBlAXfOJ6MH16E4+eqYUjIjFdAEpeTAT7eCGu3H8TdU6CHi3RrxkzR8X6YX+LUb9kp
	 MGmQRFqmKHTybmR+q287DH1emWsD351r2EJbP55oZt0YCqNJLGFvjYAb91dYKszkf6
	 lEyIpf5VmmFlzzGoOooCXHxICBEdYtusp9tAR8vfqqy1GtpVPC7jHThrgRgtDDmf1U
	 Mvwp2kpneGT0qQy6cqo2lnWWbdxiqsydPkXqmrKp37UEdar76NdrGe4RmIpO7bNGEq
	 IYK4ErSfTGP1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7DCB60ECD;
	Mon,  3 Feb 2025 15:17:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3832E185
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26F2C408E8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DmDdEio-Gtf9 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Feb 2025 15:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB13E402E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB13E402E4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB13E402E4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Feb 2025 15:17:16 +0000 (UTC)
X-CSE-ConnectionGUID: z1Q78LZTRhSrXeoluWmmuA==
X-CSE-MsgGUID: fPZesvRWR8GD71uXtUBuEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="56519793"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="56519793"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 07:17:17 -0800
X-CSE-ConnectionGUID: N/XQyaqwSTWGYC7fuHrtZw==
X-CSE-MsgGUID: Z683wOl7TfSGGt8BpZHMxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="110886221"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa009.fm.intel.com with ESMTP; 03 Feb 2025 07:17:15 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Mon,  3 Feb 2025 16:03:17 +0100
Message-Id: <20250203150328.4095-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738595837; x=1770131837;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PjEYdVntV9NCqg/kqcEknuh+C/UeX/7NBgUPytEL7TU=;
 b=C5bpDJlWtBrMOjdNP2vt4JJeZwYLnGnqw+mhcHTyEVsGF1nRVQGUATTg
 +770IokAJkyXIw5Fib2/BwF9znYIdirGvKtsJeUyLsS7+qOdM/mPm0zo1
 Pus3vaq9NSXRAuvScycY2VYL8SBJSgg5j+PGN9ekMPzErpeoRa4QS0InA
 iTpW0+lbIm1PbhGLCQ0YfWnN/GkbkHKGnMQUTn5t2dewXF3ZlK23pID6M
 GKSsmv8C1rTIyR5/4X/xHmQRwTVd0Pe1rgIgZFhsziNq0vv4DLqLi9OsF
 GJrscKV5IVRQavTstlLLFIEjo4TTupfhOXfPWN9auWeX5+fLgKFYaev09
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C5bpDJlW
Subject: [Intel-wired-lan] [PATCH iwl-next v1 02/13] ixgbe: add handler for
 devlink .info_get()
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

Provide devlink .info_get() callback implementation to allow the
driver to report detailed version information. The following info
is reported:

 "serial_number" -> The PCI DSN of the adapter
 "fw.bundle_id" -> Unique identifier for the combined flash image
 "fw.undi" -> Version of the Option ROM containing the UEFI driver
 "board.id" -> The PBA ID string

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 Documentation/networking/devlink/ixgbe.rst    |  32 +++++
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 119 ++++++++++++++++++
 2 files changed, 151 insertions(+)

diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
index ca920d421d42..5f521f036b0f 100644
--- a/Documentation/networking/devlink/ixgbe.rst
+++ b/Documentation/networking/devlink/ixgbe.rst
@@ -6,3 +6,35 @@ ixgbe devlink support
 
 This document describes the devlink features implemented by the ``ixgbe``
 device driver.
+
+Info versions
+=============
+
+The ``ixgbe`` driver reports the following versions
+
+.. list-table:: devlink info versions implemented
+    :widths: 5 5 5 90
+
+    * - Name
+      - Type
+      - Example
+      - Description
+    * - ``board.id``
+      - fixed
+      - H49289-000
+      - The Product Board Assembly (PBA) identifier of the board.
+    * - ``fw.undi``
+      - running
+      - 1.1937.0
+      - Version of the Option ROM containing the UEFI driver. The version is
+        reported in ``major.minor.patch`` format. The major version is
+        incremented whenever a major breaking change occurs, or when the
+        minor version would overflow. The minor version is incremented for
+        non-breaking changes and reset to 1 when the major version is
+        incremented. The patch version is normally 0 but is incremented when
+        a fix is delivered as a patch against an older base Option ROM.
+    * - ``fw.bundle_id``
+      - running
+      - 0x80000d0d
+      - Unique identifier of the firmware image file that was loaded onto
+        the device. Also referred to as the EETRACK identifier of the NVM.
diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 9e494cdbb4b1..d99a209e2541 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -4,7 +4,126 @@
 #include "ixgbe.h"
 #include "devlink.h"
 
+struct ixgbe_info_ctx {
+	char buf[128];
+};
+
+enum ixgbe_devlink_version_type {
+	IXGBE_DL_VERSION_FIXED,
+	IXGBE_DL_VERSION_RUNNING,
+};
+
+static int ixgbe_devlink_info_put(struct devlink_info_req *req,
+				  enum ixgbe_devlink_version_type type,
+				  const char *key, const char *value)
+{
+	if (!*value)
+		return 0;
+
+	switch (type) {
+	case IXGBE_DL_VERSION_FIXED:
+		return devlink_info_version_fixed_put(req, key, value);
+	case IXGBE_DL_VERSION_RUNNING:
+		return devlink_info_version_running_put(req, key, value);
+	}
+
+	return 0;
+}
+
+static void ixgbe_info_get_dsn(struct ixgbe_adapter *adapter,
+			       struct ixgbe_info_ctx *ctx)
+{
+	u8 dsn[8];
+
+	/* Copy the DSN into an array in Big Endian format */
+	put_unaligned_be64(pci_get_dsn(adapter->pdev), dsn);
+
+	snprintf(ctx->buf, sizeof(ctx->buf), "%8phD", dsn);
+}
+
+static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
+			       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_nvm_version nvm_ver;
+
+	ixgbe_get_oem_prod_version(hw, &nvm_ver);
+	if (nvm_ver.oem_valid) {
+		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x",
+			 nvm_ver.oem_major, nvm_ver.oem_minor,
+			 nvm_ver.oem_release);
+
+		return;
+	}
+
+	ixgbe_get_orom_version(hw, &nvm_ver);
+	if (nvm_ver.or_valid)
+		snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
+			 nvm_ver.or_major, nvm_ver.or_build, nvm_ver.or_patch);
+}
+
+static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
+			       struct ixgbe_info_ctx *ctx)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_nvm_version nvm_ver;
+
+	ixgbe_get_oem_prod_version(hw, &nvm_ver);
+	/* No ETRACK version for OEM */
+	if (nvm_ver.oem_valid)
+		return;
+
+	ixgbe_get_etk_id(hw, &nvm_ver);
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
+}
+
+static int ixgbe_devlink_info_get(struct devlink *devlink,
+				  struct devlink_info_req *req,
+				  struct netlink_ext_ack *extack)
+{
+	struct ixgbe_devlink_priv *devlink_private = devlink_priv(devlink);
+	struct ixgbe_adapter *adapter = devlink_private->adapter;
+	struct ixgbe_hw *hw = &adapter->hw;
+	struct ixgbe_info_ctx *ctx;
+	int err;
+
+	ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	ixgbe_info_get_dsn(adapter, ctx);
+	err = devlink_info_serial_number_put(req, ctx->buf);
+	if (err)
+		goto free_ctx;
+
+	ixgbe_info_nvm_ver(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
+				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
+				     ctx->buf);
+	if (err)
+		goto free_ctx;
+
+	ixgbe_info_eetrack(adapter, ctx);
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
+				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
+				     ctx->buf);
+	if (err)
+		goto free_ctx;
+
+	err = ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
+	if (err)
+		goto free_ctx;
+
+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_FIXED,
+				     DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
+				     ctx->buf);
+free_ctx:
+	kfree(ctx);
+	return err;
+}
+
 static const struct devlink_ops ixgbe_devlink_ops = {
+	.info_get = ixgbe_devlink_info_get,
 };
 
 /**
-- 
2.31.1

