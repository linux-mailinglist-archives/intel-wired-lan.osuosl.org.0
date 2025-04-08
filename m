Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1261DA80CF3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 15:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 20A2D60BE5;
	Tue,  8 Apr 2025 13:53:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rjkLYksUCbTQ; Tue,  8 Apr 2025 13:53:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3321B608A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744120425;
	bh=bG83gu3Y44itt8PJIbx7VKIcpmf1F/0hwdzXEtzV+sA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iq4/zOSbgfxg4fjdxBIW56NLyn3wHryjwMRXLc2Gh8L0bi2pGMq1Y8b7W+dsiSMYY
	 SSugtiE1Pdztw3VXXMqA0ZucjYlbdiGNR/s0kCmzTtsi1icR34zxOsMwTMMQ3KRZOb
	 ZIPaXCbHLAy5hIB3POxf2V7Ia4Abt8Kkd7Dssy/3RTlMZLUL/21tEAQu5guamTwXpi
	 LVbQAYSuT/2L/SW8sIjKGVbXhvyjr/JHi7+ovX31PZMWYFZS6aG4wwGWgDOM5RHYtH
	 SOJh4WcBHZZMjcUeTOwBkxZ2GX7XAYUCBitypLC8ZAiK2spMjDpiRrdRB4HzlJ6bDH
	 L9jTuYDp3ngXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3321B608A0;
	Tue,  8 Apr 2025 13:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DA6C4DA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:53:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C07E2405D0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:53:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nn6ZhXyZNxGJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 13:53:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CDEA940507
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CDEA940507
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CDEA940507
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 13:53:41 +0000 (UTC)
X-CSE-ConnectionGUID: ZAAhVSgpRDuQQ6EPIoZ4pg==
X-CSE-MsgGUID: WUnzVQkVTImsDYaW8ZxzTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45688320"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="45688320"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 06:53:41 -0700
X-CSE-ConnectionGUID: ljPQh8IHTx6RKzXEqSY2HQ==
X-CSE-MsgGUID: TVwXtcvzRaeSMZGj47v8TA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128796695"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa007.jf.intel.com with ESMTP; 08 Apr 2025 06:53:37 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 958BA3432C;
 Tue,  8 Apr 2025 14:53:35 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue,  8 Apr 2025 15:46:55 +0200
Message-Id: <20250408134655.4287-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744120422; x=1775656422;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9kJQEmwg7BwiR45UOUurChqkBrRv10mRNt4JqfqNZyI=;
 b=UAKNwVwgWEzoetzJ55krm3llIpSkBTRcC8mOXcCQdJDABZj0RSEBWSWX
 26GenPJpo2MLca+eLKq+oG/ceoZQRhDz2kvXjUs9+MmOwt3RVwLupxxwM
 tY2JbgmP6p6D05VZeJp1cwXm33QZhaI7Yk1gTlYyFRWqVkOvrHs7bel8m
 cO0iAS6JNLlOzqMghBdTVqgq0iq8Aj1PFSv21YiM5m2gac9Yap2edyjsq
 IF/fLw+UHmtbnS05Eg+KhOs5o2MzKzyv4oGy47Z7lvbIANesHb9l33aq2
 wHaQ8ulhbjIi/a/lNZj4sY7wY9XlCzWm4bbr8NRtMclZFP27MGfexbLvT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UAKNwVwg
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: use DSN instead of PCI
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
 Michal Kubiak <michal.kubiak@intel.com>,
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
CC: Michal Kubiak <michal.kubiak@intel.com>

v3:
 - Add fixes tag (Michal K)
 - add missing braces (lkp bot), turns out it's hard to purge C++ from your mind
 - (no changes in the collision handling on 32bit systems)

v2:
https://lore.kernel.org/intel-wired-lan/20250407112005.85468-1-przemyslaw.kitszel@intel.com/
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
index 01a08cfd0090..95a1ba04e610 100644
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
+	return (u32)dsn ^ (u32)(dsn >> 32);
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

