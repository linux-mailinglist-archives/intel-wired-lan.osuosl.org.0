Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636708D3578
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:24:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BAFC40512;
	Wed, 29 May 2024 11:24:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BRZ5y3FKbgjc; Wed, 29 May 2024 11:24:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 811F440AB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981840;
	bh=YBMR1bdTgc/Woue9nGu9pSrwAn4aDhDNWYZyw2sDXv4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pETLtf6LzK5fKd96eqCJuQ+UONHUZEf31gisQwWN1xviXaftXkPxSLkJaDt7cs6+o
	 QJIBCKfiHIKWlRJIQWhdFQPdZZiYbH8ryTLprrO/U0sUJKVNs/kGMK6/B5zRPwJqKF
	 HBnYxcUF6Ie4T23zftNUA69Uki9BZAFZWbPMkX5FFkSSj/VN1a7TfFjBtJEvJWDEQ6
	 jOc6/ywDff24turSGL9wuohRhV2Q9MmDI6Yz0N5pEjgdHSyA8PE5RGxpo70mcx2+Km
	 lPJs2pzXqodxp943Hn6p/f2YWkKkGXBY7et1d2f+mAFnC5rRW0u3bq2Okbb5rA5Bba
	 AN9zZe8+bmUyg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 811F440AB2;
	Wed, 29 May 2024 11:24:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E7A71D3497
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BB38607E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QF6KTS6FPC0T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 11:23:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 64001605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64001605CD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64001605CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:56 +0000 (UTC)
X-CSE-ConnectionGUID: u11+Klt6Q2aMHqP2pw7kog==
X-CSE-MsgGUID: +icl+dZRRneX6PZ6WYrl+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17169272"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17169272"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:23:56 -0700
X-CSE-ConnectionGUID: 392CfLlZQI2S/ZthPXCXPQ==
X-CSE-MsgGUID: sPVQQvXzSZqGne5ysk4cTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="66277192"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 29 May 2024 04:23:54 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 13:23:36 +0200
Message-Id: <20240529112337.3639084-8-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716981836; x=1748517836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4Tu1vWmHZq1dZhCwiajusm9P0b3jYlUYGR9h4gmDQJg=;
 b=dtDEhBj+EjK3FRcY1TM/418/UEgaYupxm4MOHluGXUqwQ2qAwrel6wS8
 KQD+2F5pcGjzTxo1fce9IYbVcP51r2bVLkjjetoy0j9jbGbkTXOyPRmeM
 SBtSsuIp9wqOVwS1zeFeFTLpTxE4mwvcg0I+1lMyrjORHnrw7S0O3Jr3+
 RGoOIbyTFKkJXEZVjWR8vDZjB2azsrJRi3DKySSXGHXl+OHQVNhntLBKE
 InEcDTjL4GbMFul6Ssvqo+Ad+BQ5qCDQpaxLjBXAlm7ZiHjL7HteK8SJm
 UoGMKILS/BP4mMHc6vtPmb1DY6VHs138wpAytXlYx/B1GTYos59boxFXS
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dtDEhBj+
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 7/8] ice: add missing
 WRITE_ONCE when clearing ice_rx_ring::xdp_prog
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

