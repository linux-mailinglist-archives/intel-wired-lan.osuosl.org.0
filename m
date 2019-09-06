Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF8BAB72F
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Sep 2019 13:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CA8E85044;
	Fri,  6 Sep 2019 11:34:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pWJUbbr97ros; Fri,  6 Sep 2019 11:34:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 527BA840C2;
	Fri,  6 Sep 2019 11:34:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 241D31BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 11:34:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C70986521
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 11:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwnWwnb1n_3C for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Sep 2019 11:34:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 76D138651A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Sep 2019 11:34:01 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i6CV2-0006NC-VZ; Fri, 06 Sep 2019 11:33:57 +0000
From: Colin King <colin.king@canonical.com>
To: gJeff Kirsher <jeffrey.t.kirsher@intel.com>,
 "David S . Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Date: Fri,  6 Sep 2019 12:33:56 +0100
Message-Id: <20190906113356.9985-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] net/ixgbevf: make array api static const,
 makes object smaller
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Colin Ian King <colin.king@canonical.com>

Don't populate the array api on the stack but instead make it
static const. Makes the object code smaller by 58 bytes.

Before:
   text	   data	    bss	    dec	    hex	filename
  82969	   9763	    256	  92988	  16b3c	ixgbevf/ixgbevf_main.o

After:
   text	   data	    bss	    dec	    hex	filename
  82815	   9859	    256	  92930	  16b02	ixgbevf/ixgbevf_main.o

(gcc version 9.2.1, amd64)

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 8c011d4ce7a9..46c8e2501084 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2261,12 +2261,14 @@ static void ixgbevf_init_last_counter_stats(struct ixgbevf_adapter *adapter)
 static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
-	int api[] = { ixgbe_mbox_api_14,
-		      ixgbe_mbox_api_13,
-		      ixgbe_mbox_api_12,
-		      ixgbe_mbox_api_11,
-		      ixgbe_mbox_api_10,
-		      ixgbe_mbox_api_unknown };
+	static const int api[] = {
+		ixgbe_mbox_api_14,
+		ixgbe_mbox_api_13,
+		ixgbe_mbox_api_12,
+		ixgbe_mbox_api_11,
+		ixgbe_mbox_api_10,
+		ixgbe_mbox_api_unknown
+	};
 	int err, idx = 0;
 
 	spin_lock_bh(&adapter->mbx_lock);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
