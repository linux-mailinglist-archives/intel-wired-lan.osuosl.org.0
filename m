Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C20B8D1C59
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:15:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51570820C7;
	Tue, 28 May 2024 13:15:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 507ZFaSDZrdj; Tue, 28 May 2024 13:15:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92E7982013
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902148;
	bh=YBMR1bdTgc/Woue9nGu9pSrwAn4aDhDNWYZyw2sDXv4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s1ac1OC/08iWxuEsy2qCQZXH2peypm/EKm7FSelapVmGFYgY603khnWXBrPaUmd99
	 dxIdAjmLBce3ahG0kgFfNKg91Oay1i2v+md7Z2qJShVsxN40mLiCu0XlV1HUTQphT1
	 5q0Xbd08cQ64iqRlFvXDwa49KBR81H6vKqTiAhIfz3tuhJENYyLg1kt/qLeE5tTUy2
	 T9+RK1eFzUcvVq9tUq/JLvi1i3LfE/FG3BmGoZfqeNrdi52xL6wPrlh0t4GMmDrSl2
	 3vGDEDEx28FOp9B+UXZvtLQUBdiHrzBYc6QJGhHHx8caKXztJ2iX2A72J1OF+qcq+F
	 yyBqmVohlyI4Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92E7982013;
	Tue, 28 May 2024 13:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 759A11D281C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CEBE82012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e8nMLUNnhrJH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:15:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF71581FDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF71581FDE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF71581FDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:43 +0000 (UTC)
X-CSE-ConnectionGUID: ITQXvkhORdKTq1Q55eH2fA==
X-CSE-MsgGUID: gE0yA9IjS7KN/mhBAcwGRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193553"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193553"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:44 -0700
X-CSE-ConnectionGUID: J6Ag7psJQYS+bugeluUNug==
X-CSE-MsgGUID: yR1PiVKwQki+JoWWuV67yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891155"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:42 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:25 +0200
Message-Id: <20240528131429.3012910-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902144; x=1748438144;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Tu1vWmHZq1dZhCwiajusm9P0b3jYlUYGR9h4gmDQJg=;
 b=Vl74P8oPbZqAF3WbuWQ3a3dk/N+iA0xPV2iPF1mci7BoHvutHPDfhCR4
 9KoCMqjdVQWoxO9Vj1NNc89rQIwNrnSrnV05jgcLkdxGPgOWw1Ps6QTg8
 WT4HjVh+EOaTfNzpSJvAaIbobaqTioLJsYlCT6RR5RnsusS0vpKsnnPQS
 BZBOLQdoGErgtP4jlutgXo9WXlg+qtWpHcf1IqRqi7l8otdrb4djOrJbr
 T5ehzgCwh51yStE5vrzfd5ifNZGO7y3X5TvIORSTGHaO595topUmKrMv6
 b6UKj+bT/cAHUilYYNzyypBHA4nmQAiKC7Ds06YqY+5yAOyx1DzVut5C4
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vl74P8oP
Subject: [Intel-wired-lan] [PATCH iwl-net 07/11] ice: add missing WRITE_ONCE
 when clearing ice_rx_ring::xdp_prog
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

It is read by data path and modified from process context on remote cpu
so it is needed to use WRITE_ONCE to clear the pointer.

Fixes: efc2214b6047 ("ice: Add support for XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index f4b2b1bca234..4c115531beba 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -456,7 +456,7 @@ void ice_free_rx_ring(struct ice_rx_ring *rx_ring)
 	if (rx_ring->vsi->type == ICE_VSI_PF)
 		if (xdp_rxq_info_is_reg(&rx_ring->xdp_rxq))
 			xdp_rxq_info_unreg(&rx_ring->xdp_rxq);
-	rx_ring->xdp_prog = NULL;
+	WRITE_ONCE(rx_ring->xdp_prog, NULL);
 	if (rx_ring->xsk_pool) {
 		kfree(rx_ring->xdp_buf);
 		rx_ring->xdp_buf = NULL;
-- 
2.34.1

