Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F0970593
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2019 18:39:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4173420454;
	Mon, 22 Jul 2019 16:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 628+Xn621Gg2; Mon, 22 Jul 2019 16:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 70BBB20455;
	Mon, 22 Jul 2019 16:39:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24DF51BF38B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 12:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2098E20389
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 12:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KdC8+8P5FjVe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2019 12:04:38 +0000 (UTC)
X-Greylist: delayed 00:07:11 by SQLgrey-1.7.6
Received: from smtpbg368.qq.com (smtpbg368.qq.com [163.177.87.252])
 by silver.osuosl.org (Postfix) with ESMTPS id BBE541FD16
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2019 12:04:37 +0000 (UTC)
X-QQ-mid: bizesmtp29t1563796574tzip33ol
Received: from localhost.localdomain (unknown [218.76.23.26])
 by esmtp10.qq.com (ESMTP) with 
 id ; Mon, 22 Jul 2019 19:56:10 +0800 (CST)
X-QQ-SSF: 01400000002000E0JG32000A0000000
X-QQ-FEAT: TWw0r7qzbCA7nHhSAaig5YmJ1EHmcWOqw/cLXl4Cri2gT9verCU0QL29iJsck
 6q9GkfPOXFy8NlxvkHx0Y3rw4xYxo5GL+MKvmtQnd27cQJGKpeeUbv/Yf+zxMxczjqUSuGb
 3wi5lY2tG9Xde6JarOySdVKRJT7WKIS/DjwIxLQceI80VXVznbNCiBqqv3Juo/UP27iBdJr
 SFg0tGen9+/GwTbr6YH+hrpI0xY4YBj5igxpC3Z+ZIAqdMD4IUHtRAN1AQu/sfwqc/CxFoF
 hfKqo6TUyItrG/KiezjZ7wxn0uggk43GEwjGr5mOL+BWCgIgWQSTer+iqau4UQwFsacA==
X-QQ-GoodBg: 2
From: huhai <huhai@kylinos.cn>
To: jeffrey.t.kirsher@intel.com,
	davem@davemloft.net
Date: Mon, 22 Jul 2019 19:55:59 +0800
Message-Id: <20190722115559.12041-1-huhai@kylinos.cn>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:kylinos.cn:qybgforeign:qybgforeign1
X-QQ-Bgrelay: 1
X-Mailman-Approved-At: Mon, 22 Jul 2019 16:39:02 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: add check on
 i40e_configure_tx_ring() return value
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
Cc: intel-wired-lan@lists.osuosl.org, huhai <huhai@kylinos.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When i40e_configure_tx_ring(vsi->tx_rings[i]) returns an error, we should
exit from i40e_vsi_configure_tx and return the error, instead of continuing
to check whether xdp is enable, and configure the xdp transmit ring.

Signed-off-by: huhai <huhai@kylinos.cn>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 9ebbe3da61bb..dbd153c90616 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3360,7 +3360,7 @@ static int i40e_vsi_configure_tx(struct i40e_vsi *vsi)
 	for (i = 0; (i < vsi->num_queue_pairs) && !err; i++)
 		err = i40e_configure_tx_ring(vsi->tx_rings[i]);
 
-	if (!i40e_enabled_xdp_vsi(vsi))
+	if (err || !i40e_enabled_xdp_vsi(vsi))
 		return err;
 
 	for (i = 0; (i < vsi->num_queue_pairs) && !err; i++)
-- 
2.20.1



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
