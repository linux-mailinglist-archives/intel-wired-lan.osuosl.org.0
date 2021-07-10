Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A13AE3C35FE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jul 2021 19:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C39CA83ABC;
	Sat, 10 Jul 2021 17:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BFKf8b7c7401; Sat, 10 Jul 2021 17:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4F4B83A8F;
	Sat, 10 Jul 2021 17:58:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 01E3B1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 17:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E4CAF83A8F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 17:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dv-M7ljY50pU for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jul 2021 17:58:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53D9983143
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jul 2021 17:58:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10041"; a="270952653"
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="270952653"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2021 10:57:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,229,1620716400"; d="scan'208";a="489960656"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Jul 2021 10:57:54 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org,
	michael.edri@intel.com
Date: Sat, 10 Jul 2021 20:57:50 +0300
Message-Id: <20210710175750.2088213-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove phy->type checking
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

i225 devices have only one phy->type: copper. There is no point checking
phy->type during the igc_has_link method from the watchdog that
invoked every 2 seconds.
This patch comes to clean up these pointless checkings.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index c8abd7fb70e5..722b79ba2abd 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -5222,17 +5222,10 @@ bool igc_has_link(struct igc_adapter *adapter)
 	 * false until the igc_check_for_link establishes link
 	 * for copper adapters ONLY
 	 */
-	switch (hw->phy.media_type) {
-	case igc_media_type_copper:
-		if (!hw->mac.get_link_status)
-			return true;
-		hw->mac.ops.check_for_link(hw);
-		link_active = !hw->mac.get_link_status;
-		break;
-	default:
-	case igc_media_type_unknown:
-		break;
-	}
+	if (!hw->mac.get_link_status)
+		return true;
+	hw->mac.ops.check_for_link(hw);
+	link_active = !hw->mac.get_link_status;
 
 	if (hw->mac.type == igc_i225) {
 		if (!netif_carrier_ok(adapter->netdev)) {
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
