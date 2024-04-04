Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D4A898B6E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 17:46:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 483DA41BF7;
	Thu,  4 Apr 2024 15:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pdmPnkBfQ4NK; Thu,  4 Apr 2024 15:46:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 75D9C41C2C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712245573;
	bh=cP32Q3dEgPXhmR3/rYVgH7UWTRGTR3MvWVNydA/XXaI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=owhUVVaZb7/wzDbnwFNMNrCxXg63otTu1iWRRAiR4WdoRinQRjNBSAFiKaNckVTlH
	 VHGgrwz6A2fCaScyBR9wM6zoXU5+dZLY7FAbo/OTBmugNkLlNRCknazKDt2g5QS0/a
	 Bh6C/a2+sslmDCUQ+ZQG03vbtjn5Sy4pfRthuGjzjZlg5+DH8BdB0dpQYUjh0pzY5C
	 qIYfwPdBf2KfTW93HmDbVf8CuaLJWVrevb0jb6ogT11G+9J8Df78+uC0T69lrLcXdh
	 c/xVCvx+Xo6S7ygUCiO9+DC0903+ofshSBssdfW7DU6IurIleyL/r3x6vedBNB4m0P
	 yzCCgLmMhhPaw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75D9C41C2C;
	Thu,  4 Apr 2024 15:46:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB4061BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A58F860FDA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aTXp9bQvqOja for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 15:46:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 09F2960F3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09F2960F3E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09F2960F3E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:11 +0000 (UTC)
X-CSE-ConnectionGUID: 1doQCdqFSs2jm/f6p4clXA==
X-CSE-MsgGUID: 5ubbcK16TqyCz0S2RrHa/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="11312233"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11312233"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 08:46:11 -0700
X-CSE-ConnectionGUID: gL68NynBRQKuBxaQ9iDDNQ==
X-CSE-MsgGUID: WllCqo++T3K8lvL91O/gXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23288103"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa005.fm.intel.com with ESMTP; 04 Apr 2024 08:46:07 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  4 Apr 2024 17:43:59 +0200
Message-ID: <20240404154402.3581254-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712245571; x=1743781571;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OhUqtf35fdgCEyiIWVQHl/adPq6y26tJ1DJr2rp+7fQ=;
 b=E+8LdYcPmg19eD/MkabWsuyv0ScEbxJi/1ifLJgD/AZWYw3f6GTOuwx3
 5CY3Bpe1Urg7PwWYTHhq+D77BmRIPBGAal79j/0s8RyWSwFokGhaMIc8Q
 iLSifU4L9kCtGxqVKSC0WfeZaa91osDefesFtkBnz6I6Uf34y7WLDSg+7
 ig533OD7EKqdx6TT6qQSUDy+FWlkmqHBdsqaa8T6V8Q7ZjcmO6qwQri7I
 C1lAUdKO1S72pnIhRtrXTXLYNLtF5bChANlveELx4PpaWpzU5G0q9u8ba
 Io/6OBm2SlM/nHIpEmV6hKvPXMH9AOQg9F5vnHEoQMuL+SP57XsqjshMG
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E+8LdYcP
Subject: [Intel-wired-lan] [PATCH net-next v9 6/9] page_pool: add
 DMA-sync-for-CPU inline helper
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, linux-mm@kvack.org,
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Christoph Lameter <cl@linux.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Each driver is responsible for syncing buffers written by HW for CPU
before accessing them. Almost each PP-enabled driver uses the same
pattern, which could be shorthanded into a static inline to make driver
code a little bit more compact.
Introduce a simple helper which performs DMA synchronization for the
size passed from the driver. It can be used even when the pool doesn't
manage DMA-syncs-for-device, just make sure the page has a correct DMA
address set via page_pool_set_dma_addr().

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/helpers.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
index c7bb06750e85..873631c79ab1 100644
--- a/include/net/page_pool/helpers.h
+++ b/include/net/page_pool/helpers.h
@@ -52,6 +52,8 @@
 #ifndef _NET_PAGE_POOL_HELPERS_H
 #define _NET_PAGE_POOL_HELPERS_H
 
+#include <linux/dma-mapping.h>
+
 #include <net/page_pool/types.h>
 
 #ifdef CONFIG_PAGE_POOL_STATS
@@ -395,6 +397,28 @@ static inline bool page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
 	return false;
 }
 
+/**
+ * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
+ * @pool: &page_pool the @page belongs to
+ * @page: page to sync
+ * @offset: offset from page start to "hard" start if using PP frags
+ * @dma_sync_size: size of the data written to the page
+ *
+ * Can be used as a shorthand to sync Rx pages before accessing them in the
+ * driver. Caller must ensure the pool was created with ``PP_FLAG_DMA_MAP``.
+ * Note that this version performs DMA sync unconditionally, even if the
+ * associated PP doesn't perform sync-for-device.
+ */
+static inline void page_pool_dma_sync_for_cpu(const struct page_pool *pool,
+					      const struct page *page,
+					      u32 offset, u32 dma_sync_size)
+{
+	dma_sync_single_range_for_cpu(pool->p.dev,
+				      page_pool_get_dma_addr(page),
+				      offset + pool->p.offset, dma_sync_size,
+				      page_pool_get_dma_dir(pool));
+}
+
 static inline bool page_pool_put(struct page_pool *pool)
 {
 	return refcount_dec_and_test(&pool->user_cnt);
-- 
2.44.0

