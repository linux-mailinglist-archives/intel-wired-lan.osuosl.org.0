Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2C136FAA8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Apr 2021 14:41:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E6404024A;
	Fri, 30 Apr 2021 12:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gWlingZx9-aa; Fri, 30 Apr 2021 12:41:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9B202402BA;
	Fri, 30 Apr 2021 12:41:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B26B1BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68564419C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P4au-nTGlYrl for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Apr 2021 12:41:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 96E74419A1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Apr 2021 12:41:33 +0000 (UTC)
IronPort-SDR: 5jie9VHmO4DUqdIfnPBLNPF8VZU/g0bFTkzymfBCqKhMAgcaZy7jZQXwENTlecI8Sk+vmyltPz
 C1V65d+9DayQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="176750668"
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="176750668"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 05:41:33 -0700
IronPort-SDR: CGAqArrkUn340Lbf93bVdP9qVZ8OUYSdOiYjf/AhQNSpl1siUqX1RNMdrAwLztVa+oN8Ibsh2/
 CWNo7Nkq1TvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,262,1613462400"; d="scan'208";a="459404081"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2021 05:41:32 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 30 Apr 2021 14:41:30 +0200
Message-Id: <1619786490-418369-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net-next v2] igb: Add counter to i21x
 doublecheck
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

Add failed_counter to i21x_doublecheck(). There is possibility that
loop will never end.
With this patch the loop will stop after maximum 3 retries
to write to MTA_REGISTER

Signed-off-by: Grzegorz Siwik <grzegorz.siwik@intel.com>
---
v2: Changed retries counting method
Moved hw_dbg info
---
 drivers/net/ethernet/intel/igb/e1000_mac.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index e63ee3c..1277c5c 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -492,6 +492,7 @@ static u32 igb_hash_mc_addr(struct e1000_hw *hw, u8 *mc_addr)
  **/
 static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
 {
+	int failed_cnt = 3;
 	bool is_failed;
 	int i;
 
@@ -502,9 +503,12 @@ static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
 				is_failed = true;
 				array_wr32(E1000_MTA, i, hw->mac.mta_shadow[i]);
 				wrfl();
-				break;
 			}
 		}
+		if (is_failed && --failed_cnt <= 0) {
+			hw_dbg("Failed to update MTA_REGISTER, too many retries");
+			break;
+		}
 	} while (is_failed);
 }
 
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
