Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C14C22FD3B1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 16:18:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F90D86078;
	Wed, 20 Jan 2021 15:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKzV1d2m6z9V; Wed, 20 Jan 2021 15:18:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 152BA86054;
	Wed, 20 Jan 2021 15:18:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3709F1BF59F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 06:28:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1E4C986FCC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 06:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zhgtdAQJYRMc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 06:28:26 +0000 (UTC)
X-Greylist: delayed 00:05:02 by SQLgrey-1.7.6
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com
 [47.88.44.36])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1972086FC6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 06:28:25 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R111e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04426;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=8; SR=0;
 TI=SMTPD_---0UMIdawV_1611123780; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0UMIdawV_1611123780) by smtp.aliyun-inc.com(127.0.0.1);
 Wed, 20 Jan 2021 14:23:10 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: jesse.brandeburg@intel.com
Date: Wed, 20 Jan 2021 14:22:58 +0800
Message-Id: <1611123778-104125-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Mailman-Approved-At: Wed, 20 Jan 2021 15:18:31 +0000
Subject: [Intel-wired-lan] [PATCH] igc: Assign boolean values to a bool
 variable
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the following coccicheck warnings:

./drivers/net/ethernet/intel/igc/igc_main.c:4961:2-14: WARNING:
Assignment of 0/1 to bool variable.

./drivers/net/ethernet/intel/igc/igc_main.c:4955:2-14: WARNING:
Assignment of 0/1 to bool variable.

./drivers/net/ethernet/intel/igc/igc_main.c:4933:1-13: WARNING:
Assignment of 0/1 to bool variable.

./drivers/net/ethernet/intel/igc/igc_main.c:4592:1-24: WARNING:
Assignment of 0/1 to bool variable.

./drivers/net/ethernet/intel/igc/igc_main.c:4438:2-25: WARNING:
Assignment of 0/1 to bool variable.

./drivers/net/ethernet/intel/igc/igc_main.c:4396:2-25: WARNING:
Assignment of 0/1 to bool variable.

./drivers/net/ethernet/intel/igc/igc_main.c:4018:2-25: WARNING:
Assignment of 0/1 to bool variable.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index afd6a62..6abb331 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -3597,7 +3597,7 @@ void igc_up(struct igc_adapter *adapter)
 	netif_tx_start_all_queues(adapter->netdev);
 
 	/* start the watchdog. */
-	hw->mac.get_link_status = 1;
+	hw->mac.get_link_status = true;
 	schedule_work(&adapter->watchdog_task);
 }
 
@@ -4016,7 +4016,7 @@ static irqreturn_t igc_msix_other(int irq, void *data)
 	}
 
 	if (icr & IGC_ICR_LSC) {
-		hw->mac.get_link_status = 1;
+		hw->mac.get_link_status = true;
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__IGC_DOWN, &adapter->state))
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
@@ -4394,7 +4394,7 @@ static irqreturn_t igc_intr_msi(int irq, void *data)
 	}
 
 	if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
-		hw->mac.get_link_status = 1;
+		hw->mac.get_link_status = true;
 		if (!test_bit(__IGC_DOWN, &adapter->state))
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
 	}
@@ -4436,7 +4436,7 @@ static irqreturn_t igc_intr(int irq, void *data)
 	}
 
 	if (icr & (IGC_ICR_RXSEQ | IGC_ICR_LSC)) {
-		hw->mac.get_link_status = 1;
+		hw->mac.get_link_status = true;
 		/* guard against interrupt when we're going down */
 		if (!test_bit(__IGC_DOWN, &adapter->state))
 			mod_timer(&adapter->watchdog_timer, jiffies + 1);
@@ -4590,7 +4590,7 @@ static int __igc_open(struct net_device *netdev, bool resuming)
 	netif_tx_start_all_queues(netdev);
 
 	/* start the watchdog. */
-	hw->mac.get_link_status = 1;
+	hw->mac.get_link_status = true;
 	schedule_work(&adapter->watchdog_task);
 
 	return IGC_SUCCESS;
@@ -4931,7 +4931,7 @@ int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
 {
 	struct igc_mac_info *mac = &adapter->hw.mac;
 
-	mac->autoneg = 0;
+	mac->autoneg = false;
 
 	/* Make sure dplx is at most 1 bit and lsb of speed is not set
 	 * for the switch() below to work
@@ -4953,13 +4953,13 @@ int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx)
 		mac->forced_speed_duplex = ADVERTISE_100_FULL;
 		break;
 	case SPEED_1000 + DUPLEX_FULL:
-		mac->autoneg = 1;
+		mac->autoneg = true;
 		adapter->hw.phy.autoneg_advertised = ADVERTISE_1000_FULL;
 		break;
 	case SPEED_1000 + DUPLEX_HALF: /* not supported */
 		goto err_inval;
 	case SPEED_2500 + DUPLEX_FULL:
-		mac->autoneg = 1;
+		mac->autoneg = true;
 		adapter->hw.phy.autoneg_advertised = ADVERTISE_2500_FULL;
 		break;
 	case SPEED_2500 + DUPLEX_HALF: /* not supported */
-- 
1.8.3.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
