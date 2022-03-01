Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC104C8CB1
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Mar 2022 14:32:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAF3C40283;
	Tue,  1 Mar 2022 13:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j0-s2VrYktdc; Tue,  1 Mar 2022 13:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 866ED4019E;
	Tue,  1 Mar 2022 13:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D8261BF847
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 322D860E56
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uq55XjFFD0TG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Mar 2022 13:32:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DFA9B60D59
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Mar 2022 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646141535; x=1677677535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DyajEqBDibHy7/b92DI8BlV/bPMxpsAAOBMofhFOaD4=;
 b=LVUVtzqClWBrPIcA064YNL8a0QTTEWvtGqzqlR27DJ7wCXlkM6dlfRW3
 e6VpuEjGT4jxXofy2Z6exZTNCY6whMS0GyjaasKc11eavzl/AAiZYTmML
 BnJlL+QeTK6GLbNZFTBg8IHy9wzcapwtiKbOIY2PxjxP2BLWthapNYLAF
 dPaAMvzKYZeN+weOjvl13nZpV6xBWOKozlKXyW47R0U+llmQybdHFv7XT
 4zpIoP0FoyEDl0OIg+Lfogc0Dz2QyBSyu4zcsbgZTUCJHdY9RTCGDQjp2
 DTe9GBakKwKEvPx6lFxp+zgPmZcCvKKsxAOsPAADbKe/AO+pntVAG/BXM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="253057952"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="253057952"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 05:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="534894734"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga007.jf.intel.com with ESMTP; 01 Mar 2022 05:32:13 -0800
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  1 Mar 2022 15:32:10 +0200
Message-Id: <20220301133210.1433609-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Fix infinite loop in
 release_swfw_sync
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

An infinite loop may occur if we fail to acquire the HW semaphore,
which is needed for resource release.
This will typically happen if the hardware is surprise-removed.
At this stage there is nothing to do, except log an error and quit.

Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_i225.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c b/drivers/net/ethernet/intel/igc/igc_i225.c
index 66ea566488d1..59d5c467ea6e 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -156,8 +156,15 @@ void igc_release_swfw_sync_i225(struct igc_hw *hw, u16 mask)
 {
 	u32 swfw_sync;
 
-	while (igc_get_hw_semaphore_i225(hw))
-		; /* Empty */
+	/* Releasing the resource requires first getting the HW semaphore.
+	 * If we fail to get the semaphore, there is nothing we can do,
+	 * except log an error and quit. We are not allowed to hang here
+	 * indefinitely, as it may cause denial of service or system crash.
+	 */
+	if (igc_get_hw_semaphore_i225(hw)) {
+		hw_dbg("Failed to release SW_FW_SYNC.\n");
+		return;
+	}
 
 	swfw_sync = rd32(IGC_SW_FW_SYNC);
 	swfw_sync &= ~mask;
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
