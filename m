Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DBBB9EAA88
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 09:25:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE9C980E5E;
	Tue, 10 Dec 2024 08:25:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Vsx2N70IL_Cq; Tue, 10 Dec 2024 08:25:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B0DB80E5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733819108;
	bh=8jWgk0UyFZG/igoaCJZqCN7Ufx5LkT9IUjlxSFkip1U=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KtN52eLze54bY8hg6MoUqa8iJMM5V02PWQqSfKNUiIzXinRf2wLg+JVH+ZGfo8AfT
	 mTPfEJ5RiXwdACzXUWxeWC7tqwMedYLGOA6ZF8gyDpv1otiQ2quHFzVBSS1KwEPxL3
	 VM7vmtwxOKBOWCCZ50CIl43NXgdh4jtJtbasQ2m7qr0voizTmms1rgKFM6EGh1Jf8B
	 SAsRKnRikGENnMrcQ0bZDNXUFQhbd7KG/XvSEC5CpnAha2QOZ5qGLrDbNBwZVyrJ6e
	 A/jLxcSwv9VflDvqIT6xyEEC9KBSX07BcNvrZPj1a1E+y5/28wjnzCmlmppYFTRkk+
	 u3zdJbag6RuCg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B0DB80E5B;
	Tue, 10 Dec 2024 08:25:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C79F06F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1D50409E5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrSNhiiRfpAp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 08:25:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7E9D84026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E9D84026F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E9D84026F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 08:25:05 +0000 (UTC)
X-CSE-ConnectionGUID: qZhN6pdvQxyuF/eYTLOm3Q==
X-CSE-MsgGUID: oynowA6NQmGt4d6xKdnhmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34398248"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34398248"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:25:05 -0800
X-CSE-ConnectionGUID: S30gZiSFSpKmR/MbmzzCGA==
X-CSE-MsgGUID: KgcDhNh6RxuCnRSwMdEJyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="99398124"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa003.fm.intel.com with ESMTP; 10 Dec 2024 00:25:03 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Tue, 10 Dec 2024 09:22:05 -0500
Message-ID: <20241210142333.320515-2-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241210142333.320515-1-anton.nadezhdin@intel.com>
References: <20241210142333.320515-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733819105; x=1765355105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CsOORzpO5qqrdJO0lESD8zYo+adGSn0s38/lXILKGjE=;
 b=F2U3vp2nIYNZ6XLZlEz+DIhjbD57/jJdIlgZ6Z4pA18ARQgQLB31Iid2
 wlNQytdKKAcQDs0VIXW/MzlaEUWk0qA9DQU7l/POtrtN+k4Cdi/2vaD7T
 Vtp5kTW8cZL55dVsIQ1IiiNY5S+Zd3a/tQI6FkykW4PSsYf1PTbXEhfRH
 yawpfw0ZwLIhTrHvtqH8f2mrs1EP4dQdUwJvwAbqSQcNsBXbtWFoWfqA5
 WeoJBHzEN4bZisd0JMhBbZnBG+Q1PW8K/cQz0/AetdjL0MlK4gMUeor0V
 67PXXU6CADTgjo4lH5pzP3O7rimkrNM2+3nfRiGUgMUZ5JDX/aVeF/xYx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F2U3vp2n
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: use
 rd32_poll_timeout_atomic in ice_read_phy_tstamp_ll_e810
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

From: Jacob Keller <jacob.e.keller@intel.com>

The ice_read_phy_tstamp_ll_e810 function repeatedly reads the PF_SB_ATQBAL
register until the TS_LL_READ_TS bit is cleared. This is a perfect
candidate for using rd32_poll_timeout. However, the default implementation
uses a sleep-based wait.

Add a new rd32_poll_timeout_atomic macro which is based on the non-sleeping
read_poll_timeout_atomic implementation. Use this to replace the loop
reading in the ice_read_phy_tstamp_ll_e810 function.

This will also be used in the future when low latency PHY timer updates are
supported.

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_osdep.h  |  3 +++
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 30 +++++++++------------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 +-
 3 files changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_osdep.h b/drivers/net/ethernet/intel/ice/ice_osdep.h
index b9f383494b3f..9bb343de80a9 100644
--- a/drivers/net/ethernet/intel/ice/ice_osdep.h
+++ b/drivers/net/ethernet/intel/ice/ice_osdep.h
@@ -26,6 +26,9 @@
 
 #define rd32_poll_timeout(a, addr, val, cond, delay_us, timeout_us) \
 	read_poll_timeout(rd32, val, cond, delay_us, timeout_us, false, a, addr)
+#define rd32_poll_timeout_atomic(a, addr, val, cond, delay_us, timeout_us) \
+	read_poll_timeout_atomic(rd32, val, cond, delay_us, timeout_us, false, \
+				 a, addr)
 
 #define ice_flush(a)		rd32((a), GLGEN_STAT)
 #define ICE_M(m, s)		((m ## U) << (s))
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index e55aeab0975c..8e11a97601fe 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4868,32 +4868,28 @@ static int
 ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 {
 	u32 val;
-	u8 i;
+	int err;
 
 	/* Write TS index to read to the PF register so the FW can read it */
 	val = FIELD_PREP(TS_LL_READ_TS_IDX, idx) | TS_LL_READ_TS;
 	wr32(hw, PF_SB_ATQBAL, val);
 
 	/* Read the register repeatedly until the FW provides us the TS */
-	for (i = TS_LL_READ_RETRIES; i > 0; i--) {
-		val = rd32(hw, PF_SB_ATQBAL);
-
-		/* When the bit is cleared, the TS is ready in the register */
-		if (!(FIELD_GET(TS_LL_READ_TS, val))) {
-			/* High 8 bit value of the TS is on the bits 16:23 */
-			*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
+	err = rd32_poll_timeout_atomic(hw, PF_SB_ATQBAL, val,
+				       !FIELD_GET(TS_LL_READ_TS, val),
+				       10, TS_LL_READ_TIMEOUT);
+	if (err) {
+		ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
+		return err;
+	}
 
-			/* Read the low 32 bit value and set the TS valid bit */
-			*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
-			return 0;
-		}
+	/* High 8 bit value of the TS is on the bits 16:23 */
+	*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
 
-		udelay(10);
-	}
+	/* Read the low 32 bit value and set the TS valid bit */
+	*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
 
-	/* FW failed to provide the TS in time */
-	ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
-	return -EINVAL;
+	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 5c11d8a69fd3..4c059e2f4d96 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -694,7 +694,7 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 #define BYTES_PER_IDX_ADDR_L		4
 
 /* Tx timestamp low latency read definitions */
-#define TS_LL_READ_RETRIES		200
+#define TS_LL_READ_TIMEOUT		2000
 #define TS_LL_READ_TS_HIGH		GENMASK(23, 16)
 #define TS_LL_READ_TS_IDX		GENMASK(29, 24)
 #define TS_LL_READ_TS_INTR		BIT(30)
-- 
2.42.0

