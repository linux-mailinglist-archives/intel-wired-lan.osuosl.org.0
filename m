Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 968EDB0D7C8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Jul 2025 13:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D7AD484B82;
	Tue, 22 Jul 2025 11:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AYqaSdVNJsXQ; Tue, 22 Jul 2025 11:07:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B72384B98
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753182448;
	bh=zKtipRhifIxIN/ER2EzVrGWq6CPza/0E8VJc8DNhqk8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CPSAOgQ9IXHYJ9BsCXyh7HcaoelXtbgz9+hMT0a0T1y1gQrFtRYLkUWXQtsFjblpn
	 G9rf1GB+ikeVPrPoZKqwA9M8IVrY+3fY6lbXz9TboxcF+P8XARI8BCYVlrtsmHaD3R
	 C7DBr36m9DFwlFWfEWfjy+FWb3psE8EG3Ccho9Iy7gPcQfWd+t+dX1JmjNvnWQxLhg
	 sVS5Ye8mxtbdFVYPYQHe2Bv0ChWyZiaxZPqkQjm0JlKTxHRcv+EP6SPah+fmVuPhv4
	 ksWlANopzWWsa3SVKjZcO6Om+KwuUrj6c0uDQeZg2hUw5arq/B3BMNFlgOnyT0mY7C
	 cbKgWgCICX2Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B72384B98;
	Tue, 22 Jul 2025 11:07:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id B9B37E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AB7EF84B96
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jlOA6k3fnYD9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Jul 2025 11:07:25 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4032584B90
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4032584B90
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4032584B90
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Jul 2025 11:07:23 +0000 (UTC)
X-CSE-ConnectionGUID: NW7a0clmTPCE58ZQNMti+w==
X-CSE-MsgGUID: NZxUCYtJS/iKbNzUrEzwzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11499"; a="59083634"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="59083634"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 04:07:23 -0700
X-CSE-ConnectionGUID: njXx6WWRRc6yNB+JcETNxA==
X-CSE-MsgGUID: 7I2CUmC+Tdej9xVbpfr6QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="163154019"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa003.fm.intel.com with ESMTP; 22 Jul 2025 04:07:21 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 dawid.osuchowski@linux.intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 22 Jul 2025 12:46:00 +0200
Message-ID: <20250722104600.10141-16-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
References: <20250722104600.10141-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753182443; x=1784718443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mJSKxGHSwDt5WJCN/LBGNsdRuzVdGiF82AnwzqfK8jE=;
 b=MyYVtoalDaSa3CkWy+/hwfjwsMf0uDqsER+6ciRORwhbIHYZ7O2gjfpp
 uWTP0LaNh22m+VXti/vByUuhFayikgqklP7EVtFGGuA7wG9ISo0hqpvl4
 ea3wXwsGR9sXqZtSfOsF36dc53voGIgwJIIGm/85lEoP+UzoCF1iAOt7m
 iZp/ujw7+f0jn41ySMy2fxpei6YOxlnZEbxkSD5KNg7x/99lTIkl9u/sB
 S0Hw6wwoxBeuJYdjEABOQSInOVC8sJ6qQwH00I61vK9C8+IvtbYDlEEcq
 5iBt8bj8XmKuLXEI48FZnHWJnpsw5QxowtjGNz16xyx6GZlPRRgHQSnZy
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MyYVtoal
Subject: [Intel-wired-lan] [PATCH iwl-next v1 15/15] ixgbe: fwlog support
 for e610
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

The device support firmware logging feature. Use libie code to
initialize it and allow reading the logs using debugfs.

The commands are the same as in ice driver. Look at the description in
commit 96a9a9341cda ("ice: configure FW logging") for more info.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |  1 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 32 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |  2 ++
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 ++++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |  2 ++
 5 files changed, 47 insertions(+)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 09f0af386af1..a563a94e2780 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -146,6 +146,7 @@ config IXGBE
 	tristate "Intel(R) 10GbE PCI Express adapters support"
 	depends on PCI
 	depends on PTP_1588_CLOCK_OPTIONAL
+	select LIBIE_FWLOG
 	select MDIO
 	select NET_DEVLINK
 	select PLDMFW
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index b202639b92c7..6dd530a64bd6 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -3900,6 +3900,38 @@ static int ixgbe_read_pba_string_e610(struct ixgbe_hw *hw, u8 *pba_num,
 	return err;
 }
 
+static int __fwlog_send_cmd(void *priv, struct libie_aq_desc *desc, void *buf,
+			    u16 size)
+{
+	struct ixgbe_hw *hw = priv;
+
+	return ixgbe_aci_send_cmd(hw, desc, buf, size);
+}
+
+int ixgbe_fwlog_init(struct ixgbe_hw *hw)
+{
+	struct ixgbe_adapter *adapter = hw->back;
+	struct libie_fwlog_api api = {
+		.pdev = adapter->pdev,
+		.send_cmd = __fwlog_send_cmd,
+		.debugfs_root = adapter->ixgbe_dbg_adapter,
+		.priv = hw,
+	};
+
+	if (hw->mac.type != ixgbe_mac_e610)
+		return -EOPNOTSUPP;
+
+	return libie_fwlog_init(&hw->fwlog, &api);
+}
+
+void ixgbe_fwlog_deinit(struct ixgbe_hw *hw)
+{
+	if (hw->mac.type != ixgbe_mac_e610)
+		return;
+
+	libie_fwlog_deinit(&hw->fwlog);
+}
+
 static const struct ixgbe_mac_operations mac_ops_e610 = {
 	.init_hw			= ixgbe_init_hw_generic,
 	.start_hw			= ixgbe_start_hw_e610,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
index 782c489b0fa7..11916b979d28 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
@@ -96,5 +96,7 @@ int ixgbe_aci_update_nvm(struct ixgbe_hw *hw, u16 module_typeid,
 			 bool last_command, u8 command_flags);
 int ixgbe_nvm_write_activate(struct ixgbe_hw *hw, u16 cmd_flags,
 			     u8 *response_flags);
+int ixgbe_fwlog_init(struct ixgbe_hw *hw);
+void ixgbe_fwlog_deinit(struct ixgbe_hw *hw);
 
 #endif /* _IXGBE_E610_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 692b095b5c16..11d0f6f97b02 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -172,6 +172,7 @@ static int debug = -1;
 module_param(debug, int, 0);
 MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all)");
 
+MODULE_IMPORT_NS("LIBIE_FWLOG");
 MODULE_DESCRIPTION("Intel(R) 10 Gigabit PCI Express Network Driver");
 MODULE_LICENSE("GPL v2");
 
@@ -3361,6 +3362,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
 			e_crit(drv, "%s\n", ixgbe_overheat_msg);
 			ixgbe_down(adapter);
 			break;
+		case libie_aqc_opc_fw_logs_event:
+			libie_get_fwlog_data(&hw->fwlog, event.msg_buf,
+					     le16_to_cpu(event.desc.datalen));
+			break;
 		default:
 			e_warn(hw, "unknown FW async event captured\n");
 			break;
@@ -12011,6 +12016,10 @@ static int ixgbe_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	ixgbe_devlink_init_regions(adapter);
 	devl_register(adapter->devlink);
 	devl_unlock(adapter->devlink);
+
+	if (ixgbe_fwlog_init(hw))
+		e_dev_info("Firmware logging not supported\n");
+
 	return 0;
 
 err_netdev:
@@ -12068,6 +12077,7 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	devl_lock(adapter->devlink);
 	devl_unregister(adapter->devlink);
 	ixgbe_devlink_destroy_regions(adapter);
+	ixgbe_fwlog_deinit(&adapter->hw);
 	ixgbe_dbg_adapter_exit(adapter);
 
 	set_bit(__IXGBE_REMOVING, &adapter->state);
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
index 36577091cd9e..b1bfeb21537a 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
@@ -7,6 +7,7 @@
 #include <linux/types.h>
 #include <linux/mdio.h>
 #include <linux/netdevice.h>
+#include <linux/net/intel/libie/fwlog.h>
 #include "ixgbe_type_e610.h"
 
 /* Device IDs */
@@ -3752,6 +3753,7 @@ struct ixgbe_hw {
 	struct ixgbe_flash_info		flash;
 	struct ixgbe_hw_dev_caps	dev_caps;
 	struct ixgbe_hw_func_caps	func_caps;
+	struct libie_fwlog		fwlog;
 };
 
 struct ixgbe_info {
-- 
2.49.0

