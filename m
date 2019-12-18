Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C1D1258A9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2019 01:40:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA9A886B90;
	Thu, 19 Dec 2019 00:40:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPWso12nX4BZ; Thu, 19 Dec 2019 00:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 337AF86C94;
	Thu, 19 Dec 2019 00:40:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 210B71BF57F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 09:53:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1D447850DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 09:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qMpbNY9J721I for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2019 09:53:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from imap2.colo.codethink.co.uk (imap2.colo.codethink.co.uk
 [78.40.148.184])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E0918508E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2019 09:53:17 +0000 (UTC)
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap2.colo.codethink.co.uk with esmtpsa  (Exim 4.92 #3 (Debian))
 id 1ihW0z-0006D0-GM; Wed, 18 Dec 2019 09:53:09 +0000
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.3)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1ihW0z-00A3gg-7g; Wed, 18 Dec 2019 09:53:09 +0000
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: ben.dooks@codethink.co.uk
Date: Wed, 18 Dec 2019 09:53:08 +0000
Message-Id: <20191218095308.2397408-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 19 Dec 2019 00:40:01 +0000
Subject: [Intel-wired-lan] [PATCH] e1000e: fix missing cpu_to_le64 on
 buffer_addr
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
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The following warning suggests there is a missing cpu_to_le64() in
the e1000_flush_tx_ring() function (it is also the behaviour
elsewhere in the driver to do cpu_to_le64() on the buffer_addr
when setting it)

drivers/net/ethernet/intel/e1000e/netdev.c:3813:30: warning: incorrect type in assignment (different base types)
drivers/net/ethernet/intel/e1000e/netdev.c:3813:30:    expected restricted __le64 [usertype] buffer_addr
drivers/net/ethernet/intel/e1000e/netdev.c:3813:30:    got unsigned long long [usertype] dma

Signed-off-by: Ben Dooks (Codethink) <ben.dooks@codethink.co.uk>
---
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index fe7997c18a10..b317ac024819 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -3810,7 +3810,7 @@ static void e1000_flush_tx_ring(struct e1000_adapter *adapter)
 	tdt = er32(TDT(0));
 	BUG_ON(tdt != tx_ring->next_to_use);
 	tx_desc =  E1000_TX_DESC(*tx_ring, tx_ring->next_to_use);
-	tx_desc->buffer_addr = tx_ring->dma;
+	tx_desc->buffer_addr = cpu_to_le64(tx_ring->dma);
 
 	tx_desc->lower.data = cpu_to_le32(txd_lower | size);
 	tx_desc->upper.data = 0;
-- 
2.24.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
