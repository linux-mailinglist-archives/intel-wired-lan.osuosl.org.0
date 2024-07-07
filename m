Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9AD9297EA
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Jul 2024 14:55:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A837810C4;
	Sun,  7 Jul 2024 12:55:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s6WXK3eroUlT; Sun,  7 Jul 2024 12:55:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C69381443
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720356955;
	bh=Idk4q+B43U2tgLOBysGyhgNYip38/o2OWJ/oFz6+Aeo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iMOnNZShIcNOeVQsKByVDbxqGls+AGxY6EXmNrtoyIBW5B4CsmOGgHW2l/J4IfpA7
	 EzdsKzOHcr1Xs0szrRNai5OtVFpvojVa3O+WX0RXzz0jSjU0pyUAvIuo5holsRqFKx
	 D3QhHBr5oDdA0h1Tn6/BzFtNtct3SixORwjX8poLv3B3FCPbMY7MaIvpcSE7HqSc+3
	 bkPmeHVURrmWeU+M5ngKyXDDOnELM3aFe9ydu7RjCpkA6HJ28p6a/O21xZSFWFZfZn
	 9mOmZfquMPd7enaJ7Pky+Z5n6oUlYY2nNeoNBUFcm1ZtXaL3bQS7B1EKI8mRVGqiqL
	 SVU8Z2Y1n+XDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C69381443;
	Sun,  7 Jul 2024 12:55:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE8351BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAD904064A
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rfD7pkv3YlJW for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Jul 2024 12:55:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=faizal.abdul.rahim@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 917FB40649
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 917FB40649
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 917FB40649
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Jul 2024 12:55:51 +0000 (UTC)
X-CSE-ConnectionGUID: 4odhhjZfQhSzMuKOLYGJBw==
X-CSE-MsgGUID: NB1kfZi4TCOD/GYkMaPCcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11125"; a="21337369"
X-IronPort-AV: E=Sophos;i="6.09,190,1716274800"; d="scan'208";a="21337369"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 05:55:52 -0700
X-CSE-ConnectionGUID: qPlxzrs1R821m7XL6DuSKQ==
X-CSE-MsgGUID: gVXbjNsnQqCjscY3lb0/SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,190,1716274800"; d="scan'208";a="47359038"
Received: from linux.intel.com ([10.54.29.200])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 05:55:51 -0700
Received: from mohdfai2-iLBPG12-1.png.intel.com
 (mohdfai2-iLBPG12-1.png.intel.com [10.88.227.73])
 by linux.intel.com (Postfix) with ESMTP id 1517E20738CF;
 Sun,  7 Jul 2024 05:55:46 -0700 (PDT)
From: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 Simon Horman <horms@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 Paul Menzel <pmenzel@molgen.mpg.de>, Sasha Neftin <sasha.neftin@intel.com>
Date: Sun,  7 Jul 2024 08:53:17 -0400
Message-Id: <20240707125318.3425097-3-faizal.abdul.rahim@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
References: <20240707125318.3425097-1-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720356953; x=1751892953;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MgKuto311+rIu1tuYrrUMI7N/Fp1C7l34NSqYicsNWs=;
 b=K56SE9y3CQ3nWbrXkjldJh14yPKcIadXg96MkKpvD8mPa+9TH7uPPCcG
 Og/0MuE6bqlimbpxkzT8T+xlF1mSIqMAajppAam/g/PQvcxeTxpO+fR8n
 b+MWu6wLIOzFZtaIgGivAPtFVb0e6pFozsxo4Sm5DOP7Jyy1g2IoaD12M
 9L3aE2whtT2GWebLu0UjirkOd7yF08jNQTHbaozbEJXHjZNn9zbQUUp4j
 fnQ0P8YTFtd6ZaP+myHqoWW8O7rSEr9ndNHt8TQ0zTllu/9prZvjWP1iB
 phcjgtbl648iLQOtqqnVcm86hZclrCl1o6DAaEs1zdAbS+tHCDhKqj3wH
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K56SE9y3
Subject: [Intel-wired-lan] [PATCH iwl-net v2 2/3] igc: Fix reset adapter
 logics when tx mode change
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Following the "igc: Fix TX Hang issue when QBV Gate is close" changes,
remaining issues with the reset adapter logic in igc_tsn_offload_apply()
have been observed:

1. The reset adapter logics for i225 and i226 differ, although they should
   be the same according to the guidelines in I225/6 HW Design Section
   7.5.2.1 on software initialization during tx mode changes.
2. The i225 resets adapter every time, even though tx mode doesn't change.
   This occurs solely based on the condition  igc_is_device_id_i225() when
   calling schedule_work().
3. i226 doesn't reset adapter for tsn->legacy tx mode changes. It only
   resets adapter for legacy->tsn tx mode transitions.
4. qbv_count introduced in the patch is actually not needed; in this
   context, a non-zero value of qbv_count is used to indicate if tx mode
   was unconditionally set to tsn in igc_tsn_enable_offload(). This could
   be replaced by checking the existing register
   IGC_TQAVCTRL_TRANSMIT_MODE_TSN bit.

This patch resolves all issues and enters schedule_work() to reset the
adapter only when changing tx mode. It also removes reliance on qbv_count.

qbv_count field will be removed in a future patch.

Test ran:

1. Verify reset adapter behaviour in i225/6:
   a) Enrol a new GCL
      Reset adapter observed (tx mode change legacy->tsn)
   b) Enrol a new GCL without deleting qdisc
      No reset adapter observed (tx mode remain tsn->tsn)
   c) Delete qdisc
      Reset adapter observed (tx mode change tsn->legacy)

2. Tested scenario from "igc: Fix TX Hang issue when QBV Gate is closed"
   to confirm it remains resolved.

Fixes: 175c241288c0 ("igc: Fix TX Hang issue when QBV Gate is closed")
Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index f6eaa288926e..9fafe275f30f 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -49,6 +49,13 @@ static unsigned int igc_tsn_new_flags(struct igc_adapter *adapter)
 	return new_flags;
 }
 
+static bool igc_tsn_is_tx_mode_in_tsn(struct igc_adapter *adapter)
+{
+	struct igc_hw *hw = &adapter->hw;
+
+	return !!(rd32(IGC_TQAVCTRL) & IGC_TQAVCTRL_TRANSMIT_MODE_TSN);
+}
+
 void igc_tsn_adjust_txtime_offset(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
@@ -331,15 +338,25 @@ int igc_tsn_reset(struct igc_adapter *adapter)
 	return err;
 }
 
+static bool igc_tsn_will_tx_mode_change(struct igc_adapter *adapter)
+{
+	bool any_tsn_enabled = (bool)(igc_tsn_new_flags(adapter) &
+			       IGC_FLAG_TSN_ANY_ENABLED);
+
+	return (any_tsn_enabled && !igc_tsn_is_tx_mode_in_tsn(adapter)) ||
+	       (!any_tsn_enabled && igc_tsn_is_tx_mode_in_tsn(adapter));
+}
+
 int igc_tsn_offload_apply(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
 
-	/* Per I225/6 HW Design Section 7.5.2.1, transmit mode
-	 * cannot be changed dynamically. Require reset the adapter.
+	/* Per I225/6 HW Design Section 7.5.2.1 guideline, if tx mode change
+	 * from legacy->tsn or tsn->legacy, then reset adapter is needed.
 	 */
 	if (netif_running(adapter->netdev) &&
-	    (igc_is_device_id_i225(hw) || !adapter->qbv_count)) {
+	    (igc_is_device_id_i225(hw) || igc_is_device_id_i226(hw)) &&
+	     igc_tsn_will_tx_mode_change(adapter)) {
 		schedule_work(&adapter->reset_task);
 		return 0;
 	}
-- 
2.25.1

