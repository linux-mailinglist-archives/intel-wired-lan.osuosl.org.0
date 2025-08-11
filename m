Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37630B2117E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 Aug 2025 18:20:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDF2061446;
	Mon, 11 Aug 2025 16:20:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtvyH1QKeBUp; Mon, 11 Aug 2025 16:20:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CAA761458
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754929201;
	bh=J/nLeemtMVsVj9SFKKK2IISwIqWRvYSpnhvnr4hZ4kw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J5drI9EynQRuaMCzkTDrj5UJuza5Kj3y4TCzDFOvmVS8Rw3aqe7P6uoZ09l6A+dJO
	 V2BlJtedXGKgYqDNGtMNtYok/eqePxe5Pg3X5n6xep8ow2EeVI7OmZXTvrp0gs65Bf
	 n1NCNojH2KVzhVCXgukt1krl/ftM1WTBQxFRg0YVTZz44RhLNjPfFM5TkxcNeQlcml
	 UudQZxdhje6vXRApwFEYVpTJs/mx7LkBN+/Rokd0p+Pb7gFkVqUMmuHrpw0v7HKdzT
	 iXpN+/9fjV8P6WKujDsZ67vSy4THT5lJaeZBfAsDDbJNfm8tDiBatNkuqkMc4HyAj9
	 l9CpxdZj5bHAg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2CAA761458;
	Mon, 11 Aug 2025 16:20:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id F33CD154
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E584461068
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OOYxjUHBFbzv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 Aug 2025 16:19:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 438DB61442
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 438DB61442
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 438DB61442
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 Aug 2025 16:19:59 +0000 (UTC)
X-CSE-ConnectionGUID: NDzmx/yhRtaFMERwVJ3S9w==
X-CSE-MsgGUID: AZEB7IfKRM+z5/yPItjEaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="56899551"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="56899551"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 09:12:53 -0700
X-CSE-ConnectionGUID: qpIOcC7lTFuVHqUg1/P11A==
X-CSE-MsgGUID: 0PK4GSW8REiYhzaAqx+vcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="165163160"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa006.jf.intel.com with ESMTP; 11 Aug 2025 09:12:49 -0700
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
Date: Mon, 11 Aug 2025 18:10:33 +0200
Message-ID: <20250811161044.32329-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250811161044.32329-1-aleksander.lobakin@intel.com>
References: <20250811161044.32329-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754929199; x=1786465199;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BSD20DJHskwQfGIbjfi2O55r65lbLUrLXZlFj/S3YHQ=;
 b=fbPpjwhVzP5uZ+nZMMpvrMBPGt0ZEsHfyER1sasLgzqaYIs4JFJrm2mi
 NCFLfVL48r9yq/f+n26SR2XyOld81b8LhZwwQR6sQUZLPF+KzR2+D+J51
 lbUBCmZJ/Wczgv4bedXTMkPo3kNxhsOn3gRllEWHqtdfpJZLJg0GXsBB5
 SwDni7RPnQZUzXNcfXcVmSY/u0QJ6+4PXQs8fSCMRYJa9O5heL/SlrvRg
 CN/uirl60LMZY1bC906fRiuSfZyF118UAGQETQ9N5VF7/GdYveMExVGEC
 k7UswnbUe4pkMAK6M9ZAgrH+rXcbhNg5RbERtP3cVj3SetXPQfBp3DF2z
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fbPpjwhV
Subject: [Intel-wired-lan] [PATCH iwl-next v4 02/13] idpf: fix Rx descriptor
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
index 68b3857c803b..72459fc1af79 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3186,18 +3186,14 @@ static int idpf_rx_splitq_clean(struct idpf_rx_queue *rxq, int budget)
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
2.50.1

