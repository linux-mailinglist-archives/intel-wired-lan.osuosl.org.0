Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EF3A5DD97
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 14:13:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56ACF82B84;
	Wed, 12 Mar 2025 13:13:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PTROZz3DKXFU; Wed, 12 Mar 2025 13:13:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52F6482ACA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741785214;
	bh=6U3GdQUyfxnVqDEoMAe0FeMENoEaUh94fnvx0s5BfA8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=afeXnmFen6mHPhKfq4/HrH8xVE5v9+qiTxGre408jwsHypsXMi90cOaiG5fphOz6J
	 DbkmQQhZPs69X6T1+ojOAp9OUoaEfjXChCBgzfMnqzaP+UARXX189ijXVlYVyChkeE
	 8vr9KcHvWCFdIBd+ePD7FNLFVYdjUKyMoPkfykj8jJwHMgyLtxtlaWa1xtRKITa3lA
	 s3yfXIEFsmLolA8lRiXPA55KztC5XgYkjsOzi9P9RyFPAfTZmHuwEhjW/6Ylg3biMh
	 QJLmw+zdSVzT9FXy/HomxoHkPFkk/0n92E5IS3XMq1Yqo4nbB1q5cphuFudZyU4MSs
	 V9cbo4Qr3vQJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 52F6482ACA;
	Wed, 12 Mar 2025 13:13:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DFE14943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C44CD6088F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XgHkS2dQz4Pr for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 13:13:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org F336160885
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F336160885
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F336160885
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 13:13:28 +0000 (UTC)
X-CSE-ConnectionGUID: zlBPR6bFSUKo02fKRkkNPw==
X-CSE-MsgGUID: A1cG0B25Qc2um05CvirCFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="53510748"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="53510748"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 06:13:29 -0700
X-CSE-ConnectionGUID: iiadsBg8T/mgD7jlYQMxmQ==
X-CSE-MsgGUID: LIYXY6LlRSSmUfXhjepVgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="121542218"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa008.jf.intel.com with ESMTP; 12 Mar 2025 06:13:27 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Date: Wed, 12 Mar 2025 13:58:41 +0100
Message-Id: <20250312125843.347191-14-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
References: <20250312125843.347191-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741785209; x=1773321209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f8y/rQZ4lb9rJA0scGNaVMp8V3mo2o89tiDVtfNV+BM=;
 b=HEYKqJiAYNw3Le67EgAZ7BDYLKtKAoT7MSlpwgHOhXHX4jiwxBjWuH8P
 sxrzWAuauo4uPOnW9Y8x7LLRlcEDCpG6UaXeyRzTFL2nKqIQZgOv5lX8q
 HKD1Wf/pFihCf4O58jMTT96zIWhd5BOHrkUMm2s5zXO4xZsMj1EO7G3Fe
 0pAOnJDRZ1FuTmoHqIKjTtKZG6+ZsZQ4Lgauyn8NEH6oz7wBJ2zPdv9TG
 X7f26f4YuoIJKNAOpZ23qBxsZXQqHNWrnKMu2bR3mAk9qGi1GEHhB87sD
 JqMBQSsoDaO4k9Og3HUv6r0Acd8fDAZFNujWEDQhuMNkBnczNlUXX2g26
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HEYKqJiA
Subject: [Intel-wired-lan] [PATCH iwl-next v7 13/15] ixgbe: add FW API
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
v5: add get_fw_ver
---
 .../ethernet/intel/ixgbe/devlink/devlink.c    |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 34 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  1 +
 .../ethernet/intel/ixgbe/ixgbe_type_e610.h    |  4 +++
 6 files changed, 43 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
index 391d53503627..87ec2dea5862 100644
--- a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c
@@ -499,6 +499,8 @@ static int ixgbe_devlink_reload_empr_finish(struct devlink *devlink,
 
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
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index e6b35792fdee..5aa66534aa75 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3877,6 +3877,7 @@ static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.led_off			= ixgbe_led_off_generic,
 	.init_led_link_act		= ixgbe_init_led_link_act_generic,
 	.reset_hw			= ixgbe_reset_hw_e610,
+	.get_fw_ver                     = ixgbe_aci_get_fw_ver,
 	.get_media_type			= ixgbe_get_media_type_e610,
 	.setup_link			= ixgbe_setup_link_e610,
 	.get_link_capabilities		= ixgbe_get_link_capabilities_e610,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 9892d3f41620..de74132f9001 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -8361,6 +8361,34 @@ static void ixgbe_reset_subtask(struct ixgbe_adapter *adapter)
 	rtnl_unlock();
 }
 
+static int ixgbe_check_fw_api_mismatch(struct ixgbe_adapter *adapter)
+{
+	struct ixgbe_hw *hw = &adapter->hw;
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		return 0;
+
+	if (hw->mac.ops.get_fw_ver && hw->mac.ops.get_fw_ver(hw))
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
@@ -8371,6 +8399,7 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	u32 fwsm;
+	int err;
 
 	/* read fwsm.ext_err_ind register and log errors */
 	fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM(hw));
@@ -8385,6 +8414,11 @@ static bool ixgbe_check_fw_error(struct ixgbe_adapter *adapter)
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
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 5f814f023573..6bf6ba7dcdcc 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -3456,6 +3456,7 @@ struct ixgbe_mac_operations {
 	int (*start_hw)(struct ixgbe_hw *);
 	int (*clear_hw_cntrs)(struct ixgbe_hw *);
 	enum ixgbe_media_type (*get_media_type)(struct ixgbe_hw *);
+	int (*get_fw_ver)(struct ixgbe_hw *hw);
 	int (*get_mac_addr)(struct ixgbe_hw *, u8 *);
 	int (*get_san_mac_addr)(struct ixgbe_hw *, u8 *);
 	int (*get_device_caps)(struct ixgbe_hw *, u16 *);
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

