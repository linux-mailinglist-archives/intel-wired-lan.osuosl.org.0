Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DFB203779
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jun 2020 15:07:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D898E864F2;
	Mon, 22 Jun 2020 13:07:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oJlJukeWMNC4; Mon, 22 Jun 2020 13:07:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 279C786511;
	Mon, 22 Jun 2020 13:07:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 721671BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:07:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48DD820520
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:07:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M+wG+5FApZ3j for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jun 2020 13:07:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 46B2A203A5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jun 2020 13:07:39 +0000 (UTC)
IronPort-SDR: gDIMajjW6X4Hg9zpzB2vgQ2Fi5VGtwcYe74y3SJjVzGo5NH+nQJhX/4r8I3nW0BMYzQ7OfBzpJ
 vazFZ0dmSOoQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="143712444"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="143712444"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 06:07:39 -0700
IronPort-SDR: bvQ71dH41y3YW65ytrKt+Pi3AN0MgVr7GQ4WfnPtEg6D/p8p5Tlf2O4u/GbB7kimnjItoVd5AN
 /EePUlo04ISg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="318774412"
Received: from silpixa00399839.ir.intel.com (HELO localhost.localdomain)
 ([10.237.222.8])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2020 06:07:38 -0700
From: Ciara Loftus <ciara.loftus@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 22 Jun 2020 12:46:23 +0000
Message-Id: <20200622124624.18847-2-ciara.loftus@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200622124624.18847-1-ciara.loftus@intel.com>
References: <20200622124624.18847-1-ciara.loftus@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/3] i40e: add xdp ring
 statistics to dump vsi debug output
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
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Prior to this, only the rx and tx ring statistics were dumped. The xdp
ring statistics are now dumped as well.

Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_debugfs.c    | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
index 99ea543dd245..1c8285fce33f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
@@ -319,6 +319,47 @@ static void i40e_dbg_dump_vsi_seid(struct i40e_pf *pf, int seid)
 			 i, tx_ring->itr_setting,
 			 ITR_IS_DYNAMIC(tx_ring->itr_setting) ? "dynamic" : "fixed");
 	}
+	if (i40e_enabled_xdp_vsi(vsi)) {
+		for (i = 0; i < vsi->num_queue_pairs; i++) {
+			struct i40e_ring *xdp_ring = READ_ONCE(vsi->xdp_rings[i]);
+
+			if (!xdp_ring)
+				continue;
+
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: state = %lu, queue_index = %d, reg_idx = %d\n",
+				 i, *xdp_ring->state,
+				 xdp_ring->queue_index,
+				 xdp_ring->reg_idx);
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: next_to_use = %d, next_to_clean = %d, ring_active = %i\n",
+				 i,
+				 xdp_ring->next_to_use,
+				 xdp_ring->next_to_clean,
+				 xdp_ring->ring_active);
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: tx_stats: packets = %lld, bytes = %lld, restart_queue = %lld\n",
+				 i, xdp_ring->stats.packets,
+				 xdp_ring->stats.bytes,
+				 xdp_ring->tx_stats.restart_queue);
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: tx_stats: tx_busy = %lld, tx_done_old = %lld\n",
+				 i,
+				 xdp_ring->tx_stats.tx_busy,
+				 xdp_ring->tx_stats.tx_done_old);
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: size = %i\n",
+				 i, xdp_ring->size);
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: DCB tc = %d\n",
+				 i, xdp_ring->dcb_tc);
+			dev_info(&pf->pdev->dev,
+				 "    xdp_rings[%i]: itr_setting = %d (%s)\n",
+				 i, xdp_ring->itr_setting,
+				 ITR_IS_DYNAMIC(xdp_ring->itr_setting) ?
+				 "dynamic" : "fixed");
+		}
+	}
 	rcu_read_unlock();
 	dev_info(&pf->pdev->dev,
 		 "    work_limit = %d\n",
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
