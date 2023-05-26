Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF1712FFA
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 00:23:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D724784DD6;
	Fri, 26 May 2023 22:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D724784DD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685139784;
	bh=n+GmH1tnDCehqqnveEsTiHI4BL4EbVFbmTJvO82gFAA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JxwtrpSZBAnq5hDIh8rYBRq8na5abGY6ZUu+Ge65iW4UvNHTEIQNPxpUXa+pRVfVa
	 MmPLyH2Dv+4EePzkN6S4cIJDNaZRsz6Z+8AKg5FwjzymSzynEYYLUsObRFP7zA5Cf5
	 2LQyDsGlVQakEj16hAZkUad0ldt3IBb8yVzCvCAN1yaaDuEakoCZ58rRO6IU1uv2xF
	 D46GY7M6tR+SEGlTX/b40ou9UXw7Z0DThJdKCTs0vcY44UOM4C8cRBg+JppJGVqnp5
	 Dua7lcu3n5o9MGGuXPE5kWAu+wtE/hfiBCUNLlix3J88XlzSFDkgaaQn/Us/Xuxhsp
	 JzFztXCrwltrg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GODc9NggjUCX; Fri, 26 May 2023 22:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B00C984D99;
	Fri, 26 May 2023 22:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B00C984D99
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FF021BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EA04984D9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA04984D9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDJci15cycEw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 22:22:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 31C3384D99
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 31C3384D99
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="338912492"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="338912492"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="1035510123"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="1035510123"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 26 May 2023 15:21:57 -0700
Message-ID: <20230526222158.2685796-5-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230526222158.2685796-1-jacob.e.keller@intel.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685139774; x=1716675774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XRfyBLCTze/CBY8sOdhy62bTvmqiq3bi4OPOpd7PceA=;
 b=LLH6qUGBTHwzs3nxhsj4yyse6MfzB9W/mwGstOkVh/sbq7akMIYiSQ9m
 zSYkYNBPN9xxkO4DSpSAlnaIxqOtwDJ+AOH63mmBAV5CvW4R24ZkYw7J1
 DFoAkvqqxJrCwntXtjfXJfgGkCJ2DyQ3MOvMctwsp1zLXfAyZcRgtuKkb
 TY3/OK/d/smRAJ4pATIDB2PBbITX7ywMwxHZzHWTakYMBfjmDcHL9wm8L
 vVEF+w2Jo/4rRx847yRaqwXPlgmH915iisYQTDIYzW2txOmgIC89DHVHH
 Zl6hfWJchcTN59Nv/vjqyuW9LUGOHEJw/Z96eJS7dGEpYKNRuAbWX51/y
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LLH6qUGB
Subject: [Intel-wired-lan] [PATCH iwl-next 4/5] ice: trigger
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
