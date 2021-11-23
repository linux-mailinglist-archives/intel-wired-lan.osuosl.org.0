Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 908E845AA03
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Nov 2021 18:24:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 163F240208;
	Tue, 23 Nov 2021 17:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjUVY0OGaGDK; Tue, 23 Nov 2021 17:24:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1E033401B3;
	Tue, 23 Nov 2021 17:24:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59A041BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 17:24:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 49C204017A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 17:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oSksrOva1kk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Nov 2021 17:24:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B4C3140027
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Nov 2021 17:24:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="298480739"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="298480739"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 09:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="509488978"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 23 Nov 2021 09:20:16 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ANHK9Qm024401; Tue, 23 Nov 2021 17:20:15 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Nov 2021 18:18:39 +0100
Message-Id: <20211123171840.157471-9-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211123171840.157471-1-alexandr.lobakin@intel.com>
References: <20211123171840.157471-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 8/9] ixgbe: switch to
 napi_build_skb()
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

napi_build_skb() reuses per-cpu NAPI skbuff_head cache in order
to save some cycles on freeing/allocating skbuff_heads on every
new Rx or completed Tx.
ixgbe driver runs Tx completion polling cycle right before the Rx
one and uses napi_consume_skb() to feed the cache with skbuff_heads
of completed entries, so it's never empty and always warm at that
moment. Switch to the napi_build_skb() to relax mm pressure on
heavy Rx.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 0f9f022260d7..80d2d10fd465 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2170,7 +2170,7 @@ static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
 	net_prefetch(xdp->data_meta);

 	/* build an skb to around the page buffer */
-	skb = build_skb(xdp->data_hard_start, truesize);
+	skb = napi_build_skb(xdp->data_hard_start, truesize);
 	if (unlikely(!skb))
 		return NULL;

--
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
