Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC4290AF25
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 15:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43ADA404D2;
	Mon, 17 Jun 2024 13:25:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L3vjvNxtcyW4; Mon, 17 Jun 2024 13:25:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BA574068E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718630724;
	bh=DhNQ3annnyWc16wDtwAU8ify5mRgNGXtmslJ03y18Gg=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gXIuz2xASiEHjd3b8pX5I/CFLz81CPRAaj83NC48FqIDzbKPEBk4gTWHAeKqmtYPj
	 2UMYqz8EiLkMHg2AhGaA47Y5Nz9dyAtF/K21JH8M4XavjR6R4w3jrycl9M7IX3p8NE
	 wp4eAi9D9ON69QobLeVh42o9d1/bP9p03E0JM7uj4gCXe7H6U3ziLAuPbcVzopRS1/
	 LmBNIYSKhkWnFvAFf6XuOwy+U7/IbXPv2zDb3XFgWVMTwJU1VBHKGgspKWtSOkYrR3
	 3Q+gU+83huQrhEcKGrfc/BH8phy1aHllbHRUmyepgv/E5VOi+t0a8UInZqCiUS30SY
	 nsDFEg1peDftQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BA574068E;
	Mon, 17 Jun 2024 13:25:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F09551BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC38A819B8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:25:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TkR-xhT5CYUM for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 13:25:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2D6181990
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2D6181990
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2D6181990
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 13:25:20 +0000 (UTC)
X-CSE-ConnectionGUID: Td4oHWwrTueDHhkKMLpcgA==
X-CSE-MsgGUID: MKa/oyrXSbiRWXASXHBy5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15287104"
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="15287104"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 06:25:15 -0700
X-CSE-ConnectionGUID: fucocOo7Swu8yBFJeJlzqw==
X-CSE-MsgGUID: 2p5Z51AGRiGmjCT9DgRTzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,244,1712646000"; d="scan'208";a="46121212"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 17 Jun 2024 06:25:12 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id BFB73333DA;
 Mon, 17 Jun 2024 14:25:01 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jun 2024 15:24:07 +0200
Message-Id: <20240617132407.107292-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718630721; x=1750166721;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XpHPCsRoAdT6X6eunW6DKBI0v60GhrvSCGL4vzbBDvA=;
 b=W/oQ/qrgQPKvZIiOYVH+2ft+E/hW+iE7uoY4OUu8I/J7zCLSviAQK+2e
 DkcACxX8lAu5EizZbhsb/HkNVxy4mx56tiiSurLA1goNF6kDRujW56S/P
 z+BLZiMao9RJX+p+EyRMA1aW5VB1VQiFMaub5YBhPk/CnM1lBWk0LW51I
 QW0vUhQDTzuRIQkC1cq93YJq+4bmoVqDXLpg7SNlSkJyc1hRjGtlh3BTi
 p6jqanGz67sOlNn3fHJ5javqsEPGMLXF11rU0GYvgjaEfASPf8J5UMwRE
 70erFB4P8nKM+hbmGUdSjOhZdZOsRPjK3Kv25zrHwuA9/toRMSbYGccVe
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W/oQ/qrg
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: do not init struct
 ice_adapter more times than needed
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allocate and initialize struct ice_adapter object only once per physical
card instead of once per port. This is not a big deal by now, but we want
to extend this struct more and more in the near future. Our plans include
PTP stuff and a devlink instance representing whole-device/physical card.

Transactions requiring to be sleep-able (like those doing user (here ice)
memory allocation) must be performed with an additional (on top of xarray)
mutex. Adding it here removes need to xa_lock() manually.

Since this commit is a reimplementation of ice_adapter_get(), a rather new
scoped_guard() wrapper for locking is used to simplify the logic.

It's worth to mention that xa_insert() use gives us both slot reservation
and checks if it is already filled, what simplifies code a tiny	bit.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_adapter.c | 60 +++++++++-----------
 1 file changed, 28 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index 52d15ef7f4b1..ad84d8ad49a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -11,6 +11,7 @@
 #include "ice_adapter.h"
 
 static DEFINE_XARRAY(ice_adapters);
+static DEFINE_MUTEX(ice_adapters_mutex);
 
 /* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
 #define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
@@ -47,8 +48,6 @@ static void ice_adapter_free(struct ice_adapter *adapter)
 	kfree(adapter);
 }
 
-DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
-
 /**
  * ice_adapter_get - Get a shared ice_adapter structure.
  * @pdev: Pointer to the pci_dev whose driver is getting the ice_adapter.
@@ -64,53 +63,50 @@ DEFINE_FREE(ice_adapter_free, struct ice_adapter*, if (_T) ice_adapter_free(_T))
  */
 struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
 {
-	struct ice_adapter *ret, __free(ice_adapter_free) *adapter = NULL;
 	unsigned long index = ice_adapter_index(pdev);
-
-	adapter = ice_adapter_new();
-	if (!adapter)
-		return ERR_PTR(-ENOMEM);
-
-	xa_lock(&ice_adapters);
-	ret = __xa_cmpxchg(&ice_adapters, index, NULL, adapter, GFP_KERNEL);
-	if (xa_is_err(ret)) {
-		ret = ERR_PTR(xa_err(ret));
-		goto unlock;
-	}
-	if (ret) {
-		refcount_inc(&ret->refcount);
-		goto unlock;
+	struct ice_adapter *adapter;
+	int err;
+
+	scoped_guard(mutex, &ice_adapters_mutex) {
+		err = xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
+		if (err == -EBUSY) {
+			adapter = xa_load(&ice_adapters, index);
+			refcount_inc(&adapter->refcount);
+			return adapter;
+		}
+		if (err)
+			return ERR_PTR(err);
+
+		adapter = ice_adapter_new();
+		if (!adapter)
+			return ERR_PTR(-ENOMEM);
+		xa_store(&ice_adapters, index, adapter, GFP_KERNEL);
 	}
-	ret = no_free_ptr(adapter);
-unlock:
-	xa_unlock(&ice_adapters);
-	return ret;
+	return adapter;
 }
 
 /**
  * ice_adapter_put - Release a reference to the shared ice_adapter structure.
  * @pdev: Pointer to the pci_dev whose driver is releasing the ice_adapter.
  *
  * Releases the reference to ice_adapter previously obtained with
  * ice_adapter_get.
  *
- * Context: Any.
+ * Context: Process, may sleep.
  */
 void ice_adapter_put(const struct pci_dev *pdev)
 {
 	unsigned long index = ice_adapter_index(pdev);
 	struct ice_adapter *adapter;
 
-	xa_lock(&ice_adapters);
-	adapter = xa_load(&ice_adapters, index);
-	if (WARN_ON(!adapter))
-		goto unlock;
+	scoped_guard(mutex, &ice_adapters_mutex) {
+		adapter = xa_load(&ice_adapters, index);
+		if (WARN_ON(!adapter))
+			return;
+		if (!refcount_dec_and_test(&adapter->refcount))
+			return;
 
-	if (!refcount_dec_and_test(&adapter->refcount))
-		goto unlock;
-
-	WARN_ON(__xa_erase(&ice_adapters, index) != adapter);
+		WARN_ON(xa_erase(&ice_adapters, index) != adapter);
+	}
 	ice_adapter_free(adapter);
-unlock:
-	xa_unlock(&ice_adapters);
 }

base-commit: 37cf9b0b18612fcb52a819518074e4a0beabe29a
-- 
2.39.3

