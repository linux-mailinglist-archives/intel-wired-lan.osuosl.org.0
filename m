Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F1E1C506D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 May 2020 10:36:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 151BE85DF8;
	Tue,  5 May 2020 08:36:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lSG7GpMBRbK4; Tue,  5 May 2020 08:36:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 158D385F41;
	Tue,  5 May 2020 08:36:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 215471BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 08:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1CDEC87C8E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 08:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZvAyCnTOjf1e for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2020 08:36:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 29D4187720
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 08:36:38 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 0A92C1AC43DB951D8E36;
 Tue,  5 May 2020 16:36:36 +0800 (CST)
Received: from localhost (10.166.215.154) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Tue, 5 May 2020
 16:36:29 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>
Date: Tue, 5 May 2020 16:35:54 +0800
Message-ID: <20200505083554.25808-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: Remove unused inline
 function ixgbe_irq_disable_queues
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

commit b5f69ccf6765 ("ixgbe: avoid bringing rings up/down as macvlans are added/removed")
left behind this, remove it.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 29 -------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 718931d951bc..ebfe6b57ed30 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2954,35 +2954,6 @@ static inline void ixgbe_irq_enable_queues(struct ixgbe_adapter *adapter,
 	/* skip the flush */
 }
 
-static inline void ixgbe_irq_disable_queues(struct ixgbe_adapter *adapter,
-					    u64 qmask)
-{
-	u32 mask;
-	struct ixgbe_hw *hw = &adapter->hw;
-
-	switch (hw->mac.type) {
-	case ixgbe_mac_82598EB:
-		mask = (IXGBE_EIMS_RTX_QUEUE & qmask);
-		IXGBE_WRITE_REG(hw, IXGBE_EIMC, mask);
-		break;
-	case ixgbe_mac_82599EB:
-	case ixgbe_mac_X540:
-	case ixgbe_mac_X550:
-	case ixgbe_mac_X550EM_x:
-	case ixgbe_mac_x550em_a:
-		mask = (qmask & 0xFFFFFFFF);
-		if (mask)
-			IXGBE_WRITE_REG(hw, IXGBE_EIMC_EX(0), mask);
-		mask = (qmask >> 32);
-		if (mask)
-			IXGBE_WRITE_REG(hw, IXGBE_EIMC_EX(1), mask);
-		break;
-	default:
-		break;
-	}
-	/* skip the flush */
-}
-
 /**
  * ixgbe_irq_enable - Enable default interrupt generation settings
  * @adapter: board private structure
-- 
2.17.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
