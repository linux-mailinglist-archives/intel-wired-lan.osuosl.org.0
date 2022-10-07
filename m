Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 995A35F74B2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 09:27:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7526E610F6;
	Fri,  7 Oct 2022 07:27:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7526E610F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665127661;
	bh=7dBGfSUwAePj5+3oBqpRabwXUri3obYkHi9bjKkVTSk=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zfNX45sJREGyG0nyuaFmodUEDV0UVd1ftryryDR77v4aJrUU589miK9VQFsTFB7pm
	 qP2JhcA7Hr72X1Pk9lBHa72oXH2YKLkwCPUDewdu+AeoCtbIy1zCPKN254IAxW8o1m
	 5141arD7xS0i1280R0wGIA9IEkTpb13YGzqTPzgmk6vUqYXu8gWFzzC9spKa5iOIbn
	 CMKmnhrH7EGqcujeRa1uaHEYg2Fv+PnOMlBZ/Bb7+zwo0XKWyv9xv/+CkzEB0iPyoe
	 jwHXlW+6excOCiT/sFnhDkoGIhqT0ueJIh/P5OVtJjl/+PNuHNVpHE+cOacGJ8fJ6r
	 MBuR2L7bwA9ug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qDrqc5Bnz6z4; Fri,  7 Oct 2022 07:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57AEF60D57;
	Fri,  7 Oct 2022 07:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57AEF60D57
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 841E61BF392
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 07:27:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D51F400EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 07:27:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D51F400EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id khh2e1eqpSfl for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 07:27:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A07A0400D2
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A07A0400D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 07:27:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="286899616"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="286899616"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 00:27:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="767473708"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="767473708"
Received: from amlin-018-068.igk.intel.com ([10.102.18.68])
 by fmsmga001.fm.intel.com with ESMTP; 07 Oct 2022 00:26:10 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 03:24:24 -0400
Message-Id: <20221007072424.83543-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665127654; x=1696663654;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XNt1l2q/2eShc/czQShpuqKc8fvnbGUdgAidVw8pF0A=;
 b=IgBxVgV0ud5s2ErEfuKVAOVAoRBWPJfv/K/Jklaq9O7TfW3YBx7HJWQg
 CTaYH4xyUzOMBf3wk+7v40Q+KuPj+OwMElhuujPZ60bGg+C1eA8kgLitZ
 oxu3lvLkKyn3mSQNE4hKlz3m6EEtt4HggsaJiU38Os3ZZnLDn0SKP1noW
 f19tulDcFfWVxNyKrwahuIGYXmi59eUb27C/vauUjJ6dbEipCyhqKeBge
 1Y8/pHQdhQYcgyORg6PqOOECJ/5+K+62wpMrIQseeLVecPQkGglO4Xdky
 d/OY/D2Y9c7Yvx0IyGX7yCgKI9CspJRVn76z7EGQcJ+eSe4dppcdFGi0A
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IgBxVgV0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when XDP
 is configured in TX only mode
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>

When starting xdpsock program in TX only mode:

samples/bpf/xdpsock -i <interface> -t

there was an error on i40e driver:

Failed to allocate some buffers on AF_XDP ZC enabled Rx ring 0 (pf_q 81)

It was caused by trying to allocate RX buffers even though
no RX buffers are available because we run in TX only mode.

Fix this by checking for number of available buffers
for RX queue when allocating buffers during XDP setup.

Fixes: 0a714186d3c0 ("i40e: add AF_XDP zero-copy Rx support")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index e8d1fb8a966b..c06bdc03d2f4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -3554,7 +3554,7 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 	struct i40e_hw *hw = &vsi->back->hw;
 	struct i40e_hmc_obj_rxq rx_ctx;
 	i40e_status err = 0;
-	bool ok;
+	bool ok = true;
 	int ret;
 
 	bitmap_zero(ring->state, __I40E_RING_STATE_NBITS);
@@ -3652,7 +3652,9 @@ static int i40e_configure_rx_ring(struct i40e_ring *ring)
 
 	if (ring->xsk_pool) {
 		xsk_pool_set_rxq_info(ring->xsk_pool, &ring->xdp_rxq);
-		ok = i40e_alloc_rx_buffers_zc(ring, I40E_DESC_UNUSED(ring));
+		if (ring->xsk_pool->free_list_cnt)
+			ok = i40e_alloc_rx_buffers_zc(ring,
+						      I40E_DESC_UNUSED(ring));
 	} else {
 		ok = !i40e_alloc_rx_buffers(ring, I40E_DESC_UNUSED(ring));
 	}
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
