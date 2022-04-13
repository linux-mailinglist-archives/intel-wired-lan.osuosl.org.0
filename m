Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5484FEE82
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 07:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07E9360A7B;
	Wed, 13 Apr 2022 05:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbXVir-ngTKD; Wed, 13 Apr 2022 05:33:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6BF760D70;
	Wed, 13 Apr 2022 05:33:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A91EE1BF909
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 05:33:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9336E405D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 05:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id to_p4L0H0aJl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 05:33:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2DF8400D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 05:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649828003; x=1681364003;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GxZfrHqIYL7tNsmFvio38/e9KCvtkR15pSzV/M/eG2k=;
 b=fQyzUvDWJoxhA6E7rapxqomGXuwf2NgXgHqkLJR2qXYv1HO+4dYhG8Db
 pGWTN493y+laIeEBZG4XsLpZgkBGzhY52c0+1XkM9BA2vzAFAtl1kzML4
 sVS+YiBNOY9r8bPVAusg0YvROHWMB9Tc4+OnY8D4wtohpt7ays4p2qTrX
 sYNbwlnOOQgXQoZHZ4ZHYy1FhEeDpWT/1kaKUP9ZFVtbLUsSbPa0+G84l
 xKwsTI8lP0kEb5Yzzhz3RyWGYgA7S8zr4Z2L2ICYc0jKFuMqJb9VVHiGK
 EmQmFrIXksf4qvpyPRGasEhI6Na5Nm9GMBDzKxL5Is15uvqGRNMQg3xcq Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="249867923"
X-IronPort-AV: E=Sophos;i="5.90,255,1643702400"; d="scan'208";a="249867923"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 22:33:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,255,1643702400"; d="scan'208";a="552057470"
Received: from ccdlinuxdev12.iil.intel.com ([143.185.162.56])
 by orsmga007.jf.intel.com with ESMTP; 12 Apr 2022 22:33:22 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 13 Apr 2022 08:33:17 +0300
Message-Id: <20220413053317.3297670-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove unused phy_type enum
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
 drivers/net/ethernet/intel/igc/igc_base.c |  2 --
 drivers/net/ethernet/intel/igc/igc_hw.h   |  7 -------
 drivers/net/ethernet/intel/igc/igc_phy.c  | 10 +++-------
 3 files changed, 3 insertions(+), 16 deletions(-)

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
index 6961f65d36b9..4f06e6bb68b1 100644
--- a/drivers/net/ethernet/intel/igc/igc_phy.c
+++ b/drivers/net/ethernet/intel/igc/igc_phy.c
@@ -150,13 +150,9 @@ s32 igc_check_downshift(struct igc_hw *hw)
 	struct igc_phy_info *phy = &hw->phy;
 	s32 ret_val;
 
-	switch (phy->type) {
-	case igc_phy_i225:
-	default:
-		/* speed downshift not supported */
-		phy->speed_downgraded = false;
-		ret_val = 0;
-	}
+	/* speed downshift not supported */
+	phy->speed_downgraded = false;
+	ret_val = 0;
 
 	return ret_val;
 }
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
