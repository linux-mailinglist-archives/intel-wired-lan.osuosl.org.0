Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5299790C76A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 12:43:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20E3140907;
	Tue, 18 Jun 2024 10:43:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OdKyWwwmzSj3; Tue, 18 Jun 2024 10:43:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 308B740592
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718707414;
	bh=tNOReOB5PwFCWPs8TD2DHsi11Z0nDSj3KT3qGC+TRMQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ovNvoEB/UByRPhHdwdlYEPeCZEjDo0QxeOH1d6AmtQFPko+THrt6ymTjrqsRyIy2Q
	 7wYmZY9IsjcwA6WdHAyDMME0joNp708X0I8CILTLiv2OwGCFOnZ7NgMC3ubNmqmsm7
	 0nAz8R3mUDCxJSY/ojj80+e7gOaRyVCaIdja8EPjhyrFpQvZ6MiJNQ8WmH2TLyB+/L
	 mv2OpP73GLp/D+2hnbOjZtht86Lk1aJ10MoXtY/zc+h/oJGtaEJENRMCwuT8uJMwFc
	 OWFMUGBvrmKlImzU0LCA68cLan6I7vxrKGMgux9r3SxG5RKBXPAxI7XiUB0IJo++6W
	 fgCvGaTnMiRxw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 308B740592;
	Tue, 18 Jun 2024 10:43:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 308161BF280
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AA5A60B6A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id otq4H0evC1vT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 10:43:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5046360730
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5046360730
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5046360730
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 10:43:30 +0000 (UTC)
X-CSE-ConnectionGUID: 8yT4ZXWHT2uRxlRGiZrJyw==
X-CSE-MsgGUID: xaXw2mfOS+aZn+IDxm1KSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15719458"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15719458"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 03:43:30 -0700
X-CSE-ConnectionGUID: MlY/9n05QkqcGcAxogdLyA==
X-CSE-MsgGUID: w0beraEARDCNvec3xuUJOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="42227777"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa007.jf.intel.com with ESMTP; 18 Jun 2024 03:43:28 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 18 Jun 2024 12:41:38 +0200
Message-ID: <20240618104310.1429515-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240618104310.1429515-1-karol.kolacinski@intel.com>
References: <20240618104310.1429515-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718707410; x=1750243410;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=V5N+k9e+K8IChb6ZHPElGgsyagVkTjyu4SF1Lng2fl0=;
 b=SOzDOVF/t0OvLNhcIQc4wU9rNxaEQpASisRkjDEuUb2oc614iyAdTUcW
 JnfvmPaFlxrtz+Gzp4pzovx19p6GXI638UGta7YC/n92oIDHYnf1Kh2LH
 jo9wh+UM0ml7ZiJ4su021xfANQ1Ht+afhcgZ1vKYn543tFovp95NAEg+K
 bkQq3lD06dN/REE5pJd5uhcdzEFvx87rfnpJGasdjdtKLZxxB0koVTXnH
 dUUqeP2extwD1Y7/mcBf9Ny5stw0LUfufClzBBinHbVzKJXwKkxs6Dswc
 hwdrGkVFSJZMhRABDRLiMgMPMuWstHhoJya4apTUSQ3fAjPczrZdkmeZx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SOzDOVF/
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: Reject pin requests with
 unsupported flags
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
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jacob Keller <jacob.e.keller@intel.com>

The driver receives requests for configuring pins via the .enable
callback of the PTP clock object. These requests come into the driver
with flags which modify the requested behavior from userspace. Current
implementation in ice does not reject flags that it doesn't support.
This causes the driver to incorrectly apply requests with such flags as
PTP_PEROUT_DUTY_CYCLE, or any future flags added by the kernel which it
is not yet aware of.

Fix this by properly validating flags in both ice_ptp_cfg_perout and
ice_ptp_cfg_extts. Ensure that we check by bit-wise negating supported
flags rather than just checking and rejecting known un-supported flags.
This is preferable, as it ensures better compatibility with future
kernels.

Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 41 ++++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  1 +
 2 files changed, 25 insertions(+), 17 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index b952cad42f92..5fa377786f4c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1591,14 +1591,23 @@ void ice_ptp_extts_event(struct ice_pf *pf)
  * @store: If set to true, the values will be stored
  *
  * Configure an external timestamp event on the requested channel.
-  */
-static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
-			      struct ice_extts_channel *config, bool store)
+ *
+ * Return: 0 on sucess, -EOPNOTUSPP on unsupported flags
+ */
+static int ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
+			     struct ice_extts_channel *config, bool store)
 {
 	u32 func, aux_reg, gpio_reg, irq_reg;
 	struct ice_hw *hw = &pf->hw;
 	u8 tmr_idx;
 
+	/* Reject requests with unsupported flags */
+	if (config->flags & ~(PTP_ENABLE_FEATURE |
+			      PTP_RISING_EDGE |
+			      PTP_FALLING_EDGE |
+			      PTP_STRICT_FLAGS))
+	return -EOPNOTSUPP;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	irq_reg = rd32(hw, PFINT_OICR_ENA);
@@ -1639,6 +1648,8 @@ static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
 
 	if (store)
 		memcpy(&pf->ptp.extts_channels[chan], config, sizeof(*config));
+
+	return 0;
 }
 
 /**
@@ -1697,6 +1708,9 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	u32 func, val, gpio_pin;
 	u8 tmr_idx;
 
+	if (config->flags & ~PTP_PEROUT_PHASE)
+		return -EOPNOTSUPP;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* 0. Reset mode & out_en in AUX_OUT */
@@ -1836,7 +1850,6 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 	bool sma_pres = false;
 	unsigned int chan;
 	u32 gpio_pin;
-	int err;
 
 	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
 		sma_pres = true;
@@ -1865,14 +1878,14 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 			clk_cfg.gpio_pin = chan;
 		}
 
+		clk_cfg.flags = rq->perout.flags;
 		clk_cfg.period = ((rq->perout.period.sec * NSEC_PER_SEC) +
 				   rq->perout.period.nsec);
 		clk_cfg.start_time = ((rq->perout.start.sec * NSEC_PER_SEC) +
 				       rq->perout.start.nsec);
 		clk_cfg.ena = !!on;
 
-		err = ice_ptp_cfg_clkout(pf, chan, &clk_cfg, true);
-		break;
+		return ice_ptp_cfg_clkout(pf, chan, &clk_cfg, true);
 	}
 	case PTP_CLK_REQ_EXTTS:
 	{
@@ -1897,14 +1910,12 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 		extts_cfg.gpio_pin = gpio_pin;
 		extts_cfg.ena = !!on;
 
-		ice_ptp_cfg_extts(pf, chan, &extts_cfg, true);
-		return 0;
+
+		return ice_ptp_cfg_extts(pf, chan, &extts_cfg, true);
 	}
 	default:
 		return -EOPNOTSUPP;
 	}
-
-	return err;
 }
 
 /**
@@ -1917,19 +1928,18 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
 				    struct ptp_clock_request *rq, int on)
 {
 	struct ice_pf *pf = ptp_info_to_pf(info);
-	int err;
 
 	switch (rq->type) {
 	case PTP_CLK_REQ_PPS:
 	{
 		struct ice_perout_channel clk_cfg = {};
 
+		clk_cfg.flags = rq->perout.flags;
 		clk_cfg.gpio_pin = PPS_PIN_INDEX;
 		clk_cfg.period = NSEC_PER_SEC;
 		clk_cfg.ena = !!on;
 
-		err = ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
-		break;
+		return ice_ptp_cfg_clkout(pf, PPS_CLK_GEN_CHAN, &clk_cfg, true);
 	}
 	case PTP_CLK_REQ_EXTTS:
 	{
@@ -1939,14 +1949,11 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
 		extts_cfg.gpio_pin = TIME_SYNC_PIN_INDEX;
 		extts_cfg.ena = !!on;
 
-		ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
-		break;
+		return ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
 	}
 	default:
 		return -EOPNOTSUPP;
 	}
-
-	return err;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
index f1171cdd93c8..e2af9749061c 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.h
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
@@ -29,6 +29,7 @@ enum ice_ptp_pin_e810t {
 struct ice_perout_channel {
 	bool ena;
 	u32 gpio_pin;
+	u32 flags;
 	u64 period;
 	u64 start_time;
 };
-- 
2.43.0

