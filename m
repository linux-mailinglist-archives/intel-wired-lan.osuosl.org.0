Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694A5934C07
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 12:54:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB8DC40EC5;
	Thu, 18 Jul 2024 10:54:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fmU2WWpIk0x5; Thu, 18 Jul 2024 10:54:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01CCD40230
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721300080;
	bh=kyeEkMZBZK+pnnjDPxnDQu+H/arbSKYZNPXqkSVFs3E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=89KHB108Ajvg2VsSkyY5qBmNOzVpoZNgrsuS0q9ntt7MsyCMSC4hd9Rkg04pxs9uC
	 /s9p+wCnVFnUWaFRqivY5Giex/2xgjF7t7OyPDrWv2plAPa4vc95gVllGLQLgseqPf
	 fiunMLO2y/+d4MWNy3pDCCxLF9jcjTFahzAYLsSCeZKygtdkmAypKLSU3X7Kf92wEE
	 t0zOEIMZBJ62vCFHNOJWq1q3W2gvTP34zFClKpBNVMK7LVVnfLj1lQOdA8uXOCHGAB
	 vKrQcnYqdhQiwH3EhaMfLVcjlDxs0iF2+eDCINe4FbRB6Y21xn61uRObHWLVgXkDp0
	 sCMTnFgkXaQWQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01CCD40230;
	Thu, 18 Jul 2024 10:54:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22F371BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1D2EA4010E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HLCwHwObamUf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 10:54:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2CD3F400BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CD3F400BB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2CD3F400BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 10:54:34 +0000 (UTC)
X-CSE-ConnectionGUID: BfV67RhyRCO3ahi111NelA==
X-CSE-MsgGUID: IuTQWahmTcK+1lX4m5YsMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18987498"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18987498"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 03:54:34 -0700
X-CSE-ConnectionGUID: ZnUtUkCJT2WpPXPfj17t2A==
X-CSE-MsgGUID: x7thRLEySN+A5ZRAE2KE+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50774592"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by orviesa009.jf.intel.com with ESMTP; 18 Jul 2024 03:54:33 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jul 2024 12:52:51 +0200
Message-ID: <20240718105253.72997-4-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721300074; x=1752836074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3OhgHRh8nxAMjEaek9NxgPz/4EOcVeGrFcuYF1uh2NQ=;
 b=JRnRuLqEDfZP3ytvHi0P5bUjezuKM7aQpNuoLW9aeYKnZv5+Gj7Tanvf
 QgwqcQEw9vkvlE/QyeatyApoOcXwDTZ3oogOHx7KOS4G12/P2OlpbIWOA
 phPA33OrIRmiMdyBmNvWPC8FZ1JBzzeGbuJ7OvgQ5bqoSAMZ98tHaidlQ
 sBD+1Hum/pUGUdAA86Je4BL6cH2uRcr3ugxM8WHeDqS3bQ02p9ZHv/duv
 HDZqz/A5fiWY9ET7jqdCFmPy2AVwDXJ43dLkRonG+UXz5MhBkpQrORHpa
 Dlm+gSwF8eujAmJvTSK4pCD7R/odn5nMat6+rHf4BBTG3dnQaZun/M21v
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JRnRuLqE
Subject: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: Initial support for
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Address E825C devices by PCI ID since dual IP core configurations
need 1 ice_adapter for both devices.

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
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

