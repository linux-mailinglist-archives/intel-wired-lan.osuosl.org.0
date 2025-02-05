Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE12AA28201
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 03:42:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6533560EDD;
	Wed,  5 Feb 2025 02:42:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y9nq7_F-oSnH; Wed,  5 Feb 2025 02:42:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94B3F60D6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738723334;
	bh=0C3i7jPwKGPtkrZsUc7NkegaUW4p1HYHyfVC2TRxnV8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lLCUOiT3NtR89/ukHqNxG88HpFuAqY9GAg8F5wY4jJAdqKZ42+BKY3HjyBYrQo6Os
	 50ecyksyPkZkzHTudVxxfLRyj1cTcEROhIRNap1ld/37cEiwH/HPyWHwrltF8ghk6l
	 gGK5FzzUWZavYSmEmkAqeAQ1nbvsDfDSDoujYK3CfJO+haBaDXGQ/hRkpZISL+YlMr
	 WgPrwE+NpgKcVOeK3PZReGIvbvn2gq3YLmRF623BHmbdfQB96ZFbbxqGmN+upJtupB
	 +fgcxK+YWWO3L0zvN9Niyq+0tnegZArT5/+acHWCtVjaYxke1fL4wgBvWHWDT4Qhsv
	 Lgwu7bMoownPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94B3F60D6F;
	Wed,  5 Feb 2025 02:42:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2982D12A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:42:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 19C3440445
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:42:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tfe4YHDJ8MHC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 02:42:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0AD8E408C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AD8E408C7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AD8E408C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 02:42:11 +0000 (UTC)
X-CSE-ConnectionGUID: ZrHBIhJ5ToKLBDIgjS85fA==
X-CSE-MsgGUID: UXRh0yv2SW+ZCeEWYdOoTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39303907"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="39303907"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 18:42:11 -0800
X-CSE-ConnectionGUID: 6gh2BosHSB6Cim6S+Sj9AA==
X-CSE-MsgGUID: +b9HroD5R5i5dhekZCM9VQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="110666604"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.38])
 by fmviesa007.fm.intel.com with ESMTP; 04 Feb 2025 18:42:00 -0800
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
Date: Wed,  5 Feb 2025 10:41:15 +0800
Message-Id: <20250205024116.798862-5-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250205024116.798862-1-yoong.siang.song@intel.com>
References: <20250205024116.798862-1-yoong.siang.song@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738723332; x=1770259332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Utj1UJhD/A+1VjVQheCreoYgsb9L8I5I4wm7q1juvCU=;
 b=gf1fUbVrCf1DaFM5hyQSb7tFM+4dqultICh69hURElxxE6v7q2Zi9qjY
 cVhMHrJNnErygjldJuNdTDuWcy109f2p8pehn2jqbWgsIH1Tk6WXrJFmA
 fNmHjNjuWKNytJIbFWNB93flyw4r+PwS7UjGcALdes8RhvSzEtdMZHc9v
 cbzIjWM2R1MoyiiVCUQY+iIFOPPBMMcN4GPyFZCyPHDvOHWjzpX7YjNFE
 weH0fvDTYuhhZKcg9zrS4cUMNFgmvcXs/ohQ0Ziwm0WmrvsUjfm7ZRik/
 nlDXEPmdISfPrfJgoMXz1xDS7Iq1xWHW7biVWhD/p4y5+tRs75czJwc6S
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gf1fUbVr
Subject: [Intel-wired-lan] [PATCH bpf-next v8 4/5] igc: Refactor empty
 packet insertion into a reusable function
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

Refactor the code for inserting an empty packet into a new function
igc_insert_empty_packet(). This change extracts the logic for inserting
an empty packet from igc_xmit_frame_ring() into a separate function,
allowing it to be reused in future implementations, such as the XDP
zero copy transmit function.

This patch introduces no functional changes.

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
Reviewed-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 42 ++++++++++++-----------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 21f318f12a8d..553d6d82af0d 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1566,6 +1566,26 @@ static bool igc_request_tx_tstamp(struct igc_adapter *adapter, struct sk_buff *s
 	return false;
 }
 
+static void igc_insert_empty_packet(struct igc_ring *tx_ring)
+{
+	struct igc_tx_buffer *empty_info;
+	struct sk_buff *empty;
+	void *data;
+
+	empty_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
+	empty = alloc_skb(IGC_EMPTY_FRAME_SIZE, GFP_ATOMIC);
+	if (!empty)
+		return;
+
+	data = skb_put(empty, IGC_EMPTY_FRAME_SIZE);
+	memset(data, 0, IGC_EMPTY_FRAME_SIZE);
+
+	igc_tx_ctxtdesc(tx_ring, 0, false, 0, 0, 0);
+
+	if (igc_init_tx_empty_descriptor(tx_ring, empty, empty_info) < 0)
+		dev_kfree_skb_any(empty);
+}
+
 static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 				       struct igc_ring *tx_ring)
 {
@@ -1603,26 +1623,8 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 	skb->tstamp = ktime_set(0, 0);
 	launch_time = igc_tx_launchtime(tx_ring, txtime, &first_flag, &insert_empty);
 
-	if (insert_empty) {
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
-	}
+	if (insert_empty)
+		igc_insert_empty_packet(tx_ring);
 
 done:
 	/* record the location of the first descriptor for this packet */
-- 
2.34.1

