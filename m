Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60EB29F2C6A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Dec 2024 09:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9566F409F2;
	Mon, 16 Dec 2024 08:56:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o4p12vLruVB0; Mon, 16 Dec 2024 08:56:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0D99409EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734339395;
	bh=UPZVP0bvMwnlJ7hXFd1jhmol3aGY6hAoFzSo+2+LnfM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rLhDGdakio2b2qvC5h06oS5HZqeqGUkFhP+hzd5jzjSVqOnnWZsV4z85EYQS8SG0d
	 pf/Bw6gvvG/gZd5xAb0WhLQGQUB4sHT29/J/nm8KN0ZEGiHSyLdxIwPbmc79dPrEsB
	 rUCR8l+9aHNc41rLNvZ85UWDxpzLF6p1glOekGHRjqNnDGfJBKQhFdnf1GVlxpFPNb
	 BOEA4tm0HIGJWFjJtj8pJfByLk+fyETKMW6a+VMjguYB8x4Rm1WJ5lBp+lWlFMd7nX
	 haMQRKPwafh/opec5icxXRrpLfh51llPsmHw4OnZP5GfvkzalOcSzgb9P33atMVrcJ
	 ddMyU3sdZ98jw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0D99409EA;
	Mon, 16 Dec 2024 08:56:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D17AFCE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C01558149B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7tsWJiNbPNhQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Dec 2024 08:56:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E23CF814B3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E23CF814B3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E23CF814B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Dec 2024 08:56:31 +0000 (UTC)
X-CSE-ConnectionGUID: +XuBSkAaSu+K++qSqjAdkQ==
X-CSE-MsgGUID: ZwxiePnaS62S0x9PXqqhKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11287"; a="34942402"
X-IronPort-AV: E=Sophos;i="6.12,238,1728975600"; d="scan'208";a="34942402"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 00:56:32 -0800
X-CSE-ConnectionGUID: vQUBf6MxTByHNAFtk316bg==
X-CSE-MsgGUID: vnyebTvyReqH+3nsmIB2Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102117170"
Received: from host61.igk.intel.com ([10.123.220.61])
 by orviesa005.jf.intel.com with ESMTP; 16 Dec 2024 00:56:28 -0800
From: Anton Nadezhdin <anton.nadezhdin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, richardcochran@gmail.com,
 Jacob Keller <jacob.e.keller@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>,
 Anton Nadezhdin <anton.nadezhdin@intel.com>
Date: Mon, 16 Dec 2024 09:53:29 -0500
Message-ID: <20241216145453.333745-3-anton.nadezhdin@intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241216145453.333745-1-anton.nadezhdin@intel.com>
References: <20241216145453.333745-1-anton.nadezhdin@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734339392; x=1765875392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qoakSi5L19nTPcGEa5PICmmGv3gUE6tliOz36PhnZV4=;
 b=Yp4R5sfw8VCbMfpmomsrCZNecS1saY788aTzHwnRqKtN7Q3QecY88lm3
 pk4fnUIZ/R5Pi+h7Qvha0wUI3y/CyQeGbtabH5N2aq9MKOnt4lqoson7Q
 RuUSYPEVN4MKGayEdN+Lr7Rn6iIPDOluwxcJaBuQhKvjtTa7T2G169hJY
 +KzNqfDaFvwmcMGZtBvJHsmcTeYCxYHYUyPVJIQA0sMnwW0fzpJUojneB
 B6vJ9l7R396AZKWdaCY+0DHXYqauHMR+KOG2pHxK8ZO2R5qMJWmABfTWB
 tqD93obug7xXHJXIXojqAdQ9ZZ2AC9I/QK3pY0OUkGEpiD4fDxFJPqE4A
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Yp4R5sfw
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: rename TS_LL_READ*
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
index a2f1dbcc7904..0b3f6162068d 100644
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
index 4a0d5d9ad605..2b0aba146750 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4886,23 +4886,23 @@ ice_read_phy_tstamp_ll_e810(struct ice_hw *hw, u8 idx, u8 *hi, u32 *lo)
 	int err;
 
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
index 937f530c842e..35366207e91f 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -674,11 +674,14 @@ static inline bool ice_is_dual(struct ice_hw *hw)
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

