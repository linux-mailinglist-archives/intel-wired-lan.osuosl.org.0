Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2482D14E8
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Dec 2020 16:40:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD7AB20337;
	Mon,  7 Dec 2020 15:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5K41XFwl5cXd; Mon,  7 Dec 2020 15:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DA62A2035B;
	Mon,  7 Dec 2020 15:40:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C181A1BF3AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 01:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B768586FCE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 01:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uGkczMkAnVpL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Dec 2020 01:14:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-m973.mail.163.com (mail-m973.mail.163.com [123.126.97.3])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 07F9E86C73
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Dec 2020 01:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=kwm3UwvFjmZam557Kn
 GbJbf+wxK5Q0nkBvUS2h6LNVk=; b=cRZaGxzEuxC73sAsqiNnAtSaWGU6PiZcqn
 mHarORkswDocqopEJt/HKc4Pgzw+M5hZjt6ppytaZuokhiYi0YkSpJP9f6YJlcGX
 /3lZuw6i4IDfYpnoPzfM07fE6mSe/Al8c7Urzikb3GBTz4SNF9+LG0WRdwyolaCS
 vLbc0dEjo=
Received: from localhost.localdomain (unknown [202.112.113.212])
 by smtp3 (Coremail) with SMTP id G9xpCgDnxZ7ogc1fwWdAOQ--.44287S4;
 Mon, 07 Dec 2020 09:14:18 +0800 (CST)
From: Xiaohui Zhang <ruc_zhangxiaohui@163.com>
To: Xiaohui Zhang <ruc_zhangxiaohui@163.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Mon,  7 Dec 2020 09:14:15 +0800
Message-Id: <20201207011415.463-1-ruc_zhangxiaohui@163.com>
X-Mailer: git-send-email 2.17.1
X-CM-TRANSID: G9xpCgDnxZ7ogc1fwWdAOQ--.44287S4
X-Coremail-Antispam: 1Uf129KBjvJXoW7Xw4xAw48uryxKFykXry8Grg_yoW8JrykpF
 WDKFy7Cw1kXr4Yg3W8Za9ruFs5Jw4kGrWFgrWSkrn5Zwn8Jr92qr98KFy7Cr95ZrWY9F47
 Jr4jvr95A3WrXwUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UnqXdUUUUU=
X-Originating-IP: [202.112.113.212]
X-CM-SenderInfo: puxfs6pkdqw5xldrx3rl6rljoofrz/1tbipRHyMFUMa-ekYwACs2
X-Mailman-Approved-At: Mon, 07 Dec 2020 15:40:40 +0000
Subject: [Intel-wired-lan] [PATCH 1/1] ice: fix array overflow on receiving
 too many fragments for a packet
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

Signed-off-by: Zhang Xiaohui <ruc_zhangxiaohui@163.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index eae75260f..f0f034fa5 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -823,8 +823,12 @@ ice_add_rx_frag(struct ice_ring *rx_ring, struct ice_rx_buf *rx_buf,
 
 	if (!size)
 		return;
-	skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags, rx_buf->page,
+	struct skb_shared_info *shinfo = skb_shinfo(skb);
+
+	if (shinfo->nr_frags < ARRAY_SIZE(shinfo->frags)) {
+		skb_add_rx_frag(skb, shinfo, rx_buf->page,
 			rx_buf->page_offset, size, truesize);
+	}
 
 	/* page is being used so we must update the page offset */
 	ice_rx_buf_adjust_pg_offset(rx_buf, truesize);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
