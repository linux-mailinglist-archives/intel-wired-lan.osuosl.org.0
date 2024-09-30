Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAE398A19C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 14:10:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB1576068B;
	Mon, 30 Sep 2024 12:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VjKKjYa5n-Eg; Mon, 30 Sep 2024 12:10:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C28AF60635
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727698246;
	bh=uvKgP7bjza7eZlqWd57W41tqPjOfAu6Z/nqul9cVZjw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KiKDFp46sOwKsS1Jhr+PjTnNDapNyBKHxNQGDsakD/+9YpOizh76VpzKnFl8zbOeB
	 /lpnJjSYsazR1iHl2WrAAXRqozdBUKfA3/rEzanGEYcZrF6xSemS0YpsC6UsxnTYpQ
	 GGXNnYoEki84pRMfgto77fj/9hElf4sZWX1V2yHl33GKbaqPbzX1xJjXsZIVgMYwH4
	 8FAYLAA1DkyVV/miah9eELVKyS9UPS1jXbqp2d9pAJTgKeDMdJP9brSyyjpFGpj22X
	 VRFZc+NvfssW9iIBKtS+6tdfUYu2WJSkYDtvYChMvaIOcPvmEUomcFqaLok439YHnw
	 HwxxtFsFvEdnw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C28AF60635;
	Mon, 30 Sep 2024 12:10:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B2AD1BF31E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 664444048B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GMdJxdYVreSQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 12:10:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1174D4028E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1174D4028E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1174D4028E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 12:10:42 +0000 (UTC)
X-CSE-ConnectionGUID: RrpKK+FzTcWJ21tnPST4vQ==
X-CSE-MsgGUID: gZUb49XDQ1ybSjqZ9lH77Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26736095"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26736095"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 05:10:41 -0700
X-CSE-ConnectionGUID: P3LJnUF4S46PRH1NYHF9Jw==
X-CSE-MsgGUID: LisDMC52SCaJq70CzNLJhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="78037027"
Received: from kkolacin-desk1.igk.intel.com ([10.217.160.108])
 by orviesa005.jf.intel.com with ESMTP; 30 Sep 2024 05:10:39 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 30 Sep 2024 14:08:42 +0200
Message-ID: <20240930121022.671217-5-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20240930121022.671217-1-karol.kolacinski@intel.com>
References: <20240930121022.671217-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727698243; x=1759234243;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1PkwkLsRcIsFtbEQapZrGyLZujZldlYgc21sYKS+Nkk=;
 b=J83vObGOnvoKrCt5lr1FUmV5c33ozXg8tScVa3FkmTK+hDgPV1eoP8KS
 vLznJbubaE9a+SkCLMfxgRe9W0dD8roIbq/9St0BH4MGC/SIwokAQtUsv
 sI+B6nAfpu8D5yziO9chAB4t0MLvIy9pZdUq8fTh2eejOGCiq0ORycJ6v
 uSc6+Wo8RlfTOOpddRC542zwaFyYyMZJk/AP5syTz8VZPRRlnuT5H5+ks
 fBPRILw1YBQ0e2tHZOF6kEEWoG6T1VzqYRISqmUhfullxmXvqqu9fBxw+
 podfgYqkuHjOUDwZhwoq/mL6Ld9FSyjm+Ik1RWdsh7CbHUAI6ujywmnF6
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=J83vObGO
Subject: [Intel-wired-lan] [PATCH iwl-net 4/5] ice: Remove unnecessary
 offset calculation for PF scoped registers
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Jacob Keller <jacob.e.keller@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The PFTSYN_SEM, PFINT_TSYN_MSK and PFHH_SEM registers are defined in the
datasheet as "PF scoped". PF scoped registers appear in the datasheet to
have a different offset per PF. This is misleading. Each PF has its own
scope of the register, and accessing any of the offsets on a given PF
will read the PF-appropriate register. There is no reason to calculate
different offsets when reading and writing to these registers.

The original code implementing access to the semaphore registers failed
to understand this nature of PF-scoped registers and included additional
offset calculations. Remove these.

This can be tested with direct access to the registers to show that each
PF sees its own scoped register:

  user@system:~ice$ for i in {0..7}; do sudo readpci -q -s 17:00.0 \
                    -a $((0x88880 + 4*i)); done
  0x88880 == 0x00000001
  0x88884 == 0x00000001
  0x88888 == 0x00000001
  0x8888c == 0x00000001
  0x88890 == 0x00000001
  0x88894 == 0x00000001
  0x88898 == 0x00000001
  0x8889c == 0x00000001
  user@system:~ice$ for i in {0..7}; do sudo readpci -q -s 17:00.0 \
                    -a $((0x88880 + 4*i)) -w 0 ; done
  0x88880 == 0x00000000
  0x88884 == 0x00000000
  0x88888 == 0x00000000
  0x8888c == 0x00000000
  0x88890 == 0x00000000
  0x88894 == 0x00000000
  0x88898 == 0x00000000
  0x8889c == 0x00000000
  user@system:~ice$ for i in {0..7}; do sudo readpci -q -s 17:00.0 \
                    -a $((0x88880 + 4*i)); done
  0x88880 == 0x00000001
  0x88884 == 0x00000001
  0x88888 == 0x00000001
  0x8888c == 0x00000001
  0x88890 == 0x00000001
  0x88894 == 0x00000001
  0x88898 == 0x00000001
  0x8889c == 0x00000001

Additionally, you can quickly tell that the PF-offset doesn't matter
because its not an included parameter of the auto-generated register
header file. Other parameters which do matter get generated as part of
the offset macros.

Fix the uses of PFTSYN_SEM, PFINT_TSYN_MSK and PFHH_SEM to stop doing
the unnecessary offset calculation.

Fixes: 7d606a1e2d05 ("ice: unify logic for programming PFINT_TSYN_MSK")
Fixes: 03cb4473be92 ("ice: add low level PTP clock access functions")
Fixes: 13a64f0b9894 ("ice: support crosstimestamping on E822 devices if supported")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c    | 10 +++++-----
 drivers/net/ethernet/intel/ice/ice_ptp.h    |  1 -
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c |  4 ++--
 drivers/net/ethernet/intel/ice/ice_ptp_hw.h |  2 --
 4 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index ef2e858f49bb..956d5e21e261 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -269,12 +269,12 @@ static void ice_ptp_cfg_tx_interrupt(struct ice_pf *pf)
 	switch (pf->ptp.tx_interrupt_mode) {
 	case ICE_PTP_TX_INTERRUPT_ALL:
 		/* React to interrupts across all quads. */
-		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x1f);
+		wr32(hw, PFINT_TSYN_MSK, 0x1f);
 		enable = true;
 		break;
 	case ICE_PTP_TX_INTERRUPT_NONE:
 		/* Do not react to interrupts on any quad. */
-		wr32(hw, PFINT_TSYN_MSK + (0x4 * hw->pf_id), (u32)0x0);
+		wr32(hw, PFINT_TSYN_MSK, 0);
 		enable = false;
 		break;
 	case ICE_PTP_TX_INTERRUPT_SELF:
@@ -2186,7 +2186,7 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 
 	for (i = 0; i < MAX_HH_HW_LOCK_TRIES; i++) {
 		/* Get the HW lock */
-		hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+		hh_lock = rd32(hw, PFHH_SEM);
 		if (hh_lock & PFHH_SEM_BUSY_M) {
 			usleep_range(10000, 15000);
 			continue;
@@ -2236,9 +2236,9 @@ ice_ptp_get_syncdevicetime(ktime_t *device,
 	ice_ptp_src_cmd(hw, ICE_PTP_NOP);
 
 	/* Release HW lock */
-	hh_lock = rd32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+	hh_lock = rd32(hw, PFHH_SEM);
 	hh_lock = hh_lock & ~PFHH_SEM_BUSY_M;
-	wr32(hw, PFHH_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), hh_lock);
+	wr32(hw, PFHH_SEM, hh_lock);
 
 	if (i == MAX_HH_CTL_LOCK_TRIES)
 		return -ETIMEDOUT;
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index 2db2257a0fb2..3a61ea09f406 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -280,7 +280,6 @@ struct ice_ptp {
 #define ptp_info_to_pf(i) \
 	container_of(__ptp_info_to_ptp((i)), struct ice_pf, ptp)
 
-#define PFTSYN_SEM_BYTES		4
 #define PTP_SHARED_CLK_IDX_VALID	BIT(31)
 #define TS_CMD_MASK			0xF
 #define SYNC_EXEC_CMD			0x3
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 41c736868d82..4979633cab98 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -5369,7 +5369,7 @@ bool ice_ptp_lock(struct ice_hw *hw)
 #define MAX_TRIES 15
 
 	for (i = 0; i < MAX_TRIES; i++) {
-		hw_lock = rd32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
+		hw_lock = rd32(hw, PFTSYN_SEM);
 		hw_lock = hw_lock & PFTSYN_SEM_BUSY_M;
 		if (hw_lock) {
 			/* Somebody is holding the lock */
@@ -5392,7 +5392,7 @@ bool ice_ptp_lock(struct ice_hw *hw)
  */
 void ice_ptp_unlock(struct ice_hw *hw)
 {
-	wr32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id), 0);
+	wr32(hw, PFTSYN_SEM, 0);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
index c731196ace30..70d851bafaa3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.h
@@ -452,8 +452,6 @@ static inline u64 ice_get_base_incval(struct ice_hw *hw)
 	}
 }
 
-#define PFTSYN_SEM_BYTES	4
-
 #define ICE_PTP_CLOCK_INDEX_0	0x00
 #define ICE_PTP_CLOCK_INDEX_1	0x01
 
-- 
2.46.1

