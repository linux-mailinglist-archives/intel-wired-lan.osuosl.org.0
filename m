Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5C4831EAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jan 2024 18:46:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 855F6843B3;
	Thu, 18 Jan 2024 17:46:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 855F6843B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705599991;
	bh=Jns4PnqQPoROD0JUN2jeWyIcuSA6ap/qVfSXml7xxlA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ll/T/Wnjo3xJ+tDviJGp7RfXM5OSdk1vHHhRQHbgujbR0722tUiWzIKKwTRqe4nKl
	 kyelsvj2YoAhoMTtp4JzFc5Q3KIywADT27aH67tOcORBzunmsWLPCE/n45mgdZWhWL
	 fl6heG3ZopOw98gJXeM8Rg6uCjVzVsyYsZNf8oJ3I2EZ/mZPLuzkjKyzmE9nuG1Wrq
	 IUKQ7jJVHm1ml0g9igVIhYBeykMq7aqtB1M1COYWHaTiJm6UMI/k7MNdnK4YzIIgw6
	 um9kRYpN+B44Qq70S9nmDZgiJS0hFVLCl28lGFCDYAW8yZtNyefmkKDt3J2amXdZaR
	 6DpsC1tGPLy2g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aYgyl7Wt2NVR; Thu, 18 Jan 2024 17:46:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7D52783EEF;
	Thu, 18 Jan 2024 17:46:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7D52783EEF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 361AC1BF376
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32C1D6F59A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32C1D6F59A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0allL3_s3IZS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jan 2024 17:46:14 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6468E6F5B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jan 2024 17:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6468E6F5B9
X-IronPort-AV: E=McAfee;i="6600,9927,10956"; a="22001402"
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="22001402"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2024 09:46:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,203,1701158400"; d="scan'208";a="26819738"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by fmviesa001.fm.intel.com with ESMTP; 18 Jan 2024 09:46:13 -0800
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Jan 2024 18:45:48 +0100
Message-Id: <20240118174552.2565889-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240118174552.2565889-1-karol.kolacinski@intel.com>
References: <20240118174552.2565889-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705599975; x=1737135975;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bTlmvUSATI49R2ZVPnIk+YOT+EvdgnxRthhkeTs9BI8=;
 b=FV6Ru6Jtl0qvD2BMzwDfwPswzGBK+hA7lcX3pxqL7thXzC0FSc6VMCis
 u6EK//q0ExqTrgZmjssnOsRKBqTvqFBVuw/Q3Uo5jrFx/CqNegzwG+QB8
 NzucDCkLdPMu1S1Ks5YHAueuBWKSuYsAnxW7sr1OK40XOs55ZHyIwTS0S
 53tNe3cTbEYBbRk9KigvlA17hOyzgVA9ZNy7dp4KSiLkBh488LVUg1Gcv
 Eil+JW3H7daz3dZE82J5RYpyuCw+LRZ0gF066In7QboVriymmVEBDD+Af
 XWek3aHLujmnEBMhIYOp+mHLS04OpUsAX6FEVpg5qO4jnQIENXGd9D7BZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FV6Ru6Jt
Subject: [Intel-wired-lan] [PATCH v6 iwl-next 3/7] ice: rename verify_cached
 to has_ready_bitmap
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The tx->verify_cached flag is used to inform the Tx timestamp tracking
code whether it needs to verify the cached Tx timestamp value against
a previous captured value. This is necessary on E810 hardware which does
not have a Tx timestamp ready bitmap.

In addition, we currently rely on the fact that the
ice_get_phy_tx_tstamp_ready() function returns all 1s for E810 hardware.
Instead of introducing a brand new flag, rename and verify_cached to
has_ready_bitmap, inverting the relevant checks.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
---
V5 -> V6: split the patch and left only rename part here

 drivers/net/ethernet/intel/ice/ice_ptp.c | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h |  8 +++++---
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 96b5f992f127..558716aa6ef1 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -606,11 +606,11 @@ void ice_ptp_complete_tx_single_tstamp(struct ice_ptp_tx *tx)
 	 * timestamp. If it is not, skip this for now assuming it hasn't yet
 	 * been captured by hardware.
 	 */
-	if (!drop_ts && tx->verify_cached &&
+	if (!drop_ts && !tx->has_ready_bitmap &&
 	    raw_tstamp == tx->tstamps[idx].cached_tstamp)
 		return;
 
-	if (tx->verify_cached && raw_tstamp)
+	if (!tx->has_ready_bitmap && raw_tstamp)
 		tx->tstamps[idx].cached_tstamp = raw_tstamp;
 	clear_bit(idx, tx->in_use);
 	skb = tx->tstamps[idx].skb;
@@ -761,7 +761,7 @@ static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
 
 skip_ts_read:
 		spin_lock_irqsave(&tx->lock, flags);
-		if (tx->verify_cached && raw_tstamp)
+		if (!tx->has_ready_bitmap && raw_tstamp)
 			tx->tstamps[idx].cached_tstamp = raw_tstamp;
 		clear_bit(idx, tx->in_use);
 		skb = tx->tstamps[idx].skb;
@@ -1014,7 +1014,7 @@ ice_ptp_init_tx_e82x(struct ice_pf *pf, struct ice_ptp_tx *tx, u8 port)
 	tx->block = port / ICE_PORTS_PER_QUAD;
 	tx->offset = (port % ICE_PORTS_PER_QUAD) * INDEX_PER_PORT_E82X;
 	tx->len = INDEX_PER_PORT_E82X;
-	tx->verify_cached = 0;
+	tx->has_ready_bitmap = 1;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
@@ -1037,7 +1037,7 @@ ice_ptp_init_tx_e810(struct ice_pf *pf, struct ice_ptp_tx *tx)
 	 * verify new timestamps against cached copy of the last read
 	 * timestamp.
 	 */
-	tx->verify_cached = 1;
+	tx->has_ready_bitmap = 0;
 
 	return ice_ptp_alloc_tx_tracker(tx);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index afe454abe997..aa7a5588d11d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -100,7 +100,7 @@ struct ice_perout_channel {
  * the last timestamp we read for a given index. If the current timestamp
  * value is the same as the cached value, we assume a new timestamp hasn't
  * been captured. This avoids reporting stale timestamps to the stack. This is
- * only done if the verify_cached flag is set in ice_ptp_tx structure.
+ * only done if the has_ready_bitmap flag is not set in ice_ptp_tx structure.
  */
 struct ice_tx_tstamp {
 	struct sk_buff *skb;
@@ -130,7 +130,9 @@ enum ice_tx_tstamp_work {
  * @init: if true, the tracker is initialized;
  * @calibrating: if true, the PHY is calibrating the Tx offset. During this
  *               window, timestamps are temporarily disabled.
- * @verify_cached: if true, verify new timestamp differs from last read value
+ * @has_ready_bitmap: if true, the hardware has a valid Tx timestamp ready
+ *                    bitmap register. If false, fall back to verifying new
+ *                    timestamp values against previously cached copy.
  * @last_ll_ts_idx_read: index of the last LL TS read by the FW
  */
 struct ice_ptp_tx {
@@ -143,7 +145,7 @@ struct ice_ptp_tx {
 	u8 len;
 	u8 init : 1;
 	u8 calibrating : 1;
-	u8 verify_cached : 1;
+	u8 has_ready_bitmap : 1;
 	s8 last_ll_ts_idx_read;
 };
 
-- 
2.40.1

