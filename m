Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAOwDW1K82ngzAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC684A2BE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8902061C29;
	Thu, 30 Apr 2026 12:26:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OwD3DHVsobt7; Thu, 30 Apr 2026 12:26:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB8F261C2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777551973;
	bh=4rrshrAI/Nio1RLjF9wiUSrePYKLX1Xdx5pgr8Ux1yQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zhpRHLwQ4zjxbqRiD9npCOYbzY8ixmxamCKuXVDBCoQZaw6cKMvmZpqK6M9HkEN53
	 MfU2SNJlKxeiW5EwWW38iepU2desU1D/qcOc0da5+5UV4zt1sB+2YM83TDLXmnuR4f
	 4mDp7+f1BNgoCjwdcwr8wex9+7nuE6inFsdih5VubwI3sAZqHeBbBSv1kOdk7J6nH9
	 +zwErEfnigeNbEtn70wuyS7cBv/B+ira+eOpIs6zgm23eWV4WldVOrCQCD/+Y33dBz
	 Ik4NA6PdqmUzgeTwn4lF2pIRQdzJoTgHQiyjWZLtj375d7GKtZyhMv3aZhqeh7RrfS
	 Mvf9BoJKKS3BA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AB8F261C2F;
	Thu, 30 Apr 2026 12:26:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 0D56A192
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E788B4073C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id giLO357b2Hld for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 12:26:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EC1C5403D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EC1C5403D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EC1C5403D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:10 +0000 (UTC)
X-CSE-ConnectionGUID: +mlT9V8aQaypLs9lHPY5tA==
X-CSE-MsgGUID: 773BwxhUTkOdEgjfDZ2AwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78689193"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78689193"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 05:26:11 -0700
X-CSE-ConnectionGUID: AUt2jR/OQgKq+dFWDUwHoA==
X-CSE-MsgGUID: xhey3LIsRgOpL6nd4L/vEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="233538436"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 30 Apr 2026 05:26:09 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Date: Thu, 30 Apr 2026 14:26:01 +0200
Message-ID: <20260430122602.126722-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
References: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777551971; x=1809087971;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HeCSJC8AQFIhb51F7c7FJSajP0xoCAzaU8poc4y0+BU=;
 b=VlWdx3PG2xDJQXEmo+ukiQ5ZBsv0bhbaevQKzIF/ImvMhxYvJi9mbjXB
 uDEH1fB9tvnCVvzAu65p0J+Ihjs0ORwbMSWZd0zwzg5dmlm7H4OGmth2a
 vSrSZMzB4LybfDrZtCz9YEq3InFBa4qRL3y54lXZL5fzqa38htfkMFanp
 Cbm2WJy0aY7BNvYCoDLlceZ6GTrxJdf/Ltgz/W70mz0WkdlHT/XtuxouR
 zTAahyANqRvI6YIEPnzmApl3WQIFj6+kstdJ33V4mbVFeTNZrzSwl3bTS
 NNldqyHV9SuYPJhU845KicF7pF3Dc8QJQwrjKRUDbDVrIRWf3Swwq6TRl
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VlWdx3PG
Subject: [Intel-wired-lan] [PATCH 4/5] ice: fix DPLL pin frequency range in
 CGU pin descriptors
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
X-Rspamd-Queue-Id: 7DC684A2BE6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
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

