Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 581D5959E3D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2024 15:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 109CE40206;
	Wed, 21 Aug 2024 13:12:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iTCjt7vFjdtx; Wed, 21 Aug 2024 13:12:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 359DC40228
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724245920;
	bh=LB9mE+ZhalEo2WxKHf2dKLY4vYb/dC39CiNWM1JsprQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tFSaFteq0rwhHoBI/qDYDGccRcu/Kd14gSOEoQ8f3CqKTcPZz0djZFx0YWt6dcGTe
	 eRHvTwWDRwNVH/kRvhL9pWmSsKnZ5NtiHIJCKio2ns9Hg+CbEgmEhHm8i9w6SVAQKB
	 NTlLImarQeVA8s0A0YEWEugrgGPhQaAKyPjluSuMHczo65x9ULh2DY9zYOgBlRl+Z9
	 UBTyemQ4kiqHMegJ9zWIAR6PD9AHffR/cMxsQhIuzY4mXPx7GEWrdMvprfNc5AMLN/
	 Ir7mpUeyLi8dNV8oUDE+mwo4EQsxuYssDey8xRqGJeIWRBgBsa3Fegdp1LeRlz4LCe
	 v+sO/QopfKn0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 359DC40228;
	Wed, 21 Aug 2024 13:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4F11BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C8348118A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J_HoO7EYW-Oz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2024 13:11:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C0A5081186
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0A5081186
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C0A5081186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2024 13:11:56 +0000 (UTC)
X-CSE-ConnectionGUID: VHFXfFdGTiGJrW4IEkoQYg==
X-CSE-MsgGUID: WW+9JAQ+T1+qt6OdXM0zIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="26356935"
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="26356935"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2024 06:11:56 -0700
X-CSE-ConnectionGUID: m613+2eaQpGcN5dWfsk29A==
X-CSE-MsgGUID: yhZCQCyOSQ2pECYoUMbFfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,164,1719903600"; d="scan'208";a="65432401"
Received: from unknown (HELO localhost.igk.intel.com) ([10.211.13.141])
 by fmviesa005.fm.intel.com with ESMTP; 21 Aug 2024 06:11:55 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 21 Aug 2024 15:09:55 +0200
Message-ID: <20240821130957.55043-4-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
References: <20240821130957.55043-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724245917; x=1755781917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IEGbVy55PtrER1w0R4CTaHxIvz5PVDbijqFOF1C+wh0=;
 b=NBhmblCq/1pHRHNTymy3yh3wGr/5tEQeJMUkR7CdMNr1YH7aANJC/rto
 WCMCG4CsiwBEfNr1sQypn40ZSRDSb31xISCT/CEhdgbFMv7S68uV/WCTK
 zjhzz0aDRTOPa7W/mkOJ3MOzQsThN11P7rnpy2GSOj4nPqEMUduC7cB52
 vhhdQh+WdhvI89ZPo8g16Y3kwfl8YbVu0XaabUWGsGc19FJeDXuyrW+TG
 zys85McIzJuIf2RiZpwTfsq24sMmrjTLs5BheW5MHIejfs8yRy3EjzaH/
 +OKe7JTkyRaBEomDVfICTPGIpozIoa41LFTWqjauZJYK7vfFXyrUThtmS
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NBhmblCq
Subject: [Intel-wired-lan] [PATCH iwl-next v6 3/5] ice: Initial support for
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

