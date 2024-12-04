Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7BD9E3F39
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 17:08:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2697060E51;
	Wed,  4 Dec 2024 16:08:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3hg2JQoYzpw; Wed,  4 Dec 2024 16:08:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56F8D607A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733328513;
	bh=aSK9kmdfzmV4zWZjx0GQiIUMZY7Y4UC6kRb+VLKFcaE=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Bs2rXS4XSDKMoeiClvBj45bUEbngT/dUk0Qr/ryIgFJrvVqTlYACR8kZ97gEwSnhu
	 Hakbi45PYrMYJR2UKOBmTcMMaKZqGQLE5AB56j8Iie3rz5Lko5KoBle1flxrpDVlIi
	 dCjwlOBFGXueV4yx798CQGivXgslmmhKqgUab0NBGLo7DBONkDW1aR3gcyQk+9QS3M
	 89gh1Y3wkWO8e7UWkEl8ctfG2OKWGjB2Bl4LsTSFu6sDgNzkVE3r+olrZkYlEX2BG4
	 u2wVgmQJurxbT9KoemmoXZubHpGQIglUN0utm6AYRngpshrwQLA3FNaxDCLeWQQAV2
	 2IL1+vNX8MH3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56F8D607A0;
	Wed,  4 Dec 2024 16:08:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A9AB1DD1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0A7AE4049E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S01T4r-ysFKx for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 12:09:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D59F94004A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D59F94004A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D59F94004A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 12:09:14 +0000 (UTC)
X-CSE-ConnectionGUID: SwrrpV1cSNOlKSNT8qw1Zw==
X-CSE-MsgGUID: FXBeeeTyTL+Wl+rr5m9vSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="32918435"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="32918435"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 04:09:14 -0800
X-CSE-ConnectionGUID: fIkl+BPSQsGYjKzx2s8NYg==
X-CSE-MsgGUID: Y92X1jCySemFpTuuRflQ8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="116994571"
Received: from host61.igk.intel.com ([10.123.220.61])
 by fmviesa002.fm.intel.com with ESMTP; 04 Dec 2024 04:09:12 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Wed,  4 Dec 2024 13:03:45 -0500
Message-ID: <20241204180709.307607-3-anton.nadezhdin@intel.com>
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
 t=1733314155; x=1764850155;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gK9zWUN53Lt9r2qhWO/bcfmFIrI12nK95rSw0Odyx2w=;
 b=lU4hLjX7IeCY+A4lbhWiBSXS4exhNn8ujW2wVV0gP6JtmxZWxlKrYYSm
 V2Hj5WNo5l2yFmNsQa/WlotQwqiIigxRbM6rsZBZtpliMDFOb4FlNQdWU
 NBgSaAdYPWeCPiAB5aS5iMAWJRTWG+YKEf+0d7KbicrRw7f86Vk1LFx8x
 uZZfQ3lZe+rGYlMU+1bzcn+7e0TFG+aPH5E06sDiCLQPprpae49EbTmIm
 a3LLmCzvbaNyuBqJAJCeEGakQSO3bLPIosWgdaowcuVlWGmwbWuhAlftP
 Sr4WdHmbYSuD6LkCJ18P12/sEnEcoEwWwFslJyNIEIeD1pA28EzvZOCt8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lU4hLjX7
Subject: [Intel-wired-lan] [PATCH iwl-next 2/5] ice: rename TS_LL_READ*
 macros to REG_LL_PROXY_H_*
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

The TS_LL_READ macros are used as part of the low latency Tx timestamp
interface. A future firmware extension will add support for performing PHY
timer updates over this interface. Using TS_LL_READ as the prefix for these
macros will be confusing once the interface is used for other purposes.

Rename the macros, using the prefix REG_LL_PROXY_H, to better clarify that
this is for the low latency interface.
Additionally add macroses for PF_SB_ATQBAH and PF_SB_ATQBAL registers to
better clarify content of this registers as PF_SB_ATQBAH contain low
part of Tx timestamp

Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Milena Olech <milena.olech@intel.com>
Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 14 +++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 14 +++++++-------
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h | 13 ++++++++-----
 3 files changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index d8ed4240f225..3c81d98883c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -499,9 +499,9 @@ void ice_ptp_req_tx_single_tstamp(struct ice_ptp_tx *tx, u8 idx)
 	ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
 
 	/* Write TS index to read to the PF register so the FW can read it */
-	wr32(&pf->hw, PF_SB_ATQBAL,
-	     TS_LL_READ_TS_INTR | FIELD_PREP(TS_LL_READ_TS_IDX, idx) |
-	     TS_LL_READ_TS);
+	wr32(&pf->hw, REG_LL_PROXY_H,
+	     REG_LL_PROXY_H_TS_INTR_ENA | FIELD_PREP(REG_LL_PROXY_H_TS_IDX, idx) |
+	     REG_LL_PROXY_H_EXEC);
 	tx->last_ll_ts_idx_read = idx;
 }
 
@@ -528,20 +528,20 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 
 	ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
 
-	val = rd32(&pf->hw, PF_SB_ATQBAL);
+	val = rd32(&pf->hw, REG_LL_PROXY_H);
 
 	/* When the bit is cleared, the TS is ready in the register */
-	if (val & TS_LL_READ_TS) {
+	if (val & REG_LL_PROXY_H_EXEC) {
 		dev_err(ice_pf_to_dev(pf), "Failed to get the Tx tstamp - FW not ready");
 		return;
 	}
 
 	/* High 8 bit value of the TS is on the bits 16:23 */
-	raw_tstamp = FIELD_GET(TS_LL_READ_TS_HIGH, val);
+	raw_tstamp = FIELD_GET(REG_LL_PROXY_H_TS_HIGH, val);
 	raw_tstamp <<= 32;
 
 	/* Read the low 32 bit value */
-	raw_tstamp |= (u64)rd32(&pf->hw, PF_SB_ATQBAH);
+	raw_tstamp |= (u64)rd32(&pf->hw, REG_LL_PROXY_L);
 
 	/* Devices using this interface always verify the timestamp differs
 	 * relative to the last cached timestamp value.
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index b9cf8ce9644a..06a0c78cd491 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4871,23 +4871,23 @@ ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 	u8 err;
 
 	/* Write TS index to read to the PF register so the FW can read it */
-	val = FIELD_PREP(TS_LL_READ_TS_IDX, idx) | TS_LL_READ_TS;
-	wr32(hw, PF_SB_ATQBAL, val);
+	val = FIELD_PREP(REG_LL_PROXY_H_TS_IDX, idx) | REG_LL_PROXY_H_EXEC;
+	wr32(hw, REG_LL_PROXY_H, val);
 
 	/* Read the register repeatedly until the FW provides us the TS */
-	err = rd32_poll_timeout_atomic(hw, PF_SB_ATQBAL, val,
-				       !FIELD_GET(TS_LL_READ_TS, val),
-				       10, TS_LL_READ_TIMEOUT);
+	err = rd32_poll_timeout_atomic(hw, REG_LL_PROXY_H, val,
+				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
+				       10, REG_LL_PROXY_H_TIMEOUT_US);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to read PTP timestamp using low latency read\n");
 		return err;
 	}
 
 	/* High 8 bit value of the TS is on the bits 16:23 */
-	*hi = FIELD_GET(TS_LL_READ_TS_HIGH, val);
+	*hi = FIELD_GET(REG_LL_PROXY_H_TS_HIGH, val);
 
 	/* Read the low 32 bit value and set the TS valid bit */
-	*lo = rd32(hw, PF_SB_ATQBAH) | TS_VALID;
+	*lo = rd32(hw, REG_LL_PROXY_L) | TS_VALID;
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index 4c059e2f4d96..71097eb67d54 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -694,11 +694,14 @@ static inline bool ice_is_dual(struct ice_hw *hw)
 #define BYTES_PER_IDX_ADDR_L		4
 
 /* Tx timestamp low latency read definitions */
-#define TS_LL_READ_TIMEOUT		2000
-#define TS_LL_READ_TS_HIGH		GENMASK(23, 16)
-#define TS_LL_READ_TS_IDX		GENMASK(29, 24)
-#define TS_LL_READ_TS_INTR		BIT(30)
-#define TS_LL_READ_TS			BIT(31)
+#define REG_LL_PROXY_H_TIMEOUT_US	2000
+#define REG_LL_PROXY_H_TS_HIGH		GENMASK(23, 16)
+#define REG_LL_PROXY_H_TS_IDX		GENMASK(29, 24)
+#define REG_LL_PROXY_H_TS_INTR_ENA	BIT(30)
+#define REG_LL_PROXY_H_EXEC		BIT(31)
+
+#define REG_LL_PROXY_L			PF_SB_ATQBAH
+#define REG_LL_PROXY_H			PF_SB_ATQBAL
 
 /* Internal PHY timestamp address */
 #define TS_L(a, idx) ((a) + ((idx) * BYTES_PER_IDX_ADDR_L_U))
-- 
2.42.0

