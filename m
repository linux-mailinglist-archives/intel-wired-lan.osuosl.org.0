Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4A39E3F38
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 17:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E843960E48;
	Wed,  4 Dec 2024 16:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id M0U1Dvp4KCNL; Wed,  4 Dec 2024 16:08:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2963C607A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733328512;
	bh=1F6CIYZ3jgI2+zd6MpEzP9BMOite1kPbPI8My9D/YDE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7eouMEVdPj2YfPw5mzC09GvfuRtJLlbZUiDVqlPK5MqAzPzvUK8Fz+f+Wr/zquHSU
	 sSVfe2ozb+uACNXrzMd9tFgIfBTlweJN7toPCGjyRek1LwvHfurSgAvP6tIyBOyFvl
	 s/2xiva4kbaGVtCuONFBVNaX+8zWKArPitl+c//6LfvgDMhO8syPhYplaQ8w+o/Fzp
	 n5gPHp+6yFuLg+JqjAOgiupfPS2g2BtuD9kufLjrqQZAcHQxqgkLSt0uVPc8fGj0fI
	 5Nr/wUrSIED63Haxqf2lmdIxc12388BJ9X7o8CZhV8JYHXIWhedtO5U+RAFSzou1EO
	 F5WIgYgbdAwMg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2963C607A0;
	Wed,  4 Dec 2024 16:08:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 090341DAA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA0A6400D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iphPxO0s4NW8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:09:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BF3624004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BF3624004A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BF3624004A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:12 +0000 (UTC)
X-CSE-ConnectionGUID: o5Rt0vokRGG8LC7f1n6tqQ==
X-CSE-MsgGUID: Zdn/J6HjSC6ymqsuQx7SIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32918424"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32918424"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:09:12 -0800
X-CSE-ConnectionGUID: WCt/XWNFTYiXtJuO2A5kHw==
X-CSE-MsgGUID: 1qPnCPk8QLCIHIIfl1zi0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="116994560"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 04:09:10 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Wed,  4 Dec 2024 13:03:44 -0500
Message-ID: <20241204180709.307607-2-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241204180709.307607-1-anton.nadezhdin@intel.com>
References: <20241204180709.307607-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 04 Dec 2024 16:08:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733314153; x=1764850153;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=COIAgBpaDgvxMQfshBZKESnH/IvXIyo7s7gLs1O76b8=;
 b=jfgbL44w962oCwbupIcb59DAaY7JT3p3KOVb52r1CpEXUEdO5QU9ZsAe
 SRGaKAN943miI4SYOB0pPCL6nsOaaa1LVCNSFziF2Q54QrVOO44ZjoJp7
 hENq8D+44J1Erw5gZ8d1r98ooFTxoT0uiBxL5SPrBhpCjsWh6G8B5TysO
 VhxXW2ICj2cW9bIIkWJDE3SlRcy12dlr9EJxTzv176DcZ2EzwrAlbkzn8
 cu9Qkij7dd0nQZtc9VUdAuHDNWGUdV7SVJt+me3BsyQ8AYo/TUn8XLq++
 uW+P4MC80Ljol+eGRv6PQFFbOErBqBui5HN+LSVrmepBctlmBOEA1kpEf
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jfgbL44w
Subject: [Intel-wired-lan] [PATCH iwl-next 1/5] ice: use
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
index e55aeab0975c..b9cf8ce9644a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4868,32 +4868,28 @@ static int
 ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 {
 	u32 val;
-	u8 i;
+	u8 err;
 
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

