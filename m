Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BACAD7949
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 19:49:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2062960DF8;
	Thu, 12 Jun 2025 17:49:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D4r5yJuvOIgW; Thu, 12 Jun 2025 17:49:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74968610A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749750540;
	bh=bAgQfiDH9uu6fNo91h1BekwHp8HyMxiilFKv7GxstS4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JhOjKRPvtaeFHuKoffm5ogrhK2t2bBh6xgnocJb40GoEVKM/doy9nezfwrywBbkWh
	 6tUD+HV0i4rSSbPUpX+wkfIPq8HI7coi7a67bthbDWeq8bCyBenRg+gGx4QTfciPgX
	 1IJJsuBBE3GBD7OqDAGlUZFo169A8TqoT2FUgrDBiY21POHKJLnK1zIMG1mTSgWRbe
	 eWbMtg+606ayi9LxBIZECIMxRNDMC2YW0r8KBz7HNgIQiqXrqPwCc4Q97oZIGOGm0/
	 ypq3/20+Tz9euoPCKGjcsENUHRHaR72MaGBRSSjoqJJYQ2VkSG5DYFpw1AD79rsU8Q
	 BhJbE2+ATbhhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74968610A6;
	Thu, 12 Jun 2025 17:49:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 839F41E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69DF8821A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ySKe8VK9LjAo for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 16:09:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CB3D481EE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB3D481EE7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB3D481EE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 16:09:29 +0000 (UTC)
X-CSE-ConnectionGUID: lzINzYmRQn2PscxTaAGagA==
X-CSE-MsgGUID: mnx9KMuKRQuDRUjOqQwF9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="55738814"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="55738814"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 09:09:30 -0700
X-CSE-ConnectionGUID: sBIjIyUVSP6ukykuQKyzvA==
X-CSE-MsgGUID: Wm9LG2pkTCKUC4aduY/z4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="148468548"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa008.jf.intel.com with ESMTP; 12 Jun 2025 09:09:25 -0700
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
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Simon Horman <horms@kernel.org>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, bpf@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 12 Jun 2025 18:02:18 +0200
Message-ID: <20250612160234.68682-2-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250612160234.68682-1-aleksander.lobakin@intel.com>
References: <20250612160234.68682-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 12 Jun 2025 17:48:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749744570; x=1781280570;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sMeZ2NdQYW3BtiKLWGQG4wGWHkBRcGPXDhnN6q0ykCM=;
 b=A7i/DMy4H7ffkBzdld68aXWjWzpJuHTT7g8fuzMqCxKkj7oyNKJsm3v8
 saZ2E6ySRVGhBDzcvvN9xFTSnz8Mthju3il2d/Mq1aXMZaMgHucb90d6o
 RXUJsnFDLWZBArZKcJICOYMYy/f/bgfywOD42YOqfzGsCftQJJGy2f/mO
 xP5AV7x/jfKmmO9v3N4OLMD2Cs2uXaX3sT1QD9vPCl+CgZ7gP5LFLTvzK
 3O4MPv+cYOiEBbgKrJl4T1U212Y2ZPXEEyUTXFoGwtxC263iuW7BdrsXS
 ha9+S8BI569E9CMXQOedhn0S7lNd/C2d1XqCp/9eSfNzHX0gPLVn1LWMf
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=A7i/DMy4
Subject: [Intel-wired-lan] [PATCH iwl-next v2 01/17] libeth,
 libie: clean symbol exports up a little
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

Change EXPORT_SYMBOL_NS_GPL(x, "LIBETH") to EXPORT_SYMBOL_GPL(x) +
DEFAULT_SYMBOL_NAMESPACE "LIBETH" to make the code more compact.
Also, explicitly include <linux/export.h> to satisfy new
requirements from scripts/misc-check.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/intel/libeth/rx.c | 14 +++++++++-----
 drivers/net/ethernet/intel/libie/rx.c  |  7 +++++--
 2 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
index 66d1d23b8ad2..c2c53552c440 100644
--- a/drivers/net/ethernet/intel/libeth/rx.c
+++ b/drivers/net/ethernet/intel/libeth/rx.c
@@ -1,5 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (C) 2024 Intel Corporation */
+/* Copyright (C) 2024-2025 Intel Corporation */
+
+#define DEFAULT_SYMBOL_NAMESPACE	"LIBETH"
+
+#include <linux/export.h>
 
 #include <net/libeth/rx.h>
 
@@ -186,7 +190,7 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
 
 	return -ENOMEM;
 }
-EXPORT_SYMBOL_NS_GPL(libeth_rx_fq_create, "LIBETH");
+EXPORT_SYMBOL_GPL(libeth_rx_fq_create);
 
 /**
  * libeth_rx_fq_destroy - destroy a &page_pool created by libeth
@@ -197,7 +201,7 @@ void libeth_rx_fq_destroy(struct libeth_fq *fq)
 	kvfree(fq->fqes);
 	page_pool_destroy(fq->pp);
 }
-EXPORT_SYMBOL_NS_GPL(libeth_rx_fq_destroy, "LIBETH");
+EXPORT_SYMBOL_GPL(libeth_rx_fq_destroy);
 
 /**
  * libeth_rx_recycle_slow - recycle a libeth page from the NAPI context
@@ -209,7 +213,7 @@ void libeth_rx_recycle_slow(struct page *page)
 {
 	page_pool_recycle_direct(page->pp, page);
 }
-EXPORT_SYMBOL_NS_GPL(libeth_rx_recycle_slow, "LIBETH");
+EXPORT_SYMBOL_GPL(libeth_rx_recycle_slow);
 
 /* Converting abstract packet type numbers into a software structure with
  * the packet parameters to do O(1) lookup on Rx.
@@ -251,7 +255,7 @@ void libeth_rx_pt_gen_hash_type(struct libeth_rx_pt *pt)
 	pt->hash_type |= libeth_rx_pt_xdp_iprot[pt->inner_prot];
 	pt->hash_type |= libeth_rx_pt_xdp_pl[pt->payload_layer];
 }
-EXPORT_SYMBOL_NS_GPL(libeth_rx_pt_gen_hash_type, "LIBETH");
+EXPORT_SYMBOL_GPL(libeth_rx_pt_gen_hash_type);
 
 /* Module */
 
diff --git a/drivers/net/ethernet/intel/libie/rx.c b/drivers/net/ethernet/intel/libie/rx.c
index 66a9825fe11f..6fda656afa9c 100644
--- a/drivers/net/ethernet/intel/libie/rx.c
+++ b/drivers/net/ethernet/intel/libie/rx.c
@@ -1,6 +1,9 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/* Copyright (C) 2024 Intel Corporation */
+/* Copyright (C) 2024-2025 Intel Corporation */
 
+#define DEFAULT_SYMBOL_NAMESPACE	"LIBIE"
+
+#include <linux/export.h>
 #include <linux/net/intel/libie/rx.h>
 
 /* O(1) converting i40e/ice/iavf's 8/10-bit hardware packet type to a parsed
@@ -116,7 +119,7 @@ const struct libeth_rx_pt libie_rx_pt_lut[LIBIE_RX_PT_NUM] = {
 	LIBIE_RX_PT_IP(4),
 	LIBIE_RX_PT_IP(6),
 };
-EXPORT_SYMBOL_NS_GPL(libie_rx_pt_lut, "LIBIE");
+EXPORT_SYMBOL_GPL(libie_rx_pt_lut);
 
 MODULE_DESCRIPTION("Intel(R) Ethernet common library");
 MODULE_IMPORT_NS("LIBETH");
-- 
2.49.0

