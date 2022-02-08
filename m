Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B55B4ACE12
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Feb 2022 02:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D3C060BF5;
	Tue,  8 Feb 2022 01:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ICFlzzjynxqD; Tue,  8 Feb 2022 01:44:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24E2960A97;
	Tue,  8 Feb 2022 01:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A87A1BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 01:40:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2ECC160A97
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 01:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dC9ooJNxedfe for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Feb 2022 01:40:21 +0000 (UTC)
X-Greylist: delayed 00:05:04 by SQLgrey-1.8.0
Received: from out199-2.us.a.mail.aliyun.com (out199-2.us.a.mail.aliyun.com
 [47.90.199.2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 77F3B60A8A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 01:40:19 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04400; MF=yang.lee@linux.alibaba.com;
 NM=1; PH=DS; RN=9; SR=0; TI=SMTPD_---0V3teSnY_1644284109; 
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com
 fp:SMTPD_---0V3teSnY_1644284109) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 08 Feb 2022 09:35:09 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: kuba@kernel.org
Date: Tue,  8 Feb 2022 09:35:07 +0800
Message-Id: <20220208013507.51096-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 08 Feb 2022 01:44:53 +0000
Subject: [Intel-wired-lan] [PATCH -next] ixgbevf: clean up some inconsistent
 indenting
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
Cc: netdev@vger.kernel.org, Abaci Robot <abaci@linux.alibaba.com>,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Yang Li <yang.lee@linux.alibaba.com>, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Eliminate the follow smatch warning:
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:2756
ixgbevf_alloc_q_vector() warn: inconsistent indenting

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 17fbc450da61..84222ec2393c 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2753,7 +2753,7 @@ static int ixgbevf_alloc_q_vector(struct ixgbevf_adapter *adapter, int v_idx,
 		ring->reg_idx = reg_idx;
 
 		/* assign ring to adapter */
-		 adapter->tx_ring[txr_idx] = ring;
+		adapter->tx_ring[txr_idx] = ring;
 
 		/* update count and index */
 		txr_count--;
-- 
2.20.1.7.g153144c

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
