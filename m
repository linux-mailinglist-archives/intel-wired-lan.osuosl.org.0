Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A24685CA3A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 22:46:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BFE7560C0E;
	Tue, 20 Feb 2024 21:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ExXp8eQpuST; Tue, 20 Feb 2024 21:46:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F2A7F60BF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708465601;
	bh=lRE+jBhV6jllJs1ZSiiVpxYi0rpGruqO0KlYWiNvOQQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T3rgVIntCs+k3T0m17l7n9gfhM+2gZoAxxNlxnkmX8JO6OhPEZIQP7wpuigY/MGy2
	 v/Olxf8pnQSoPUet1q+hSnNoKtmNemfKmoF7OCgEo88b0VnMlKhWCbm2r5SzvKqi+G
	 v6EgURWFe3xc7Kp7XDuseacJfcnn2j1J8LyTXPqUJnTgAE45RaPvR86ZWTB/Y+PuFD
	 ZidIXDTeo613WtzuP+TBaauc+qq2VE/Q6qR6iMt0n7qI81H/1iEYIhYFpAruUxuyT3
	 pQeFQrIskS4e1swZbW/Ax2T04EwQc70ZbKEeEY3N7w86semueH4j/WYm0hgIwyCPIs
	 11fK82/D5GaLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F2A7F60BF4;
	Tue, 20 Feb 2024 21:46:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC5691BF475
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8E62415C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jBrARTuGFBZV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Feb 2024 21:46:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E91441596
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E91441596
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E91441596
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Feb 2024 21:46:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10990"; a="2462672"
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; 
   d="scan'208";a="2462672"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 13:46:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,174,1705392000"; d="scan'208";a="35681903"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 20 Feb 2024 13:46:33 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 20 Feb 2024 22:45:53 +0100
Message-Id: <20240220214553.714243-4-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
References: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708465596; x=1740001596;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EQBBZrUMfaIxKRF6wbG6jkwDinDonJrtXR5podir5pU=;
 b=Ix5OTGQMEgSNPtFyFF64kbNaYI4i52G5bdD8/Sz+UbeCLzLBT9ZaQrJU
 nPtQ7H/SNSSTMhGddTzV7n4+beferao01EOUa1CT2fzc2wKLXh/9eIVC6
 qI3hRfYHn75XlkmPQdi1XpZo53xBehEZ9iCcQfHqYB4LhmAb3H4wDhszx
 92cqrS/NpBM5hS01hOtWrI/gZHO4ATApviH7bzhFqYKK1OCCQqMEybjds
 C3ZbM8ZtvyOC6KE60K+eBrmSIh5a4xJxsgekHB2XtGudhcKYmH1AcB/KD
 QgxE5HSNMXoEwX5k07QiYQ6Z35Qse/aCn0ZVi14SUnRsKJmuvNDnbzPJZ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ix5OTGQM
Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: reorder disabling IRQ
 and NAPI in ice_qp_dis
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
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 anthony.l.nguyen@intel.com, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_qp_dis() currently does things in very mixed way. Tx is stopped
before disabling IRQ on related queue vector, then it takes care of
disabling Rx and finally NAPI is disabled.

Let us start with disabling IRQs in the first place followed by turning
off NAPI. Then it is safe to handle queues.

One subtle change on top of that is that even though ice_qp_ena() looks
more sane, clear ICE_CFG_BUSY as the last thing there.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 8b81a1677045..2eecd0f39aa6 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -179,6 +179,10 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 			return -EBUSY;
 		usleep_range(1000, 2000);
 	}
+
+	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
+	ice_qvec_toggle_napi(vsi, q_vector, false);
+
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 
 	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
@@ -195,13 +199,10 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		if (err)
 			return err;
 	}
-	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
-
 	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, true);
 	if (err)
 		return err;
 
-	ice_qvec_toggle_napi(vsi, q_vector, false);
 	ice_qp_clean_rings(vsi, q_idx);
 	ice_qp_reset_stats(vsi, q_idx);
 
@@ -259,11 +260,11 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	if (err)
 		return err;
 
-	clear_bit(ICE_CFG_BUSY, vsi->state);
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return 0;
 }
-- 
2.34.1

