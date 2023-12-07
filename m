Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21069808E94
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 18:22:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9ACB283D5D;
	Thu,  7 Dec 2023 17:22:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9ACB283D5D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701969773;
	bh=KNBRZ22xyvYpRzt5mFxjJG7J7E+mUGT/Hv0JEZEQx5U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D+G5HeJ6b4B1mXLms1DdDMCRAx+BNDleeZxnMa15ofglcaEQcTUrZhtgM6FbDz/A/
	 CgpaOe1zMtCzPX6CWbUBaBQ615u7JeBn+eT6zSpFt3qy3fNy8YDTHEMxshVaqf4jgf
	 gIJC15EkBkGNBANFf02f1g4s30KfJD9jvNlgRyWE4XPiq9M3XEcVg7EZW9592wLtQO
	 ZTPF66ku5FogyuLUc3sBRgZDTcV61sfvYELdkP01Imrq9+FPMMxVt6aIAthQvWEP6u
	 fJTbS8cyYVxzrmfL2VqHZdXZbO19xBY2xOP0GBbYgdncfrBg3zaRf8EHLZuBcCYo6Q
	 48Qza639E+Lqg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTO0I7HZ5MUV; Thu,  7 Dec 2023 17:22:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B10983CAB;
	Thu,  7 Dec 2023 17:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B10983CAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD18E1BF380
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD7B360A5E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD7B360A5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NUnpbVkdSeBS for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 17:22:29 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2236E60A5A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 17:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2236E60A5A
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="374434926"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="374434926"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 09:22:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="721548593"
X-IronPort-AV: E=Sophos;i="6.04,258,1695711600"; d="scan'208";a="721548593"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orsmga003.jf.intel.com with ESMTP; 07 Dec 2023 09:22:24 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  7 Dec 2023 18:20:05 +0100
Message-ID: <20231207172010.1441468-8-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
References: <20231207172010.1441468-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701969749; x=1733505749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mm/jnD5a3nD/eU5fD39yjfwmZu/H3YrYKJa0Yek6DpA=;
 b=BQCTuJ8gDWRjyEcB8yXNrOidExWRuTTA8yHUswk3d+HWw/UurM8Xd/Yg
 a7iYviIMsp4755pzs/BsHXZ+g+NFYQwWbjCNQaqZGtBUWU3O6iSI5kv4U
 t2LxRSkkme6Jh2kIuUexWhYosclTyJyl5+t2cVexY5ZZOLAYKevLu12ln
 PwDoraWlL1akt6PZflsA9ScRTQd+RBiOsUScNoxNz107CDNY8u1B0T4Nj
 rldNE1KrVjbizHpwLuQH7pdUjfj4CXOWP+8xBR25nyPmz4OFLjvdd6OB6
 kwrKRPpvyVNJaigpYaa9vBwakL6U6QPbxJusNnfsvM4IzgCBiUDHJt8tA
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BQCTuJ8g
Subject: [Intel-wired-lan] [PATCH net-next v6 07/12] page_pool: add
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, Michal Kubiak <michal.kubiak@intel.com>,
 intel-wired-lan@lists.osuosl.org, David Christensen <drc@linux.vnet.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
index c860fad50d00..73ef4d1e12d4 100644
--- a/include/net/page_pool/helpers.h
+++ b/include/net/page_pool/helpers.h
@@ -52,6 +52,8 @@
 #ifndef _NET_PAGE_POOL_HELPERS_H
 #define _NET_PAGE_POOL_HELPERS_H
 
+#include <linux/dma-mapping.h>
+
 #include <net/page_pool/types.h>
 
 #ifdef CONFIG_PAGE_POOL_STATS
@@ -382,6 +384,28 @@ static inline bool page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
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
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
