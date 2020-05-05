Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075211C4F5E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 May 2020 09:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADDB28861E;
	Tue,  5 May 2020 07:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hj8q3jbkNWh5; Tue,  5 May 2020 07:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7777288650;
	Tue,  5 May 2020 07:44:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D20A61BF313
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 07:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC42886A59
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 07:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AaJmyZUzwE_R for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 May 2020 07:44:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 44E1C86A57
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 May 2020 07:44:31 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 28354A8E70AC4AE36D1B;
 Tue,  5 May 2020 15:44:24 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Tue, 5 May 2020
 15:44:14 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <kuba@kernel.org>, <hawk@kernel.org>,
 <john.fastabend@gmail.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <bpf@vger.kernel.org>
Date: Tue, 5 May 2020 15:43:37 +0800
Message-ID: <20200505074337.21477-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: Use true,
 false for bool variable in __ixgbe_enable_sriov()
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

drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c:105:2-38: WARNING:
Assignment of 0/1 to bool variable

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 537dfff585e0..d05a5690e66b 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -102,7 +102,7 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 		 * indirection table and RSS hash key with PF therefore
 		 * we want to disable the querying by default.
 		 */
-		adapter->vfinfo[i].rss_query_enabled = 0;
+		adapter->vfinfo[i].rss_query_enabled = false;
 
 		/* Untrust all VFs */
 		adapter->vfinfo[i].trusted = false;
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
