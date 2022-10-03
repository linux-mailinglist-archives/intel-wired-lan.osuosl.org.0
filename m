Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EF94C5F2E87
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Oct 2022 11:55:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3BAF81B9A;
	Mon,  3 Oct 2022 09:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3BAF81B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664790935;
	bh=6bbS/HbwbUWchrMQZqaqFQvkVi+mcyAsWf4qEF7C064=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rTFk8s0wXgozTq/vLSbeGvG2HtuJbS57APbtU01dhaKq5u0YWgEHcJ49IXmE5cyP3
	 Uqynh8/O48BY5F1oK54A6Thbol8UaxahHO5RRi+SX/gfqsvWCGaTcqByQe1EjtTnnC
	 EUZG7Co5EpRIZzKkmBP9MN30TkNpWR2Ir62x2wiyXWk8QLjeIT1DD+NUWfXaolABJf
	 PPEqtWB/I+osr7BNBgtzIiS9/klArC5mKXkOLAMjj8wTquFfrPgUHrvOoKZropF98D
	 Eoeo4eUrz+ly8Jn01IXpZm2g6rDLfGvwclcCb8whG2FrGfCrypdEtOwhOZmK7p3+nf
	 ezs4O7KW84E3Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pU-4qYhX2ODF; Mon,  3 Oct 2022 09:55:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A021A81B52;
	Mon,  3 Oct 2022 09:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A021A81B52
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97B1F1BF3EA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 09:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7255960B51
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 09:55:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7255960B51
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1_kWqsNnJmq for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Oct 2022 09:55:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8508D60B46
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8508D60B46
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Oct 2022 09:55:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="289756753"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="289756753"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 02:55:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="765853272"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="765853272"
Received: from kkolacin-desk1.igk.intel.com ([172.22.229.172])
 by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2022 02:55:26 -0700
From: Karol Kolacinski <karol.kolacinski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  3 Oct 2022 11:55:18 +0200
Message-Id: <20221003095519.539390-1-karol.kolacinski@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664790928; x=1696326928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Fu6baqKizLgHA3k6snIKUBPhqq+rtsPrwK6jRJwgCBM=;
 b=THj3f4j91Y7By37H8k9CFJwrG9QzYlbG54SSi6z4lY+e3klTr8qd8trp
 MtMgU74CoVMR9kq3917N0R8XGmpJlKwtTA1C99DspDX+T5whnCzlnVDQM
 DfuoffG3yyFRhpYTPUWEx+o8h0UbSIJWuX+yxjqBQlswsnlolktB2z0HW
 ysO2xQm5Z/nOPHzvwQkBIq3jEr1679grR5Hovle2el+2zLCx2dAceandM
 hgG9wG2Zuyl49b4qXljgS/fCLuZUGglJZ8RJpcBvBcG0aqmh9VIjT4cWe
 EgR+6u6vVPpN0iBCNIaxSV6CGm6RJXoOjLScTJemk9UNZostfwxQ0cSNz
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=THj3f4j9
Subject: [Intel-wired-lan] [PATCH net-next 1/2] ice: Check for PTP HW lock
 more frequently
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
Cc: Karol Kolacinski <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

It was observed that PTP HW semaphore can be held for ~50 ms in worst
case.
SW should wait longer and check more frequently if the HW lock is held.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 772b1f566d6e..1f8dd50db524 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2963,16 +2963,18 @@ bool ice_ptp_lock(struct ice_hw *hw)
 	u32 hw_lock;
 	int i;
 
-#define MAX_TRIES 5
+#define MAX_TRIES 15
 
 	for (i = 0; i < MAX_TRIES; i++) {
 		hw_lock = rd32(hw, PFTSYN_SEM + (PFTSYN_SEM_BYTES * hw->pf_id));
 		hw_lock = hw_lock & PFTSYN_SEM_BUSY_M;
-		if (!hw_lock)
-			break;
+		if (hw_lock) {
+			/* Somebody is holding the lock */
+			usleep_range(5000, 6000);
+			continue;
+		}
 
-		/* Somebody is holding the lock */
-		usleep_range(10000, 20000);
+		break;
 	}
 
 	return !hw_lock;
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
