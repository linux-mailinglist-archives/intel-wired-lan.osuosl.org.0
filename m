Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFA48A98AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 13:37:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81E5B415BD;
	Thu, 18 Apr 2024 11:36:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h9skpAvdXsha; Thu, 18 Apr 2024 11:36:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A6D834169A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713440216;
	bh=MlUAObFQ9/AbghI/E8vC1P8Sje6XVAtt7Ye+Zn5DJDw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9ifJXRVJznJatVAkpkPkSquVMZ5SzmpPdVUdsatJUwrO0jHAZl9NvF6mzc5YuIhMH
	 g0Yv0YDIgBg0SNhVqak5aTq5I9h3ynEbI+Ni0XPNAAjifcC8I+T5gorJKEToCqJxnP
	 BS8fePww6k4ES2wpX2f2D75OoHbrNFOoM/0D7Ckja7FOuFJ73uIGI6nq0YQx89Xkib
	 EFclP7cm5NyhJbwhKcuGRJUQCPXSvjqsvWX5j4gn46JPpbMfhpR2oVK0ZkyyadOCii
	 LQwROaFz7zvNsTibcED1YKECZ9lbt2A1qIFqmsdVVOlbWzYFBKiKgBg3LQSEN2FmE0
	 xRpim02/Mubwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6D834169A;
	Thu, 18 Apr 2024 11:36:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24B841BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1179D60BA7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V9vpb55XLYa0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 11:36:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7771F60BA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7771F60BA4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7771F60BA4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 11:36:53 +0000 (UTC)
X-CSE-ConnectionGUID: FWpVkcnWQg6EWPV4on793Q==
X-CSE-MsgGUID: 9lx+xsx9R4y5G89lCbiWow==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19587764"
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="19587764"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 04:36:53 -0700
X-CSE-ConnectionGUID: HXMUFYHRRgibQBfXelcTig==
X-CSE-MsgGUID: vt0ToixcSya53zqx9wF8uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,212,1708416000"; d="scan'208";a="27586111"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 18 Apr 2024 04:36:49 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 18 Apr 2024 13:36:10 +0200
Message-ID: <20240418113616.1108566-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
References: <20240418113616.1108566-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713440213; x=1744976213;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=syWx/uUcwsTOQI6+xcaFeTqHxPcGMGtyCLv4nt7fle0=;
 b=kyB+EtjK77c0Gp23c7M8QeZrvwxYimlTA4QWmd3CkkUaTDgTxv9Xp7rf
 kEFMWqX3jYrxmZkGl4g0XiwK4YuOHcAYfRMnz+CxTc+8TQAf7BDp1o7jf
 rHYHt32J6y8+mQPCVgfQgFlWckZKgbVtCDqhwwca/8PFkg8LPoTIlxTad
 v+7e692CNjIFzBJSOx0nRgaUjQagw4fnsUvEfHZaXWf1GupLWa3714xhZ
 cULbYNyXa30g+fSQFBIab9muZFkgq4uDY6EAZlz4GDkg/zsBH8q7NOcTk
 zQ0EMxwsn2gCVeejtorT8Sc2J0lTM5y7XIl+cBBwkE0JMEAG7gJ7glob8
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kyB+EtjK
Subject: [Intel-wired-lan] [PATCH net-next v10 04/10] slab: introduce
 kvmalloc_array_node() and kvcalloc_node()
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
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Christoph Lameter <cl@linux.com>, Andrew Morton <akpm@linux-foundation.org>,
 Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add NUMA-aware counterparts for kvmalloc_array() and kvcalloc() to be
able to flexibly allocate arrays for a particular node.
Rewrite kvmalloc_array() to kvmalloc_array_node(NUMA_NO_NODE) call.

Acked-by: Vlastimil Babka <vbabka@suse.cz>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/linux/slab.h | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index e53cbfa18325..d1d1fa5e7983 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -774,14 +774,27 @@ static inline __alloc_size(1) void *kvzalloc(size_t size, gfp_t flags)
 	return kvmalloc(size, flags | __GFP_ZERO);
 }
 
-static inline __alloc_size(1, 2) void *kvmalloc_array(size_t n, size_t size, gfp_t flags)
+static inline __alloc_size(1, 2) void *
+kvmalloc_array_node(size_t n, size_t size, gfp_t flags, int node)
 {
 	size_t bytes;
 
 	if (unlikely(check_mul_overflow(n, size, &bytes)))
 		return NULL;
 
-	return kvmalloc(bytes, flags);
+	return kvmalloc_node(bytes, flags, node);
+}
+
+static inline __alloc_size(1, 2) void *
+kvmalloc_array(size_t n, size_t size, gfp_t flags)
+{
+	return kvmalloc_array_node(n, size, flags, NUMA_NO_NODE);
+}
+
+static inline __alloc_size(1, 2) void *
+kvcalloc_node(size_t n, size_t size, gfp_t flags, int node)
+{
+	return kvmalloc_array_node(n, size, flags | __GFP_ZERO, node);
 }
 
 static inline __alloc_size(1, 2) void *kvcalloc(size_t n, size_t size, gfp_t flags)
-- 
2.44.0

