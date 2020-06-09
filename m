Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F65A1F3CD0
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 15:41:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D003187648;
	Tue,  9 Jun 2020 13:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLA23Q+7lIGK; Tue,  9 Jun 2020 13:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1830E867C5;
	Tue,  9 Jun 2020 13:40:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB7101BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3C2C22812
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Epj3vYuzXxG8 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Jun 2020 13:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 273D820468
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Jun 2020 13:40:53 +0000 (UTC)
IronPort-SDR: kq5fnCEd/7br1Dvpf7mbWS5gj6J1DnCwY3ejBV848VXskFCPJR5MIYGIS1mvmolVwwwkNeUFMb
 8cmc6rP62ixw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 06:40:52 -0700
IronPort-SDR: mpyT7sZhMKlrLlo0YzHV3LqvTaMfSV/lMAZxvBsqN/vdYSjm1gfC6tcrcAYOXXdBrgo7cfNh8y
 58XQCT5fgyuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="295837460"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.222.8])
 by fmsmga004.fm.intel.com with ESMTP; 09 Jun 2020 06:40:51 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Jun 2020 13:19:45 +0000
Message-Id: <20200609131945.18373-3-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200609131945.18373-1-ciara.loftus@intel.com>
References: <20200609131945.18373-1-ciara.loftus@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 3/3] ice: protect ring accesses with
 WRITE_ONCE
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
Cc: netdev@vger.kernel.org, bjorn.topel@intel.com, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The READ_ONCE macro is used when reading rings prior to accessing the
statistics pointer. The corresponding WRITE_ONCE usage when allocating and
freeing the rings to ensure protected access was not in place. Introduce
this.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c  | 8 ++++----
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 28b46cc9f5cb..2e3a39cea2c0 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1194,7 +1194,7 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
 		for (i = 0; i < vsi->alloc_txq; i++) {
 			if (vsi->tx_rings[i]) {
 				kfree_rcu(vsi->tx_rings[i], rcu);
-				vsi->tx_rings[i] = NULL;
+				WRITE_ONCE(vsi->tx_rings[i], NULL);
 			}
 		}
 	}
@@ -1202,7 +1202,7 @@ static void ice_vsi_clear_rings(struct ice_vsi *vsi)
 		for (i = 0; i < vsi->alloc_rxq; i++) {
 			if (vsi->rx_rings[i]) {
 				kfree_rcu(vsi->rx_rings[i], rcu);
-				vsi->rx_rings[i] = NULL;
+				WRITE_ONCE(vsi->rx_rings[i], NULL);
 			}
 		}
 	}
@@ -1235,7 +1235,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->vsi = vsi;
 		ring->dev = dev;
 		ring->count = vsi->num_tx_desc;
-		vsi->tx_rings[i] = ring;
+		WRITE_ONCE(vsi->tx_rings[i], ring);
 	}
 
 	/* Allocate Rx rings */
@@ -1254,7 +1254,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->netdev = vsi->netdev;
 		ring->dev = dev;
 		ring->count = vsi->num_rx_desc;
-		vsi->rx_rings[i] = ring;
+		WRITE_ONCE(vsi->rx_rings[i], ring);
 	}
 
 	return 0;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 082825e3cb39..4cbd49c87568 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1702,7 +1702,7 @@ static int ice_xdp_alloc_setup_rings(struct ice_vsi *vsi)
 		xdp_ring->netdev = NULL;
 		xdp_ring->dev = dev;
 		xdp_ring->count = vsi->num_tx_desc;
-		vsi->xdp_rings[i] = xdp_ring;
+		WRITE_ONCE(vsi->xdp_rings[i], xdp_ring);
 		if (ice_setup_tx_ring(xdp_ring))
 			goto free_xdp_rings;
 		ice_set_ring_xdp(xdp_ring);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
