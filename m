Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDC0523478
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 15:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A3C140B75;
	Wed, 11 May 2022 13:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IELIApmXQQEh; Wed, 11 May 2022 13:41:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 23A91404F6;
	Wed, 11 May 2022 13:41:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F40651BF294
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:26:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EFACD80C28
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:26:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=126.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yDpwEJe9g0vx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 07:26:32 +0000 (UTC)
X-Greylist: delayed 00:31:05 by SQLgrey-1.8.0
Received: from m15113.mail.126.com (m15113.mail.126.com [220.181.15.113])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A46280BEC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 07:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=u1j75
 +jwMktH6WYAlX+Azz8jfD4KSlO2j7a6v1tqq5E=; b=pk1zLcnONLE5+XxUCcVkW
 TDWFbncfWIPO97BebKB3GOACmwfAjDLvC8mwYbI23TXhPNMb2sIwVFV/VXIxLe53
 rnXdENFlckqpfTvu0yfnwE7sZedKRakyMvdXDUNgvaX8d3b6AdQBAcuM4OyLukzh
 4nbFmajLK5H31z8Rx2/VHc=
Received: from ubuntu.localdomain (unknown [58.213.83.157])
 by smtp3 (Coremail) with SMTP id DcmowACXS5zBXXtit4LEBQ--.33384S4;
 Wed, 11 May 2022 14:54:58 +0800 (CST)
From: Bernard Zhao <zhaojunkui2008@126.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 10 May 2022 23:54:51 -0700
Message-Id: <20220511065451.655335-1-zhaojunkui2008@126.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-CM-TRANSID: DcmowACXS5zBXXtit4LEBQ--.33384S4
X-Coremail-Antispam: 1Uf129KBjvdXoWrtF1fCw18Wr1UAF1kZrWUurg_yoWfZFc_Cr
 n7XF1xKw45KwnYqrn8Cr4fu3yjyrZ8W3yrury7t3yfJr9Fyr4UZryDZr95Xw4fWr4rCFy5
 Aa43t3W7C345AjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAR6w3UUUUU==
X-Originating-IP: [58.213.83.157]
X-CM-SenderInfo: p2kd0y5xqn3xasqqmqqrswhudrp/1tbiYAP9qlpEHUaynQAAse
X-Mailman-Approved-At: Wed, 11 May 2022 13:40:58 +0000
Subject: [Intel-wired-lan] [PATCH] intel/i40e: delete if NULL check before
 dev_kfree_skb
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
Cc: bernard@vivo.com, Bernard Zhao <zhaojunkui2008@126.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

dev_kfree_skb check if the input parameter NULL and do the right
thing, there is no need to check again.
This change is to cleanup the code a bit.

Signed-off-by: Bernard Zhao <zhaojunkui2008@126.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 0eae5858f2fe..98cfadfd0f35 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1482,10 +1482,8 @@ void i40e_clean_rx_ring(struct i40e_ring *rx_ring)
 	if (!rx_ring->rx_bi)
 		return;
 
-	if (rx_ring->skb) {
-		dev_kfree_skb(rx_ring->skb);
-		rx_ring->skb = NULL;
-	}
+	dev_kfree_skb(rx_ring->skb);
+	rx_ring->skb = NULL;
 
 	if (rx_ring->xsk_pool) {
 		i40e_xsk_clean_rx_ring(rx_ring);
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
