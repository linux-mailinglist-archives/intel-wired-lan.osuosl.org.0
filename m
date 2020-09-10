Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B42B2653E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D79B887184;
	Thu, 10 Sep 2020 21:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8bVR1Er_JAg; Thu, 10 Sep 2020 21:42:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 974ED871B5;
	Thu, 10 Sep 2020 21:42:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30AFE1BF33C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:15:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D24C20485
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:15:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMAG3oJ+B5xJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 15:15:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 1417620796
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:15:10 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 064309BB00F9D5C28E88;
 Thu, 10 Sep 2020 23:14:50 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Thu, 10 Sep 2020
 23:14:45 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>
Date: Thu, 10 Sep 2020 23:12:04 +0800
Message-ID: <20200910151204.36198-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:42:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next] igb: Fix some kernel-doc
 warnings in e1000_82575.c
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixes the following W=1 kernel build warning(s):

drivers/net/ethernet/intel/igb/e1000_82575.c:2563: warning: Excess function parameter 'addr' description in '__igb_access_emi_reg'
drivers/net/ethernet/intel/igb/e1000_82575.c:2599: warning: Excess function parameter 'adv100m' description in 'igb_set_eee_i350'
drivers/net/ethernet/intel/igb/e1000_82575.c:2655: warning: Excess function parameter 'adv100m' description in 'igb_set_eee_i354'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 drivers/net/ethernet/intel/igb/e1000_82575.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_82575.c b/drivers/net/ethernet/intel/igb/e1000_82575.c
index a32391e82762..50863fd87d53 100644
--- a/drivers/net/ethernet/intel/igb/e1000_82575.c
+++ b/drivers/net/ethernet/intel/igb/e1000_82575.c
@@ -2554,7 +2554,7 @@ static s32 igb_update_nvm_checksum_i350(struct e1000_hw *hw)
 /**
  *  __igb_access_emi_reg - Read/write EMI register
  *  @hw: pointer to the HW structure
- *  @addr: EMI address to program
+ *  @address: EMI address to program
  *  @data: pointer to value to read/write from/to the EMI address
  *  @read: boolean flag to indicate read or write
  **/
@@ -2590,7 +2590,7 @@ s32 igb_read_emi_reg(struct e1000_hw *hw, u16 addr, u16 *data)
  *  igb_set_eee_i350 - Enable/disable EEE support
  *  @hw: pointer to the HW structure
  *  @adv1G: boolean flag enabling 1G EEE advertisement
- *  @adv100m: boolean flag enabling 100M EEE advertisement
+ *  @adv100M: boolean flag enabling 100M EEE advertisement
  *
  *  Enable/disable EEE based on setting in dev_spec structure.
  *
@@ -2646,7 +2646,7 @@ s32 igb_set_eee_i350(struct e1000_hw *hw, bool adv1G, bool adv100M)
  *  igb_set_eee_i354 - Enable/disable EEE support
  *  @hw: pointer to the HW structure
  *  @adv1G: boolean flag enabling 1G EEE advertisement
- *  @adv100m: boolean flag enabling 100M EEE advertisement
+ *  @adv100M: boolean flag enabling 100M EEE advertisement
  *
  *  Enable/disable EEE legacy mode based on setting in dev_spec structure.
  *
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
