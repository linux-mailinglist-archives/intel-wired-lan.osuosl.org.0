Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56755910438
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 14:32:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 769508464D;
	Thu, 20 Jun 2024 12:32:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oRYz49MtZiCX; Thu, 20 Jun 2024 12:32:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EAFA846E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718886730;
	bh=qvNHMbV947eBKIi3IVcmM8kwEQXFyghe3Q2YyNLeUX0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hEqZ6wiIu3xY+901Xs8fejzD2sMRzpmsI9YkxUvCwvSrT6UFQqYx9Gb1krk+aNFkG
	 UwMVZ4gnt+gv5XrWCi2fMtKfM9yfQSlfswkSge6PdkzZiCbEddA7yKh0gIzPtna8aq
	 gd83Y3a5zokzL/0GdZGkzu7DWoMDn05iZy8DKkGcs2MTjUVoO1869E7xmqqB3Xn8bD
	 9Kd44OehF3kCNOb6Ic0FUrGwC3NSeCAnSuO4c7OX9nS0H3m21tL7pxAlKb06uxyqJM
	 BUv1wJS96Ll7NJCp6u39ERyIYP2dP7Di7QR6x2264UXf01TEG3VgGMQ3NUb6sgPnch
	 pn9tiZQMfciLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EAFA846E5;
	Thu, 20 Jun 2024 12:32:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 935D41BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7DB6142EC9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y3pkjIVPkCIk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 12:32:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=karol.kolacinski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 407C242EC1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 407C242EC1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 407C242EC1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:32:03 +0000 (UTC)
X-CSE-ConnectionGUID: 4TRM42l9Qeapzmy8nufpog==
X-CSE-MsgGUID: 3ZXLYCJdShysP6aPh4EEvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="41262898"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="41262898"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 05:32:03 -0700
X-CSE-ConnectionGUID: 0SV54oEYR6W+xBguuGE6RA==
X-CSE-MsgGUID: X+5R44lOTO+kH1QVh2jnEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="79712963"
Received: from kkolacin-desk1.igk.intel.com ([10.102.102.152])
 by orviesa001.jf.intel.com with ESMTP; 20 Jun 2024 05:32:01 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 14:27:10 +0200
Message-ID: <20240620123141.1582255-4-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240620123141.1582255-1-karol.kolacinski@intel.com>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718886723; x=1750422723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CsC8tWKXWqigv3FVjEzJq+a5FzgW/cwLvdxnWJJxKRs=;
 b=jW4vK1w1J5Ry079aRo/VfWt/8vrwgV+nwIgeB+f9TfUctPYVndf7HN10
 QHAEoU5l+pu5cBMO2dtkCvsGOd75yBcC1BNDRvb1tQaqd2gbFkwmf4vnO
 gqTHGIuWPMEPj7QygkEcrYScvWLKBRTNsYvyC3H4nCLWBRpjrM1nNDe8Q
 gd2SeaqQ+O+XrcmgQ13d7phHE2kJNaupnLDw0XrMJ+GZdrBAGMqgPwGUI
 OWofHux7ppe0OBrKA3TaQ7brtA8pAmYOHRkI0djuxA8y+bY0ozBTlJVZ+
 DVgl95ZkRf8ONN5ou8bD2oqFKSRliXCf/naLFzv9mJq7FgarD9njLf0df
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jW4vK1w1
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 3/3] ice: Reject pin requests
 with unsupported flags
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
V1 -> V2: adjusted indentation and added NULL config pointer check

 drivers/net/ethernet/intel/ice/ice_ptp.c | 38 ++++++++++++++----------
 drivers/net/ethernet/intel/ice/ice_ptp.h |  1 +
 2 files changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 0500ced1adf8..163b312c7cbc 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -1593,14 +1593,23 @@ void ice_ptp_extts_event(struct ice_pf *pf)
  * @store: If set to true, the values will be stored
  *
  * Configure an external timestamp event on the requested channel.
+ *
+ * Return: 0 on success, -EOPNOTUSPP on unsupported flags
  */
-static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
-			      struct ice_extts_channel *config, bool store)
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
+		return -EOPNOTSUPP;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	irq_reg = rd32(hw, PFINT_OICR_ENA);
@@ -1641,6 +1650,8 @@ static void ice_ptp_cfg_extts(struct ice_pf *pf, unsigned int chan,
 
 	if (store)
 		memcpy(&pf->ptp.extts_channels[chan], config, sizeof(*config));
+
+	return 0;
 }
 
 /**
@@ -1699,6 +1710,9 @@ static int ice_ptp_cfg_clkout(struct ice_pf *pf, unsigned int chan,
 	u32 func, val, gpio_pin;
 	u8 tmr_idx;
 
+	if (config && config->flags & ~PTP_PEROUT_PHASE)
+		return -EOPNOTSUPP;
+
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
 	/* 0. Reset mode & out_en in AUX_OUT */
@@ -1838,7 +1852,6 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 	bool sma_pres = false;
 	unsigned int chan;
 	u32 gpio_pin;
-	int err;
 
 	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL))
 		sma_pres = true;
@@ -1867,14 +1880,14 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
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
@@ -1899,14 +1912,11 @@ ice_ptp_gpio_enable_e810(struct ptp_clock_info *info,
 		extts_cfg.gpio_pin = gpio_pin;
 		extts_cfg.ena = !!on;
 
-		ice_ptp_cfg_extts(pf, chan, &extts_cfg, true);
-		return 0;
+		return ice_ptp_cfg_extts(pf, chan, &extts_cfg, true);
 	}
 	default:
 		return -EOPNOTSUPP;
 	}
-
-	return err;
 }
 
 /**
@@ -1919,19 +1929,18 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
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
@@ -1941,14 +1950,11 @@ static int ice_ptp_gpio_enable_e823(struct ptp_clock_info *info,
 		extts_cfg.gpio_pin = TIME_SYNC_PIN_INDEX;
 		extts_cfg.ena = !!on;
 
-		ice_ptp_cfg_extts(pf, rq->extts.index, &extts_cfg, true);
-		return 0;
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

