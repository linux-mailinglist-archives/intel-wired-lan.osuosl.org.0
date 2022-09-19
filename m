Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A8F5BE65D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Sep 2022 14:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A803460F25;
	Tue, 20 Sep 2022 12:53:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A803460F25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663678396;
	bh=Qkx7J/8E0cKlYbMq38JQhLRC0jq2FdrvLqfdsGm9nzY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xhe3dgrGavnUWDAubC+isIASaNpD/m92cUUUbrKXFsqFUv9Jbfh8GhHZEKvNNfrbr
	 hXcXEpv7QmcSNn614evRDR0WB2BhUPcx181FCFqDLzzw/l44Asv4t+hnvICE3twFUs
	 ZmqbLJKk7WsCAAZ5OUiyOiPFLHQeWCkQXIQqihPGQpG9qn0c3Saqc2ksH9uKWMNHgs
	 qXlcE/9unXeSdSsZ8We+r3xk1Ay4BPTd/P3uoC+C3BfsU/ISDesQOmjOkOxAX5FsOR
	 cduJZvaV5Ac9ccpKRRdV3TajpB5fz5o6rCJDF03h8fSqFiqbHorxmPzksV1CwErAWW
	 e3uNphQ65eP4g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12x_5_n1P82A; Tue, 20 Sep 2022 12:53:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B820160F20;
	Tue, 20 Sep 2022 12:53:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B820160F20
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76A551BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 13:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DC7040BAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 13:57:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5DC7040BAA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4oXrciVmj2en for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Sep 2022 13:57:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A70FC40BA9
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A70FC40BA9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Sep 2022 13:57:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="298131451"
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="298131451"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2022 06:57:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,327,1654585200"; d="scan'208";a="722306733"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga002.fm.intel.com with ESMTP; 19 Sep 2022 06:57:46 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 28JDvi5X023980; Mon, 19 Sep 2022 14:57:44 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Sep 2022 15:43:46 +0200
Message-Id: <20220919134346.25030-1-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 20 Sep 2022 12:53:11 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663595874; x=1695131874;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rVLwnepZShLYi0CxrPl67f1ZjluOas+qgi/tbAoa+DM=;
 b=QsODZRDhEmbnPLDuHuYJO8Z7MCPXj2O2fPHdotIMhQPQ+OkMwi+OB0kr
 UbQq857x09Cq2uHWgNF7RLYPpTfUKNzPsCz5oezoQAiFqfD5+GuqPK51t
 dNGQOjq1DvjWnbNOkYHqQU5mDdditILdhixFai/D6Wde8GJcFdMc36kRt
 FzJ/kJkda8asXk8rbqGU0Dwn9FYtO6+W3RCTUQfsI8RfAL4f5BFlilZJK
 Hex3IyrvG6p3PsSpyC32gkc3eENocfOLYb9oxWYleQ8dTvqm9tDLjmP3z
 Ci2YrXYqNMJ17Oxt7E9mcPviqJyHxOMoi1pKmRDW3T+Wb+AF7esbwt5NV
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QsODZRDh
Subject: [Intel-wired-lan] [PATCH net] ice: Fix ice_xdp_xmit() when XDP TX
 queue number is not sufficient
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
Cc: Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The original patch added the static branch to handle the situation,
when assigning an XDP TX queue to every CPU is not possible,
so they have to be shared.

However, in the XDP transmit handler ice_xdp_xmit(), an error was
returned in such cases even before static condition was checked,
thus making queue sharing still impossible.

Fixes: 22bf877e528f ("ice: introduce XDP_TX fallback path")
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 42b42f4b21ef..a5a0c9706b5a 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -610,7 +610,7 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 	if (test_bit(ICE_VSI_DOWN, vsi->state))
 		return -ENETDOWN;
 
-	if (!ice_is_xdp_ena_vsi(vsi) || queue_index >= vsi->num_xdp_txq)
+	if (!ice_is_xdp_ena_vsi(vsi))
 		return -ENXIO;
 
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
@@ -621,6 +621,9 @@ ice_xdp_xmit(struct net_device *dev, int n, struct xdp_frame **frames,
 		xdp_ring = vsi->xdp_rings[queue_index];
 		spin_lock(&xdp_ring->tx_lock);
 	} else {
+		/* Generally, should not happen */
+		if (unlikely(queue_index >= vsi->num_xdp_txq))
+			return -ENXIO;
 		xdp_ring = vsi->xdp_rings[queue_index];
 	}
 
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
