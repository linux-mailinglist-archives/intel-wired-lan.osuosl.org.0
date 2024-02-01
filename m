Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D007845BD5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 16:42:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A82FE615A9;
	Thu,  1 Feb 2024 15:42:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A82FE615A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706802161;
	bh=ZFaUgcXAfR/Abkl8UGRn09JzaU19PwrcQ9rVEQHk0ro=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=p28IwyJB3gS9+ECkt3CBrksfXQCEreS8Z7lTn8uOMF3/MXq0Oo0GG2BuseTJ0QANz
	 A15htp2lHsr2PCqD+0w23NcyWGCPd6QCktrcFzv4bwqdWFGqPUw4zc+NaXBsMgAq4M
	 oz2BRdZu/prOfI/fulsKTfGC0BwVd0/fF1XrmSvi5pxQYH6WZ/ZSX+nDTLt1tIyJlT
	 EU5gLSkVFRnRv1GCGTOyIvX8szyz3nIC9eoHfRKz+TEZlfhBUtPSEbzPhM8gS6uLeu
	 Ra4J2KxrjcktAvdKgHF+dX+HnbxUao/jz+meostKRFkyasBMCKATgB12G+QPYXKYpU
	 zwtDUF809O23w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C27cICIrrKz3; Thu,  1 Feb 2024 15:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B58A60A97;
	Thu,  1 Feb 2024 15:42:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B58A60A97
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6AF3D1BF97E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 43EF984684
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 43EF984684
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VI_riTb-XxK7 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 15:42:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5AEE384683
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 15:42:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AEE384683
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="10551417"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="10551417"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 07:42:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4418208"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa005.fm.intel.com with ESMTP; 01 Feb 2024 07:42:27 -0800
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  1 Feb 2024 16:42:19 +0100
Message-Id: <20240201154219.607338-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
References: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706802148; x=1738338148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Dx6cdg1qfbKn7eMZxN8RCudXM9RoNC9XZhARuZBs4a4=;
 b=PFzQwV1NAileIBhEKzjlK2RoVm0yLsmiITzlz5D/S6Sx5YSG2DDVA37o
 MjdSqOf4fltVL4xS5xA5Hi54gEgldm/jTtSy025AH6X8895XNBBKNpuuQ
 vX6f7Yto1ITecNwdUqV5NFWRQQmiZcT2J/usVX4wGhcwZhrtWR3QVat9M
 GlmzCSslg6B8VsAI/z8AZ8wMXea1KpOD1Q6+Xk0vjEXQW7eb3rWy4+O+T
 ADITkdbMBP163ts1qkF7wwZAnAVfokWPB9WCZlSVWBikRPqaOGsSkntc1
 09Cu4KfM3IZlbyQVsFrMpKvZWC8hdyJOKUo8anDbfZDBRYE4fNln8MF8H
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PFzQwV1N
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] i40e: take into account XDP
 Tx queues when stopping rings
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
 anthony.l.nguyen@intel.com, Seth Forshee <sforshee@kernel.org>,
 magnus.karlsson@intel.com
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
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 2c46a5e7d222..907be56965f5 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -4926,21 +4926,22 @@ int i40e_vsi_start_rings(struct i40e_vsi *vsi)
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
+	tx_q_end = vsi->alloc_queue_pairs * (i40e_enabled_xdp_vsi(vsi) ? 2 : 1);
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

