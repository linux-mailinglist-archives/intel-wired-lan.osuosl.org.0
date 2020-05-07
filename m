Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F15E1C87A2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 13:10:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47C5A884BF;
	Thu,  7 May 2020 11:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QzxRQCvjb8ai; Thu,  7 May 2020 11:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A425B882EA;
	Thu,  7 May 2020 11:10:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 00B8C1BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 11:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED36787069
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 11:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9rtxZcrpxnZ0 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 11:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 722C486DC2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 11:10:06 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B08031ABE3B00C9375E2;
 Thu,  7 May 2020 19:10:01 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Thu, 7 May 2020
 19:09:54 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>,
 <yanaijie@huawei.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Date: Thu, 7 May 2020 19:09:15 +0800
Message-ID: <20200507110915.38349-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] igb: make
 igb_set_fc_watermarks() return void
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

This function always return 0 now, we can make it return void to
simplify the code. This fixes the following coccicheck warning:

drivers/net/ethernet/intel/igb/e1000_mac.c:728:5-12: Unneeded variable:
"ret_val". Return "0" on line 751

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/ethernet/intel/igb/e1000_mac.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index 79ee0a747260..3254737c07a3 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -12,7 +12,7 @@
 #include "igb.h"
 
 static s32 igb_set_default_fc(struct e1000_hw *hw);
-static s32 igb_set_fc_watermarks(struct e1000_hw *hw);
+static void igb_set_fc_watermarks(struct e1000_hw *hw);
 
 /**
  *  igb_get_bus_info_pcie - Get PCIe bus information
@@ -687,7 +687,7 @@ s32 igb_setup_link(struct e1000_hw *hw)
 
 	wr32(E1000_FCTTV, hw->fc.pause_time);
 
-	ret_val = igb_set_fc_watermarks(hw);
+	igb_set_fc_watermarks(hw);
 
 out:
 
@@ -723,9 +723,8 @@ void igb_config_collision_dist(struct e1000_hw *hw)
  *  flow control XON frame transmission is enabled, then set XON frame
  *  tansmission as well.
  **/
-static s32 igb_set_fc_watermarks(struct e1000_hw *hw)
+static void igb_set_fc_watermarks(struct e1000_hw *hw)
 {
-	s32 ret_val = 0;
 	u32 fcrtl = 0, fcrth = 0;
 
 	/* Set the flow control receive threshold registers.  Normally,
@@ -747,8 +746,6 @@ static s32 igb_set_fc_watermarks(struct e1000_hw *hw)
 	}
 	wr32(E1000_FCRTL, fcrtl);
 	wr32(E1000_FCRTH, fcrth);
-
-	return ret_val;
 }
 
 /**
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
