Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F134A845B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 13:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0942E40A14;
	Thu,  3 Feb 2022 12:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w4Ev3NSxQNt5; Thu,  3 Feb 2022 12:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE05640192;
	Thu,  3 Feb 2022 12:58:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 755451BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 596264033D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3yrRGxrWYmL9 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 12:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 679DA40324
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 12:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643893105; x=1675429105;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xFNr9LXlw/fHixJarYDrR4gqfTJ3LVkRhIllicB9G3U=;
 b=ajvLC+gTK+gEJ+HbCzaQREZ9KmwYDACrQjiFLhQnwBJZnuA2uqVyqhdM
 +05FuLXvGKNjsrp0gffRC/jqEKAWCWhylFRKRfaQrIW12YrAXCjTaJ6MP
 yt15AZKQ8/cgdPJRnibDB1u+S3ChhRybijAXJdHZx+7XNLhs7riv3J1j+
 agL+RAMDU8p5FCeVo8tmObPhGmojVr6BCghbOn1fFP/dIPjsR2j5g5Uom
 mWpfyHkCewV3GNiyDYg2ai69Ytu7xvFJxkAXjTEnIx6fxCKH37vfmCLSD
 LN66JVHqGKSufWPn3xUxx2keX43lTzG13BC88ioa+OeUFVJqUxInLEqaM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="272632714"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="272632714"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 04:58:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="627426703"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2022 04:58:13 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  3 Feb 2022 13:58:03 +0100
Message-Id: <20220203125803.19407-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net] ixgbe: xsk: change
 !netif_carrier_ok() handling in ixgbe_xmit_zc()
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
Cc: Maurice Baijens <maurice.baijens@ellips.com>, netdev@vger.kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, davem@davemloft.net,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit c685c69fba71 ("ixgbe: don't do any AF_XDP zero-copy transmit if
netif is not OK") addressed the ring transient state when
MEM_TYPE_XSK_BUFF_POOL was being configured which in turn caused the
interface to through down/up. Maurice reported that when carrier is not
ok and xsk_pool is present on ring pair, ksoftirqd will consume 100% CPU
cycles due to the constant NAPI rescheduling as ixgbe_poll() states that
there is still some work to be done.

To fix this, do not set work_done to false for a !netif_carrier_ok().

Fixes: c685c69fba71 ("ixgbe: don't do any AF_XDP zero-copy transmit if netif is not OK")
Reported-by: Maurice Baijens <maurice.baijens@ellips.com>
Tested-by: Maurice Baijens <maurice.baijens@ellips.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
index b3fd8e5cd85b..6a5e9cf6b5da 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
@@ -390,12 +390,14 @@ static bool ixgbe_xmit_zc(struct ixgbe_ring *xdp_ring, unsigned int budget)
 	u32 cmd_type;
 
 	while (budget-- > 0) {
-		if (unlikely(!ixgbe_desc_unused(xdp_ring)) ||
-		    !netif_carrier_ok(xdp_ring->netdev)) {
+		if (unlikely(!ixgbe_desc_unused(xdp_ring))) {
 			work_done = false;
 			break;
 		}
 
+		if (!netif_carrier_ok(xdp_ring->netdev))
+			break;
+
 		if (!xsk_tx_peek_desc(pool, &desc))
 			break;
 
-- 
2.33.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
