Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B77C2653E8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C04AF2E21D;
	Thu, 10 Sep 2020 21:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFhyBK2NQ3d9; Thu, 10 Sep 2020 21:42:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 729712E24B;
	Thu, 10 Sep 2020 21:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 66A4E1BF9B2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C3EF20519
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id akg2PU0aV-D5 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Sep 2020 15:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id F14DF2E1DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 15:07:19 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 33AFC8FD90576FD21D29;
 Thu, 10 Sep 2020 23:07:16 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Thu, 10 Sep 2020
 23:07:10 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <kuba@kernel.org>
Date: Thu, 10 Sep 2020 23:04:27 +0800
Message-ID: <20200910150429.31912-2-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200910150429.31912-1-wanghai38@huawei.com>
References: <20200910150429.31912-1-wanghai38@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:42:05 +0000
Subject: [Intel-wired-lan] [PATCH net-next 1/3] e1000e: Fix some kernel-doc
 warnings in ich8lan.c
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

Fixes the following W=1 kernel build warning(s):

drivers/net/ethernet/intel/e1000e/ich8lan.c:2277: warning: Excess function parameter 'enable' description in 'e1000_configure_k1_ich8lan'
drivers/net/ethernet/intel/e1000e/ich8lan.c:754: warning: Excess function parameter 'addr' description in '__e1000_access_emi_reg_locked'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index b2f2fcfdf732..3182de6ead0f 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -743,7 +743,7 @@ static s32 e1000_init_mac_params_ich8lan(struct e1000_hw *hw)
 /**
  *  __e1000_access_emi_reg_locked - Read/write EMI register
  *  @hw: pointer to the HW structure
- *  @addr: EMI address to program
+ *  @address: EMI address to program
  *  @data: pointer to value to read/write from/to the EMI address
  *  @read: boolean flag to indicate read or write
  *
@@ -2266,7 +2266,7 @@ static s32 e1000_k1_gig_workaround_hv(struct e1000_hw *hw, bool link)
 /**
  *  e1000_configure_k1_ich8lan - Configure K1 power state
  *  @hw: pointer to the HW structure
- *  @enable: K1 state to configure
+ *  @k1_enable: K1 state to configure
  *
  *  Configure the K1 power state based on the provided parameter.
  *  Assumes semaphore already acquired.
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
