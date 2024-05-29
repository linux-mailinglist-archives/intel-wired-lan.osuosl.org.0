Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 509A88D3575
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9D8540B43;
	Wed, 29 May 2024 11:23:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YMGMKasYXatx; Wed, 29 May 2024 11:23:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFFFB40512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981835;
	bh=6QG651fpITu7xvMrykEfbTnorV2cRYhD/655UGnYg0U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A8b+3WVjzZ5r8qj+6AwSoXW6Neb4h9nvPIb/WgpHrW34AZp3zQuumGG6W6ljUUpgu
	 BIok4aAF8FL4zKordc1Ob60bv4gl10sNorFjN52O/3C1OhCl0JGAZMIu2rmHo7b9hy
	 3ibuIjcpP6aqS7auleg/JkyMQSe6ukcUcP90KWVktJiCDbWJPmW3EZlbP9jQaCFaXF
	 E32fRUACGDZ8inTynI5kWgl+Xs1DO1peje8TDtviybBat7qK0JEzzRRfpgoTtHKZ/o
	 q3pADrYiQY1RGwZOv9QRW/YQpidZ0Q1X5ZOHRiJiB+PgUCPWTCUyqLhOQEEj2qL16m
	 xf7sZ9D/dSsLg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFFFB40512;
	Wed, 29 May 2024 11:23:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEF401D3494
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D91FC607E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HRw40ASOr0pk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 11:23:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 487D6605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 487D6605CD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 487D6605CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:52 +0000 (UTC)
X-CSE-ConnectionGUID: a/fe/fFFSJq7otnuJ0BriQ==
X-CSE-MsgGUID: rMBCOvhJRV2B6L3GsMBYOg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17169256"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17169256"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:23:52 -0700
X-CSE-ConnectionGUID: +i7+PhsdR6qnDYolI13umQ==
X-CSE-MsgGUID: 1QTru7CTQJ+emebKffbWKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="66277184"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 29 May 2024 04:23:50 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 13:23:34 +0200
Message-Id: <20240529112337.3639084-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716981832; x=1748517832;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wa3f5Y5+AWIp0vcSDmjjHpoOXBSyhvET5vZlnTzOHrk=;
 b=G4yY4BmqJlFKpMIvC5JILiEySlcqo4Br3Nkc5dXVXIWObt/wbfP+FNGC
 5twntwG4Vc1k7kWYmMI6Kx6nNlcrepkHqZ3za+WvUrba1KmcKFQcKQMmr
 5zmoLdETRaicvhBupeJ/6L6vC7Lnxl5FCXsCh3h3cruYZM7mlJDFVWA9J
 chKot4qRnpEryijiqlRU19YjP1eXObC52k5xAvszKNUL1fdwBoKSaPKk3
 5XdVfvqeF6+2dDaOjTs8aWeP5UH3PDU/ovFFN6M4CvPTZH/HopYJ5cphb
 YXmdGgRIClNM+FPhibsCceO8LnzObaGum+VV98mef0HEh2OJce4FNhH15
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G4yY4Bmq
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 5/8] ice: toggle netif_carrier
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

This so we prevent Tx timeout issues. One of conditions checked on
running in the background dev_watchdog() is netif_carrier_ok(), so let
us turn it off when we disable the queues that belong to a q_vector
where XSK pool is being configured.

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

