Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBDBA881A4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1643611F6;
	Mon, 14 Apr 2025 13:19:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id akuw4Pq2JZgV; Mon, 14 Apr 2025 13:19:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70F596071F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744636796;
	bh=7oNXwqfgYIemmOgae8v20TxWABLeQf76Dp7epbB/X78=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2tkFsKFHxOI4+y6WR5S1KymSNwkuZX7cdfVaNXnbmK/1CURhSvSEvng453GSCJpsj
	 FFRGsUswuNKj0t++anyOsLxnk2XOIviFrxNM7gRACC8wi5/TTjWfrvR0a/FEX3C511
	 3h6ER9qbfiDBdUV9DnwRnQOaxjmu02rz2lu6nSTOxKfBALAd2cFWroaUQt24KSuIHF
	 8dv0hqE6idQMUYgj5IM9tTyLfvKL8pdZbZW+/ICwuvuhTgkGmnf43M7GmRckjXLy2j
	 KvPAdO+MJ2D0hRuNTTQoo9O85J1vXTlVq2gCj+3AzBe3K0vUPPOBZuLzwwuC160Zeo
	 XBRDHE3t2myNQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70F596071F;
	Mon, 14 Apr 2025 13:19:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B1C65250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:19:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 97735817F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:19:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mB9SLg3inZ_l for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:19:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 624E281491
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 624E281491
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 624E281491
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:19:53 +0000 (UTC)
X-CSE-ConnectionGUID: TstPF0IHQuuPKPW/P8/97Q==
X-CSE-MsgGUID: vFZwF5azSwSc8WfrB02h8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="68594777"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="68594777"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:19:52 -0700
X-CSE-ConnectionGUID: NkKCUYg0T1eLwvf/UXpbNg==
X-CSE-MsgGUID: z6/5z8B+R9artRd/7I7BQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="130140515"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa008.fm.intel.com with ESMTP; 14 Apr 2025 06:19:48 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id D9E0032CB0;
 Mon, 14 Apr 2025 14:19:46 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 14 Apr 2025 15:12:41 +0200
Message-Id: <20250414131241.122855-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744636793; x=1776172793;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hjn39AG/I7dihpzS3bivPZpwz9rCyoJkkbzTr2kbI/A=;
 b=asa+UNFHZWuPJnIcgBS2ZmXR7dUQmQ/vYkDbqxDzXHaREtqyaDcur+nm
 1AOGYaPrwTOJt17zTZ8JVyGfEtEko4uQQPxtIwfNOP7VqmxdZ6ZgWlhqk
 DZG90aHZjmZgxbPkJw/TTvyiGyMFsedAxAS0sA4e0a29hznTeBMjvHJmi
 EB6TJlNYl3Ty6UACWdrrg/MDl6YK5PAWu11idI1lGhMKzLZkH6tRt3utC
 /4Kf81/qxkKJCFNjHKt67wBihamP5SZILoAI1XQJO8LyE9l4BhJyOHr2T
 nj+hh1l2sqZexzSKb6g+pkr5+F/ZHo3zj0MYJHyhIFc1kOYa5NcYvs/Ym
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=asa+UNFH
Subject: [Intel-wired-lan] [PATCH iwl-net v4] ice: use DSN instead of PCI
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
 Michal Kubiak <michal.kubiak@intel.com>, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Use Device Serial Number instead of PCI bus/device/function for
the index of struct ice_adapter.

Functions on the same physical device should point to the very same
ice_adapter instance, but with two PFs, when at least one of them is
PCI-e passed-through to a VM, it is no longer the case - PFs will get
seemingly random PCI BDF values, and thus indices, what finally leds to
each of them being on their own instance of ice_adapter. That causes them
to don't attempt any synchronization of the PTP HW clock usage, or any
other future resources.

DSN works nicely in place of the index, as it is "immutable" in terms of
virtualization.

Fixes: 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs on the same NIC")
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
CC: Simon Horman <horms@kernel.org>

v4:
 - Add fixes tag for real... (Simon)
 - extend commit message (Simon)
 - pass dsn to ice_adapter_new() to have simpler code
   (I happened to do that as (local) followup) (me)

v3:
https://lore.kernel.org/intel-wired-lan/20250408134655.4287-1-przemyslaw.kitszel@intel.com/
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
 drivers/net/ethernet/intel/ice/ice_adapter.c | 47 ++++++++------------
 2 files changed, 22 insertions(+), 31 deletions(-)

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
index 01a08cfd0090..66e070095d1b 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: Copyright Red Hat
 
-#include <linux/bitfield.h>
 #include <linux/cleanup.h>
 #include <linux/mutex.h>
 #include <linux/pci.h>
@@ -14,39 +13,24 @@
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
 
-static struct ice_adapter *ice_adapter_new(void)
+static struct ice_adapter *ice_adapter_new(u64 dsn)
 {
 	struct ice_adapter *adapter;
 
 	adapter = kzalloc(sizeof(*adapter), GFP_KERNEL);
 	if (!adapter)
 		return NULL;
 
+	adapter->device_serial_number = dsn;
 	spin_lock_init(&adapter->ptp_gltsyn_time_lock);
 	refcount_set(&adapter->refcount, 1);
 
@@ -77,23 +61,26 @@ static void ice_adapter_free(struct ice_adapter *adapter)
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
 
-		adapter = ice_adapter_new();
+		adapter = ice_adapter_new(dsn);
 		if (!adapter)
 			return ERR_PTR(-ENOMEM);
 		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
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

