Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 533D96434E0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Dec 2022 20:53:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D42D541678;
	Mon,  5 Dec 2022 19:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D42D541678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670270010;
	bh=Ax/T6Ll7ErwBqv7RpJsNH6Djogr5yrq6FogDiRJgH2Q=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bGRAm9R6aWA/dj1WUxIcdEoV2lJmRXGN5luk56+9tVmMgcPWC/6rNNabVFnyEMNMB
	 XmWinhZqNdGgcw39rO1sCppkLOdCDys5XCokUaPtcXeTUBuRtSJLaWBIWamuP4zycj
	 ptHQDAHYMfzD681TzbMh4d6GYT36AgOVEYUYUiBFx9bR08wAkP6aZOga6mj/VUxDVW
	 dK1CkOHZTA8ZkpQnx84IDRo2lgu0XuM2QBGQlw/UMcmPSJU710eqAitTGYuagYOq9b
	 kNWwVzsJ/VcCBKLJCL5U6yWVVqmjH9BUwbnLe0F2lpR1rCNZYje1B1sJd/fhmD+Bec
	 UjsFQueSSzYZA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kRmX2aeINkRb; Mon,  5 Dec 2022 19:53:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94B0041673;
	Mon,  5 Dec 2022 19:53:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94B0041673
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 49E5D1BF955
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2515340292
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2515340292
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XBbbuJfGocok for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F30240193
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6F30240193
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Dec 2022 19:53:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317592389"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="317592389"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="709379315"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="709379315"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 11:53:03 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Mon,  5 Dec 2022 11:52:49 -0800
Message-Id: <20221205195253.2475492-12-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20221205195253.2475492-1-jacob.e.keller@intel.com>
References: <20221205195253.2475492-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670269984; x=1701805984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lkfwkeYeUTBdyyysbzjtmH7kKFqJ1IWXAc/+Jbkx0tM=;
 b=bkEurt59im+B2ZXelkwJvnpa/DP5G3fQcrnb3hvaaFlxRyvbkqz+kiCE
 aCuhnoFqb0bhwA4cGIilwJZ3GIVirCnEOuyCm1C8uzhYI/9Yxo9Y1Q6SM
 4kwdujq7Q7i9Sd5R8PEnHcnjQSWcDCB5Xspl1HDdG9anJxfMWf/Q5UOn1
 4souV1fzf4Ri/KsW3cKWs1Df/bkxG101GO+o6VQpabbnYNU/V24BmQWG9
 PC8hzt189zLoKFcC/6io5wU+7vJDc7QNqFqz6H9zl7UHCvolw7McnoFFZ
 F56d1V4hlAiQv1Q1WlHx3E1cgEiEWhLWGZiSmxlKlAHmUuFx6jB+8stah
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bkEurt59
Subject: [Intel-wired-lan] [PATCH net-next v3 11/15] ice: cleanup
 allocations in ice_ptp_alloc_tx_tracker
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

The ice_ptp_alloc_tx_tracker function must allocate the timestamp array and
the bitmap for tracking the currently in use indexes. A future change is
going to add yet another allocation to this function.

If these allocations fail we need to ensure that we properly cleanup and
ensure that the pointers in the ice_ptp_tx structure are NULL.

Simplify this logic by allocating to local variables first. If any
allocation fails, then free everything and exit. Only update the ice_ptp_tx
structure if all allocations succeed.

This ensures that we have no side effects on the Tx structure unless all
allocations have succeeded. Thus, no code will see an invalid pointer and
we don't need to re-assign NULL on cleanup.

This is safe because kernel "free" functions are designed to be NULL safe
and perform no action if passed a NULL pointer. Thus its safe to simply
always call kfree or bitmap_free even if one of those pointers was NULL.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
Changes since v2:
* Context changes to account for change in ice_ptp_alloc_tx_tracker now
  initializing spin lock last.

 drivers/net/ethernet/intel/ice/ice_ptp.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index dffcd50bac3f..fbafa82ea1ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -794,17 +794,21 @@ static bool ice_ptp_tx_tstamp(struct ice_ptp_tx *tx)
 static int
 ice_ptp_alloc_tx_tracker(struct ice_ptp_tx *tx)
 {
-	tx->tstamps = kcalloc(tx->len, sizeof(*tx->tstamps), GFP_KERNEL);
-	if (!tx->tstamps)
-		return -ENOMEM;
+	struct ice_tx_tstamp *tstamps;
+	unsigned long *in_use;
+
+	tstamps = kcalloc(tx->len, sizeof(*tstamps), GFP_KERNEL);
+	in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
+
+	if (!tstamps || !in_use) {
+		kfree(tstamps);
+		bitmap_free(in_use);
 
-	tx->in_use = bitmap_zalloc(tx->len, GFP_KERNEL);
-	if (!tx->in_use) {
-		kfree(tx->tstamps);
-		tx->tstamps = NULL;
 		return -ENOMEM;
 	}
 
+	tx->tstamps = tstamps;
+	tx->in_use = in_use;
 	tx->init = 1;
 	tx->link_down = 0;
 	tx->calibrating = 0;
-- 
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
