Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AEBEF716B7C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 19:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B43781FBF;
	Tue, 30 May 2023 17:46:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B43781FBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685468812;
	bh=n+GmH1tnDCehqqnveEsTiHI4BL4EbVFbmTJvO82gFAA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TXSeJbT9Tl+cy+h4WblunDdsXvQajOq4Gj6XiPBKZK/9ToKVy1/DgKEc7yvvCUeVJ
	 8UIM4BRf/GCSJxS1vY72V2dHaQRCDvqocLU3dqA1PoD5b1C57JWB58JGprFDJr4CWo
	 yZ7U3V6boz0NIjHTCilCT73c2fVADCit7l4NSJDbtcWF4JHr7NzLgo8kU04tyXx2n5
	 n2arxCE0kThawqDQHrbFbGYdnTtWrwL1T58kl1rXPFu+oAG81BenHD8FViS67rnC6F
	 OexWNuAuybORo4DA7iWCQmMPuOez98w1Jw4wM2zrD10tTB+uS6iKL2F1856mi7aIBa
	 Gza0GFubTmKLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T6NoFk1Z7S4d; Tue, 30 May 2023 17:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36FB781F19;
	Tue, 30 May 2023 17:46:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36FB781F19
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2AB2D1BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C436181F36
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C436181F36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xsb-6oFJWYr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 17:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2673581F4A
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2673581F4A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 17:46:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="358253157"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="358253157"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:46:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776430992"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="776430992"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 10:46:22 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Tue, 30 May 2023 10:46:04 -0700
Message-ID: <20230530174605.2772054-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230530174605.2772054-1-jacob.e.keller@intel.com>
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685468784; x=1717004784;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XRfyBLCTze/CBY8sOdhy62bTvmqiq3bi4OPOpd7PceA=;
 b=nm/fM6RAfwUe7rMl/vqeIfEZBlMXFSgIKkFr5zQ5+lmMCRGsILuBdFVh
 OvjzlQqUC0dOCmes3KnESDkwK1hu6Ae0NmEmDMBjjh4jpOx2Y7t9Vaw4G
 i5hbnYxLQSB/c9jZ/aXhYJ61sEieUfibcHTpR9VnhMW02WFQaV7040/9o
 ykm7yJg5gJTzbi74szdEUEWlAW6fZbjl1PDyBnJa6BvWxcAPSDK+wZGUD
 2rsrKhYC4yEDbTx7hEMvwP3xpgAW8mslKcBX5ju1jl+qgGuoxhFruwaGo
 Y+X/vaIEexKEAzoOWajSnoxDj6L73LAmk/CG7/JHuhoiaiF8FnDlR0rb9
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nm/fM6RA
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/5] ice: trigger
 PFINT_OICR_TSYN_TX interrupt instead of polling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In ice_misc_intr_thread_fn(), if we do not complete all Tx timestamp work,
the thread function will poll continuously forever.

For E822 hardware, this wastes time as the return value from
ice_ptp_process_ts() is accurate and always reports correctly that the PHY
actually has new timestamp data.

In addition, if we receive enough timestamps at the right pacing, we might
never exit this polling and thus prevent other interrupt tasks from being
processed.

Fix this by instead writing to PFINT_OICR, causing an emulated interrupt to
be triggered immediately. This does take slightly more processing than just
re-checking the timestamps. However, it allows all of the other interrupt
causes a chance to be processed first in the hard IRQ function.

Note that the OICR interrupt is throttled to 8K per second, so the hardware
will not let the interrupt trigger more often than once every 124
microseconds, so this should not cause a significant increase in CPU usage
vs the sleeping method.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 481dccdb95cd..72e1b919b2d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3204,8 +3204,16 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	}
 
 	if (pf->oicr_misc & PFINT_OICR_TSYN_TX_M) {
-		while (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING)
-			usleep_range(50, 100);
+		struct ice_hw *hw = &pf->hw;
+
+		/* Process outstanding Tx timestamps. If there is more work,
+		 * re-arm the interrupt to trigger again.
+		 */
+		if (ice_ptp_process_ts(pf) == ICE_TX_TSTAMP_WORK_PENDING) {
+			wr32(hw, PFINT_OICR, PFINT_OICR_TSYN_TX_M);
+			ice_flush(hw);
+		}
+
 		pf->oicr_misc &= ~PFINT_OICR_TSYN_TX_M;
 	}
 
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
