Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3CCB36FF9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Aug 2025 18:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B97128073E;
	Tue, 26 Aug 2025 16:20:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Xf7WJtSmMOox; Tue, 26 Aug 2025 16:20:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34FD280731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756225243;
	bh=0qDN4hWO/4bz1JkstvziGhvCisEAcYHaDNikGpmdChM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eq6Q4kk+s8KOB0unNE8sg4dVPE/byrkzhB6g4Jj58FRwGXvlvHrgReVRarO888GfW
	 DAVR+l3M8HZ9JBBSxcwLPH+ZGWXlddpLQS55BKaW8jobf822tyhJmOuxkbcTBZSHqY
	 74QftohkcPXgtdwhc95CcihmrlCuBh6Os+HPmANgFXQaonuwDAU/AA4+vYiVHzzRkH
	 RQVCwJeCbeK+qArbaLofyZ/zgXx/mvJa7ticr/mp2eTE2GihEyljknmSjSIRCFa4uF
	 j5Rc/e3HDzRj4lLUCr7IbUk5sTYF5PZ3eDzJ8Jxutbn9iK9VIo9rhSfyqANL3JYva7
	 ySNQEGmXlU1VQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34FD280731;
	Tue, 26 Aug 2025 16:20:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2A512B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BCD980734
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 77V-8uppA1Z7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Aug 2025 16:20:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7B57280732
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B57280732
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7B57280732
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Aug 2025 16:20:41 +0000 (UTC)
X-CSE-ConnectionGUID: nIaBeYSrTdOJA1y3gArKEg==
X-CSE-MsgGUID: Q+sSJRsGQmqliVWt2WtzbA==
X-IronPort-AV: E=McAfee;i="6800,10657,11534"; a="46044894"
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="46044894"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2025 09:13:35 -0700
X-CSE-ConnectionGUID: 1ED7XHirReKYL0P1+ufTxw==
X-CSE-MsgGUID: cGM/nvP0RFqi7q8kd0aGbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,214,1751266800"; d="scan'208";a="200562083"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa002.jf.intel.com with ESMTP; 26 Aug 2025 09:13:31 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Simon Horman <horms@kernel.org>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Tue, 26 Aug 2025 17:54:56 +0200
Message-ID: <20250826155507.2138401-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
References: <20250826155507.2138401-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756225241; x=1787761241;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bUNbTnj1hQFmwxgQyqBf0WIlVzWXySVKeBksI4xda0g=;
 b=nxAi/y7IpBbkCoVgJB8B8wuzjzQWsa63vdU9OcMqWZRGlq8X4wgKhVr4
 GHVrNSd1UYB7mLghZn841CDDgdToNfqp7bpSGYakS8kb9FA22W4KUSfKb
 vInBPigE8sHdNBPXAoKRmBUT/9mmkLJr8gh6+KAQeRKhN8gP2vzffTZFF
 O+SLOeUmEzP69gOxehmY6Cz/V/Fn886Z8tVANCgJql9Pnh/TDX2oL50Ai
 drK53ntAjivyyctMeUwDX3tQuS/LGaAKcs7A0iMujWPo6WeusNBh4XRRk
 kCPexmEFNOWp5fgMV0h0f/fvbiSw+VsFh6Y+tQgUenQiNCTi7Cu3NYxYj
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nxAi/y7I
Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/13] idpf: fix Rx descriptor
 ready check barrier in splitq
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

No idea what the current barrier position was meant for. At that point,
nothing is read from the descriptor, only the pointer to the actual one
is fetched.
The correct barrier usage here is after the generation check, so that
only the first qword is read if the descriptor is not yet ready and we
need to stop polling. Debatable on coherent DMA as the Rx descriptor
size is <= cacheline size, but anyway, the current barrier position
only makes the codegen worse.

Fixes: 3a8845af66ed ("idpf: add RX splitq napi poll support")
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 600bd83ae3fa..bbbbcd885fcf 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3101,18 +3101,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
 		/* get the Rx desc from Rx queue based on 'next_to_clean' */
 		rx_desc = &rxq->rx[ntc].flex_adv_nic_3_wb;
 
-		/* This memory barrier is needed to keep us from reading
-		 * any other fields out of the rx_desc
-		 */
-		dma_rmb();
-
 		/* if the descriptor isn't done, no work yet to do */
 		gen_id = le16_get_bits(rx_desc->pktlen_gen_bufq_id,
 				       VIRTCHNL2_RX_FLEX_DESC_ADV_GEN_M);
-
 		if (idpf_queue_has(GEN_CHK, rxq) != gen_id)
 			break;
 
+		dma_rmb();
+
 		rxdid = FIELD_GET(VIRTCHNL2_RX_FLEX_DESC_ADV_RXDID_M,
 				  rx_desc->rxdid_ucast);
 		if (rxdid != VIRTCHNL2_RXDID_2_FLEX_SPLITQ) {
-- 
2.51.0

