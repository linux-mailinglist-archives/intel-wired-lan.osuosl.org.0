Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F34CE78C266
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 12:41:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 829E160EE6;
	Tue, 29 Aug 2023 10:41:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 829E160EE6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693305666;
	bh=d5LVluxzI4eBQXdI/1QtJn2cYvhnPK2NCmbZnD7KHU4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dTHQlD15hIYkoUfqGptrs9rx87I00Zkl7k2SedTOynFIHUtATKlHPD3kTQAUcrFS+
	 0p5wpKBUech/h125DMEYQB3klyWows1y0eQvMSbrtnMEI+HdlKWJyzTY8GYDyo7Tvc
	 5yufaaPbzhib6PFOGtmoeu8+9tGw/prlEgioto8qeJxGjvz8K+B5PSVScqWS1Befkc
	 y0tzdMgsuHtRoL8XC/TZYbAxEpVv2S3oB3Ml16VO7/CmZVsC1+J/5RRhUxS8tXEQ4H
	 aY7nYs3Ke+XhNRR2lTKdbxngDotztW1kQixsXwiJNZM2dja1B9P3/GlTrfX1/beyOX
	 uhPBfyJTuGPpw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFSwmK0WRBrz; Tue, 29 Aug 2023 10:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DC5060AE1;
	Tue, 29 Aug 2023 10:41:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5DC5060AE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3FF2F1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 180EF81419
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:40:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 180EF81419
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rDBzJZcym2aG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 10:40:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D86A817B0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 10:40:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D86A817B0
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="461696873"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="461696873"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2023 03:40:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="853229755"
X-IronPort-AV: E=Sophos;i="6.02,210,1688454000"; d="scan'208";a="853229755"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2023 03:40:54 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Aug 2023 12:40:31 +0200
Message-Id: <20230829104041.64131-2-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230829104041.64131-1-karol.kolacinski@intel.com>
References: <20230829104041.64131-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693305656; x=1724841656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vziGEKQkhvglUca+VEBOArAjk5lf9uAfNsCF1T+Ik5I=;
 b=dcFyshCKm9He6f2f9DRbu6XwatxISRrQkISekXfgQxwoG6GBnfg1Bg+c
 S3W2cw1sMj7N3/0Xwf4Wcj6yearjdFqHgZR8lAM9F4JkwQM9+Esp7ZYeH
 m3qK/IWEy+z88Ag5Fs45MNnI/nmi6CyFXLMBsUrxlqu0C29uMLU75TV/Q
 3DhoJMDFZiAwyWnm2yg6+ZQoPl00qjja9t/8To2z43WsFSbebM+t+ANVL
 TLUp89n825Qky/G8nAgfTPiz4u5LLOjppVVbvd8NdAf1AO/DBKXLD548T
 AX+ar0zEMGSlBH4+WIqOXJLI0QMp2xk3ZP3UygzU3JUAsaVIpwax0JWgk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dcFyshCK
Subject: [Intel-wired-lan] [PATCH v4 iwl-next 01/11] ice: use
 ice_pf_src_tmr_owned where available
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 anthony.l.nguyen@intel.com, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_pf_src_tmr_owned() macro exists to check the function capability
bit indicating if the current function owns the PTP hardware clock.

This is slightly shorter than the more verbose access via
hw.func_caps.ts_func_info.src_tmr_owned. Be consistent and use this
where possible rather than open coding its equivalent.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 drivers/net/ethernet/intel/ice/ice_ptp.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a5997008bb98..8f327ad5b569 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3185,7 +3185,7 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 
 		ena_mask &= ~PFINT_OICR_TSYN_EVNT_M;
 
-		if (hw->func_caps.ts_func_info.src_tmr_owned) {
+		if (ice_pf_src_tmr_owned(pf)) {
 			/* Save EVENTs from GLTSYN register */
 			pf->ptp.ext_ts_irq |= gltsyn_stat &
 					      (GLTSYN_STAT_EVENT0_M |
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ca40ca220cc9..2e3f0aaacddd 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2449,7 +2449,7 @@ void ice_ptp_reset(struct ice_pf *pf)
 	if (test_bit(ICE_PFR_REQ, pf->state))
 		goto pfr;
 
-	if (!hw->func_caps.ts_func_info.src_tmr_owned)
+	if (!ice_pf_src_tmr_owned(pf))
 		goto reset_ts;
 
 	err = ice_ptp_init_phc(hw);
-- 
2.39.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
