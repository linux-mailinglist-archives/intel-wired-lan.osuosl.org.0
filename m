Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5075E1B1730
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2020 22:33:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C07D387896;
	Mon, 20 Apr 2020 20:33:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOgbWvkjIW45; Mon, 20 Apr 2020 20:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3CC48788C;
	Mon, 20 Apr 2020 20:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DB711BF29F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 12:08:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69D7B85CAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 12:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LDj4F4RZFFfC for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2020 12:08:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEC5B85C86
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 12:08:33 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C46F9895216008B9E491;
 Mon, 20 Apr 2020 20:08:30 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Mon, 20 Apr 2020
 20:08:24 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Date: Mon, 20 Apr 2020 20:35:06 +0800
Message-ID: <20200420123506.7716-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 20 Apr 2020 20:33:26 +0000
Subject: [Intel-wired-lan] [PATCH] e1000: remove unneeded conversion to bool
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

The '==' expression itself is bool, no need to convert it to bool again.
This fixes the following coccicheck warning:

drivers/net/ethernet/intel/e1000/e1000_main.c:1479:44-49: WARNING:
conversion to bool not needed here

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/ethernet/intel/e1000/e1000_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index ac5146d53c4c..05bc6e216bca 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -1476,7 +1476,7 @@ static bool e1000_check_64k_bound(struct e1000_adapter *adapter, void *start,
 	if (hw->mac_type == e1000_82545 ||
 	    hw->mac_type == e1000_ce4100 ||
 	    hw->mac_type == e1000_82546) {
-		return ((begin ^ (end - 1)) >> 16) != 0 ? false : true;
+		return ((begin ^ (end - 1)) >> 16) == 0;
 	}
 
 	return true;
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
