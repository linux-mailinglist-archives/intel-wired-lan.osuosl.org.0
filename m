Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 256E915DC94
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Feb 2020 16:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D2ABB8764F;
	Fri, 14 Feb 2020 15:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vya+wvA2jwE6; Fri, 14 Feb 2020 15:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 296948764A;
	Fri, 14 Feb 2020 15:54:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DABD1BF3FE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 15:54:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49978866C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 15:54:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d8jPYZbRSOgN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Feb 2020 15:54:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E217286267
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Feb 2020 15:54:55 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C80F824673;
 Fri, 14 Feb 2020 15:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695695;
 bh=UsiEZwaNCOzGinm9GY9LYQeSFH9pbbl3cGztO6ANsr0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n6JL2uVcr+8VOcuB2PA9dV57/JbWR500G8Myd7d6QAZNVfjvwU8i1/TPSIC7yjhXg
 Hm2HZ9XFgUGMMgT/m1CUYnleEF6VXY39/2klzzqNGtt3ba4ZeTEqOAOJAFRr4zWQMG
 NGxIsAuTiFZQEFgX0ujIUGn7t5Ls3691dRXFIDYk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Fri, 14 Feb 2020 10:44:30 -0500
Message-Id: <20200214154854.6746-278-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.5 278/542] ice: add extra check
 for null Rx descriptor
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 Mitch Williams <mitch.a.williams@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Mitch Williams <mitch.a.williams@intel.com>

[ Upstream commit 1f45ebe0d8fbe6178670b663005f38ef8535db5d ]

In the case where the hardware gives us a null Rx descriptor, it is
theoretically possible that we could call one of our skb-construction
functions with no data pointer, which would cause a panic.

In real life, this will never happen - we only get null RX
descriptors as the final descriptor in a chain of otherwise-valid
descriptors. When this happens, the skb will be extant and we'll just
call ice_add_rx_frag(), which can deal with empty data buffers.

Unfortunately, Coverity does not have intimate knowledge of our
hardware, so we must add a check here.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 2c212f64d99f2..8b2b9e254d28d 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1071,13 +1071,16 @@ static int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
 		ice_put_rx_buf(rx_ring, rx_buf);
 		continue;
 construct_skb:
-		if (skb)
+		if (skb) {
 			ice_add_rx_frag(rx_ring, rx_buf, skb, size);
-		else if (ice_ring_uses_build_skb(rx_ring))
-			skb = ice_build_skb(rx_ring, rx_buf, &xdp);
-		else
+		} else if (likely(xdp.data)) {
+			if (ice_ring_uses_build_skb(rx_ring))
+				skb = ice_build_skb(rx_ring, rx_buf, &xdp);
+			else
+				skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
+		} else {
 			skb = ice_construct_skb(rx_ring, rx_buf, &xdp);
-
+		}
 		/* exit if we failed to retrieve a buffer */
 		if (!skb) {
 			rx_ring->rx_stats.alloc_buf_failed++;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
