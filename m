Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF0D95C9EF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2024 12:08:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC6EF81ED2;
	Fri, 23 Aug 2024 10:08:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mNpGEZwo8Zff; Fri, 23 Aug 2024 10:08:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD14681EDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724407696;
	bh=oQot0FRY+znf8TsYblhQ4gz0GoSzj8iefhc94t8jjQE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TbryFsRS7dfndmPgbkO3D2e7pGmbOlggCnmKZtw8mkU3ejmYp4Go1RngeZwCPX9EP
	 hE4q1aHrjTadGNnZP4byQp4KXx032YdcB/S0oD4KDk6d+dwPt4sQgkCbSlT8eJ1nih
	 di2JyhXv45Vwx5Zkw6bW9df8YSPJ6McC7G7faDC5Pf6zni3f6EoeuGKYVUsir/lqC0
	 F+f8mhxe0sHtOzmfd1wQDrnTCeoBabbdwdEJANT0D4QFn9wzlHnca2XWX9MkMTEyyY
	 dS7XsKzw7tX7+wMLP5w9GvXVW3CAUBEfUGX1+aY4cbY0yahT3Ucp4lYj47eBULrHz1
	 MWgvff6buZt/g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DD14681EDA;
	Fri, 23 Aug 2024 10:08:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D45F91BF304
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CE996400C7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 72alx98vfXqe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2024 10:08:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B4BC1403F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4BC1403F9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4BC1403F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2024 10:08:12 +0000 (UTC)
X-CSE-ConnectionGUID: Da3WhrmfQzOpUP9DBJ8sdg==
X-CSE-MsgGUID: np/7qo1FTQWWQS6B1kRxHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="34285064"
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="34285064"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2024 03:08:12 -0700
X-CSE-ConnectionGUID: jkYcS7g1RNim5qu+tjExZw==
X-CSE-MsgGUID: reTV2BhLQC6KeFaVVI7qeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,170,1719903600"; d="scan'208";a="62479063"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa008.jf.intel.com with ESMTP; 23 Aug 2024 03:08:08 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 26AF533BDA;
 Fri, 23 Aug 2024 11:08:05 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Fri, 23 Aug 2024 11:59:30 +0200
Message-ID: <20240823095933.17922-6-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240823095933.17922-1-larysa.zaremba@intel.com>
References: <20240823095933.17922-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724407693; x=1755943693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GKovvd1S+/u4MzEkgzpmHw0gmxvHSPUiL4DNwMa1SdE=;
 b=Zh71fpRR7SHK3i8rDUNnSoYaEYnNiHAeAzTgD0H2Fupm/Ztyhn31wvrj
 olmVMAcDBGQ33PSLIUcjVNC6/9a8f8lQ/idqYbnnq1wMDPGg7XmHI/D5U
 KGPsPO+guZdZg/YPRBQ2Gdf9sMv5x/KuVv9XnpjOSg6rov5WUik8I/3kh
 aSlcjT2IRveyL4c8ycP6cV0/SnGIIDI24Y0H5U/NnZdvnb0zlhOfqUFTu
 nDqsqwCP8b0wWlJFBc4U0mjx4Hk60wQWrTTNKQU+dg19kn9rAj2u4GqAj
 OF54MbPB45/hrVAU6M+ZQ1GJkz7BP3YBJVXhETh+Tze9TLT/aRepQbrgZ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Zh71fpRR
Subject: [Intel-wired-lan] [PATCH iwl-net v4 5/6] ice: remove ICE_CFG_BUSY
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
Cc: Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, przemyslaw.kitszel@intel.com,
 John Fastabend <john.fastabend@gmail.com>, anirudh.venkataramanan@intel.com,
 Michal Kubiak <michal.kubiak@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Wojciech Drewek <wojciech.drewek@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, magnus.karlsson@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, sridhar.samudrala@intel.com, bpf@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Locking used in ice_qp_ena() and ice_qp_dis() does pretty much nothing,
because ICE_CFG_BUSY is a state flag that is supposed to be set in a PF
state, not VSI one. Therefore it does not protect the queue pair from
e.g. reset.

Remove ICE_CFG_BUSY locking from ice_qp_dis() and ice_qp_ena().

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
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

