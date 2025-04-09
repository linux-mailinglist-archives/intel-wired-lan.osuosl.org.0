Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4117DA824BE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:29:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB2C7412C1;
	Wed,  9 Apr 2025 12:29:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id epdAdl50Ho93; Wed,  9 Apr 2025 12:29:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F38EE41282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201740;
	bh=1Pm60hFUJxwciPfmcelK1kLy+rL3PS7o/UmsZU9vukQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YSZyTO1c66IK/6yWCwko05JsCLvIohF3enlZ8wkEkdBOPZXfKMVHVBNotk82VlexD
	 Reo34R9Zcjh0r6IUL85qYq23b1oDnbxOcJ698mFprZLW4j6CqpW74iNleQoirWYnUY
	 Z1Bvuj+RctJ/KBXs6QxpRCE9fiErjsD11UJ6m0uX7p1q80BrQLCWZYdapUKOllUM5X
	 a5QJSpoUbWuOIyD+lQcx1351BJzR4PZZtT8Hh+Mojpp9Z6d7YKAn0zpxB/RsN3ttLb
	 ++9+4/JV0+5n3Fa+6RKCgzq0PoT6vZ+jwSgj/IXA+hXvKSXbeEhBDBkZY/NahyXIAm
	 kRuXN8PzeewXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F38EE41282;
	Wed,  9 Apr 2025 12:28:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 290E0D6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0F2E0607EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xx77_2nL25-R for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:28:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7BED1608AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7BED1608AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7BED1608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:56 +0000 (UTC)
X-CSE-ConnectionGUID: 4N0ckfExSdS/KmYcXMZ/kw==
X-CSE-MsgGUID: 6CBa7hQKRumgD40qGgxEYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56655716"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56655716"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:28:56 -0700
X-CSE-ConnectionGUID: wkrdT8sVRRaXAk2YkyxmzQ==
X-CSE-MsgGUID: bUGzOL3ZSFahsTJeT82YQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133557262"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa004.jf.intel.com with ESMTP; 09 Apr 2025 05:28:55 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Wed,  9 Apr 2025 14:25:05 +0200
Message-ID: <20250409122830.1977644-20-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250409122830.1977644-12-karol.kolacinski@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744201737; x=1775737737;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/z3KG0gSRlAlpSy32kmAEF897k/Bnm29uGvceUQ/wqM=;
 b=TW64eG/jabGYriZDRAFEb9oMMOpMQ3a1Kd6+ynRWODmNpQ+BvRJ+Tpde
 u8GgdI67hKLGUEdrEEkXeiaN0570xLLQetci0Iq/ZFG9dRAhebKFjKjVP
 +fRLxgnuh5M0mnAA0Wt7QC72Fd75DpVFK35yoxCiKSZVUUVQSASi9EwsV
 tNoasAlQdfFjq0qYsVDi3Bv6rfO4gYibLumigJ24ZG75boLs95Ivv5jfM
 eT1BVkvNrA8TVd2eSPKagWHTcXU2Ash/kg+0klmi5iwUZeZYh5je/xeW1
 9ai3xmstlXlDhT1qdhTidmPRoRN56algrOtgk1/EpqDotWdezhB8kmsfk
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TW64eG/j
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 08/10] ice: wait before
 enabling TSPLL
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

To ensure proper operation, wait for 10 to 20 microseconds before
enabling TSPLL.

Adjust wait time after enabling TSPLL from 1-5 ms to 1-2 ms.

Those values are empirical and tested on multiple HW configurations.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index a05fe0da553a..25a805fa0bdd 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -226,12 +226,15 @@ static int ice_tspll_cfg_e82x(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	r24 |= FIELD_PREP(ICE_CGU_R23_R24_TIME_REF_SEL, clk_src);
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 
+	/* Wait to ensure everything is stable */
+	usleep_range(10, 20);
+
 	/* Finally, enable the PLL */
 	r24 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, r24);
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
+	/* Wait at least 1 ms to verify if the PLL locks */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
 
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_BWM_LF, &val);
 	if (!(val & ICE_CGU_RO_BWM_LF_TRUE_LOCK)) {
@@ -352,12 +355,15 @@ static int ice_tspll_cfg_e825c(struct ice_hw *hw, enum ice_tspll_freq clk_freq,
 	/* Clear the R24 register. */
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R24, 0);
 
+	/* Wait to ensure everything is stable */
+	usleep_range(10, 20);
+
 	/* Finally, enable the PLL */
 	r23 |= ICE_CGU_R23_R24_TSPLL_ENABLE;
 	ICE_WRITE_CGU_REG_OR_DIE(hw, ICE_CGU_R23, r23);
 
-	/* Wait to verify if the PLL locks */
-	usleep_range(1000, 5000);
+	/* Wait at least 1 ms to verify if the PLL locks */
+	usleep_range(USEC_PER_MSEC, 2 * USEC_PER_MSEC);
 
 	ICE_READ_CGU_REG_OR_DIE(hw, ICE_CGU_RO_LOCK, &val);
 	if (!(val & ICE_CGU_RO_LOCK_TRUE_LOCK)) {
-- 
2.49.0

