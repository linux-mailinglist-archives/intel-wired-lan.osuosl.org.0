Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A901F240F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93620869B7;
	Mon,  8 Jun 2020 23:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vF7j6p4Ir4U; Mon,  8 Jun 2020 23:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C43A38698F;
	Mon,  8 Jun 2020 23:19:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 575171BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 508B387FE3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qpm+XMCO6-yB for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:19:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E086C87C9C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:19:32 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D339E2086A;
 Mon,  8 Jun 2020 23:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658372;
 bh=3PuiUQqDTe/7yEbzJ6QkJxv9BBE61RSsdN3LyjCVq2A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PVB0UJnh+X/PZ77XJKYy0Oir0Kcc2cdWr2Lx+lownIryuTaQ+XrA/YqZSl1ADooBX
 Tjpn7DUG5vH4HzvdicXv8mS3o5F3XoV3wv68EDvImFGbpbJ5QhGM9Fj5Vgnat0glGv
 NjXxcxaeByoYei/+n9T42ktT/dFfHuBt/7v/EY8s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:16:28 -0400
Message-Id: <20200608231848.3366970-35-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231848.3366970-1-sashal@kernel.org>
References: <20200608231848.3366970-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.4 035/175] ixgbe: Fix XDP
 redirect on archs with PAGE_SIZE above 4K
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
 Alexei Starovoitov <ast@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <brouer@redhat.com>

[ Upstream commit 88eb0ee17b2ece64fcf6689a4557a5c2e7a89c4b ]

The ixgbe driver have another memory model when compiled on archs with
PAGE_SIZE above 4096 bytes. In this mode it doesn't split the page in
two halves, but instead increment rx_buffer->page_offset by truesize of
packet (which include headroom and tailroom for skb_shared_info).

This is done correctly in ixgbe_build_skb(), but in ixgbe_rx_buffer_flip
which is currently only called on XDP_TX and XDP_REDIRECT, it forgets
to add the tailroom for skb_shared_info. This breaks XDP_REDIRECT, for
veth and cpumap.  Fix by adding size of skb_shared_info tailroom.

Maintainers notice: This fix have been queued to Jeff.

Fixes: 6453073987ba ("ixgbe: add initial support for xdp redirect")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
Signed-off-by: Alexei Starovoitov <ast@kernel.org>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Link: https://lore.kernel.org/bpf/158945344946.97035.17031588499266605743.stgit@firesoul
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index a26f9fb95ac0..edaa0bffa5c3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2254,7 +2254,8 @@ static void ixgbe_rx_buffer_flip(struct ixgbe_ring *rx_ring,
 	rx_buffer->page_offset ^= truesize;
 #else
 	unsigned int truesize = ring_uses_build_skb(rx_ring) ?
-				SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) :
+				SKB_DATA_ALIGN(IXGBE_SKB_PAD + size) +
+				SKB_DATA_ALIGN(sizeof(struct skb_shared_info)) :
 				SKB_DATA_ALIGN(size);
 
 	rx_buffer->page_offset += truesize;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
