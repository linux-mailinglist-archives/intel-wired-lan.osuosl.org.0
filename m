Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4156845BD3
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 16:42:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5677B61599;
	Thu,  1 Feb 2024 15:42:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5677B61599
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706802157;
	bh=MMhqFXbgKs8CFIoztLDUK8XsOuC7rXFrnUn5moRjYGY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R7KgJKBK6bZO3Quw920KAGdjrXrRCYO1nIJQFIgpRctPQp4Ni1ggc3dm4xwfjaNgG
	 H9MefRcUIoO/zb3khtrlSktuL9U0Acmi+N2SNkGqyamsAjWUoqVBZgmHXbW6RIzkdw
	 6Pt6nDUDEOg3cUgSg0q2dQtiUqOZZxmG/se3eZEtmfmwSGvkYRTXppDZ9spitimVE7
	 AXQDGgie6Afyta03REbVyn6Ql/9esYV7okUnIhgmxhXLJPB+4314sd8tAH6E1mXkxs
	 z7yBz//W4eSUUuPw+ErtPcBZRS6YTXzTJmDxaVCiKDg0QRw/J6Xtcx4Mag5eKt/knF
	 upJEfpegVxKOA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSMKmfxXMbOx; Thu,  1 Feb 2024 15:42:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 67D9860B27;
	Thu,  1 Feb 2024 15:42:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67D9860B27
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F32D1BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60C1C84682
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60C1C84682
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5jyXGo9vl4E for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 15:42:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A8C1E84683
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8C1E84683
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10551407"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="10551407"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 07:42:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4418170"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa005.fm.intel.com with ESMTP; 01 Feb 2024 07:42:25 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Feb 2024 16:42:18 +0100
Message-Id: <20240201154219.607338-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
References: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706802147; x=1738338147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DhQJw42Fy/VWG9VGKz5dX7ahzhubPG0WXkmbdhwwXs8=;
 b=kYhCLqv0c7cmLY6+HzJkFI+KCTeiIoonc+5kOD2AXlEH5IRGApq6Os4v
 p/wjXsL5/zou3jtcXOgLncZSrxQ4xXnxvaPCwBDVSta1EwHa7obcLKMs2
 1+ommxkMnBpinZ97i8akuURzu28pFJiUJeiTJD+yIjT5X/hwzjiiGQkY+
 Ox5lGb5kHxm8udEsR3sDet/XMZqclhfHxqzYN8iS03gbdaU2ozK14FmA8
 QXLqSg85lFAPrfTAcSPL2AK4IPf/19ivLv1jMyP0XVa/RFVRuwsrYcH9X
 Plv1xuPe27nqCWT0iTX90v2EfePA7Wp92m3+HQ8K+KG7+u1dNQrpo88IJ
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kYhCLqv0
Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] i40e: avoid double calling
 i40e_pf_rxq_wait()
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

Currently, when interface is being brought down and
i40e_vsi_stop_rings() is called, i40e_pf_rxq_wait() is called two times,
which is wrong. To showcase this scenario, simplified call stack looks
as follows:

i40e_vsi_stop_rings()
	i40e_control wait rx_q()
		i40e_control_rx_q()
		i40e_pf_rxq_wait()
	i40e_vsi_wait_queues_disabled()
		i40e_pf_rxq_wait()  // redundant call

To fix this, let us s/i40e_control_wait_rx_q/i40e_control_rx_q within
i40e_vsi_stop_rings().

Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 6e7fd473abfd..2c46a5e7d222 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4926,7 +4926,7 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
 void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
-	int pf_q, err, q_end;
+	int pf_q, q_end;
 
 	/* When port TX is suspended, don't wait */
 	if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
@@ -4936,16 +4936,10 @@ void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
 	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
 		i40e_pre_tx_queue_cfg(&pf->hw, (u32)pf_q, false);
 
-	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++) {
-		err = i40e_control_wait_rx_q(pf, pf_q, false);
-		if (err)
-			dev_info(&pf->pdev->dev,
-				 "VSI seid %d Rx ring %d disable timeout\n",
-				 vsi->seid, pf_q);
-	}
+	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
+		i40e_control_rx_q(pf, pf_q, false);
 
 	msleep(I40E_DISABLE_TX_GAP_MSEC);
-	pf_q = vsi->base_queue;
 	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
 		wr32(&pf->hw, I40E_QTX_ENA(pf_q), 0);
 
-- 
2.34.1

