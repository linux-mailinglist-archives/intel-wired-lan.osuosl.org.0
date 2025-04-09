Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AACA824C0
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Apr 2025 14:29:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92D83412C3;
	Wed,  9 Apr 2025 12:29:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nzDDuZxKnqCc; Wed,  9 Apr 2025 12:29:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C5F0410E4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744201741;
	bh=eKQkWvCQMbcqaOyyDK+sendx9UnTGiUr5MjHIWORlQs=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7NGEOeoXmb86GoLSOn1m05Io6C25+HPoCPEIvS9EwWsKBY3IPplAUKHp+SCeq1maL
	 L2IytjXv2SeICw4LpbdLqjShQVvzSY4krBtPtC8eWlN2NLdfsAUTn4Yrq3d2zkESXK
	 B6Nv/jr08QIChduS5DzNOdqfl0JsP3qJKuu3IYv+mbBOHxcViHgOqHmHoBv2iTQmwY
	 WEeFbJYrgqz5Tprp/bG+hgK6D67fROHms7M108yoiKHSvzJCkAlW4czCqI68mrEAyZ
	 4fWVmcsPNEPRXl03E5+m9sLdGdyGTx/w3nWC3JjtptH4tYyKBkF5YSQ7S+EvmOxaED
	 DOj3CjwF7Nk/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C5F0410E4;
	Wed,  9 Apr 2025 12:29:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2E6851F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14D2D608AD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 75rJZEwcDPEn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Apr 2025 12:28:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6E1D2607EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E1D2607EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E1D2607EC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Apr 2025 12:28:58 +0000 (UTC)
X-CSE-ConnectionGUID: 3DX1UAOJQH2pKcLvQ0SM/A==
X-CSE-MsgGUID: fGCkCcu/TBy0m2eyGj68BQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56655718"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="56655718"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 05:28:58 -0700
X-CSE-ConnectionGUID: OPXmGF/sR+2e/Dftdd9MCg==
X-CSE-MsgGUID: zI3mjntYRfSOAG08YgGerg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133557274"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by orviesa004.jf.intel.com with ESMTP; 09 Apr 2025 05:28:57 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Date: Wed,  9 Apr 2025 14:25:06 +0200
Message-ID: <20250409122830.1977644-21-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250409122830.1977644-12-karol.kolacinski@intel.com>
References: <20250409122830.1977644-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744201738; x=1775737738;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J9xLiV9s5+LP4+nMsyfGq5xXN09ZieMrue4dIuwiQ7M=;
 b=j7TpunNYSHQuOf1oYg3vbmhhkbVCOeXfBhKSOo7LIvC0ZAC9HTwsXL4C
 txHCLACK8ckabotb0gotXhfmMjtzc/ghG4bh7y1xIpE0zYNpmVUnw1+W/
 iwvDLd23If2/vOlLqohctYbMD49Uw+vcRtK2w/OeV9j3lvJ3aSdw7YzWV
 7kkdtvSHYVlXcI1U7b/m1PFixJacKB4H36FAWAvcrDbRYK7wo9szXXbd0
 xmDdNPOqDH1zxpf+AolcWa5XIctIJVX7tPTmRThjCM05vInFFXkLH+Q1W
 hhYGUFvjEVkm15PHSQqDxDfKvKOw+83FYZ3/bec3IMyfxW9+lo4f7d6fV
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j7TpunNY
Subject: [Intel-wired-lan] [PATCH v2 iwl-next 09/10] ice: fall back to TCXO
 on TSPLL lock fail
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

TSPLL can fail when trying to lock to TIME_REF as a clock source, e.g.
when the external clock source is not stable or connected to the board.
To continue operation after failure, try to lock again to internal TCXO
and inform user about this.

Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 25a805fa0bdd..b81eb6d2a0de 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -490,5 +490,17 @@ int ice_tspll_init(struct ice_hw *hw)
 	/* Configure the TSPLL using the parameters from the function
 	 * capabilities.
 	 */
-	return ice_tspll_cfg(hw, tspll_freq, clk_src);
+	err = ice_tspll_cfg(hw, tspll_freq, clk_src);
+	if (err) {
+		dev_warn(ice_hw_to_dev(hw), "Failed to lock TSPLL to predefined frequency. Retrying with fallback frequency.\n");
+
+		/* Try to lock to internal TCXO as a fallback. */
+		tspll_freq = ice_tspll_default_freq(hw->mac_type);
+		clk_src = ICE_CLK_SRC_TCXO;
+		err = ice_tspll_cfg(hw, tspll_freq, clk_src);
+		if (err)
+			dev_warn(ice_hw_to_dev(hw), "Failed to lock TSPLL to fallback frequency.\n");
+	}
+
+	return err;
 }
-- 
2.49.0

