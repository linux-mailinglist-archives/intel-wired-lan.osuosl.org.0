Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A759973439
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 18:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22FD085F44;
	Wed, 24 Jul 2019 16:51:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HxNzG1CrBjsj; Wed, 24 Jul 2019 16:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 060F185F37;
	Wed, 24 Jul 2019 16:51:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A50EB1BF3C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 16:50:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A0792860CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 16:50:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gOLKJKlgw-eL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 16:50:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3BF2D85465
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 16:50:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 09:50:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="169977830"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.96])
 by fmsmga008.fm.intel.com with ESMTP; 24 Jul 2019 09:50:39 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 Jul 2019 09:50:08 -0700
Message-Id: <20190724165008.12142-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH -next v2] ixgbevf: fix a compilation error
 of skb_frag_t
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
Cc: Qian Cai <cai@lca.pw>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Qian Cai <cai@lca.pw>

The linux-next commit "net: Rename skb_frag_t size to bv_len" [1]
introduced a compilation error on powerpc as it forgot to deal with the
renaming from "size" to "bv_len" for ixgbevf.

[1] https://lore.kernel.org/netdev/20190723030831.11879-1-willy@infradead.org/T/#md052f1c7de965ccd1bdcb6f92e1990a52298eac5

In file included from ./include/linux/cache.h:5,
                 from ./include/linux/printk.h:9,
                 from ./include/linux/kernel.h:15,
                 from ./include/linux/list.h:9,
                 from ./include/linux/module.h:9,
                 from
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:12:
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c: In function
'ixgbevf_xmit_frame_ring':
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:4138:51: error:
'skb_frag_t' {aka 'struct bio_vec'} has no member named 'size'
   count += TXD_USE_COUNT(skb_shinfo(skb)->frags[f].size);
                                                   ^
./include/uapi/linux/kernel.h:13:40: note: in definition of macro
'__KERNEL_DIV_ROUND_UP'
 #define __KERNEL_DIV_ROUND_UP(n, d) (((n) + (d) - 1) / (d))
                                        ^
drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c:4138:12: note: in
expansion of macro 'TXD_USE_COUNT'
   count += TXD_USE_COUNT(skb_shinfo(skb)->frags[f].size);

Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: Use the fine accessor per Matthew.

Sent to intel-wired-lan@lists.osuosl.org, since it was left off in the original
submission.

 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index bdfccaf38edd..8c011d4ce7a9 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4134,8 +4134,11 @@ static int ixgbevf_xmit_frame_ring(struct sk_buff *skb,
 	 * otherwise try next time
 	 */
 #if PAGE_SIZE > IXGBE_MAX_DATA_PER_TXD
-	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
-		count += TXD_USE_COUNT(skb_shinfo(skb)->frags[f].size);
+	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++) {
+		skb_frag_t *frag = &skb_shinfo(skb)->frags[f];
+
+		count += TXD_USE_COUNT(skb_frag_size(frag));
+	}
 #else
 	count += skb_shinfo(skb)->nr_frags;
 #endif
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
