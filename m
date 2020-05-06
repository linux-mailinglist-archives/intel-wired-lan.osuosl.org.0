Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D461C6861
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 May 2020 08:19:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4087785629;
	Wed,  6 May 2020 06:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rz4DEd9x8lGp; Wed,  6 May 2020 06:19:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35BFD849D8;
	Wed,  6 May 2020 06:19:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8B421BF86D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 06:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C4064885B9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 06:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6IgPMmK68ZGw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2020 06:19:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BE77B885B6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2020 06:19:28 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 6348CA83649E26CF3A34;
 Wed,  6 May 2020 14:19:23 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 14:19:13 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>,
 <piotr.azarewicz@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Date: Wed, 6 May 2020 14:18:35 +0800
Message-ID: <20200506061835.19662-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] i40e: Make
 i40e_shutdown_adminq() return void
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix the following coccicheck warning:

drivers/net/ethernet/intel/i40e/i40e_adminq.c:699:13-21: Unneeded
variable: "ret_code". Return "0" on line 710

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/ethernet/intel/i40e/i40e_adminq.c    | 6 +-----
 drivers/net/ethernet/intel/i40e/i40e_prototype.h | 2 +-
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_adminq.c b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
index 37514a75f928..6a089848c857 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_adminq.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_adminq.c
@@ -694,10 +694,8 @@ i40e_status i40e_init_adminq(struct i40e_hw *hw)
  *  i40e_shutdown_adminq - shutdown routine for the Admin Queue
  *  @hw: pointer to the hardware structure
  **/
-i40e_status i40e_shutdown_adminq(struct i40e_hw *hw)
+void i40e_shutdown_adminq(struct i40e_hw *hw)
 {
-	i40e_status ret_code = 0;
-
 	if (i40e_check_asq_alive(hw))
 		i40e_aq_queue_shutdown(hw, true);
 
@@ -706,8 +704,6 @@ i40e_status i40e_shutdown_adminq(struct i40e_hw *hw)
 
 	if (hw->nvm_buff.va)
 		i40e_free_virt_mem(hw, &hw->nvm_buff);
-
-	return ret_code;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index bbb478f09093..5c1378641b3b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -17,7 +17,7 @@
 
 /* adminq functions */
 i40e_status i40e_init_adminq(struct i40e_hw *hw);
-i40e_status i40e_shutdown_adminq(struct i40e_hw *hw);
+void i40e_shutdown_adminq(struct i40e_hw *hw);
 void i40e_adminq_init_ring_data(struct i40e_hw *hw);
 i40e_status i40e_clean_arq_element(struct i40e_hw *hw,
 					     struct i40e_arq_event_info *e,
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
