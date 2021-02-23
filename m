Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E135322D78
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 16:27:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEC2460614;
	Tue, 23 Feb 2021 15:27:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7uRwJbXjVAyg; Tue, 23 Feb 2021 15:27:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F2FE605A5;
	Tue, 23 Feb 2021 15:27:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2899B1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 23C1B85513
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:15:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsvJjNkDbO_e for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 14:15:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91F458560B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:15:47 +0000 (UTC)
IronPort-SDR: aqUHcNrGeMKOsnfNzHJs4o7MmpmoiOyYiKFLHWPPkB9r4h55LlmBHSB9UYtcG+fnXVc1t4dXvp
 k5PXo3n4x8Bw==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="164660120"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="164660120"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 06:15:46 -0800
IronPort-SDR: XoaFlVQHtvlnDXxCrmqwM353FE575a2Ujk/1EzZlmJ78FJXl+I/GsEtXx2BAs9dpThL0v9wv2h
 dWTZ5kabesyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="390906038"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga008.fm.intel.com with ESMTP; 23 Feb 2021 06:15:45 -0800
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Feb 2021 15:15:27 +0100
Message-Id: <1614089727-337500-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Tue, 23 Feb 2021 15:27:45 +0000
Subject: [Intel-wired-lan] [PATCH net-next v1] igb: Add double-check
 MTA_REGISTER for i210 and i211
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
Cc: Grzegorz Siwik <grzegorz.siwik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add new function which checks MTA_REGISTER if its filled correctly.
If not then writes again to same register.
There is possibility that i210 and i211 could not accept
MTA_REGISTER settings, specially when you add and remove
many of multicast addresses in short time.
Without this patch there is possibility that multicast settings will be
not always set correctly in hardware.

Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
---
 drivers/net/ethernet/intel/igb/e1000_mac.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index fd8eb2f..2ed6a00 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -484,6 +484,31 @@ static u32 igb_hash_mc_addr(struct e1000_hw *hw, u8 *mc_addr)
 }
 
 /**
+* igb_i21x_hw_doublecheck - double checks potential HW issue in i21X
+* @hw: pointer to the HW structure
+*
+* Checks if multicast array is wrote correctly
+* If not then rewrites again to register
+**/
+static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
+{
+	bool is_failed;
+	int i;
+
+	do {
+		is_failed = false;
+		for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
+			if (array_rd32(E1000_MTA, i) != hw->mac.mta_shadow[i]) {
+				is_failed = true;
+				array_wr32(E1000_MTA, i, hw->mac.mta_shadow[i]);
+				wrfl();
+				break;
+			}
+		}
+	} while (is_failed);
+}
+
+/**
  *  igb_update_mc_addr_list - Update Multicast addresses
  *  @hw: pointer to the HW structure
  *  @mc_addr_list: array of multicast addresses to program
@@ -516,6 +541,8 @@ void igb_update_mc_addr_list(struct e1000_hw *hw,
 	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
 		array_wr32(E1000_MTA, i, hw->mac.mta_shadow[i]);
 	wrfl();
+	if (hw->mac.type == e1000_i210 || hw->mac.type == e1000_i211)
+		igb_i21x_hw_doublecheck(hw);
 }
 
 /**
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
