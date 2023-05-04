Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3EB6F6EB9
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 May 2023 17:14:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A9AF140BA0;
	Thu,  4 May 2023 15:14:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A9AF140BA0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683213258;
	bh=nxO0JHPa6eqpB7T/nAAiJ94wcDRdI7gP3svDCFqem9k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YpOV1+6WqZVkn8d0ORTMEVkbNrBpW4w0zjuS20Z4xr22g41MQnMpj6WlW3q9gluQL
	 rpOl+L5ygbvQLqqZ7GcMUQyd3QZQiVSmE9qpXc2umdfBpWDk6fHix9e6/AD7BoAocX
	 XfJoje0nL/bdHFD12zYLlSBR7vNtL5YdTtD7fek4P2Aql0cE4ZV7p/ZyH2Q+r7YG8A
	 RmZmbbE0uV7ISNtzDM1DP7kYcRtz0fvMH+fFgJNKCPG4BTSa7amuTAGecFSDMkZVAt
	 8puPWH16z7uzVxJ76YWcisl2wmi9NqP3234ie0xkvn2zePYfsl8+wqHMFPlyMh+hK/
	 dpg0eeNBkeRVQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uOyEMxRjkBhy; Thu,  4 May 2023 15:14:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 788DD40139;
	Thu,  4 May 2023 15:14:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 788DD40139
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D76B91BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 13:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B016841E30
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 13:16:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B016841E30
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PlYF3653N-jW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 13:16:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAF12400F8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EAF12400F8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 13:16:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="414399601"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="414399601"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 06:08:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="786535829"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="786535829"
Received: from mr10p30.jer.intel.com ([10.12.133.253])
 by FMSMGA003.fm.intel.com with ESMTP; 04 May 2023 06:08:36 -0700
From: Yochai Hagvi <yochai.hagvi@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 May 2023 16:08:14 +0300
Message-Id: <20230504130814.6502-1-yochai.hagvi@intel.com>
X-Mailer: git-send-email 2.21.3
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 04 May 2023 15:14:12 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683206182; x=1714742182;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lpow6FI9JiFtLpB4alXQwh19bClDeN8zNgqD9iz36uw=;
 b=SeJsdBt7f/44FvPsEleKEDhZSDzaPFjM5rvip1+2GecTmQnLjSrwtew1
 jk2PVB5tfOTFb0gTYxX3KbiwK3d/tiEX5Xgd9Iolgq4Kqm/jpEbcG1tpl
 plZeubknHC3V4s93BjnvYUX/TVZIBty2sW+CrZGbSLqQ6OChoxs0/AQsp
 UM0KQyD6IrzMpBZUo08+zYrH6jUu+MEDFz6872cLjbVTp2zxJbmI++sNY
 haNhm1KvNCf/N6dmOhOqUBO2ODkHC5il1wcBH8jgAplDSV79yCjg9ZTDi
 a5hp66LJVnkreHFKdFMFYzWS72LTlaD5Sog7Q79cnEq6Ts6Md98mihsRG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SeJsdBt7
Subject: [Intel-wired-lan] [PATCH net v1] ice: Schedule service task in IRQ
 thread_fn
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>,
 Yochai Hagvi <yochai.hagvi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On some RT kernels, scheduling service task in interrupt context may
result in a kernel panic. This is happenning due to queue_work call.
Move ice_service_task_schedule to IRQ bottom half.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 7c04057c524c..ecaf51b28b40 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3058,7 +3058,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 {
 	struct ice_pf *pf = (struct ice_pf *)data;
 	struct ice_hw *hw = &pf->hw;
-	irqreturn_t ret = IRQ_NONE;
 	struct device *dev;
 	u32 oicr, ena_mask;
 
@@ -3137,11 +3136,8 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		}
 	}
 
-	if (oicr & PFINT_OICR_TSYN_TX_M) {
+	if (oicr & PFINT_OICR_TSYN_TX_M)
 		ena_mask &= ~PFINT_OICR_TSYN_TX_M;
-		if (!hw->reset_ongoing)
-			ret = IRQ_WAKE_THREAD;
-	}
 
 	if (oicr & PFINT_OICR_TSYN_EVNT_M) {
 		u8 tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
@@ -3172,16 +3168,12 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		if (oicr & (PFINT_OICR_PCI_EXCEPTION_M |
 			    PFINT_OICR_ECC_ERR_M)) {
 			set_bit(ICE_PFR_REQ, pf->state);
-			ice_service_task_schedule(pf);
 		}
 	}
-	if (!ret)
-		ret = IRQ_HANDLED;
 
-	ice_service_task_schedule(pf);
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 
-	return ret;
+	return IRQ_WAKE_THREAD;
 }
 
 /**
@@ -3196,6 +3188,8 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	if (ice_is_reset_in_progress(pf->state))
 		return IRQ_HANDLED;
 
+	ice_service_task_schedule(pf);
+
 	while (!ice_ptp_process_ts(pf))
 		usleep_range(50, 100);
 

base-commit: d15a5df649ee6351197170c855148f07caf69d0b
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
