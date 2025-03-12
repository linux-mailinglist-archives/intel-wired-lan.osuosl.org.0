Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F04DA5DD8A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6BD481F5C;
	Wed, 12 Mar 2025 13:13:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jSGD2msD4OW2; Wed, 12 Mar 2025 13:13:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3ED082A72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785191;
	bh=dgtINHnWY6WaF4XXYVK7MLkvKdelYlSVYlxomQ8CjW4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AUO0lo0Ri64stxtQCptfXSQf4mDsQQAqOmjqTv8njwkZwJAruveLwY5+7mKyafjoZ
	 5vRTJy6aBgPwtgtvHRIo1w0d83fhUxEQYS0snE+nPeVviyhfftCvo0iVFWdT8njObk
	 rdvLn6nelhBRW99JBt+fpJzh4unsQqs+lGXhziKII+N5Iw6dWvV0XG3yCc9DOaaaUB
	 /IMnTy28TksNpN5EJAzUZl8pY7p/JFMNbQWO96GO4G/fSyBXTbM0eMfArDsQu44aIu
	 bAlFpRPs/RPlKXiMcRzNFJ3o7Tq7mEZc3aUEz1AhAs6+zkmtoUuQwUV1oYqsFKWS/g
	 hgAluy5v2VEHQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3ED082A72;
	Wed, 12 Mar 2025 13:13:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1E1AE1C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0D9CF60852
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ya0pYLQL6KtW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:13:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2B4D660831
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B4D660831
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B4D660831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:04 +0000 (UTC)
X-CSE-ConnectionGUID: L/UC8DnJRfynyLaaa/rpsw==
X-CSE-MsgGUID: FWptcCxERoSDh+T9i2dKRw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510692"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510692"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:13:04 -0700
X-CSE-ConnectionGUID: 0fAnT2LVTQeJl91CfsdYeA==
X-CSE-MsgGUID: Q9AjzAPpQSGEW/4iMX4jNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542100"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:13:02 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Bharath R <bharath.r@intel.com>
Date: Wed, 12 Mar 2025 13:58:32 +0100
Message-Id: <20250312125843.347191-5-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785184; x=1773321184;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6TckskUXN22ptKu5MeLHPmiGy9F3LnqqcCysigeyfLQ=;
 b=VddpPQ4rtcnpnax7puf1z7hA8HMArOU3rNpl7pClK8eIbknESixVE+0c
 sDPaSILJP4Hyruju1Vq5Jz1/EyU1HX3mPaGOP+ZTSf3TfIK+/GuivPMSB
 8Gf3XH7teme/3A0uSVSJD0q4+47Dq+wA7IKLZYZol9iOdpRtYto+ZmkRD
 g2KhhP/Ku2JcAuA0uoAutTDsKr/E21DI9uAyI+l5ts1+oDPWb/fRLpCIR
 DmcoLZixkC2mUVR1L2NiVxGHrj7UqWH+8bUsf4zKgKttfPn+PzDCQxNgY
 i/cKCveTwfrJxMK5WtstQ/b07O4blqNApxROYChHZG1hEHVRIf9w7np5O
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VddpPQ4r
Subject: [Intel-wired-lan] [PATCH iwl-next v7 04/15] ixgbe: add handler for
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
Tested-by: Bharath R <bharath.r@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: zero the ctx buff when chance it won't be filled out
v4: use devlink_priv()
v6: fix devlink_*_put() labels
---
 Documentation/networking/devlink/ixgbe.rst    |  32 ++++++
 .../ethernet/intel/ixgbe/devlink/devlink.c    | 101 ++++++++++++++++++
 2 files changed, 133 insertions(+)

diff --git a/Documentation/networking/devlink/ixgbe.rst b/Documentation/networking/devlink/ixgbe.rst
index c04ac51c6d85..b63645de37e8 100644
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
index 6c3452cf5d7d..d91252da4a61 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -4,7 +4,108 @@
 #include "ixgbe.h"
 #include "devlink.h"
 
+struct ixgbe_info_ctx {
+	char buf[128];
+};
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
+	ctx->buf[0] = '\0';
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
+
+	/* No ETRACK version for OEM */
+	if (nvm_ver.oem_valid) {
+		ctx->buf[0] = '\0';
+		return;
+	}
+
+	ixgbe_get_etk_id(hw, &nvm_ver);
+	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
+}
+
+static int ixgbe_devlink_info_get(struct devlink *devlink,
+				  struct devlink_info_req *req,
+				  struct netlink_ext_ack *extack)
+{
+	struct ixgbe_adapter *adapter = devlink_priv(devlink);
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
+	err = ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
+	if (err)
+		goto free_ctx;
+
+	err = devlink_info_version_fixed_put(req,
+					DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
+					ctx->buf);
+	if (err)
+		goto free_ctx;
+
+	ixgbe_info_nvm_ver(adapter, ctx);
+	err = devlink_info_version_running_put(req,
+					DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
+					ctx->buf);
+	if (err)
+		goto free_ctx;
+
+	ixgbe_info_eetrack(adapter, ctx);
+	err = devlink_info_version_running_put(req,
+					DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
+					ctx->buf);
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

