Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 538769522F1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Aug 2024 21:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3437B81DE5;
	Wed, 14 Aug 2024 19:56:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZXBz2z1HCfGh; Wed, 14 Aug 2024 19:56:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B94081E01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723665390;
	bh=LB9mE+ZhalEo2WxKHf2dKLY4vYb/dC39CiNWM1JsprQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=u15GTf+UZq2Yf7pGVwyjdfvtFmD4/a/NDJMvocT9IUmxpx7DlHqcWCl71qNBNkLjM
	 Yj2FC6febhl39B5qJrWR8Pu3u51/76zJbER91izvsdwl3ZFV9YrgC/pIY8d/r9sF2V
	 yuHtRRu1f2C1BQqTRDLs5w25CZBfI63/8JYqDGzrFBsVHIV5MPCPCZI5MnHre/Jj/d
	 Vwj2MeEm/IiTXkkjuhr0KtCAf5CITSXhN5fnU5i8kKE06pn61p5+OL6IreuAx4hejK
	 g3MfE6Er5f3RzS1Yqda014Hz9PfP5zhqmGCgBPjngGlV5XjKoZeyBT5MwcSPS6syKL
	 DZYocQ33emGAQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B94081E01;
	Wed, 14 Aug 2024 19:56:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C892B1BF40D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B6D9A608C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zG5vGITKeG4i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Aug 2024 19:56:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0BC8A60598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0BC8A60598
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0BC8A60598
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Aug 2024 19:56:27 +0000 (UTC)
X-CSE-ConnectionGUID: Eh7aCb0pQc+6U25zwn9tNQ==
X-CSE-MsgGUID: Ng9hcIftRQOMhVI+kyBrhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11164"; a="33292518"
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="33292518"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2024 12:56:28 -0700
X-CSE-ConnectionGUID: rwR6mW6RQkGtE8qbWG+CUw==
X-CSE-MsgGUID: xN7PG5eDTnCq9L3mZcU19A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,146,1719903600"; d="scan'208";a="59869720"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa008.jf.intel.com with ESMTP; 14 Aug 2024 12:56:27 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 14 Aug 2024 21:54:32 +0200
Message-ID: <20240814195434.72928-4-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240814195434.72928-1-sergey.temerkhanov@intel.com>
References: <20240814195434.72928-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723665388; x=1755201388;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IEGbVy55PtrER1w0R4CTaHxIvz5PVDbijqFOF1C+wh0=;
 b=PtFOKU8NbhaNdmhwVDaa7W2np8Q0i+1+gHgGJ4TlwjW0lYpeah90/tnY
 18TqSehZOWA/yUNwUS7UfpwUhXaKra9r3jOOAPXw23zLYbiR6DyMybKkg
 NKzlvNIvGOLqm2/rOzuurY970ssIsNsMrM+Wr7lR4kANCOtqk7PouP8fd
 7nfrhBNYS46zMBoJ+3V0brHegtvA6huBnjj7R5npc0eC8kL2J3bldYPQr
 Mp7Wa383HfIvmgScPLaLJbCQjIs//gUox5WVgcG6tT7eqtHUTn2Dmg/je
 CWMePuG9J8ShVfYsmrQ+v2C5gvDvqtfsEr6RMXT/SDvyqRiXfeY261fWM
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PtFOKU8N
Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/5] ice: Initial support for
 E825C hardware in ice_adapter
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Simon Horman <horms@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Address E825C devices by PCI ID since dual IP core configurations
need 1 ice_adapter for both devices.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_adapter.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net/ethernet/intel/ice/ice_adapter.c
index ad84d8ad49a6..903d0bc9e3e5 100644
--- a/drivers/net/ethernet/intel/ice/ice_adapter.c
+++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
@@ -9,12 +9,14 @@
 #include <linux/spinlock.h>
 #include <linux/xarray.h>
 #include "ice_adapter.h"
+#include "ice.h"
 
 static DEFINE_XARRAY(ice_adapters);
 static DEFINE_MUTEX(ice_adapters_mutex);
 
 /* PCI bus number is 8 bits. Slot is 5 bits. Domain can have the rest. */
 #define INDEX_FIELD_DOMAIN GENMASK(BITS_PER_LONG - 1, 13)
+#define INDEX_FIELD_DEV    GENMASK(31, 16)
 #define INDEX_FIELD_BUS    GENMASK(12, 5)
 #define INDEX_FIELD_SLOT   GENMASK(4, 0)
 
@@ -24,9 +26,17 @@ static unsigned long ice_adapter_index(const struct pci_dev *pdev)
 
 	WARN_ON(domain > FIELD_MAX(INDEX_FIELD_DOMAIN));
 
-	return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
-	       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
-	       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
+	switch (pdev->device) {
+	case ICE_DEV_ID_E825C_BACKPLANE:
+	case ICE_DEV_ID_E825C_QSFP:
+	case ICE_DEV_ID_E825C_SFP:
+	case ICE_DEV_ID_E825C_SGMII:
+		return FIELD_PREP(INDEX_FIELD_DEV, pdev->device);
+	default:
+		return FIELD_PREP(INDEX_FIELD_DOMAIN, domain) |
+		       FIELD_PREP(INDEX_FIELD_BUS,    pdev->bus->number) |
+		       FIELD_PREP(INDEX_FIELD_SLOT,   PCI_SLOT(pdev->devfn));
+	}
 }
 
 static struct ice_adapter *ice_adapter_new(void)
-- 
2.43.0

