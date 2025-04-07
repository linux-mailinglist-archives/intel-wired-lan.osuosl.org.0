Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB275A7DC36
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 13:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DE3F6108D;
	Mon,  7 Apr 2025 11:27:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J1W97ZxK5jNN; Mon,  7 Apr 2025 11:27:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2D9761057
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744025226;
	bh=/XihxBWp2fZmIRm0vf/5b2FRwYXBayux8XswGH1AJCA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=WJdA6BvbNrLCe4aSlr/GI9aa2Msr1PdFWX5LAgKxmdfIFkewvtzAho7jtb0HWk+2Y
	 QQo2Xtbzf4JZ2WOE1zZ1E11om2GAE5zbtCqoFXZSN78TQsWDFXFo5W42NgzLDWfzIc
	 T+EYMagHG/4vjV1ymHFRNIjZ1v8c+wuFV+I2lwWrSRLckaVGPlPoXDshdPivjbqj6W
	 DqFAfSMRiKLrSeDAh/PflVJZOq3eEDVa0Tj2Ps1fkZUoj9xwu0mNiIHyzIvllkDWZL
	 aJ6ltOcKcGKrkx3ZJK+4JtZltYqMkEsjDM7R9ZT9Ceu4sDp1ijMLN3u27le7Xp9YCp
	 Q4Z27nMkkRDMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2D9761057;
	Mon,  7 Apr 2025 11:27:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2403EDA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 11:27:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0974540420
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 11:27:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nRlNEJfWbNqn for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 11:27:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1B4504023C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B4504023C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B4504023C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 11:27:02 +0000 (UTC)
X-CSE-ConnectionGUID: 9EQG6l6RTG6AlB02nGTz+g==
X-CSE-MsgGUID: BtdZBccrTu6REzDyDferSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49200611"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="49200611"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 04:27:02 -0700
X-CSE-ConnectionGUID: D1eJWYa4RUiqguvK/G0XuQ==
X-CSE-MsgGUID: 1nacUgGiQJaL8+mhdboF0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="132900395"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa004.jf.intel.com with ESMTP; 07 Apr 2025 04:26:59 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id F1C9133EBD;
 Mon,  7 Apr 2025 12:26:57 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon,  7 Apr 2025 13:20:05 +0200
Message-Id: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744025223; x=1775561223;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SUSl4c4Gl8Z51q9dI7XNp3Pt/ftgqXSIM2YqGVHgH+Y=;
 b=J4B+QEJz27w6dZHA/bR8ZIfoYzAN+CDcE2cxzJ2jrPilh2P6EQxn9FpR
 flKQ7TuyF8klRnWLlkiLdxwDZmO95af03nLOhHnVQ26WungKP2nOeiQxu
 zsLFO5Fn19NEiaCysOEV0lkKU0q4CQhSrCVkJ4Hof3H/Kyg5GDY3BvYpK
 UN9wXpWqHdi120eSUo44AWBLkSpfJh2DUSmfv8e7ZZI8AyLtBZzLFuO/G
 wCXRn/PrgW9C0TTDy1E3ULFwP28+m3OwWfndgi+MuQpl9weZ5lUKss7r1
 83h33TysVUoC4jFL9K/8e/2pRJZ/ikY1giL6a9zPbVJDlKeYmFlLI5717
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J4B+QEJz
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: use DSN instead of PCI
 BDF for ice_adapter index
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
Cc: Jiri Pirko <jiri@resnulli.us>,
 Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use Device Serial Number instead of PCI bus/device/function for
index of struct ice_adapter.
Functions on the same physical device should point to the very same
ice_adapter instance.

This is not only simplification, but also fixes things up when PF
is passed to VM (and thus has a random BDF).

Suggested-by: Jacob Keller <jacob.e.keller@intel.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Suggested-by: Jiri Pirko <jiri@resnulli.us>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
CC: Karol Kolacinski <karol.kolacinski@intel.com>
CC: Grzegorz Nitka <grzegorz.nitka@intel.com>
CC: Michal Schmidt <mschmidt@redhat.com>
CC: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

v2:
 - target to -net (Jiri)
 - mix both halves of u64 DSN on 32bit systems (Jiri)
 - (no changes in terms of fallbacks for pre-prod HW)
 - warn when there is DSN collision after reducing to 32bit

v1:
https://lore.kernel.org/netdev/20250306211159.3697-2-przemyslaw.kitszel@intel.com
---
 drivers/net/ethernet/intel/ice/ice_adapter.h |  6 ++-
 drivers/net/ethernet/intel/ice/ice_adapter.c | 43 ++++++++------------
 2 files changed, 20 insertions(+), 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index e233225848b3..ac15c0d2bc1a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -32,17 +32,19 @@ struct ice_port_list {
  * @refcount: Reference count. struct ice_pf objects hold the references.
  * @ctrl_pf: Control PF of the adapter
  * @ports: Ports list
+ * @device_serial_number: DSN cached for collision detection on 32bit systems
  */
 struct ice_adapter {
 	refcount_t refcount;
 	/* For access to the GLTSYN_TIME register */
 	spinlock_t ptp_gltsyn_time_lock;
 
 	struct ice_pf *ctrl_pf;
 	struct ice_port_list ports;
+	u64 device_serial_number;
 };
 
-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
-void ice_adapter_put(const struct pci_dev *pdev);
+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
+void ice_adapter_put(struct pci_dev *pdev);
 
 #endif /* _ICE_ADAPTER_H */
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index 01a08cfd0090..3df3fa6d5129 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: Copyright Red Hat
 
-#include <linux/bitfield.h>
 #include <linux/cleanup.h>
 #include <linux/mutex.h>
 #include <linux/pci.h>
@@ -14,29 +13,13 @@
 static DEFINE_XARRAY(ice_adapters);
 static DEFINE_MUTEX(ice_adapters_mutex);
 
-/* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
-#define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
-#define INDEX_FIELD_DEV    GENMASK(31, 16)
-#define INDEX_FIELD_BUS    GENMASK(12, 5)
-#define INDEX_FIELD_SLOT   GENMASK(4, 0)
-
-static unsigned long ice_adapter_index(const struct pci_dev *pdev)
+static unsigned long ice_adapter_index(u64 dsn)
 {
-	unsigned int domain = pci_domain_nr(pdev->bus);
-
-	WARN_ON(domain > FIELD_MAX(INDEX_FIELD_DOMAIN));
-
-	switch (pdev->device) {
-	case ICE_DEV_ID_E825C_BACKPLANE:
-	case ICE_DEV_ID_E825C_QSFP:
-	case ICE_DEV_ID_E825C_SFP:
-	case ICE_DEV_ID_E825C_SGMII:
-		return FIELD_PREP(INDEX_FIELD_DEV, pdev->device);
-	default:
-		return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
-		       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
-		       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
-	}
+#if BITS_PER_LONG == 64
+	return dsn;
+#else
+	return (u32)dsn ^ u32(dsn >> 32);
+#endif
 }
 
 static struct ice_adapter *ice_adapter_new(void)
@@ -77,25 +60,29 @@ static void ice_adapter_free(struct ice_adapter *adapter)
  * Return:  Pointer to ice_adapter on success.
  *          ERR_PTR() on error. -ENOMEM is the only possible error.
  */
-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
 {
-	unsigned long index = ice_adapter_index(pdev);
+	u64 dsn = pci_get_dsn(pdev);
 	struct ice_adapter *adapter;
+	unsigned long index;
 	int err;
 
+	index = ice_adapter_index(dsn);
 	scoped_guard(mutex, &ice_adapters_mutex) {
 		err = xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
 		if (err == -EBUSY) {
 			adapter = xa_load(&ice_adapters, index);
 			refcount_inc(&adapter->refcount);
+			WARN_ON_ONCE(adapter->device_serial_number != dsn);
 			return adapter;
 		}
 		if (err)
 			return ERR_PTR(err);
 
 		adapter = ice_adapter_new();
 		if (!adapter)
 			return ERR_PTR(-ENOMEM);
+		adapter->device_serial_number = dsn;
 		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
 	}
 	return adapter;
@@ -110,11 +97,13 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
  *
  * Context: Process, may sleep.
  */
-void ice_adapter_put(const struct pci_dev *pdev)
+void ice_adapter_put(struct pci_dev *pdev)
 {
-	unsigned long index = ice_adapter_index(pdev);
+	u64 dsn = pci_get_dsn(pdev);
 	struct ice_adapter *adapter;
+	unsigned long index;
 
+	index = ice_adapter_index(dsn);
 	scoped_guard(mutex, &ice_adapters_mutex) {
 		adapter = xa_load(&ice_adapters, index);
 		if (WARN_ON(!adapter))
-- 
2.39.3

