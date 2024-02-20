Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6C985CC55
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Feb 2024 00:57:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C15D416D6;
	Tue, 20 Feb 2024 23:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b6waK0W93woh; Tue, 20 Feb 2024 23:57:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6C77D4162C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708473448;
	bh=uwhXeMFvnwzLRRCY4uk8mHwPXTisk+CveRfGO0MWYMU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5C0DhK/qvNfZpWi3Nlr0pQgav15Y5NUAAnx5hQE9LV5x6Hzu833j+gh7DQD3m4rey
	 Jaf8lMoBdraAlMwARtXYLmzlvSuyg4WTmu1+/vtj4yKKELTP4U8uMxEiEqG9qnlu7I
	 rWNVxIfrtMmhZXTUD9114h5i7c+oG9WuHlQPe/Y6sHoBxQGxzSDHlAkYpMm4FnvKsY
	 qg4ZGanOVdW2bcIZxTZ0f2XSOlXxBJa6/JmsQcyVjYYaboyG4s0gMIM2N8BcXh4JKD
	 EL6Ny+FHqyeeQikeRs0YFE9k41X9cil70tKruRFsSd+dSgZ+/3yk+Mwr5GJwPJBi11
	 IEyHfgOqFT7kw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C77D4162C;
	Tue, 20 Feb 2024 23:57:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 913A41BF4E3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 786F34043A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bW8aWVc7hy4E for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 23:57:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 62AAD402D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62AAD402D0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62AAD402D0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 23:57:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="20041773"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="20041773"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:57:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="5092390"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.83])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 15:57:20 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 15:57:11 -0800
Message-ID: <20240220235712.241552-3-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240220235712.241552-1-vinicius.gomes@intel.com>
References: <20240220235712.241552-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708473443; x=1740009443;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=j7Zixg1QER2i+fNcEEtAoe4JXGnkdFEd25ICHCfBynA=;
 b=ZAbjiCeXfa+wu0OmsptlyKcyRl4U1iKxxeSvuw+dAb4NVduFhtG1W4x/
 b75i/mSaF1kiQBKQAtL3TXjbBsuYKjeiDxlqAONcMfhCYZ+pHP2QcSjJR
 eIQFRJF5CFy0GfWE2JEE9K0BP6c7Xbb8dmDWxLN8YdohzsLDcLWkzdu/F
 UU98IcYeTh5kOg6r8fnPR8NuIS7vEjyCl0YZeX9e7WfLW9PdGKxLuFIyQ
 dlRrtC/omvegG5IyMp9STzCBZfw7H+vR251N72GWzlAvvKyZgQEQ9Thhf
 lUhkrQI9aBPWZhZy3baPEHOIbynff7iJm6u2sI9NAjMqrmQjgZiQWpNkI
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZAbjiCeX
Subject: [Intel-wired-lan] [iwl-net v2 2/2] igb: Fix missing time sync events
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
Cc: sasha.neftin@intel.com, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, richardcochran@gmail.com, kurt@linutronix.de,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, anthony.l.nguyen@intel.com,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix "double" clearing of interrupts, which can cause external events
or timestamps to be missed.

The E1000_TSIRC Time Sync Interrupt Cause register can be cleared in two
ways, by either reading it or by writing '1' into the specific cause
bit. This is documented in section 8.16.1.

The following flow was used:
    1. read E1000_TSIRC into 'tsicr';
    2. handle the interrupts present into 'tsirc' and mark them in 'ack';
    3. write 'ack' into E1000_TSICR;

As both (1) and (3) will clear the interrupt cause, if the same
interrupt happens again between (1) and (3) it will be ignored,
causing events to be missed.

Remove the extra clear in (3).

Fixes: 00c65578b47b ("igb: enable internal PPS for the i210")
Acked-by: Richard Cochran <richardcochran@gmail.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igb/igb_main.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index cebb44f51d5f..7662c42e35c1 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6985,44 +6985,31 @@ static void igb_extts(struct igb_adapter *adapter, int tsintr_tt)
 static void igb_tsync_interrupt(struct igb_adapter *adapter)
 {
 	struct e1000_hw *hw = &adapter->hw;
-	u32 ack = 0, tsicr = rd32(E1000_TSICR);
+	u32 tsicr = rd32(E1000_TSICR);
 	struct ptp_clock_event event;
 
 	if (tsicr & TSINTR_SYS_WRAP) {
 		event.type = PTP_CLOCK_PPS;
 		if (adapter->ptp_caps.pps)
 			ptp_clock_event(adapter->ptp_clock, &event);
-		ack |= TSINTR_SYS_WRAP;
 	}
 
 	if (tsicr & E1000_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
 		schedule_work(&adapter->ptp_tx_work);
-		ack |= E1000_TSICR_TXTS;
 	}
 
-	if (tsicr & TSINTR_TT0) {
+	if (tsicr & TSINTR_TT0)
 		igb_perout(adapter, 0);
-		ack |= TSINTR_TT0;
-	}
 
-	if (tsicr & TSINTR_TT1) {
+	if (tsicr & TSINTR_TT1)
 		igb_perout(adapter, 1);
-		ack |= TSINTR_TT1;
-	}
 
-	if (tsicr & TSINTR_AUTT0) {
+	if (tsicr & TSINTR_AUTT0)
 		igb_extts(adapter, 0);
-		ack |= TSINTR_AUTT0;
-	}
 
-	if (tsicr & TSINTR_AUTT1) {
+	if (tsicr & TSINTR_AUTT1)
 		igb_extts(adapter, 1);
-		ack |= TSINTR_AUTT1;
-	}
-
-	/* acknowledge the interrupts */
-	wr32(E1000_TSICR, ack);
 }
 
 static irqreturn_t igb_msix_other(int irq, void *data)
-- 
2.43.2

