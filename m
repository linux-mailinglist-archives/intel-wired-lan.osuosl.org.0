Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEeCF0Os+GnHxgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:07 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC264BF54F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B83F26139A;
	Mon,  4 May 2026 14:25:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9P2Q7bGgMQee; Mon,  4 May 2026 14:25:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8C3B6143C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777904703;
	bh=4rrshrAI/Nio1RLjF9wiUSrePYKLX1Xdx5pgr8Ux1yQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l2aUTUf+fmlvhoNMFV9Y3s2x02moK61hRWOLrYW3LU8EBgmhZry2Ur9Ittf1g3BqD
	 Uj1wnXHFa64FWMwT6O+sWDnrpW51gkRiv3P3lh7XDoD9arYKRjGi1psVtK0hNzCOqT
	 i84E8n3anOMqT+b04geTtVow6Aa4DDlFQwEz51EykidPz/ExmdP54AgvcYVCUOGiFZ
	 JgwkFJr1i+N6ADFUVr1Lt7xyLm5HGPqomgXLIBoe2iW2+y7MSNAdk3tnb+Lkno40wt
	 B/zDjZ+MSj3RafgaqsskN3qA04E26MXYB5KCHaQ5IcQCDlnE5mmA25dldBBelsPFNU
	 5/SaXMNlKnzLQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8C3B6143C;
	Mon,  4 May 2026 14:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 458B3204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C14940CED
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C1LpGuxpXf3B for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:25:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 15925408D7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15925408D7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15925408D7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:25:00 +0000 (UTC)
X-CSE-ConnectionGUID: beeKQynaSzOrpRjGz1vwFw==
X-CSE-MsgGUID: Sd9CJZFeQWSGeqLQ6U1n9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78691614"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78691614"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:25:00 -0700
X-CSE-ConnectionGUID: ks4DLOgaQMSQv20nfR1PWQ==
X-CSE-MsgGUID: I2mMo+LkQIK8LkynDeGVOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230935408"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 04 May 2026 07:24:58 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Mon,  4 May 2026 16:24:50 +0200
Message-ID: <20260504142451.4161845-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
References: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777904700; x=1809440700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HeCSJC8AQFIhb51F7c7FJSajP0xoCAzaU8poc4y0+BU=;
 b=Z0xHu5v/d31uSmPXf7YOKBn8Ow9c7urcGeQ1S9+S6IKTUO14QPoPscR/
 jhK4jVMay35aD7+aPWowKuFunv8zlQjUBMuXDYQmv1CUDy9rg7mtiKbIL
 bSFHeleEPa7DHLo9vl+jlcG0kjC0a80lBZQOMkcs/8zxv5XmaWdIexbhL
 NLvc0y0mdGAIwBOhf2uWk4ITEjm34ZxPA0VPJsFMRyVMXifARTnIf4a0A
 Q47L5DKMEMG2/xYA44wPiQH7ioPuEUwJD+xeHWHYu2MMmvC1yLb1vMIWf
 dOvPMKOyWBTOvZXDyobQkLfmyGA7HqulKrjJGhEeM8qGFZwe9+DI5/5Vx
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z0xHu5v/
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: fix DPLL pin
 frequency range in CGU pin descriptors
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
X-Rspamd-Queue-Id: 9CC264BF54F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Replace the per-type frequency tables (ice_cgu_pin_freq_1_hz and
ice_cgu_pin_freq_10_mhz) and the two-entry ice_cgu_pin_freq_common array
with a named range constant ICE_CGU_MAX_FREQ_HZ (25 MHz), a new
ice_cgu_pin_freq_range array containing DPLL_PIN_FREQUENCY_RANGE(1,
ICE_CGU_MAX_FREQ_HZ), and a separate ice_cgu_pin_freq_gnss array that
retains DPLL_PIN_FREQUENCY_1PPS for GNSS input pins.

The hardware firmware spec defines an any_freq capability for CGU inputs
(ICE_AQC_GET_CGU_IN_CFG_FLG1_ANYFREQ), but the static pin descriptor
tables constrained configurable pins to 1PPS or 10MHz, preventing users
from setting valid intermediate frequencies. Use a range entry so the
DPLL netlink interface correctly reflects what the firmware will accept.
The firmware validates the actual value and rejects out-of-range requests.

MUX, SyncE ETH port, and configurable EXT pins now advertise the full
frequency range, matching the hardware capability. GNSS input pins retain
the 1PPS-only advertisement since a GNSS receiver is physically
constrained to 1 Hz.

Fixes: 6db5f2cd9ebb ("ice: dpll: fix output pin capabilities")
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 128 +++++++++++---------
 1 file changed, 72 insertions(+), 56 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 7b1b402..3949138 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -7,127 +7,143 @@
 #include "ice_ptp_hw.h"
 #include "ice_ptp_consts.h"
 
-static struct dpll_pin_frequency ice_cgu_pin_freq_common[] = {
-	DPLL_PIN_FREQUENCY_1PPS,
-	DPLL_PIN_FREQUENCY_10MHZ,
-};
+/* Maximum frequency supported by CGU pins, in Hz */
+#define ICE_CGU_MAX_FREQ_HZ	25000000
 
-static struct dpll_pin_frequency ice_cgu_pin_freq_1_hz[] = {
-	DPLL_PIN_FREQUENCY_1PPS,
+static struct dpll_pin_frequency ice_cgu_pin_freq_range[] = {
+	DPLL_PIN_FREQUENCY_RANGE(1, ICE_CGU_MAX_FREQ_HZ),
 };
 
-static struct dpll_pin_frequency ice_cgu_pin_freq_10_mhz[] = {
-	DPLL_PIN_FREQUENCY_10MHZ,
+static struct dpll_pin_frequency ice_cgu_pin_freq_gnss[] = {
+	DPLL_PIN_FREQUENCY_1PPS,
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_inputs[] = {
 	{ "CVL-SDP22",	  ZL_REF0P, DPLL_PIN_TYPE_INT_OSCILLATOR,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CVL-SDP20",	  ZL_REF0N, DPLL_PIN_TYPE_INT_OSCILLATOR,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
-	{ "C827_0-RCLKA", ZL_REF1P, DPLL_PIN_TYPE_MUX, 0, },
-	{ "C827_0-RCLKB", ZL_REF1N, DPLL_PIN_TYPE_MUX, 0, },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "C827_0-RCLKA", ZL_REF1P, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "C827_0-RCLKB", ZL_REF1N, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "SMA1",	  ZL_REF3P, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "SMA2/U.FL2",	  ZL_REF3N, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "GNSS-1PPS",	  ZL_REF4P, DPLL_PIN_TYPE_GNSS,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_gnss), ice_cgu_pin_freq_gnss },
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_inputs[] = {
 	{ "CVL-SDP22",	  ZL_REF0P, DPLL_PIN_TYPE_INT_OSCILLATOR,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CVL-SDP20",	  ZL_REF0N, DPLL_PIN_TYPE_INT_OSCILLATOR,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
-	{ "C827_0-RCLKA", ZL_REF1P, DPLL_PIN_TYPE_MUX, },
-	{ "C827_0-RCLKB", ZL_REF1N, DPLL_PIN_TYPE_MUX, },
-	{ "C827_1-RCLKA", ZL_REF2P, DPLL_PIN_TYPE_MUX, },
-	{ "C827_1-RCLKB", ZL_REF2N, DPLL_PIN_TYPE_MUX, },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "C827_0-RCLKA", ZL_REF1P, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "C827_0-RCLKB", ZL_REF1N, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "C827_1-RCLKA", ZL_REF2P, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "C827_1-RCLKB", ZL_REF2N, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "SMA1",	  ZL_REF3P, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "SMA2/U.FL2",	  ZL_REF3N, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "GNSS-1PPS",	  ZL_REF4P, DPLL_PIN_TYPE_GNSS,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_gnss), ice_cgu_pin_freq_gnss },
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_sfp_cgu_outputs[] = {
 	{ "REF-SMA1",	    ZL_OUT0, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "REF-SMA2/U.FL2", ZL_OUT1, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
-	{ "PHY-CLK",	    ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT, },
-	{ "MAC-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "PHY-CLK",	    ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "MAC-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CVL-SDP21",	    ZL_OUT4, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CVL-SDP23",	    ZL_OUT5, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 };
 
 static const struct ice_cgu_pin_desc ice_e810t_qsfp_cgu_outputs[] = {
 	{ "REF-SMA1",	    ZL_OUT0, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "REF-SMA2/U.FL2", ZL_OUT1, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
-	{ "PHY-CLK",	    ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
-	{ "PHY2-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
-	{ "MAC-CLK",	    ZL_OUT4, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "PHY-CLK",	    ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "PHY2-CLK",	    ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "MAC-CLK",	    ZL_OUT4, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CVL-SDP21",	    ZL_OUT5, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CVL-SDP23",	    ZL_OUT6, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 };
 
 static const struct ice_cgu_pin_desc ice_e823_si_cgu_inputs[] = {
 	{ "NONE",	  SI_REF0P, 0, 0 },
 	{ "NONE",	  SI_REF0N, 0, 0 },
-	{ "SYNCE0_DP",	  SI_REF1P, DPLL_PIN_TYPE_MUX, 0 },
-	{ "SYNCE0_DN",	  SI_REF1N, DPLL_PIN_TYPE_MUX, 0 },
+	{ "SYNCE0_DP",	  SI_REF1P, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "SYNCE0_DN",	  SI_REF1N, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "EXT_CLK_SYNC", SI_REF2P, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "NONE",	  SI_REF2N, 0, 0 },
 	{ "EXT_PPS_OUT",  SI_REF3,  DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "INT_PPS_OUT",  SI_REF4,  DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 };
 
 static const struct ice_cgu_pin_desc ice_e823_si_cgu_outputs[] = {
 	{ "1588-TIME_SYNC", SI_OUT0, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
-	{ "PHY-CLK",	    SI_OUT1, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "PHY-CLK",	    SI_OUT1, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "10MHZ-SMA2",	    SI_OUT2, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_10_mhz), ice_cgu_pin_freq_10_mhz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "PPS-SMA1",	    SI_OUT3, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 };
 
 static const struct ice_cgu_pin_desc ice_e823_zl_cgu_inputs[] = {
 	{ "NONE",	  ZL_REF0P, 0, 0 },
 	{ "INT_PPS_OUT",  ZL_REF0N, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
-	{ "SYNCE0_DP",	  ZL_REF1P, DPLL_PIN_TYPE_MUX, 0 },
-	{ "SYNCE0_DN",	  ZL_REF1N, DPLL_PIN_TYPE_MUX, 0 },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "SYNCE0_DP",	  ZL_REF1P, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "SYNCE0_DN",	  ZL_REF1N, DPLL_PIN_TYPE_MUX,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "NONE",	  ZL_REF2P, 0, 0 },
 	{ "NONE",	  ZL_REF2N, 0, 0 },
 	{ "EXT_CLK_SYNC", ZL_REF3P, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "NONE",	  ZL_REF3N, 0, 0 },
 	{ "EXT_PPS_OUT",  ZL_REF4P, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "OCXO",	  ZL_REF4N, DPLL_PIN_TYPE_INT_OSCILLATOR, 0 },
 };
 
 static const struct ice_cgu_pin_desc ice_e823_zl_cgu_outputs[] = {
 	{ "PPS-SMA1",	   ZL_OUT0, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_1_hz), ice_cgu_pin_freq_1_hz },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "10MHZ-SMA2",	   ZL_OUT1, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_10_mhz), ice_cgu_pin_freq_10_mhz },
-	{ "PHY-CLK",	   ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
-	{ "1588-TIME_REF", ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT, 0 },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "PHY-CLK",	   ZL_OUT2, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
+	{ "1588-TIME_REF", ZL_OUT3, DPLL_PIN_TYPE_SYNCE_ETH_PORT,
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "CPK-TIME_SYNC", ZL_OUT4, DPLL_PIN_TYPE_EXT,
-		ARRAY_SIZE(ice_cgu_pin_freq_common), ice_cgu_pin_freq_common },
+		ARRAY_SIZE(ice_cgu_pin_freq_range), ice_cgu_pin_freq_range },
 	{ "NONE",	   ZL_OUT5, 0, 0 },
 };
 
-- 
2.52.0

