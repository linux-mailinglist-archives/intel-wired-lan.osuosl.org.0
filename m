Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F69184B577
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Feb 2024 13:41:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DAD2281E22;
	Tue,  6 Feb 2024 12:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GtFvPs-s7I8B; Tue,  6 Feb 2024 12:41:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61B12822C9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707223309;
	bh=MyBkIIsI4q3s2d8Jp2oxWYhBSPoqpAqu9Ti0HG2XBe0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=L651RbeM2dusmPmVC541e/xnHKtqUejA37FGN46cqWnQln7nxL734Q5YonHZkZaFZ
	 frWvR0vdJ5rjWFwZNyrpykK6lJ8T9L9B3HdXGGLZFuPkoDxm3Erqkk5kReYFHqHpVi
	 41zGLOsLmHQSD9z6lL84mHQBWG1DudlLLdB9y1Nw84kKpcvBfv3F4q03vOzxl5OXct
	 d94IKU0UfoYK0wr0iIx3T1LZIqLW2KkLqbexlAcI9/Z6sAayrKs/lzoDKdh7p5WkkZ
	 p/J0J5LpoW9LqaVRgjxXvVpuo3WN4JaNE/eDaF2aBpki+gSi2P/e3y+mBxXDBm/Xdl
	 e2Eqz/LCsdjuQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61B12822C9;
	Tue,  6 Feb 2024 12:41:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13CC91BF33B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E3E3481E22
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nTSFFAtW8BdM for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Feb 2024 12:41:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0F15C82155
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0F15C82155
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0F15C82155
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Feb 2024 12:41:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="18255150"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="18255150"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 04:41:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; 
   d="scan'208";a="5619976"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa005.fm.intel.com with ESMTP; 06 Feb 2024 04:41:42 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Feb 2024 13:41:32 +0100
Message-Id: <20240206124132.636342-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
References: <20240206124132.636342-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707223304; x=1738759304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ABjdnj5rqhmhObksezYyewzVfd9rgdVSrARx12/Y+O4=;
 b=hNkNatniWFfh8S3s03TbkadiWy02UDm6LUKqZspno3No5nYIsy9wKGZ5
 Qd9NpvXgcOQKQf7p1qNjm81/YHfYHocv2jeEQQmwIvA+93sGTIJtAAS18
 7Lokv5/IW/XBKmZf+zY5mBuBdaoRAjyh0Ombxw9zuvTTg9QtEmwsWJQxw
 LCZWiLgVyCcZmoy6OAOnrBCKWDnxG4e1vm6FEyHSbpd606AqzIjL0q/Ai
 Wyycgx5F3OeFy0C/5HsOfy/54BaWzpjBd905sG0jIVFxPLCa2XkAj6nMh
 7rwHFCGlY5WAsjCOPn/CDCW+EuoqZdYP9yaBaNJObqg9Tu8LyZeVjfHaq
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hNkNatni
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/2] i40e: take into account
 XDP Tx queues when stopping rings
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, Seth Forshee <sforshee@kernel.org>,
 Simon Horman <horms@kernel.org>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Seth reported that on his side XDP traffic can not survive a round of
down/up against i40e interface. Dmesg output was telling us that we were
not able to disable the very first XDP ring. That was due to the fact
that in i40e_vsi_stop_rings() in a pre-work that is done before calling
i40e_vsi_wait_queues_disabled(), XDP Tx queues were not taken into the
account.

To fix this, let us distinguish between Rx and Tx queue boundaries and
take into the account XDP queues for Tx side.

Reported-by: Seth Forshee <sforshee@kernel.org>
Closes: https://lore.kernel.org/netdev/ZbkE7Ep1N1Ou17sA@do-x1extreme/
Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
Tested-by: Seth Forshee <sforshee@kernel.org>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2c46a5e7d222..bf1b32a15b5e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4926,21 +4926,23 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
 void i40e_vsi_stop_rings(struct i40e_vsi *vsi)
 {
 	struct i40e_pf *pf = vsi->back;
-	int pf_q, q_end;
+	u32 pf_q, tx_q_end, rx_q_end;
 
 	/* When port TX is suspended, don't wait */
 	if (test_bit(__I40E_PORT_SUSPENDED, vsi->back->state))
 		return i40e_vsi_stop_rings_no_wait(vsi);
 
-	q_end = vsi->base_queue + vsi->num_queue_pairs;
-	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
-		i40e_pre_tx_queue_cfg(&pf->hw, (u32)pf_q, false);
+	tx_q_end = vsi->base_queue +
+		vsi->alloc_queue_pairs * (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);
+	for (pf_q = vsi->base_queue; pf_q < tx_q_end; pf_q++)
+		i40e_pre_tx_queue_cfg(&pf->hw, pf_q, false);
 
-	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
+	rx_q_end = vsi->base_queue + vsi->num_queue_pairs;
+	for (pf_q = vsi->base_queue; pf_q < rx_q_end; pf_q++)
 		i40e_control_rx_q(pf, pf_q, false);
 
 	msleep(I40E_DISABLE_TX_GAP_MSEC);
-	for (pf_q = vsi->base_queue; pf_q < q_end; pf_q++)
+	for (pf_q = vsi->base_queue; pf_q < tx_q_end; pf_q++)
 		wr32(&pf->hw, I40E_QTX_ENA(pf_q), 0);
 
 	i40e_vsi_wait_queues_disabled(vsi);
-- 
2.34.1

