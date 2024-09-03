Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9355596A61E
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Sep 2024 20:05:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F4B460717;
	Tue,  3 Sep 2024 18:05:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMou60IO8H8t; Tue,  3 Sep 2024 18:05:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9152160761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725386722;
	bh=ztb3uXf73jT0Y+7DZm8/pU8pawonpCPit17JHLtXGB0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SBiN2A6eIycorxkQ9KbJe5wja7zVIBJvy7uRCsC7oMovE+lEGZl6+vxl75SN3OVDi
	 So4dw6sg3VO4jckbPwiETRSvcL0oHkKcF4UqYh/RfiApLg7o8wZ5KDQNfn3k5dAEzy
	 mUJLSc6Kwa8LjHhgYrX2v0ZRZmpTwAIslcvw0l2c0DH9WjnznrTn1pj0ANea0Y5/8r
	 YUHlCMUh4Dr3JZS0srN4CkdUavyXiCTcM+vD0Kuh4K31O8qQiZ4SrAq/teMGYamqD+
	 GihTfN80utzLiB11z+6e6h6UFrpWvfwjaCQsVTZDj9Xgx8QwuKGxZwIAEwFP6WQFUj
	 ZOSg9UpuVKqGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9152160761;
	Tue,  3 Sep 2024 18:05:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF351BF356
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 18:05:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A2C080B59
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 18:05:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZqkyJ-solDH2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Sep 2024 18:05:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E64C80B39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E64C80B39
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E64C80B39
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Sep 2024 18:05:19 +0000 (UTC)
X-CSE-ConnectionGUID: M+MVQjGnTnq5d30bFVhTCw==
X-CSE-MsgGUID: i3+Jssa8QMGqRxujxynBIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11184"; a="27800362"
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="27800362"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 11:05:18 -0700
X-CSE-ConnectionGUID: CQS2bXf9RHeqQ2lsClI6MQ==
X-CSE-MsgGUID: UsJ0wBtDR4GJWgLTsC86iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,199,1719903600"; d="scan'208";a="64813358"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa010.jf.intel.com with ESMTP; 03 Sep 2024 11:05:17 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  3 Sep 2024 20:05:11 +0200
Message-Id: <20240903180511.244041-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725386719; x=1756922719;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JNB7eVi/plSuaPSjON6V8FY+DiIBoUooLerZoJuOrMc=;
 b=fBJrJ7D1ZvVUZpOoVpOUqxFomLzpVlbriFHTlzYbsB9HInqDzm0UKHr5
 SxjyBLAlYoyg/pxzi/0C9GpTxjF2VdYk46O2tbcFZ3KeTXC40yKTlCmcb
 r7sxgNFEjPnJMd7ObKb58enHN4wJlL+8/fM2ehmwI7F7553Uc0cdVtbLe
 /ST2lqSNe3EsTCHZidcMJ7FaArEHG4g14E2LT9KV1wfrnrpf3XG15SuZL
 fFbL3UhITkJpekWDG3Abxfc70M1bRsjdz6yERDXqg4tRvvwHFJHSoBtOg
 9Su47uaod79MjRu+BdQOzrZmYk35DeIGYaAY11c/Yrn2ueouI7iPaTILJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fBJrJ7D1
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: xsk: fix Rx allocation on
 non-coherent systems
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
 bjorn@kernel.org, anthony.l.nguyen@intel.com,
 Dries De Winter <ddewinter@synamedia.com>, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In cases when synchronizing DMA operations is necessary,
xsk_buff_alloc_batch() returns a single buffer instead of the requested
count. Detect such situation when filling HW Rx ring in ZC driver and
use xsk_buff_alloc() in a loop manner so that ring gets the buffers to
be used.

Reported-and-tested-by: Dries De Winter <ddewinter@synamedia.com>
Fixes: db804cfc21e9 ("ice: Use the xsk batched rx allocation interface")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 240a7bec242b..889d0a5070d7 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -449,7 +449,24 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
 	u16 buffs;
 	int i;
 
+	if (unlikely(!xsk_buff_can_alloc(pool, count)))
+		return 0;
+
 	buffs = xsk_buff_alloc_batch(pool, xdp, count);
+	/* fill the remainder part that batch API did not provide for us,
+	 * this is usually the case for non-coherent systems that require DMA
+	 * syncs
+	 */
+	for (; buffs < count; buffs++) {
+		struct xdp_buff *tmp;
+
+		tmp = xsk_buff_alloc(pool);
+		if (unlikely(!tmp))
+			goto free;
+
+		xdp[buffs] = tmp;
+	}
+
 	for (i = 0; i < buffs; i++) {
 		dma = xsk_buff_xdp_get_dma(*xdp);
 		rx_desc->read.pkt_addr = cpu_to_le64(dma);
@@ -465,6 +482,13 @@ static u16 ice_fill_rx_descs(struct xsk_buff_pool *pool, struct xdp_buff **xdp,
 	}
 
 	return buffs;
+
+free:
+	for (i = 0; i < buffs; i++) {
+		xsk_buff_free(*xdp);
+		xdp++;
+	}
+	return 0;
 }
 
 /**
-- 
2.34.1

