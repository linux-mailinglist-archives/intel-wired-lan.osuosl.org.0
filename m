Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E93E5B197E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Sep 2022 11:59:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EBDC83F8E;
	Thu,  8 Sep 2022 09:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EBDC83F8E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662631166;
	bh=sl5G1vIZZWrmrkOLKOQv3KnxyQ0ZH3KjW+iI/Bl3Wrw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=FvhVYFpGo8KFXobic2grE/y+38KW7qEnNbnKQnqfjWTIjYAgrDO5tUe5hCc/6+gb0
	 pGKu7kQ4sB22JKh37PMwZYq6krrwAuhQ6OO+or7NFXm7ZPcBJoHigq/LrYc7yNcTCF
	 vI+RCQy7eZbsLl6JgVfxU3dUNuknxwLu3GxUdKH8FCgklPz47Y5E22V4oLIt9aLEHj
	 N50WJ9NeEFQSGalk1uxx628RJwVSZ90fPuKVy85wfsyphsJJa4h+oTEfmhhBzvscs0
	 /MCNtSRhBMTJvL1w/vugo++efIkAz1mpw5pv+q2I+9EvTJq8Rr6/fxKZo1hq/B0339
	 hKIyIG0eQdqdg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dXElN2nYGzKR; Thu,  8 Sep 2022 09:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0757C83F62;
	Thu,  8 Sep 2022 09:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0757C83F62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0D831BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 09:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 951B383F62
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 09:59:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 951B383F62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h1Txzq7IlFNp for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Sep 2022 09:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DF4C83F5D
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DF4C83F5D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Sep 2022 09:59:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="358857117"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="358857117"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 02:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="676618100"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 08 Sep 2022 02:59:16 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Sep 2022 11:58:52 +0200
Message-Id: <20220908095852.30389-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662631158; x=1694167158;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ICCRkS6FFLSQMamSmX/EJhTk27aUVawS4a4uOH9SiBo=;
 b=TkdHUXfiQEg0Ey6RsjE2x8DV+ylQ5feZe53Jcfx2iJeBX/523oS49cyA
 dIz5GN8DZqiF1TYuXHB8WFigYzG1SWLHQNYELkaxJpVhvai8NqkZrsnyo
 VyZ+2kT0TYGD2N2zYNPfVCjEninAtjpxOsp6Qfc0RdD7s6Xt6XtEiD3fz
 5OCUczzpYfIXlEESekqmcA+b7WpTxnZpJmD+E+RpxVxrR7+x6J01w06Uv
 KTfJ7zUGy607KsF6b9UPvOlPB2bKzXdvbBcz2DFS+H9MK+fTKOvWyV1xo
 Edbwh3EVd9L2D8k8uK4+Dcl2HAKctOnBBEXzYFrG+94alFIn5QABpvzWR
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TkdHUXfi
Subject: [Intel-wired-lan] [PATCH net-next] ice: Merge pin initialization of
 E810 and E810T adapters
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
Cc: Maciej Machnikowski <maciej.machnikowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove separate function initializing pins for E810T-based adapters
and initialize pins based on feature bits.

Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 47 +++++-------------------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  4 +-
 2 files changed, 12 insertions(+), 39 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 5e41e99e91a5..011b727ab190 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2217,49 +2217,26 @@ ice_ptp_setup_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
 }
 
 /**
- * ice_ptp_setup_pins_e810t - Setup PTP pins in sysfs
+ * ice_ptp_setup_pins_e810 - Setup PTP pins in sysfs
  * @pf: pointer to the PF instance
  * @info: PTP clock capabilities
  */
 static void
-ice_ptp_setup_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
+ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
-	/* Check if SMA controller is in the netlist */
-	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL) &&
-	    !ice_is_pca9575_present(&pf->hw))
-		ice_clear_feature_support(pf, ICE_F_SMA_CTRL);
-
-	if (!ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
-		info->n_ext_ts = N_EXT_TS_E810_NO_SMA;
-		info->n_per_out = N_PER_OUT_E810T_NO_SMA;
-		return;
-	}
+	info->n_per_out = N_PER_OUT_E810;
 
-	info->n_per_out = N_PER_OUT_E810T;
+	if (ice_is_feature_supported(pf, ICE_F_PTP_EXTTS))
+		info->n_ext_ts = N_EXT_TS_E810;
 
-	if (ice_is_feature_supported(pf, ICE_F_PTP_EXTTS)) {
+	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
 		info->n_ext_ts = N_EXT_TS_E810;
 		info->n_pins = NUM_PTP_PINS_E810T;
 		info->verify = ice_verify_pin_e810t;
-	}
-
-	/* Complete setup of the SMA pins */
-	ice_ptp_setup_sma_pins_e810t(pf, info);
-}
-
-/**
- * ice_ptp_setup_pins_e810 - Setup PTP pins in sysfs
- * @pf: pointer to the PF instance
- * @info: PTP clock capabilities
- */
-static void ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
-{
-	info->n_per_out = N_PER_OUT_E810;
 
-	if (!ice_is_feature_supported(pf, ICE_F_PTP_EXTTS))
-		return;
-
-	info->n_ext_ts = N_EXT_TS_E810;
+		/* Complete setup of the SMA pins */
+		ice_ptp_setup_sma_pins_e810t(pf, info);
+	}
 }
 
 /**
@@ -2296,11 +2273,7 @@ static void
 ice_ptp_set_funcs_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
 	info->enable = ice_ptp_gpio_enable_e810;
-
-	if (ice_is_e810t(&pf->hw))
-		ice_ptp_setup_pins_e810t(pf, info);
-	else
-		ice_ptp_setup_pins_e810(pf, info);
+	ice_ptp_setup_pins_e810(pf, info);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 170ab35fb5c1..7c1f43bd6335 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -235,8 +235,8 @@ struct ice_ptp {
 #define N_EXT_TS_E810			3
 #define N_PER_OUT_E810			4
 #define N_PER_OUT_E810T			3
-#define N_PER_OUT_E810T_NO_SMA		2
-#define N_EXT_TS_E810_NO_SMA		2
+#define N_PER_OUT_NO_SMA_E810T		2
+#define N_EXT_TS_NO_SMA_E810T		2
 #define ETH_GLTSYN_ENA(_i)		(0x03000348 + ((_i) * 4))
 
 #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
