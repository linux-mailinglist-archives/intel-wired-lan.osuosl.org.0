Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A3781D16C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 23 Dec 2023 03:59:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83B0842DB2;
	Sat, 23 Dec 2023 02:59:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83B0842DB2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703300366;
	bh=gkT9KQ0GuIuEy5qmnKreKqcbGqUgUpi64BlQBVzcWCQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G/qZ0NZLCqFYxJmBZKYuLHv8iIAMLyzq+dkrBoZI55ELGMz19eSMkpt41GqJ7BAe8
	 2FKYwbgvId+WmvpJOQceEeRczYjQN6vPTmxipQl7tg9pZ6WHXHZsGe49OOwBU/3CEy
	 5hnxuVTK8+Yob92wMyrFjZH9aedCkrEykMdoaN/stoMZhLRaJUp79PW36BPRl5If/S
	 Bgyj6HCl8HdE3DrDHguOqVgbpuQlBuTds1btR8U8M8WF3XU9GLqp7hwbYRV4tF7jC2
	 QrCBBhIhr5ojoa37OI8fSX4+y3K4tAIh7LbAs7Ddjrl9W/OE9pCzNyzo9wcSJLRvm+
	 HSOYNpJn+9XHQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OOHSkHc-2W9y; Sat, 23 Dec 2023 02:59:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 567EB40348;
	Sat, 23 Dec 2023 02:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 567EB40348
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E61C21BF255
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF60960A9B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF60960A9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EvSa4CIGd4-x for <intel-wired-lan@lists.osuosl.org>;
 Sat, 23 Dec 2023 02:59:02 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2396A60A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 23 Dec 2023 02:59:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2396A60A8A
X-IronPort-AV: E=McAfee;i="6600,9927,10932"; a="386610893"
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="386610893"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2023 18:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,298,1695711600"; d="scan'208";a="25537505"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by orviesa001.jf.intel.com with ESMTP; 22 Dec 2023 18:58:58 -0800
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sat, 23 Dec 2023 03:55:35 +0100
Message-ID: <20231223025554.2316836-16-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
References: <20231223025554.2316836-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703300342; x=1734836342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jcsuGPpFSGcZ4sgNc0Vw/DW519NNgEvMXndn/cJUseI=;
 b=l9Ycgs0dFb0PGHHQJXMR1NS5+blXTfGC0esupwQa5nDbovJ6mM8NxeUs
 4Wc9ZXTQpH3TeoUnFlsXRJnP1RCMsFkrgJhpyNZhZld6nJ82CJYEPlZwo
 k/MQmPZeuvX8HXOdbWCiDvH9kfKMLtdmlzj6/ZI+uCz3cgdWGIRXpH1Je
 BBw5NwbFp52YI0nHG9oCiS6ItuZi0TJfzLzz0Gs67XiB1RFAG6e3Yvtw2
 5wyIIUumQW8XCx/wAdLazdfHop+YVopUuYzLg7+IiBR6EGnnsMn/t85H3
 Ze8MTX2AorSP++zuc9ovymJNrQX+02dFU68mB0HKwXddnfYaxlsn0RW/z
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l9Ycgs0d
Subject: [Intel-wired-lan] [PATCH RFC net-next 15/34] page_pool: add inline
 helper to sync VA for device (for XDP_TX)
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Drivers using Page Pool for Rx buffers do the same pattern on XDP_TX:
syncing-DMA-for-device and obtaining DMA address for &xdp_buff they
are sending.
Add a helper for that to be able to do that in one call in the drivers.
I explicitly added `bool compound` argument and set it to false by
default: only a few drivers, if any, uses high-order pages with Page
Pool, so losing cycles on compound_head() looks suboptimal. Drivers
can always call the underscored version if needed (for example, pass
pool->p.order as the last argument -- will always work).

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/helpers.h | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/include/net/page_pool/helpers.h b/include/net/page_pool/helpers.h
index 873631c79ab1..99dc825b03a5 100644
--- a/include/net/page_pool/helpers.h
+++ b/include/net/page_pool/helpers.h
@@ -397,6 +397,38 @@ static inline bool page_pool_set_dma_addr(struct page *page, dma_addr_t addr)
 	return false;
 }
 
+static inline dma_addr_t __page_pool_dma_sync_va_for_device(const void *va,
+							    u32 dma_sync_size,
+							    bool compound)
+{
+	const struct page_pool *pool;
+	const struct page *page;
+	dma_addr_t addr;
+	u32 offset;
+
+	if (unlikely(compound)) {
+		page = virt_to_head_page(va);
+		offset = va - page_address(page);
+	} else {
+		page = virt_to_page(va);
+		offset = offset_in_page(va);
+	}
+
+	addr = page_pool_get_dma_addr(page) + offset;
+	pool = page->pp;
+
+	dma_sync_single_for_device(pool->p.dev, addr, dma_sync_size,
+				   page_pool_get_dma_dir(pool));
+
+	return addr;
+}
+
+static inline dma_addr_t page_pool_dma_sync_va_for_device(const void *va,
+							  u32 dma_sync_size)
+{
+	return __page_pool_dma_sync_va_for_device(va, dma_sync_size, false);
+}
+
 /**
  * page_pool_dma_sync_for_cpu - sync Rx page for CPU after it's written by HW
  * @pool: &page_pool the @page belongs to
-- 
2.43.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
