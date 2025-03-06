Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A501EA5586A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Mar 2025 22:12:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 154F3413C9;
	Thu,  6 Mar 2025 21:12:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3yEOqCq6Plr4; Thu,  6 Mar 2025 21:12:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E151413C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741295538;
	bh=4iVzNKK8Bcal/wgKVeTEQv3mneiLqLLV9/lXUyjKcIM=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=2OaH9GPxaeH1tMFccY5egz4vUYZYvf+7ZfMpTKz938MMDYggJAUg7sN6qrefBqW63
	 iybO8aqoNBD+2NafSB5Gb9FJjarN8436CrIAjm6MYNs+13tflQcKC9lWUHuX6xiGqL
	 BDZl5eSalGHb50niqTFYepogSYxselDQoCq33pESEDDs4cKJm4biUdw06oIrndkEFA
	 7KPb0U3zvEDqpJA6DghB+Zyk8FDQM3KrvU2FSP+9FX49sRkffr8mJSk2ppJUWyfRn4
	 UCoFDSzxVcZ0b7Lq+AvkSmeY1gOC1lYf4rbHzoKB4KZ5/cQeS57Fv3sOeVsoITCGCA
	 pQ1+UsSA4ENzw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E151413C6;
	Thu,  6 Mar 2025 21:12:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6DD1271F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 21:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3D4C660E03
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 21:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XKSC0sFgnMbp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Mar 2025 21:12:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CADD60ADF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CADD60ADF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CADD60ADF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Mar 2025 21:12:13 +0000 (UTC)
X-CSE-ConnectionGUID: 3NKxPZR6S2qaI1eCDjzF1w==
X-CSE-MsgGUID: 1fbC+JE8SdO2nUyp1tUk5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42216588"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="42216588"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 13:12:13 -0800
X-CSE-ConnectionGUID: jZSwRtcrRz+PTJPfqc0PVQ==
X-CSE-MsgGUID: Dqu0o1ViRrGZHJXoyU6daA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="149932957"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa002.jf.intel.com with ESMTP; 06 Mar 2025 13:12:10 -0800
Received: from pkitszel-desk.intel.com (unknown [10.245.246.184])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 5845432ED3;
 Thu,  6 Mar 2025 21:12:07 +0000 (GMT)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  6 Mar 2025 22:11:46 +0100
Message-ID: <20250306211159.3697-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741295534; x=1772831534;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=noFQI/+OKpviQdrTCdYtve+C4IwhM2qGT9hoSqN6Ct4=;
 b=JfJ8B+6IBVRmluHAASnYgjQ3/DsKc95g3fEhdtd+iAq7bYX35f2djXdq
 MfSkDlbaZnPe+RnoYO3C18Hx2ecpQsWv9ksF1yBas95oySdIL7hwsZNMd
 jzyRlu9tNtSXfxnLI9VrbSLS8VxfZGFqXtXt4bXk8+wVcC3wt0wLmmro0
 KQqcyGHBy4+Ge1w9fn8OGK0k1QtyfS5LjtcF/ISEA1jCs3EL/visdWdac
 H4UTykJP7NGTDK+g560n2cdZZhh8QHytUqmCj7bP5Zi4a3YVUfgBpOSZI
 bum1cbb8eLWQMQBaKx5ZY8pc8NKR0mbaDSOUMdBK057kXtCzCsGFW2u7e
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JfJ8B+6I
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: use DSN instead of PCI BDF
 for ice_adapter index
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
---
 drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
 drivers/net/ethernet/intel/ice/ice_adapter.c | 29 +++-----------------
 2 files changed, 6 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net/ethernet/intel/ice/ice_adapter.h
index e233225848b3..1935163bd32f 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.h
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
@@ -42,7 +42,7 @@ struct ice_adapter {
 	struct ice_port_list ports;
 };
 
-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev);
-void ice_adapter_put(const struct pci_dev *pdev);
+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
+void ice_adapter_put(struct pci_dev *pdev);
 
 #endif /* _ICE_ADAPTER_H */
diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index 01a08cfd0090..b668339ed0ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 // SPDX-FileCopyrightText: Copyright Red Hat
 
-#include <linux/bitfield.h>
 #include <linux/cleanup.h>
 #include <linux/mutex.h>
 #include <linux/pci.h>
@@ -14,29 +13,9 @@
 static DEFINE_XARRAY(ice_adapters);
 static DEFINE_MUTEX(ice_adapters_mutex);
 
-/* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
-#define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
-#define INDEX_FIELD_DEV    GENMASK(31, 16)
-#define INDEX_FIELD_BUS    GENMASK(12, 5)
-#define INDEX_FIELD_SLOT   GENMASK(4, 0)
-
-static unsigned long ice_adapter_index(const struct pci_dev *pdev)
+static unsigned long ice_adapter_index(struct pci_dev *pdev)
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
+	return (unsigned long)pci_get_dsn(pdev);
 }
 
 static struct ice_adapter *ice_adapter_new(void)
@@ -77,7 +56,7 @@ static void ice_adapter_free(struct ice_adapter *adapter)
  * Return:  Pointer to ice_adapter on success.
  *          ERR_PTR() on error. -ENOMEM is the only possible error.
  */
-struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
+struct ice_adapter *ice_adapter_get(struct pci_dev *pdev)
 {
 	unsigned long index = ice_adapter_index(pdev);
 	struct ice_adapter *adapter;
@@ -110,7 +89,7 @@ struct ice_adapter *ice_adapter_get(const struct pci_dev *pdev)
  *
  * Context: Process, may sleep.
  */
-void ice_adapter_put(const struct pci_dev *pdev)
+void ice_adapter_put(struct pci_dev *pdev)
 {
 	unsigned long index = ice_adapter_index(pdev);
 	struct ice_adapter *adapter;
-- 
2.46.0

