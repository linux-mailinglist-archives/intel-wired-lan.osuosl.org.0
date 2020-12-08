Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 241862D3074
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 18:02:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 926EC20444;
	Tue,  8 Dec 2020 17:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r5bNYuZHo2HX; Tue,  8 Dec 2020 17:02:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EB9E275B0;
	Tue,  8 Dec 2020 17:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB1EC1BF356
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 04:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE3E42E4FA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 04:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ac2aTlK8FlPa for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 04:07:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m975.mail.163.com (mail-m975.mail.163.com [123.126.97.5])
 by silver.osuosl.org (Postfix) with ESMTPS id 699CA203F2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 04:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=e7nlyQZHgn2nibFtK4
 qOZ6mgkuCjj/AG/0LmEvfJ7cg=; b=WstvLNyhYhLoTOPoDQY4k++acBfJXte9An
 g6otyHU0hVgw1JweyT4ha1U3w/vrNQv9Azt5LmbhVUuZ5aQWezKXQZ/NkK4qR2oL
 ZwiL5HZA8SvnUMXlJZcbYjmKkP2vjELc+gzLk2vjSdsiMfhS9zLsY0sdF7uC3pcW
 Epv609VJk=
Received: from localhost.localdomain (unknown [202.112.113.212])
 by smtp5 (Coremail) with SMTP id HdxpCgD3tIHP+85fwShYEA--.3818S4;
 Tue, 08 Dec 2020 12:06:45 +0800 (CST)
From: Xiaohui Zhang <ruc_zhangxiaohui@163.com>
To: Xiaohui Zhang <ruc_zhangxiaohui@163.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Shannon Nelson <snelson@pensando.io>,
 Pensando Drivers <drivers@pensando.io>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue,  8 Dec 2020 12:06:38 +0800
Message-Id: <20201208040638.40627-1-ruc_zhangxiaohui@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: HdxpCgD3tIHP+85fwShYEA--.3818S4
X-Coremail-Antispam: 1Uf129KBjvJXoW7ZFykuFyfGF48Kw4ftF17Awb_yoW5Jry3pF
 4UKa4UZw4kXrs0gw1kAw4kuFW5tws8GrWSgr9ak3s5Ww1DJrZ2qa4DtFySyr95trW8CF4I
 qr42vwn5A3Z8XwUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0zRu6wZUUUUU=
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: puxfs6pkdqw5xldrx3rl6rljoofrz/1tbiThX0MFUDGa6IsQAAsH
X-Mailman-Approved-At: Tue, 08 Dec 2020 17:02:09 +0000
Subject: [Intel-wired-lan] [PATCH 1/1] fix possible array overflow on
 receiving too many fragments for a packet
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Zhang Xiaohui <ruc_zhangxiaohui@163.com>

If the hardware receives an oversized packet with too many rx fragments,
skb_shinfo(skb)->frags can overflow and corrupt memory of adjacent pages.
This becomes especially visible if it corrupts the freelist pointer of
a slab page.
I found these two code fragments were very similar to the vulnerable code
in CVE-2020-12465, so I submitted these two patches.

Signed-off-by: Zhang Xiaohui <ruc_zhangxiaohui@163.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c        | 4 +++-
 drivers/net/ethernet/pensando/ionic/ionic_txrx.c | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index eae75260f..f0a252208 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -821,9 +821,11 @@ ice_add_rx_frag(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
 	unsigned int truesize = ice_rx_pg_size(rx_ring) / 2;
 #endif
 
+	struct skb_shared_info *shinfo = skb_shinfo(skb);
 	if (!size)
 		return;
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
+	if (shinfo->nr_frags < ARRAY_SIZE(shinfo->frags))
+		skb_add_rx_frag(skb, shinfo, rx_buf->page,
 			rx_buf->page_offset, size, truesize);
 
 	/* page is being used so we must update the page offset */
diff --git a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
index 169ac4f54..d30e83a4b 100644
--- a/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
+++ b/drivers/net/ethernet/pensando/ionic/ionic_txrx.c
@@ -74,6 +74,7 @@ static struct sk_buff *ionic_rx_frags(struct ionic_queue *q,
 	struct device *dev = q->lif->ionic->dev;
 	struct ionic_page_info *page_info;
 	struct sk_buff *skb;
+	struct skb_shared_info *shinfo = skb_shinfo(skb);
 	unsigned int i;
 	u16 frag_len;
 	u16 len;
@@ -102,7 +103,8 @@ static struct sk_buff *ionic_rx_frags(struct ionic_queue *q,
 
 		dma_unmap_page(dev, dma_unmap_addr(page_info, dma_addr),
 			       PAGE_SIZE, DMA_FROM_DEVICE);
-		skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
+		if (shinfo->nr_frags < ARRAY_SIZE(shinfo->frags))
+			skb_add_rx_frag(skb, shinfo->nr_frags,
 				page_info->page, 0, frag_len, PAGE_SIZE);
 		page_info->page = NULL;
 		page_info++;
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
