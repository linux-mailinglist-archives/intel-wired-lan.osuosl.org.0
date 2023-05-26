Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A5E712FFF
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 00:23:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4EB9384DE0;
	Fri, 26 May 2023 22:23:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4EB9384DE0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685139802;
	bh=uGWDscdbbFBgrbVTaIGEDY3D6+W3HFqVJDZQqysL+j4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=DRkkjNWtPpt8Y4zO5HOSoy3mvt6M6ZoLT5cKm0E+U55CnHXLh+pDSLGO3v2tQhypV
	 jjfjO9hVzopNg7Z2Oma7Fz1Lnf1x9mBL1w1BFs7+hLEpZagDib72wvbJo7t0HqCZ20
	 DbyPhZPmvI++cBu5AKavMEILnEVcGpDid/inA7cRbFdXXolMK8DiRlY9v2EVrj7+zk
	 2qv4ZyEw5Psw2BkxRPyBlsBVJJNPOWFoy/FdDAlBmNDcQyoZQyXSBuP95N3gifjL7q
	 +0nrsQ/gsEoZn4IZIikVcE1FwcX8OgOMXrRlmBf5VMOgmrbiemphUtkoN15RNUqJra
	 XJVmcQgY0AJyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niFACX9PPEVS; Fri, 26 May 2023 22:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 12A1F84D9E;
	Fri, 26 May 2023 22:23:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 12A1F84D9E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC6A81BF33D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7CEE142A96
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CEE142A96
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RHyN8xnc05OW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 22:22:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64B2F42A9B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64B2F42A9B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 22:22:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="338912493"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="338912493"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="1035510127"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="1035510127"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 15:22:04 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 26 May 2023 15:21:58 -0700
Message-ID: <20230526222158.2685796-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230526222158.2685796-1-jacob.e.keller@intel.com>
References: <20230526222158.2685796-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685139774; x=1716675774;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jHIkguiVSGtmHbTx0JYDuHTTM4tGO/SGwOcDufN+LSk=;
 b=kk3ZVVdh0MesxsDd+SBfmVXzFEWLG7bzY4Obmu6y69tAk7NK910qgI5U
 bYJZAUrr0CaGREwBhfwx6ZGSLr7E0wp6fp5D+Bk7ULxvbykMghU6IK/Y/
 hN8Avk6UOGqeMMlZ0lFIdi9xVEfVI8zSZIWVAlTBRZ/8nVJNTAgCrgk6B
 R1f7hI4/KWa1Vh14Theo2iSIacV6aXdAkw/pxSSjTvC5d0V5IplPJU+Kh
 MUk0j6pMBwslP4HNgFXdDSgdkDlDXhLZpmxp2iNMPbnF1CzZs0Ct7qn/5
 4k14UmqSjUa5hAedsSu+/H/U7jAoOctrcILwVzUWPEXVVWgB2RIir37jv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kk3ZVVdh
Subject: [Intel-wired-lan] [PATCH iwl-next 5/5] ice: do not re-enable
 miscellaneous interrupt until thread_fn completes
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

At the end of ice_misc_intr() the driver calls ice_irq_dynamic_ena() to
re-enable the miscellaneous interrupt. This is done before the
ice_misc_intr_thread_fn can run and complete.

According to the kernel function comment documentation for
request_threaded_irq(), the interrupt should remain disabled until the
thread function completes its task.

By re-enabling the interrupt at the end of the hard IRQ, it is possible for
a new interrupt to trigger while the thread function is processing. This is
problematic for PTP Tx timestamps.

For E822 devices, the hardware in the PHY keeps track of how many
outstanding timestamps are generated and how many timestamps are read from
the PHY.

This counter is incremented once for each timestamp that is captured by
hardware, and decremented once each time a timestamp is read from the PHY.
The PHY will not generate a new interrupt unless this internal counter is
zero before the most recently captured timestamp.

Because of this counter behavior, a race with the hard IRQ and threaded IRQ
function can result in the potential for the counter to get stuck such that
no new interrupts will be triggered until the device is reset.

Consider the following flow:

 1 -> Tx timestamp completes in hardware
 2 -> timestamp interrupt occurs
 3 -> ice_misc_intr() re-enables timestamp interrupt, and wakes the
      thread_fn
 4 -> thread_fn is running and processing Tx timestamp
 5 -> the Tx timestamp is read from PHY, clearing the counter
 6 -> a new Tx timestamp completes in hardware, triggering interrupt
 7 -> the thread_fn hasn't exited and reported IRQ handled
 8 -> ice_misc_intr() triggers and sees PTP interrupt, so tries to wake thread
 9 -> thread_fn is already running (IRQTF_RUNTHREAD is set still!) so we
      skip running the thread...
10 -> an outstanding timestamp is remaining but we never read it
11 -> interrupt never triggers again

The fix for this complicated race condition is simple: do not re-enable the
miscellaneous interrupt until *after* the thread function completes. If a
new timestamp event triggers while the interrupt is disabled, it will be
remembered and should cause the interrupt to trigger again immediately
after we re-enable the interrupt.

Fixes: 1229b33973c7 ("ice: Add low latency Tx timestamp read")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 72e1b919b2d3..51fe3da0d54f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3179,8 +3179,6 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 		}
 	}
 
-	ice_irq_dynamic_ena(hw, NULL, NULL);
-
 	return IRQ_WAKE_THREAD;
 }
 
@@ -3192,6 +3190,9 @@ static irqreturn_t ice_misc_intr(int __always_unused irq, void *data)
 static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 {
 	struct ice_pf *pf = data;
+	struct ice_hw *hw;
+
+	hw = &pf->hw;
 
 	if (ice_is_reset_in_progress(pf->state))
 		return IRQ_HANDLED;
@@ -3204,8 +3205,6 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 	}
 
 	if (pf->oicr_misc & PFINT_OICR_TSYN_TX_M) {
-		struct ice_hw *hw = &pf->hw;
-
 		/* Process outstanding Tx timestamps. If there is more work,
 		 * re-arm the interrupt to trigger again.
 		 */
@@ -3217,6 +3216,8 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 		pf->oicr_misc &= ~PFINT_OICR_TSYN_TX_M;
 	}
 
+	ice_irq_dynamic_ena(hw, NULL, NULL);
+
 	return IRQ_HANDLED;
 }
 
-- 
2.40.0.471.gbd7f14d9353b

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
