Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF87750CC6F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Apr 2022 18:53:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F3F583299;
	Sat, 23 Apr 2022 16:53:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id opXk3ZddaSHs; Sat, 23 Apr 2022 16:53:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F35A82EA1;
	Sat, 23 Apr 2022 16:53:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6AE141BF5DF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 16:53:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4915D41780
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 16:53:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ldkAvoeCNh8v for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Apr 2022 16:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 694EF4175C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Apr 2022 16:53:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650732822; x=1682268822;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MzT3qnafF/52gyWmZNqXB4bjdK7NRzNmmYilO+3mRRw=;
 b=fDzcC0EhidzV9B7djIwAiBm9+YUDpOuvGc/x1M4PrsMNBesZaGlCeSxe
 gBypOMIJKFV4Fi+DiYz0+Zn3ug/2DyRqATnMv+EHNz8+qukLt9Mi774oQ
 pXgFBpkga6z6e0x+Y236XMQ18nXdyRofIW84uBqvDocKVGQrtnEBiBOSG
 9WF7su6dq1GuyN210PO+m6eFt3QReLBCZXG6dh+p628kPDYwIKf9HIEdP
 XvcISfiffhzyWXDPKHxOgjHeZ0DeVyEm4wYE234NMJXg2LV3fHmDjPME6
 pzRsB8pakdmZnKQ+giQF9CNtMDIjaHG7SWk0lPjgGS370dUmvu60hIRBD w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10326"; a="325374960"
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400"; d="scan'208";a="325374960"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2022 09:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400"; d="scan'208";a="728987376"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga005.jf.intel.com with ESMTP; 23 Apr 2022 09:53:25 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Sat, 23 Apr 2022 19:53:21 +0300
Message-Id: <20220423165321.838055-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unused phy_type enum
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

Complete to commit 8e153faf5827 ("igc: Remove unused phy type")
i225 parts have only one phy. There is no point to use phy_type enum.
Clean up the code accordingly, and get rid of the unused enum lines.

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
v2: ret_val isn't needed since it's always returning 0
 drivers/net/ethernet/intel/igc/igc_base.c |  2 --
 drivers/net/ethernet/intel/igc/igc_hw.h   |  7 -------
 drivers/net/ethernet/intel/igc/igc_phy.c  | 12 +++---------
 3 files changed, 3 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.c b/drivers/net/ethernet/intel/igc/igc_base.c
index f068b66b8025..a15927e77272 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.c
+++ b/drivers/net/ethernet/intel/igc/igc_base.c
@@ -182,8 +182,6 @@ static s32 igc_init_phy_params_base(struct igc_hw *hw)
 
 	igc_check_for_copper_link(hw);
 
-	phy->type = igc_phy_i225;
-
 out:
 	return ret_val;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_hw.h b/drivers/net/ethernet/intel/igc/igc_hw.h
index b1e72ec5f131..360644f33d5f 100644
--- a/drivers/net/ethernet/intel/igc/igc_hw.h
+++ b/drivers/net/ethernet/intel/igc/igc_hw.h
@@ -53,11 +53,6 @@ enum igc_mac_type {
 	igc_num_macs  /* List is 1-based, so subtract 1 for true count. */
 };
 
-enum igc_phy_type {
-	igc_phy_unknown = 0,
-	igc_phy_i225,
-};
-
 enum igc_media_type {
 	igc_media_type_unknown = 0,
 	igc_media_type_copper = 1,
@@ -138,8 +133,6 @@ struct igc_nvm_info {
 struct igc_phy_info {
 	struct igc_phy_operations ops;
 
-	enum igc_phy_type type;
-
 	u32 addr;
 	u32 id;
 	u32 reset_delay_us; /* in usec */
diff --git a/drivers/net/ethernet/intel/igc/igc_phy.c b/drivers/net/ethernet/intel/igc/igc_phy.c
index 6961f65d36b9..2140ad1e8443 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -148,17 +148,11 @@ void igc_power_down_phy_copper(struct igc_hw *hw)
 s32 igc_check_downshift(struct igc_hw *hw)
 {
 	struct igc_phy_info *phy = &hw->phy;
-	s32 ret_val;
 
-	switch (phy->type) {
-	case igc_phy_i225:
-	default:
-		/* speed downshift not supported */
-		phy->speed_downgraded = false;
-		ret_val = 0;
-	}
+	/* speed downshift not supported */
+	phy->speed_downgraded = false;
 
-	return ret_val;
+	return 0;
 }
 
 /**
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
