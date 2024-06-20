Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 616349106E7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 15:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14DD684768;
	Thu, 20 Jun 2024 13:56:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a-zfQ-js4Bpe; Thu, 20 Jun 2024 13:56:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 190A78476C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718891792;
	bh=CfNdeqhqOTFTzssDKJu+lry0HF4UIM5O02pWqh5Cx+w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=E5+Nlju56fgeiJlsRojZ6jrfFNdVn/v9jkBaB1fjT2VH4AZDfkhwMdt6heSh1cBwI
	 E7j96r7igw41quuC8mABc9OydGtPQP9RHrHeFbXXAXIjmXVQrSz911x6/q+PuAgrR2
	 vlXdYpFQkCP65S+5moPC9xmDPXUgWJxDBGq9ARx9aPnf8+NJa/MrF+9sGLApqEn1C+
	 kjllWFazD79KQBeOnbnZ/5A8mItO5IFk9Vp1uWDjJhT41yTv3vu0ukWGMdrTM6EqO6
	 Gj+SjlY7fLG+PiHR5pLbZaCADf7mkyEkB13SN8eoe4nSVxFEzd8ELp6mkRkYl2NbBI
	 aRcp6lXg9Am1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 190A78476C;
	Thu, 20 Jun 2024 13:56:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 571961BF315
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4331E42EE5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZnY6ymgtRGtn for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 13:56:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3E09442E6A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E09442E6A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E09442E6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 13:56:29 +0000 (UTC)
X-CSE-ConnectionGUID: v31GPI/+SJCtpFh6b6cU5g==
X-CSE-MsgGUID: 6rdA3jSdTl2NC1pyQ/zBoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="15987805"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="15987805"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 06:56:29 -0700
X-CSE-ConnectionGUID: cEGE8mnfS1WFhqcE0kDdow==
X-CSE-MsgGUID: 3AFJMse/Qsy9fIofQ+VGpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="46772042"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jun 2024 06:56:24 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 Jun 2024 15:53:35 +0200
Message-ID: <20240620135347.3006818-3-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
References: <20240620135347.3006818-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718891789; x=1750427789;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cHwF/P7XUZiFJ49XfuTkhTme0SbTcgI0ml3mi4yZUIM=;
 b=AGwV6ACsGctp74WqZQ6mP5TLQx1ad9kJG1fOq4vJV1cAE2ScEkLQLa5q
 5r8XyNqQJLLljZjbz7p+veceF17oEYVjw+uSRFybtw0wLOja7qOHch/oo
 bx1TnJS+1GOMbTCz5Mvhjr4987KlHT8WnDgm9FSH9R3/1IZv109EKrfB8
 AL8sNiP1gXZtpQXt3gt/uq8Fw04KpTZ2AaB1CYkiVDNqA5aZ2j2bCrW7p
 cgspcWvWADEpn6qzz703ePV93uerRCETibkx2wtf8TTpQY0xres03r2vU
 5kOziTxuqjf4oCDC0GG5LFBub3gryZb3HNtx5Yfqtm+xu9NFABSusk8ix
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AGwV6ACs
Subject: [Intel-wired-lan] [PATCH iwl-next v2 02/14] page_pool: use
 __cacheline_group_{begin, end}_aligned()
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
Cc: Mina Almasry <almasrymina@google.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Instead of doing __cacheline_group_begin() __aligned(), use the new
__cacheline_group_{begin,end}_aligned(), so that it will take care
of the group alignment itself.
Also replace open-coded `4 * sizeof(long)` in two places with
a definition.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 include/net/page_pool/types.h | 22 ++++++++++++----------
 net/core/page_pool.c          |  3 ++-
 2 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/include/net/page_pool/types.h b/include/net/page_pool/types.h
index 7e8477057f3d..29420f3fee8f 100644
--- a/include/net/page_pool/types.h
+++ b/include/net/page_pool/types.h
@@ -128,6 +128,16 @@ struct page_pool_stats {
 };
 #endif
 
+/* The whole frag API block must stay within one cacheline. On 32-bit systems,
+ * sizeof(long) == sizeof(int), so that the block size is ``3 * sizeof(long)``.
+ * On 64-bit systems, the actual size is ``2 * sizeof(long) + sizeof(int)``.
+ * The closest pow-2 to both of them is ``4 * sizeof(long)``, so just use that
+ * one for simplicity.
+ * Having it aligned to a cacheline boundary may be excessive and doesn't bring
+ * any good.
+ */
+#define PAGE_POOL_FRAG_GROUP_ALIGN	(4 * sizeof(long))
+
 struct page_pool {
 	struct page_pool_params_fast p;
 
@@ -141,19 +151,11 @@ struct page_pool {
 	bool system:1;			/* This is a global percpu pool */
 #endif
 
-	/* The following block must stay within one cacheline. On 32-bit
-	 * systems, sizeof(long) == sizeof(int), so that the block size is
-	 * ``3 * sizeof(long)``. On 64-bit systems, the actual size is
-	 * ``2 * sizeof(long) + sizeof(int)``. The closest pow-2 to both of
-	 * them is ``4 * sizeof(long)``, so just use that one for simplicity.
-	 * Having it aligned to a cacheline boundary may be excessive and
-	 * doesn't bring any good.
-	 */
-	__cacheline_group_begin(frag) __aligned(4 * sizeof(long));
+	__cacheline_group_begin_aligned(frag, PAGE_POOL_FRAG_GROUP_ALIGN);
 	long frag_users;
 	struct page *frag_page;
 	unsigned int frag_offset;
-	__cacheline_group_end(frag);
+	__cacheline_group_end_aligned(frag, PAGE_POOL_FRAG_GROUP_ALIGN);
 
 	struct delayed_work release_dw;
 	void (*disconnect)(void *pool);
diff --git a/net/core/page_pool.c b/net/core/page_pool.c
index 3927a0a7fa9a..93d92efa7777 100644
--- a/net/core/page_pool.c
+++ b/net/core/page_pool.c
@@ -178,7 +178,8 @@ static void page_pool_struct_check(void)
 	CACHELINE_ASSERT_GROUP_MEMBER(struct page_pool, frag, frag_users);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct page_pool, frag, frag_page);
 	CACHELINE_ASSERT_GROUP_MEMBER(struct page_pool, frag, frag_offset);
-	CACHELINE_ASSERT_GROUP_SIZE(struct page_pool, frag, 4 * sizeof(long));
+	CACHELINE_ASSERT_GROUP_SIZE(struct page_pool, frag,
+				    PAGE_POOL_FRAG_GROUP_ALIGN);
 }
 
 static int page_pool_init(struct page_pool *pool,
-- 
2.45.2

