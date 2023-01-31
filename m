Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 992486837C7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 21:46:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 200044168A;
	Tue, 31 Jan 2023 20:46:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 200044168A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675197994;
	bh=dRPShHehlWBvZQXmvZmjQmD7Pe0KUzRSodkdTv+f/hQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uGwgEUltm3Cfs0UBkkPmxS5yerun47B/lfFJ3OT3QzDWc+d595YIk2pFcAObeg70W
	 tmPgv7Q3oZPV/0NCbM4vsMyNGuK9yXATh75Yxg8/hcO0htsCe5AHNQXNwHzaBEKaC8
	 L86P5GQHoNdzqYJOS5ALk5nV701CH5CHcffVtY7qi4q4uGeuZS+t38C1wk9QxCxVXA
	 0FZqi6vdHcJR7jOTTjyH8W79DudOwPCONelCy++k6gLEj0AbDE42XLP0H26nIlYAlk
	 Qz5/0nXq1DUkEBb/ss8BWJ7Tbg7Mf/cBaJ6onX2aaIYTISruBBi9+A18BWykfsFQ59
	 w6mR4RGzprXnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOJuBRSn1XKm; Tue, 31 Jan 2023 20:46:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A98CF40223;
	Tue, 31 Jan 2023 20:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A98CF40223
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 531DC1BF316
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A3A460BDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A3A460BDE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zxYRfQhDc8Px for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 20:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A70460BCB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A70460BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 20:46:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414167510"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414167510"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:46:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="788595470"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="788595470"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga004.jf.intel.com with ESMTP; 31 Jan 2023 12:45:41 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Jan 2023 21:45:05 +0100
Message-Id: <20230131204506.219292-13-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
References: <20230131204506.219292-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675197984; x=1706733984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kOWRheW7fwAeLC+2dD2fzA8D77VjXbWMzFjbcbtqfTY=;
 b=SKQVOnnNKnQX97DfJnSymR7a0YP9v5r6gdL652kDrQDMhxsSelEu6aol
 CiZ6NsVTFFJbTtmRR4iMB3cCLls1x9KkHTKf6rDkagM/BZIWlQ0aMBo65
 i3d942gUHOFyzfIbkODv2016kUtc2/QOe2Lll0Z2fT4EOEqKkUG0oK8Sj
 V+C0CEo/EBtjaI75UdXbC2HpCBhiMnQftge7EoFGKkMgxBAb8TA7W/TC/
 6X4t8rrGgKu3pswdmw6mvc6dvWHjxm+hWruIwr1Dimt6Q8N7WK1IBXfBd
 qzlVRE8d7QbzPuwWcNyJCfYvlWkTvVe4aT+6SJOCi3zvGjRzK/zT/bE/r
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SKQVOnnN
Subject: [Intel-wired-lan] [PATCH bpf-next 12/13] ice: remove next_{dd,
 rs} fields from ice_tx_ring
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
Cc: tirthendu.sarkar@intel.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, bpf@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that both ZC and standard XDP data paths stopped using Tx logic
based on next_dd and next_rs fields, we can safely remove these fields
and shrink Tx ring structure.

Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 --
 drivers/net/ethernet/intel/ice/ice_main.c    | 2 --
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 2 --
 drivers/net/ethernet/intel/ice/ice_txrx.h    | 2 --
 4 files changed, 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 205d32e4c317..1611f25b6d01 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3027,8 +3027,6 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		/* clone ring and setup updated count */
 		xdp_rings[i] = *vsi->xdp_rings[i];
 		xdp_rings[i].count = new_tx_cnt;
-		xdp_rings[i].next_dd = ICE_RING_QUARTER(&xdp_rings[i]) - 1;
-		xdp_rings[i].next_rs = ICE_RING_QUARTER(&xdp_rings[i]) - 1;
 		xdp_rings[i].desc = NULL;
 		xdp_rings[i].tx_buf = NULL;
 		err = ice_setup_tx_ring(&xdp_rings[i]);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b04f7729d5ba..81b0437201a6 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2570,8 +2570,6 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		xdp_ring->netdev = NULL;
 		xdp_ring->dev = dev;
 		xdp_ring->count = vsi->num_tx_desc;
-		xdp_ring->next_dd = ICE_RING_QUARTER(xdp_ring) - 1;
-		xdp_ring->next_rs = ICE_RING_QUARTER(xdp_ring) - 1;
 		WRITE_ONCE(vsi->xdp_rings[i], xdp_ring);
 		if (ice_setup_tx_ring(xdp_ring))
 			goto free_xdp_rings;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 38c6bd615127..8e211b210a24 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -174,8 +174,6 @@ void ice_clean_tx_ring(struct ice_tx_ring *tx_ring)
 
 	tx_ring->next_to_use = 0;
 	tx_ring->next_to_clean = 0;
-	tx_ring->next_dd = ICE_RING_QUARTER(tx_ring) - 1;
-	tx_ring->next_rs = ICE_RING_QUARTER(tx_ring) - 1;
 
 	if (!tx_ring->netdev)
 		return;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 55f47c560981..7903bb692c1f 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -343,8 +343,6 @@ struct ice_tx_ring {
 	struct xsk_buff_pool *xsk_pool;
 	u16 next_to_use;
 	u16 next_to_clean;
-	u16 next_rs;
-	u16 next_dd;
 	u16 q_handle;			/* Queue handle per TC */
 	u16 reg_idx;			/* HW register index of the ring */
 	u16 count;			/* Number of descriptors */
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
