Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9BA36EB57
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Apr 2021 15:28:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8688B845F9;
	Thu, 29 Apr 2021 13:28:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UYQ32Q5vaTdk; Thu, 29 Apr 2021 13:28:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8ACF0845F6;
	Thu, 29 Apr 2021 13:28:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B11A1BF29A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 13:28:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4924E845F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 13:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PRaWCilGjkJU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Apr 2021 13:28:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 219DB845F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Apr 2021 13:28:40 +0000 (UTC)
IronPort-SDR: c8UdqSeyyNbKT9R4Xjvi3jcq5Np+8rKABYV+UiJI/kSQS7+OiCL45dDOMwdiPQRKQuB3X7fWji
 rLZNoU/DUJxw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="176487239"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="176487239"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 06:28:38 -0700
IronPort-SDR: uZjr4IjvobA//HBCw8UDqw3Jrvu1cMAQCM1zplqKtdwaNW3D8wW2+atwr/ei6EcPztC7jGYGRv
 VPWf1EGdOTuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="424088367"
Received: from gsiwik.igk.intel.com ([10.102.18.50])
 by fmsmga008.fm.intel.com with ESMTP; 29 Apr 2021 06:28:37 -0700
From: Grzegorz Siwik <grzegorz.siwik@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 29 Apr 2021 15:28:36 +0200
Message-Id: <1619702916-379862-1-git-send-email-grzegorz.siwik@intel.com>
X-Mailer: git-send-email 1.8.3.1
Subject: [Intel-wired-lan] [PATCH net-next v1] igb: Add counter to i21x
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
 drivers/net/ethernet/intel/igb/e1000_mac.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_mac.c b/drivers/net/ethernet/intel/igb/e1000_mac.c
index e63ee3c..3cb7e55 100644
--- a/drivers/net/ethernet/intel/igb/e1000_mac.c
+++ b/drivers/net/ethernet/intel/igb/e1000_mac.c
@@ -492,6 +492,8 @@ static u32 igb_hash_mc_addr(struct e1000_hw *hw, u8 *mc_addr)
  **/
 static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
 {
+	const unsigned int failed_cnt_max = 3;
+	unsigned int failed_cnt = 0;
 	bool is_failed;
 	int i;
 
@@ -502,10 +504,14 @@ static void igb_i21x_hw_doublecheck(struct e1000_hw *hw)
 				is_failed = true;
 				array_wr32(E1000_MTA, i, hw->mac.mta_shadow[i]);
 				wrfl();
-				break;
 			}
 		}
-	} while (is_failed);
+		if (is_failed)
+			++failed_cnt;
+	} while (is_failed && failed_cnt < failed_cnt_max);
+
+	if (failed_cnt >= failed_cnt_max)
+		hw_dbg("Failed to update MTA_REGISTER, too many retries");
 }
 
 /**
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
