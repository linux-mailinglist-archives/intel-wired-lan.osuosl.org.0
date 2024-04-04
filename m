Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EFF0898B6C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 17:46:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 98A2041C26;
	Thu,  4 Apr 2024 15:46:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uzr1fknGPq3z; Thu,  4 Apr 2024 15:46:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4574441BE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712245567;
	bh=Jy1d0Xv2XVaArfdhoR+MsiwJ8k5Lq9Q2bv5xCRNmIAQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Y8IEKpxI6WnaQ53uW8Fp+Fi4CxHYjPnq4ZuTISPk4YCzzEnJf2xm3ame980UJM7b9
	 3fP0DzYnIjJssSGttQXMGdSmaaj6tQJUuHIpsdtI5GnzFeFHyyzUKwDK3B3YGDs2/T
	 5xp9avIFHzpxHTBpMCbO0VjmlqyJHojQzRbtk7mtxt40r/tkRomxcCcLIv5aXdt1wc
	 GYzUZVp1zu1KPFLta48k1xQiEsIAZChkF030nHcvaZQGX5HLsC5Tc2+AfrHI9RX036
	 3BLAanW3gALzfTVYOPySXNyDokIPOIT6t9oSgWZTbSVM00K9axibJMbYzNlX9KCNzp
	 +Flqd8X3j+Qdg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4574441BE3;
	Thu,  4 Apr 2024 15:46:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A33641BF232
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 911FC6076D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v5fOvE5rnajK for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 15:46:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D163B60761
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D163B60761
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D163B60761
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 15:46:03 +0000 (UTC)
X-CSE-ConnectionGUID: 3L1wNy4tSUGE9h5W/uZChg==
X-CSE-MsgGUID: 3o6mngw6TT+hcSqBl+7e0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11034"; a="11312192"
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="11312192"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 08:46:04 -0700
X-CSE-ConnectionGUID: FHLVSIiOR0mFs333aBuJww==
X-CSE-MsgGUID: 3qwMB2+XR9Kfr0a3faOH4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23288071"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa005.fm.intel.com with ESMTP; 04 Apr 2024 08:46:00 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu,  4 Apr 2024 17:43:57 +0200
Message-ID: <20240404154402.3581254-5-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
References: <20240404154402.3581254-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712245564; x=1743781564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0zdNtgo/Mi03+32brAD9ZsQQUigrMfXyFWjV5uvo34w=;
 b=HyZNI5d069LO6orr0Ksgq0Gnk3qwF2vGqbFbprMUWVYfuIlSBQsYFxfE
 xjaxmYIgBGshNl4odULEdBJrKq1GjhNKUNC/NrN7lVCGsumOdogry3oUB
 NPjuQfF3wBSq5VOtumOybsptI8gp8lTBraj4jIlUMy/xAbjk1VxUrYdRj
 EnyyOQ/Fq9s8xh+eSluVX6EU1QgfvyW5mXlwx89ltGeH10wBgwjtY0Ubn
 OFuT7RJcOQDNRlNSOoqb9CokPrzSTVNYdqmgKFLUaQMSNPpO8Cs42Sqqo
 EvlYtVSyYyY7X9XHaonFXJK+VrusmTuANhf20r5Al6Q09H5oR/ebJDtqW
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HyZNI5d0
Subject: [Intel-wired-lan] [PATCH net-next v9 4/9] slab: introduce
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
 netdev@vger.kernel.org, Alexander Duyck <alexanderduyck@fb.com>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Yunsheng Lin <linyunsheng@huawei.com>, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Christoph Lameter <cl@linux.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka <vbabka@suse.cz>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add NUMA-aware counterparts for kvmalloc_array() and kvcalloc() to be
able to flexibly allocate arrays for a particular node.
Rewrite kvmalloc_array() to kvmalloc_array_node(NUMA_NO_NODE) call.

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

