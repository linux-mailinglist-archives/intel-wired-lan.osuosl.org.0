Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2625BA59272
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Mar 2025 12:14:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5790606E0;
	Mon, 10 Mar 2025 11:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1y5bRXnQ3e6G; Mon, 10 Mar 2025 11:14:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E74A8608B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741605272;
	bh=93EN7fRLL13ydTcpfJRNKEXr5MLwX9CAUSrsuuW5AzI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JhSQOYXFoLPZTbh9dbAqMtlOsJwfJkoKrTtEaaw4Q7Fa72xTeDMX967kPPSagFF7X
	 2yXQiNd8MQovmvR4LbKZ1pV0DSGLxYiQYHPms6B2RwCR50dKB9Zxqg96i4+MwERUqS
	 IXstX03HEdUbFmcp8YDGBqDMfcoMWrg31Vkhrd5bGAGrjIRm1EJziJ5E5tAHEo1Etm
	 dwk54g9Km1spV4IfcXMRK1d0WI8EsEpY68568CntSHlZLzvQMESGdfMTaRoRfwKBKg
	 X+OrZ0q0KMEMiyxFxGEKj/TgtxcHbmYMmMEWU0VOgbXzY6bKB499/riAuNSQd9bYuF
	 1JWC55XOt8hxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E74A8608B3;
	Mon, 10 Mar 2025 11:14:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BFF9ADC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3D2A80363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xYNiLEkMmkWc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Mar 2025 11:14:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC0CA8121A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC0CA8121A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC0CA8121A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Mar 2025 11:14:28 +0000 (UTC)
X-CSE-ConnectionGUID: HEElWQV8TPmy2kjRQLsIxQ==
X-CSE-MsgGUID: jkaephFoQSmpGSfUxJIxlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11368"; a="65048708"
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="65048708"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 04:14:28 -0700
X-CSE-ConnectionGUID: AZZEvCm0TVWa+sOkaneutQ==
X-CSE-MsgGUID: IGw2DvFYR4+sBBsiFzdJvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,235,1736841600"; d="scan'208";a="119968336"
Received: from kkolacin-desk1.ger.corp.intel.com (HELO
 kkolacin-desk1.igk.intel.com) ([10.217.160.155])
 by fmviesa007.fm.intel.com with ESMTP; 10 Mar 2025 04:14:27 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena-olech@intel.com>
Date: Mon, 10 Mar 2025 12:12:53 +0100
Message-ID: <20250310111357.1238454-21-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250310111357.1238454-12-karol.kolacinski@intel.com>
References: <20250310111357.1238454-12-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741605269; x=1773141269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5lCAtdB9hJ5Uh5qbsi4JkKe3aHncd9dTlRcYSJ5GQEc=;
 b=N1VvHwXdEX4cAUGDF5RuTSoDU7+YVOgFaEAjQssjtpwjdwheylNExS95
 61q29RKQGrJaBBMJWkWNNR508E5K+J50RE331gWRhM1dNkthjy/4/TdLB
 iy98RNvzpQWYKb0OJU6dkQLb2BI3/2QJ8Jq0NJ2AGkSsC7TMExHGcx/Sd
 83kIU7ozPdhmmcYBBqVWYikp6A7vzPLXrCOqDCQh0QwYCuR4iUraql/QA
 4gJR3HG5WQjCHW5UDY6UPXofSduI2eP1iptvXv6lA/pyG1zvVeqCJ+Euu
 2r1G0RrMwj2y4sLsjwzp7kk7xLiyxtgpSFxJ+XBpaMoms0+fPTovBFqup
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N1VvHwXd
Subject: [Intel-wired-lan] [PATCH iwl-next 09/10] ice: fall back to TCXO on
 TSPLL lock fail
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

Reviewed-by: Milena Olech <milena-olech@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_tspll.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_tspll.c b/drivers/net/ethernet/intel/ice/ice_tspll.c
index 62da095d32ef..37fcfdd5e032 100644
--- a/drivers/net/ethernet/intel/ice/ice_tspll.c
+++ b/drivers/net/ethernet/intel/ice/ice_tspll.c
@@ -487,5 +487,17 @@ int ice_tspll_init(struct ice_hw *hw)
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
2.48.1

