Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCE58D1C57
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:15:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CC83820B6;
	Tue, 28 May 2024 13:15:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E4j4l6HCrzcN; Tue, 28 May 2024 13:15:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9130382012
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902144;
	bh=MgJdr/29aXqKlnBeBMrwb8w4S3x91siklZKAr86mK6c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8j+FdD1NfZtoynbFkFGkk4K3GN5ktiCkeR694t+Atvsu9lhoLnR2VH1mCk+JHo09m
	 kf5mj1/3Ly6U31U4AM9M50zUaz7dxzmhPIxpZjH1aSveNBHsvG9t7Sa2yFcVtjWrNa
	 eybB28VSStW9bNOXKaWfSVM3I7yxjYgjoTCeDUfc2n6+nFHDl7t7tc45aGpwcLkXXy
	 A7W7qGx0sdIxcdcGBnAmJW3YoAxE7CUac5BfRK7er3bCRkZ9lF2OxeVZftftiowbCd
	 T43SrY65QsGSp2zrquz6mYsYDh4hqzERQ2QySOk9rKr5rf8SK4Oe7ZeEjaq2vibuHg
	 jVkc/xjiltDKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9130382012;
	Tue, 28 May 2024 13:15:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C6B81D281D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3617F8201D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XUFcERmKsSJ5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:15:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2E06381FDE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E06381FDE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E06381FDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:15:39 +0000 (UTC)
X-CSE-ConnectionGUID: a72rx8lWTRC/2GAEtU6VCg==
X-CSE-MsgGUID: kj9giFokSiWsuSJxhmxZPQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193540"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193540"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:40 -0700
X-CSE-ConnectionGUID: oOTIR56jR+C4jLxYQEJyqg==
X-CSE-MsgGUID: sf69Gwt4RLKQXloVN8OBpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891136"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:37 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:23 +0200
Message-Id: <20240528131429.3012910-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902140; x=1748438140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kIt/ZTFBn9CaI96lLJdikL/BzSIZijxoQUVVgIOAlUE=;
 b=isKN1ueTlOY6mBe8J8Uzo/W+q0g2jFlMuBxBAVwSl1KiXlaU9bTIoTs1
 CHBiBEZzJ9AUH6pg0BxQqtizBfzpZL2+4tYT4c2oEJGyH34gcqkYPRac9
 RywGz6lPg1FhA1paYonsIEdDtPTQmSouXcKeC4+n06wltp/b9cbyLXhD7
 86nNRcFQZJ6i4WWWS8xPhvRdVDk3Wqwpn/Q/nnc7FvvA+eLRJ3dIySAMQ
 ibjKd81RYE7NtwDF0p1yKqxdTQeXCIhB5MuXGtF2CDbtxbbHjdSoCV1GN
 A5ROeLVaiwS0KZwogaiXqHEUAbKSvXWrDO+uZ3E2lRggTf7M/456K3BAf
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=isKN1ueT
Subject: [Intel-wired-lan] [PATCH iwl-net 05/11] ice: toggle netif_carrier
 when setting up XSK pool
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

In order to prevent Tx timeout issues, toggle the netif_carrier when
disabling and enabling queue pair during XSK pool setup. One of
conditions checked on running in the background dev_watchdog() is
netif_carrier_ok(), so let us turn it off when we disable the queues
that belong to a q_vector where XSK pool is being configured.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 3dcab89be256..8c5006f37310 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -181,6 +181,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	}
 
 	synchronize_net();
+	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 
 	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
@@ -250,6 +251,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	ice_qvec_ena_irq(vsi, q_vector);
 
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+	netif_carrier_on(vsi->netdev);
 	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return fail;
-- 
2.34.1

