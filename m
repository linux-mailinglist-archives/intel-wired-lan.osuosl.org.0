Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA102653E7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:42:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 65C242E218;
	Thu, 10 Sep 2020 21:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KLNgdRSI+Oyf; Thu, 10 Sep 2020 21:42:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9170F2E244;
	Thu, 10 Sep 2020 21:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CA0F51BF33C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C68C987651
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XJpgnARpnoAk for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 15:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 27FF58763C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:23 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2EAEB249C1931B95CB7F;
 Thu, 10 Sep 2020 23:07:16 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Thu, 10 Sep 2020
 23:07:12 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>
Date: Thu, 10 Sep 2020 23:04:29 +0800
Message-ID: <20200910150429.31912-4-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200910150429.31912-1-wanghai38@huawei.com>
References: <20200910150429.31912-1-wanghai38@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:42:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next 3/3] e1000: Fix a bunch of
 kerneldoc parameter issues in e1000_hw.c
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix W=1 compile warnings (invalid kerneldoc):

drivers/net/ethernet/intel/e1000/e1000_hw.c:1907: warning: Excess function parameter 'mii_reg' description in 'e1000_config_mac_to_phy'
drivers/net/ethernet/intel/e1000/e1000_hw.c:2930: warning: Excess function parameter 'data' description in 'e1000_write_phy_reg'
drivers/net/ethernet/intel/e1000/e1000_hw.c:4788: warning: Excess function parameter 'tx_packets' description in 'e1000_update_adaptive'
drivers/net/ethernet/intel/e1000/e1000_hw.c:4788: warning: Excess function parameter 'total_collisions' description in 'e1000_update_adaptive'
drivers/net/ethernet/intel/e1000/e1000_hw.c:5079: warning: Excess function parameter 'downshift' description in 'e1000_check_downshift'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 drivers/net/ethernet/intel/e1000/e1000_hw.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_hw.c b/drivers/net/ethernet/intel/e1000/e1000_hw.c
index 4e7a0810eaeb..9cc5553b5287 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_hw.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_hw.c
@@ -1897,7 +1897,6 @@ void e1000_config_collision_dist(struct e1000_hw *hw)
 /**
  * e1000_config_mac_to_phy - sync phy and mac settings
  * @hw: Struct containing variables accessed by shared code
- * @mii_reg: data to write to the MII control register
  *
  * Sets MAC speed and duplex settings to reflect the those in the PHY
  * The contents of the PHY register containing the needed information need to
@@ -2922,7 +2921,7 @@ static s32 e1000_read_phy_reg_ex(struct e1000_hw *hw, u32 reg_addr,
  *
  * @hw: Struct containing variables accessed by shared code
  * @reg_addr: address of the PHY register to write
- * @data: data to write to the PHY
+ * @phy_data: data to write to the PHY
  *
  * Writes a value to a PHY register
  */
@@ -4778,8 +4777,6 @@ void e1000_reset_adaptive(struct e1000_hw *hw)
 /**
  * e1000_update_adaptive - update adaptive IFS
  * @hw: Struct containing variables accessed by shared code
- * @tx_packets: Number of transmits since last callback
- * @total_collisions: Number of collisions since last callback
  *
  * Called during the callback/watchdog routine to update IFS value based on
  * the ratio of transmits to collisions.
@@ -5064,8 +5061,6 @@ static s32 e1000_check_polarity(struct e1000_hw *hw,
 /**
  * e1000_check_downshift - Check if Downshift occurred
  * @hw: Struct containing variables accessed by shared code
- * @downshift: output parameter : 0 - No Downshift occurred.
- *                                1 - Downshift occurred.
  *
  * returns: - E1000_ERR_XXX
  *            E1000_SUCCESS
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
