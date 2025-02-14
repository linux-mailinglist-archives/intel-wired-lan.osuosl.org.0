Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C20A35F2F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2025 14:31:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C8CA6FC52;
	Fri, 14 Feb 2025 13:31:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pvhsI1BrI_8A; Fri, 14 Feb 2025 13:31:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD14D6FC22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739539864;
	bh=drwCnkFp0ktZa40wnKE4FdPPvEemPfROwyU0Kz9GAAI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=w4xqEuT1guzASzXowevmuEB4JIc5ogrQ5rzlQ2Ms6t22edEm64e05yUnfiqqxrSvz
	 LIxlXm4d+ZoVC4vys9czvVSMUr30C/gVGii7KzLU0bQGka5oZSq2KIy422cGsGlTur
	 AjzmObSzS7Ekedu6ifbexA6THHG/jzuHurjt4uG8B96GTViRFYP2vacBgQdJWeGztR
	 7WMRkl6AiWrrwVs3c5FAEkYXsHq8U2/gAHVKLqFFEVLDkyPFkUC1w8p/RaAjuCO8Ne
	 odB+D1R2C6jlID+6ph3Nv/fk+C5uZepyOdoesTHSI1Jt4B6nRJZ4Zv54jFr4IEJ/rF
	 FaxdjSObhn1fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD14D6FC22;
	Fri, 14 Feb 2025 13:31:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 90F8B1C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 75E118209E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:31:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uJ8UX8kdGqOM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2025 13:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AF5F381D02
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF5F381D02
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AF5F381D02
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2025 13:31:00 +0000 (UTC)
X-CSE-ConnectionGUID: phlPMCzSQ+qpy+eIzz5wbQ==
X-CSE-MsgGUID: ggIpuuGKTZKPd8LUjUAXkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40159403"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40159403"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 05:31:00 -0800
X-CSE-ConnectionGUID: 5Je35n+pS+yRL0Ste52lFw==
X-CSE-MsgGUID: lq9+u30dSliQUV7YpW/kjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="114094381"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa009.fm.intel.com with ESMTP; 14 Feb 2025 05:30:58 -0800
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 mailto:przemyslaw.kitszel@intel.com, jiri@nvidia.com, horms@kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Fri, 14 Feb 2025 14:16:44 +0100
Message-Id: <20250214131646.118437-14-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250214131646.118437-1-jedrzej.jagielski@intel.com>
References: <20250214131646.118437-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739539860; x=1771075860;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zzx0pHd2mqiGtBPXeWC0ynQ7imEjMheCXDWHvCEPvc8=;
 b=dfZ63Nw4wXszMcDKSMoSC3tn11LUnD2UI1w62Gf7L9Kvj1Px50ANKpTn
 DbK25FzQTpKzEA1HYHrg56HZ43b8daeNSBC7TJiKQGoMJlAcsfFpI3CM4
 yweuUmv6d/dpoOhsjzB0pkCiRP1pk2DBNpGn8JAGBlcMMoOQ1Xfs4pNRU
 pf43UyHZqeeCSwiSe//f0DY18MJ/Dp9ICEhrJDf7sZMMtCPad2NG8jzz7
 1HxrbHfy9OEVnKgY2r1bwXLpMJfgmY6Q2zb9EMueklB3741QyRK4Q63+v
 0ltW6heBYFyiIZigDdztsP2yLdd8fkTug+Ixp5+4TkmxJnzkUseFQ4tjM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dfZ63Nw4
Subject: [Intel-wired-lan] [PATCH iwl-next v4 13/15] ixgbe: add FW API
 version check
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

Add E610 specific function checking whether the FW API version
is compatible with the driver expectations.

The major API version should be less than or equal to the expected
API version. If not the driver won't be fully operational.

Check the minor version, and if it is more than two versions lesser
or greater than the expected version, print a message indicating
that the NVM or driver should be updated respectively.

Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Co-developed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 31 +++++++++++++++++++
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  4 +++
 4 files changed, 38 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 6eb47d60920e..f0c7644eda43 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -485,6 +485,8 @@ static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 
 	*actions_performed = BIT(DEVLINK_RELOAD_ACTION_FW_ACTIVATE);
 
+	adapter->flags2 &= ~IXGBE_FLAG2_API_MISMATCH;
+
 	return 0;
 }
 
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 83d4d7368cda..2246997bc9fb 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -671,6 +671,7 @@ struct ixgbe_adapter {
 #define IXGBE_FLAG2_PHY_FW_LOAD_FAILED		BIT(20)
 #define IXGBE_FLAG2_NO_MEDIA			BIT(21)
 #define IXGBE_FLAG2_MOD_POWER_UNSUPPORTED	BIT(22)
+#define IXGBE_FLAG2_API_MISMATCH		BIT(23)
 
 	/* Tx fast path data */
 	int num_tx_queues;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index e52b3cd1ddb9..c145f12fe68e 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8361,6 +8361,31 @@ static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
 	rtnl_unlock();
 }
 
+static int ixgbe_check_fw_api_mismatch(struct ixgbe_adapter *adapter)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		return 0;
+
+	if (hw->api_maj_ver > IXGBE_FW_API_VER_MAJOR) {
+		e_dev_err("The driver for the device stopped because the NVM image is newer than expected. You must install the most recent version of the network driver.\n");
+
+		adapter->flags2 |= IXGBE_FLAG2_API_MISMATCH;
+		return -EOPNOTSUPP;
+	} else if (hw->api_maj_ver == IXGBE_FW_API_VER_MAJOR &&
+		   hw->api_min_ver > IXGBE_FW_API_VER_MINOR + IXGBE_FW_API_VER_DIFF_ALLOWED) {
+		e_dev_info("The driver for the device detected a newer version of the NVM image than expected. Please install the most recent version of the network driver.\n");
+		adapter->flags2 |= IXGBE_FLAG2_API_MISMATCH;
+	} else if (hw->api_maj_ver < IXGBE_FW_API_VER_MAJOR ||
+		   hw->api_min_ver < IXGBE_FW_API_VER_MINOR - IXGBE_FW_API_VER_DIFF_ALLOWED) {
+		e_dev_info("The driver for the device detected an older version of the NVM image than expected. Please update the NVM image.\n");
+		adapter->flags2 |= IXGBE_FLAG2_API_MISMATCH;
+	}
+
+	return 0;
+}
+
 /**
  * ixgbe_check_fw_error - Check firmware for errors
  * @adapter: the adapter private structure
@@ -8371,6 +8396,7 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 fwsm;
+	int err;
 
 	/* read fwsm.ext_err_ind register and log errors */
 	fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM(hw));
@@ -8385,6 +8411,11 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
 		e_dev_err("Firmware recovery mode detected. Limiting functionality. Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
 		return true;
 	}
+	if (!(adapter->flags2 & IXGBE_FLAG2_API_MISMATCH)) {
+		err = ixgbe_check_fw_api_mismatch(adapter);
+		if (err)
+			return true;
+	}
 
 	return false;
 }
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 93d854b8a92e..4d591019dd07 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -112,6 +112,10 @@
 #define IXGBE_PF_HICR_SV			BIT(2)
 #define IXGBE_PF_HICR_EV			BIT(3)
 
+#define IXGBE_FW_API_VER_MAJOR		0x01
+#define IXGBE_FW_API_VER_MINOR		0x07
+#define IXGBE_FW_API_VER_DIFF_ALLOWED	0x02
+
 #define IXGBE_ACI_DESC_SIZE		32
 #define IXGBE_ACI_DESC_SIZE_IN_DWORDS	(IXGBE_ACI_DESC_SIZE / BYTES_PER_DWORD)
 
-- 
2.31.1

