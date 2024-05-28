Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB0C8D1C52
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AACC8204B;
	Tue, 28 May 2024 13:15:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hMNdTCQWLs4t; Tue, 28 May 2024 13:15:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FE168201D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902136;
	bh=/KjOOJhDOmsG3kSqd3vdwaEAnfkL6sroTtxXP8MDnDM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nnfcld8PlujCtnRkSlPa8eGiqG+26yIHFMqWXGzORcmYJ/IFWGGjviGM1VdaBmosr
	 xUx7GubH1IegzIUEn2tJ/OWsRXSjxwpnZpniOwTXSjoIitsowW80XReLR+5MjLGu9t
	 KcbfgHjZ7zGtvcMPlZ9VdkE7QoyuHNF2H1VtNiOLHYdD6C0Vliw+bseuzLPNvNF6MJ
	 oJeo6RCNlAB6JjcryLK3rJgPvt8QB6nzKj0RSSPiAK9i0vSPFsgikaZnmpK1RpLc7B
	 dmwBkIjtXN51AAOElCcqwlqKE6OcfaVuQlrGIjshQsx7PJf7jyJdmammoKXCn9srFr
	 5tojNzAyZQ0OA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FE168201D;
	Tue, 28 May 2024 13:15:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D86851D281D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C23CD81FD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mYoIvwhebLi0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:15:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E4E2082012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4E2082012
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E4E2082012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:32 +0000 (UTC)
X-CSE-ConnectionGUID: qN9BxjNISViHqKzBKjvqRg==
X-CSE-MsgGUID: wRSC4g85Th2ue3GL00K8tQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193528"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193528"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:33 -0700
X-CSE-ConnectionGUID: P23Lx7zwSCiMPJNsaDIpfA==
X-CSE-MsgGUID: k41in13cSAmLmizpZxBY9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891109"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:31 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:20 +0200
Message-Id: <20240528131429.3012910-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902134; x=1748438134;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=89ItfMvWVLYERCZU8akE0pKSpXDzCfiBwTBt6Ag8CQc=;
 b=N2wrXETGA/N8IDGTsDZyKmoIYoZSXbh8jm+8IdX0vKPJ7S/adWMZEe70
 XsUjOm2yZAHMWMPj8pDxXwi2vqd1nmO4Btfvf0owwOvpU0C2oPMzqgleS
 CqwATAm+rSBTNRKgpdMmLoncpgqrBjh8FfvBqwfflDpD5SXQCvjD1NWuo
 U7N63LOuoRQMiv5wEHJmLCrGm30gu9fml++8xNriM/jK04Qt/D+8uw6aB
 IMw++zZkk8Pg/xtR+WkxC024piD6U6TdY167p/MFrfJk2Llt8IzS611Id
 wzxWx6fg8Rz1h9m6pmf/Qs8PInO0FLbObtuHV/CAkuRt4QRz3COKyO6fX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N2wrXETG
Subject: [Intel-wired-lan] [PATCH iwl-net 02/11] ice: don't busy wait for Rx
 queue disable in ice_qp_dis()
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When ice driver is spammed with multiple xdpsock instances and flow
control is enabled, there are cases when Rx queue gets stuck and unable
to reflect the disable state in QRX_CTRL register. Similar issue has
previously been addressed in commit 13a6233b033f ("ice: Add support to
enable/disable all Rx queues before waiting").

To workaround this, let us simply not wait for a disabled state as later
patch will make sure that regardless of the encountered error in the
process of disabling a queue pair, the Rx queue will be enabled.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 1bd4b054dd80..4f606a1055b0 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -199,10 +199,8 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		if (err)
 			return err;
 	}
-	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, true);
-	if (err)
-		return err;
 
+	ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, false);
 	ice_qp_clean_rings(vsi, q_idx);
 	ice_qp_reset_stats(vsi, q_idx);
 
-- 
2.34.1

