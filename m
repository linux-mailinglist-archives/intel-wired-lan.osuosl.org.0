Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF619567F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Aug 2024 12:14:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B07F1404F5;
	Mon, 19 Aug 2024 10:14:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oDUSZxf5EpBy; Mon, 19 Aug 2024 10:14:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18B2C404E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724062489;
	bh=RRM3QH0kFILFQ2zQI3W3N6XcUot4mCIvTXfPj5QFu+U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CG9OvwbrOiOE9La1wtiZhfYZypRWqO6SxXRFEeufE/ZTuCHz6DPAoXEvvZey3Frly
	 1a6HHPi+r9zF8F7pP9hLE9AJpI+6B2Sa+H+WyODsO5FKWxureBw+X9GpNTiH/FVbex
	 3a74eK2XKj/+Fhm7vQfnE4fT1uT7jQ9szlzqRNRXVjBgVWNhbqmNFyhDQaposXq8w2
	 9lSrwfz18TehY5qQCzFpX+FJ/incADb8YSqUkQaf/SekcJgaevcenfcW1RLIicSt/a
	 tzviCub04T8RZAO/6v1ciwJzBLIqZbmMLMsOkpYYaiXx6QAmN/+s9IpaKymY6C1aZ9
	 MmK7sJ6myrI3A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18B2C404E7;
	Mon, 19 Aug 2024 10:14:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B36A31BF39D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AF8BB60763
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jbe1Oj9ALEFI for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Aug 2024 10:14:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 013836072A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 013836072A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 013836072A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Aug 2024 10:14:44 +0000 (UTC)
X-CSE-ConnectionGUID: SSQLtb1UTBqoJlgwO/Eiag==
X-CSE-MsgGUID: 4CtY5DwjRAKhhspV0sW4ug==
X-IronPort-AV: E=McAfee;i="6700,10204,11168"; a="13090181"
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="13090181"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 03:14:43 -0700
X-CSE-ConnectionGUID: 74XTKPG2TmmdQqfqkloIPg==
X-CSE-MsgGUID: NDiyf87sRkqlF33qI7JN7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,158,1719903600"; d="scan'208";a="91097107"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa001.fm.intel.com with ESMTP; 19 Aug 2024 03:14:39 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id DAB8F28197;
 Mon, 19 Aug 2024 11:14:37 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 19 Aug 2024 12:05:42 +0200
Message-ID: <20240819100606.15383-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240819100606.15383-1-larysa.zaremba@intel.com>
References: <20240819100606.15383-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724062485; x=1755598485;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NLhq04lnu+KpbIptdCwfMqC7vkjmfPTxuVrCa4ZWpAA=;
 b=l9dIdaIQilHGvCt6Qo8yNY0JO1Yc1ie9JlOBnpPvHuSvTZ5q8uUphZxL
 tuNay5izyu0nFI/HjKssac2DJVpgaZR9kWqVlkoWCkpQddE6f7hM+4nsF
 lpu8dc8Ef1cbH2lKjXG0GOVhLl8zcMFIleg4xGsZ2TkyAoCkwI2q7EBpG
 Ie3skdCt6NnxO/dOegL/FWHsjaVqZ/ldbQ/BF5k3ZJ8eHJ9Jo8Sm0oPjQ
 rRkrcPZzWM0jJE6qCOm+E6VknHgKjuol965I0YtcDLChihoKPlA/XAo7m
 2iWaw6Rihzpe6P9x7AQjUs7BWA+0xhX9X15wwQQsvC0n4us5My3ptzpqx
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l9dIdaIQ
Subject: [Intel-wired-lan] [PATCH iwl-net v3 5/6] ice: remove ICE_CFG_BUSY
 locking from AF_XDP code
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Locking used in ice_qp_ena() and ice_qp_dis() does pretty much nothing,
because ICE_CFG_BUSY is a state flag that is supposed to be set in a PF
state, not VSI one. Therefore it does not protect the queue pair from
e.g. reset.

Despite being useless, it still can deadlock the unfortunate functions that
have fell into the same ICE_CFG_BUSY-VSI trap. This happens if ice_qp_ena
returns an error.

Remove ICE_CFG_BUSY locking from ice_qp_dis() and ice_qp_ena().

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 8693509efbe7..5dee829bfc47 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -165,7 +165,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	struct ice_q_vector *q_vector;
 	struct ice_tx_ring *tx_ring;
 	struct ice_rx_ring *rx_ring;
-	int timeout = 50;
 	int fail = 0;
 	int err;
 
@@ -176,13 +175,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	rx_ring = vsi->rx_rings[q_idx];
 	q_vector = rx_ring->q_vector;
 
-	while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
-		timeout--;
-		if (!timeout)
-			return -EBUSY;
-		usleep_range(1000, 2000);
-	}
-
 	synchronize_net();
 	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
@@ -261,7 +253,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 		netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 		netif_carrier_on(vsi->netdev);
 	}
-	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return fail;
 }
-- 
2.43.0

