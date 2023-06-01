Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D871F47E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jun 2023 23:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CCBE41718;
	Thu,  1 Jun 2023 21:15:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CCBE41718
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685654145;
	bh=90t2EqvXMG8BHlbDqp3J/KAAN/8CxfJmWeo8xckZpoE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Urt+om7CU88m9ncb08doXeNOQnf8TrUNXjw0PbZvLuPqIfhtMMfpReu57YFsufomq
	 PGouOhdYwTROQ56e064VcunIDV3i+Lo2MHdBYY1qOm3uMgaErOCRHbrUeMN8clfud4
	 ewgdyKmqW0pdtYdi2ros0Vm7igyYS8J5bvcd5d/KO18kuzvv4OjomOCWbAVng1SErJ
	 uNlYnbUo+8hk3jjMP7iHK2jX36nsflaNWVH2USKCDZJJ/1b+jVKGgr4kuohJWhTijO
	 B0V65dBhB9rajTDqCi9aUic/X+B11Vxb3DhRNZQCDZd5caVhb12Qvw5ERgVuBKuB7+
	 qCHZBtNlq87vA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8SbdzIS6R7Sh; Thu,  1 Jun 2023 21:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 548A741711;
	Thu,  1 Jun 2023 21:15:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 548A741711
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A13351BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 70DAE42591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70DAE42591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0fHHtw_4fOMf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Jun 2023 21:15:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2B634258C
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2B634258C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Jun 2023 21:15:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="421500843"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="421500843"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 14:15:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="737249204"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="737249204"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 14:15:13 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Date: Thu,  1 Jun 2023 14:15:07 -0700
Message-ID: <20230601211507.707619-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.40.0.471.gbd7f14d9353b
In-Reply-To: <20230601211507.707619-1-jacob.e.keller@intel.com>
References: <20230601211507.707619-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685654116; x=1717190116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dMgW/a4aKhx395wOPcpuVzMa8HNYj+JWjfvCHmFAxB0=;
 b=I6H8WOpnXa9WGcvA5AIF4uxwdyCEuDnkD0OB8i0wcfmkU/Enf0mGxGWc
 zK1mKF1Ef7iDj9rKrkiRnOoq2NR4ClWD31jBrRAlTHO5KehPG91+3ax+b
 U0sk71Gtgdgj2big8yuVnlkjV8UE+r9/6d0seJ8/WeOANCdY5pD7uYQvP
 vHYmAA00K1L7WGRJ/Wb/LpeCk57LnlGvn0/99eJzDtN1pBpkxEW5BO/No
 aOenK8dT0jBb4pi8En2gwYPIepXPPj05w8GQ5d3wHjyXdJyE/tuZIvguU
 RgfeW8juAQvySjruGwbb0CYvNmSwL9FZRCbyefHuy0q2WbzJHzbAVusHX
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I6H8WOpn
Subject: [Intel-wired-lan] [PATCH iwl-next v3 5/5] ice: do not re-enable
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

The ice driver uses threaded IRQ for managing Tx timestamps via the
devm_request_threaded_irq() interface. The ice_misc_intr() handler function
is responsible for processing the hard interrupt context, and can wake the
ice_misc_intr_thread_fn() by returning IRQ_WAKE_THREAD.

The request_threaded_irq() function comment says:

  @handler is still called in hard interrupt context and has to check
  whether the interrupt originates from the device. If yes, it needs to
  disable the interrupt on the device and return IRQ_WAKE_THREAD which will
  wake up the handler thread and run the @thread_fn.

We currently re-enable the Other Interrupt Cause Register (OCIR) at the end of
ice_misc_intr(). In practice, this seems to be ok, but it can make
communicating between the handler function and the thread function
difficult. This is because the interrupt can trigger again while the thread
function is still processing.

Move the OICR update to the end of the thread function, leaving the other
interrupt cause disabled in hardware until we complete one pass of the
thread function. This prevents the miscellaneous interrupt from firing
until after we finish the thread function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 8f3ddc8451bd..6eae43828c46 100644
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
@@ -3202,8 +3203,6 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 		ice_ptp_extts_event(pf);
 
 	if (test_and_clear_bit(ICE_MISC_THREAD_TX_TSTAMP, pf->misc_thread)) {
-		struct ice_hw *hw = &pf->hw;
-
 		/* Process outstanding Tx timestamps. If there is more work,
 		 * re-arm the interrupt to trigger again.
 		 */
@@ -3213,6 +3212,8 @@ static irqreturn_t ice_misc_intr_thread_fn(int __always_unused irq, void *data)
 		}
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
