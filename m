Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23A9B0D92
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 13:08:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7CBC98815D;
	Thu, 12 Sep 2019 11:08:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JJGGUS2CP1fO; Thu, 12 Sep 2019 11:08:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3ECE88163;
	Thu, 12 Sep 2019 11:08:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0624C1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 11:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 025BE226E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 11:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t59mwxtuiCVz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 11:08:28 +0000 (UTC)
X-Greylist: delayed 00:06:40 by SQLgrey-1.7.6
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B29720516
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 11:08:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 97E8420547;
 Thu, 12 Sep 2019 13:01:45 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7v5Q3AiaYgAd; Thu, 12 Sep 2019 13:01:45 +0200 (CEST)
Received: from mail-essen-01.secunet.de (mail-essen-01.secunet.de
 [10.53.40.204])
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 1698220422;
 Thu, 12 Sep 2019 13:01:45 +0200 (CEST)
Received: from gauss2.secunet.de (10.182.7.193) by mail-essen-01.secunet.de
 (10.53.40.204) with Microsoft SMTP Server id 14.3.439.0; Thu, 12 Sep 2019
 13:01:45 +0200
Received: by gauss2.secunet.de (Postfix, from userid 1000)	id AD5863180394;
 Thu, 12 Sep 2019 13:01:44 +0200 (CEST)
Date: Thu, 12 Sep 2019 13:01:44 +0200
From: Steffen Klassert <steffen.klassert@secunet.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
Message-ID: <20190912110144.GS2879@gauss3.secunet.de>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
Subject: [Intel-wired-lan] [PATCH] ixgbe: Fix secpath usage for IPsec TX
 offload.
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
Cc: netdev@vger.kernel.org, Shannon Nelson <snelson@pensando.io>,
 Michael Marley <michael@michaelmarley.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ixgbe driver currently does IPsec TX offloading
based on an existing secpath. However, the secpath
can also come from the RX side, in this case it is
misinterpreted for TX offload and the packets are
dropped with a "bad sa_idx" error. Fix this by using
the xfrm_offload() function to test for TX offload.

Fixes: 592594704761 ("ixgbe: process the Tx ipsec offload")
Reported-by: Michael Marley <michael@michaelmarley.com>
Signed-off-by: Steffen Klassert <steffen.klassert@secunet.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 9bcae44e9883..ae31bd57127c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -36,6 +36,7 @@
 #include <net/vxlan.h>
 #include <net/mpls.h>
 #include <net/xdp_sock.h>
+#include <net/xfrm.h>
 
 #include "ixgbe.h"
 #include "ixgbe_common.h"
@@ -8696,7 +8697,7 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
 #endif /* IXGBE_FCOE */
 
 #ifdef CONFIG_IXGBE_IPSEC
-	if (secpath_exists(skb) &&
+	if (xfrm_offload(skb) &&
 	    !ixgbe_ipsec_tx(tx_ring, first, &ipsec_tx))
 		goto out_drop;
 #endif
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
