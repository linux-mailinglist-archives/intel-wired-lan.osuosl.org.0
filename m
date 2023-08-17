Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53BDC77EE09
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 02:01:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E0BE74178F;
	Thu, 17 Aug 2023 00:01:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E0BE74178F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692230492;
	bh=xQeY4TLNAP/eT5/O+h4jRAOt8SwsxZfuyt3jSVJoZMA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JSLg9MW3m6WbY9LOgLQWNYTBgHaLSvx6XukBWrZ9DoCL8ccobznGPPmooUjHCFLqG
	 hc+JE2okrr38+jg4bcmXz9/nWQkMgBCYwJQC3H9QhzPrLMqBP5//ynCv5ktjaXXwx3
	 vgw7HM0Jo7StpUd3lfbG5nbc0Ep5gTVXnyghTT96hx1j66VlSjQnIKnzjavHBP5deo
	 QG1fyk4xRAds61b2jB/Sm5A8t4OBF/WqWbZc11TniPO/e4E2x7wTGcjptbFHkd1wIO
	 WikamTV/cYhYA+4ukJ7q3827kuI3e0V3S/hkkYp44VVr3whK57wP68N8nA/MjXtOrV
	 HBc3SgeWYO3VA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U5nlU4eviUU0; Thu, 17 Aug 2023 00:01:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B282041776;
	Thu, 17 Aug 2023 00:01:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B282041776
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1763C1BF2AF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8E06183B77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8E06183B77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWP-FcHWwzwB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 00:01:05 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D0FAE83B70
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 00:01:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0FAE83B70
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="403649710"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="403649710"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="799805043"
X-IronPort-AV: E=Sophos;i="6.01,178,1684825200"; d="scan'208";a="799805043"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 17:01:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 16 Aug 2023 17:00:55 -0700
Message-ID: <20230817000058.2433236-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.41.0.1.g9857a21e0017.dirty
In-Reply-To: <20230817000058.2433236-1-jacob.e.keller@intel.com>
References: <20230817000058.2433236-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692230465; x=1723766465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nEyxsBLxjQmrOu+XLV6ayZ4DP+2Uby2edqdO0qQF72g=;
 b=aqi2rZ/QAi4kc/9xb4FqFKvOZlNU+E+3x7HiwKBeArf628WZaBSijkZA
 ue6aA6dmDJ/nYXxzTUdBFXVcWbe2hUDA4jtI2TODMeVMlLRQjGGsaf69C
 x//lSmTATlKtwoX4vHLMoAH9WusF0ciX98IA5G/53DVNVOxY+lR5uv4Mq
 Y66GA05CDRlqVT1TmpLf2i5k9n9sDQFF9PsZbqB3HD4ZcCk6u400iTHjy
 VDprzAv71uKgAtUgnzMFRFB/7Goz4x8pxg1CITiyRLGOjJafjm5rrs39o
 r0yvH6XyvweXhXf43+VadteVe1KosfEkSh9WRs3gPe8RK5NOK3usayDDU
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aqi2rZ/Q
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: fix pin assignment
 for E810-T without SMA control
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
 Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since commit 43c4958a3ddb ("ice: Merge pin initialization of E810 and E810T
adapters"), the ice_ptp_setup_pins_e810() function has been used for both
E810 and E810-T devices. The new implementation only distinguishes between
whether the device has SMA control or not. It was assumed this is always
true for E810-T devices. In addition, it does not set the n_per_out value
appropriately when SMA control is enabled.

In some cases, the E810-T device may not have access to SMA control. In
that case, the E810-T device actually has access to fewer pins than a
standard E810 device.

Fix the implementation to correctly assign the appropriate pin counts for
E810-T devices both with and without SMA control. The mentioned commit
already includes the appropriate macro values for these pin counts but they
were unused.

Instead of assigning the default E810 values and then overwriting them,
handle the cases separately in order of E810-T with SMA, E810-T without
SMA, and then standard E810. This flow makes following the logic easier.

Fixes: 43c4958a3ddb ("ice: Merge pin initialization of E810 and E810T adapters")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
New patch in v2.

This is not sent as a fix to net because it is effectively meaningless
without the following change to conditionally enable or disable the
ICE_F_SMA_CTRL flag. Currently for E810-T devices the driver always enables
ICE_F_SMA_CTRL. On failure to setup SMA pins, the driver clears all pin
functionality. Thus, this change does in some sense fix the mentioned
commit, but is not sufficient to meaningfully change behavior on its own as
it depends on the change to only enable SMA control when the device has
access according to the netlist.

 drivers/net/ethernet/intel/ice/ice_ptp.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 9524fcea9ae9..ca40ca220cc9 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -2204,16 +2204,20 @@ ice_ptp_setup_sma_pins_e810t(struct ice_pf *pf, struct ptp_clock_info *info)
 static void
 ice_ptp_setup_pins_e810(struct ice_pf *pf, struct ptp_clock_info *info)
 {
-	info->n_per_out = N_PER_OUT_E810;
-	info->n_ext_ts = N_EXT_TS_E810;
-
 	if (ice_is_feature_supported(pf, ICE_F_SMA_CTRL)) {
 		info->n_ext_ts = N_EXT_TS_E810;
+		info->n_per_out = N_PER_OUT_E810T;
 		info->n_pins = NUM_PTP_PINS_E810T;
 		info->verify = ice_verify_pin_e810t;
 
 		/* Complete setup of the SMA pins */
 		ice_ptp_setup_sma_pins_e810t(pf, info);
+	} else if (ice_is_e810t(&pf->hw)) {
+		info->n_ext_ts = N_EXT_TS_NO_SMA_E810T;
+		info->n_per_out = N_PER_OUT_NO_SMA_E810T;
+	} else {
+		info->n_per_out = N_PER_OUT_E810;
+		info->n_ext_ts = N_EXT_TS_E810;
 	}
 }
 
-- 
2.41.0.1.g9857a21e0017.dirty

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
