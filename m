Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5203A2A097
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 07:05:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D3CD416F1;
	Thu,  6 Feb 2025 06:05:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nx9a4TLKec9l; Thu,  6 Feb 2025 06:05:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2227B416F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738821909;
	bh=tqU3XxCcZY8nEen5COTLetEGSI//gAIN9Lj0vB4aZ9w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=spuC3Vq1SsVSRlrMmMRVp7UxjdTIjX7AGBc5gdd8ygFAO6UxKIFVS+ir3eM6RJWfN
	 zKADobBvG02BGc68agkazjw6w/UdBCtuWEjc8nHq1wvJnaOgfewiaB2/xL/BSY8+vq
	 7tyj2ouxH10f7/SmLGxpt6ONyq4ULogj/Y1dVqw7lEapl2o6XcgrdzLe18O72JYlUo
	 WGvWZCPZ7uMNET3fStswxhZJQm73o+1MU+n5y+rUpEKIiJ4Ypx4akxX52dRA2BwjJH
	 +bufRcvRUBVZsg+Z5qsghvsT2IZRerx2lygwLJe7+3+pCueRbpqxr4C8Sh7mSDVYn5
	 DjI6PVUeOPCQA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2227B416F9;
	Thu,  6 Feb 2025 06:05:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9260C12F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 06:05:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82C326112F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 06:05:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K2mpgwLFuEdY for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 06:05:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A585B60F44
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A585B60F44
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A585B60F44
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 06:05:05 +0000 (UTC)
X-CSE-ConnectionGUID: wLughS1xTYSJHXKtVgcrsQ==
X-CSE-MsgGUID: pwa9PEaeRe6oImj+N8rS7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50051176"
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="50051176"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 22:05:05 -0800
X-CSE-ConnectionGUID: 6iWEjDuUSLmW2osxdlgt7Q==
X-CSE-MsgGUID: It7u2DqCQcy+0uGf0sALsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,263,1732608000"; d="scan'208";a="110944374"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa006.fm.intel.com with ESMTP; 05 Feb 2025 22:04:54 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>,
 Choong Yong Liang <yong.liang.choong@linux.intel.com>,
 Bouska Zdenek <zdenek.bouska@siemens.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Date: Thu,  6 Feb 2025 14:04:07 +0800
Message-Id: <20250206060408.808325-5-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250206060408.808325-1-yoong.siang.song@intel.com>
References: <20250206060408.808325-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738821905; x=1770357905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hsttI7Aw2Sh3VKUep4bu2jyzKlGO2itiAb0VSt20X+g=;
 b=n11DTL6lK31p45tVcgNMtwAOZ2NN7cdQ/dTucqaP0Ch6tq1BDEmZOpzV
 zVbRBBnhesSbtBYeiC9AETDO8wgwW2LeZGJSTMbl1cS/wWyhs2NOY3cAd
 UoUTSUH+jmpoUZ7JVGkwtH9jF/BXNSfSNs3CGLNL7T3E/nFHUYZiVNLud
 cRL7U4qoDEuH8EHop0aGju9f2D5h20GT2w6ncSzXE4h4Fub7smbIVA9Tc
 MlPraEy8sX+sEId/TCb7cGSVdsFH54VWkKy8dRV2vtko2C8CrO5GpYnY2
 bO/qojqt4D+iFCRT/AXJwoSdZK2Nax3PpWz30YnjJQ6VqEoV1CAXl2SNm
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n11DTL6l
Subject: [Intel-wired-lan] [PATCH bpf-next v9 4/5] igc: Refactor empty frame
 insertion for launch time support
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

Refactor the code for inserting an empty frame into a new function
igc_insert_empty_frame(). This change extracts the logic for inserting
an empty packet from igc_xmit_frame_ring() into a separate function,
allowing it to be reused in future implementations, such as the XDP
zero copy transmit function.

Remove the igc_desc_unused() checking in igc_init_tx_empty_descriptor()
because the number of descriptors needed is guaranteed.

Ensure that skb allocation and DMA mapping work for the empty frame,
before proceeding to fill in igc_tx_buffer info, context descriptor,
and data descriptor.

Rate limit the error messages for skb allocation and DMA mapping failures.

Update the comment to indicate that the 2 descriptors needed by the empty
frame are already taken into consideration in igc_xmit_frame_ring().

Handle the case where the insertion of an empty frame fails and explain
the reason behind this handling.

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 84 ++++++++++++++---------
 1 file changed, 52 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 84307bb7313e..3df608601a4b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1092,7 +1092,9 @@ static int igc_init_empty_frame(struct igc_ring *ring,
 
 	dma = dma_map_single(ring->dev, skb->data, size, DMA_TO_DEVICE);
 	if (dma_mapping_error(ring->dev, dma)) {
-		netdev_err_once(ring->netdev, "Failed to map DMA for TX\n");
+		if (net_ratelimit())
+			netdev_err(ring->netdev,
+				   "DMA mapping error for empty frame\n");
 		return -ENOMEM;
 	}
 
@@ -1108,20 +1110,12 @@ static int igc_init_empty_frame(struct igc_ring *ring,
 	return 0;
 }
 
-static int igc_init_tx_empty_descriptor(struct igc_ring *ring,
-					struct sk_buff *skb,
-					struct igc_tx_buffer *first)
+static void igc_init_tx_empty_descriptor(struct igc_ring *ring,
+					 struct sk_buff *skb,
+					 struct igc_tx_buffer *first)
 {
 	union igc_adv_tx_desc *desc;
 	u32 cmd_type, olinfo_status;
-	int err;
-
-	if (!igc_desc_unused(ring))
-		return -EBUSY;
-
-	err = igc_init_empty_frame(ring, first, skb);
-	if (err)
-		return err;
 
 	cmd_type = IGC_ADVTXD_DTYP_DATA | IGC_ADVTXD_DCMD_DEXT |
 		   IGC_ADVTXD_DCMD_IFCS | IGC_TXD_DCMD |
@@ -1140,8 +1134,6 @@ static int igc_init_tx_empty_descriptor(struct igc_ring *ring,
 	ring->next_to_use++;
 	if (ring->next_to_use == ring->count)
 		ring->next_to_use = 0;
-
-	return 0;
 }
 
 #define IGC_EMPTY_FRAME_SIZE 60
@@ -1567,6 +1559,41 @@ static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct sk_buff *s
 	return false;
 }
 
+static int igc_insert_empty_frame(struct igc_ring *tx_ring)
+{
+	struct igc_tx_buffer *empty_info;
+	struct sk_buff *empty_skb;
+	void *data;
+	int ret;
+
+	empty_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+	empty_skb = alloc_skb(IGC_EMPTY_FRAME_SIZE, GFP_ATOMIC);
+	if (unlikely(!empty_skb)) {
+		if (net_ratelimit())
+			netdev_err(tx_ring->netdev,
+				   "skb alloc error for empty frame\n");
+		return -ENOMEM;
+	}
+
+	data = skb_put(empty_skb, IGC_EMPTY_FRAME_SIZE);
+	memset(data, 0, IGC_EMPTY_FRAME_SIZE);
+
+	/* Prepare DMA mapping and Tx buffer information */
+	ret = igc_init_empty_frame(tx_ring, empty_info, empty_skb);
+	if (unlikely(ret)) {
+		dev_kfree_skb_any(empty_skb);
+		return ret;
+	}
+
+	/* Prepare advanced context descriptor for empty packet */
+	igc_tx_ctxtdesc(tx_ring, 0, false, 0, 0, 0);
+
+	/* Prepare advanced data descriptor for empty packet */
+	igc_init_tx_empty_descriptor(tx_ring, empty_skb, empty_info);
+
+	return 0;
+}
+
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
@@ -1586,6 +1613,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	 *	+ 1 desc for skb_headlen/IGC_MAX_DATA_PER_TXD,
 	 *	+ 2 desc gap to keep tail from touching head,
 	 *	+ 1 desc for context descriptor,
+	 *	+ 2 desc for inserting an empty packet for launch time,
 	 * otherwise try next time
 	 */
 	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
@@ -1605,24 +1633,16 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	launch_time = igc_tx_launchtime(tx_ring, txtime, &first_flag, &insert_empty);
 
 	if (insert_empty) {
-		struct igc_tx_buffer *empty_info;
-		struct sk_buff *empty;
-		void *data;
-
-		empty_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
-		empty = alloc_skb(IGC_EMPTY_FRAME_SIZE, GFP_ATOMIC);
-		if (!empty)
-			goto done;
-
-		data = skb_put(empty, IGC_EMPTY_FRAME_SIZE);
-		memset(data, 0, IGC_EMPTY_FRAME_SIZE);
-
-		igc_tx_ctxtdesc(tx_ring, 0, false, 0, 0, 0);
-
-		if (igc_init_tx_empty_descriptor(tx_ring,
-						 empty,
-						 empty_info) < 0)
-			dev_kfree_skb_any(empty);
+		/* Reset the launch time if the required empty frame fails to
+		 * be inserted. However, this packet is not dropped, so it
+		 * "dirties" the current Qbv cycle. This ensures that the
+		 * upcoming packet, which is scheduled in the next Qbv cycle,
+		 * does not require an empty frame. This way, the launch time
+		 * continues to function correctly despite the current failure
+		 * to insert the empty frame.
+		 */
+		if (igc_insert_empty_frame(tx_ring))
+			launch_time = 0;
 	}
 
 done:
-- 
2.34.1

