Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A30484B575
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 13:41:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3649822DA;
	Tue,  6 Feb 2024 12:41:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgN_SbqSTgd5; Tue,  6 Feb 2024 12:41:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E296682112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707223307;
	bh=dboo/Udu7J/uoUnjETBexNPhT4fDEGb3QZYe9NcJtXU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wMPH+5rGpqF+5wZZAaCwyFzqgBV0iKAqEccGQb2PT8eygrGhB3iN/nFLK6pOFkMdB
	 Bw0vx9OW0m6JiI+l1+NZUmEEd0PbDidPb0BPVb0z3X4iUysmQuZ+8qlwYDySm0+2nu
	 NC0MKUGHOzLZkBjvsp+lG7Do1KxHref9ejCoxFC/gM2jyyLsX0+uqZDELic0hl53l2
	 apfH5cYXOZXqVrrnaUtDrKyON2PgfzSvLicK09ta8JsN7dAzpXVDT264BEkgDCvJnE
	 ySO4tjbPUXeMZbE1d6tqw7t5S5pxGq1NbWhBRVbaOejsT2mD7G90D5ERm4nR3PjX0l
	 4wQAKhLee7i2A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E296682112;
	Tue,  6 Feb 2024 12:41:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7FB61BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4BBB81E22
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onCoVeG8zEkt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 12:41:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5C2C782112
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5C2C782112
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5C2C782112
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="18255147"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="18255147"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 04:41:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="5619965"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa005.fm.intel.com with ESMTP; 06 Feb 2024 04:41:40 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Feb 2024 13:41:31 +0100
Message-Id: <20240206124132.636342-2-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
References: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707223303; x=1738759303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qxoLmloFR+9+GhytewaFGvg+IJiae2V+Vk54IVBsmL8=;
 b=oDFVvQVH36C6wOb9CK0nRSPbNa8egocZIXGE8h4HLQGhM34m9J4HMPhG
 6JNkmTBYzbXZkKaFVCo6DcIxXUyho/H3QhGM1tk7kI17Hwxqg/h96F89L
 DCiGFEe0dups8z//OTTSYdSulMhAExoAduw7rn9IA06loVqYv8cis5SvF
 oredXOMSTsUyrxaBG+ydM6sP7W4eozBb1k1THhV3lNVW2ekpbfoCgtS6W
 KigNfW6IVmINCzRZ3NVg5BnVSwnGlTDU5an6nPo52nnw7tVI1iFkY7ehF
 jp/fORSBdaSW4h+W/FK2sAMClA3vd8ckzoCzlbmnEhkf6+51PO8Fa1TG+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=oDFVvQVH
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 1/2] i40e: avoid double calling
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
 anthony.l.nguyen@intel.com, Simon Horman <horms@kernel.org>,
 magnus.karlsson@intel.com
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
Reviewed-by: Simon Horman <horms@kernel.org>
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

