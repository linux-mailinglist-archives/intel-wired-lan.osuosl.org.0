Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5B230BF68
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 14:31:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29FC28678E;
	Tue,  2 Feb 2021 13:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zK0psGllqey7; Tue,  2 Feb 2021 13:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C40E864A4;
	Tue,  2 Feb 2021 13:31:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B32C01BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AE3B88677C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pgpUVe-YCOON for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 13:31:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E926864A4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:31:29 +0000 (UTC)
Date: Tue, 02 Feb 2021 13:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612272687; bh=k4GmHXZWhLsxhmf6TA7kT97uyu8L/XM/o770SPV6Jso=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=Q1dpUXr9oBypKbuAjeH7WV3Gae5fmMAmUR7KAban/Vqhjxcn+5cyBNUn5HdwYZAlT
 6xTrUz972h23w7+1pwYxCanhFCiNiCgcbjY+olsESYbqVTPRclm0E2iwZ7hfQhd11k
 5kRbSrx8BEr/lf7ftBdRPmv8QHCFM/Luv8l8ND/MNQoDiKD71gyDiuZGvxdfZqsD/9
 3o/TXmsbnepA7Y1Yp1PBLWqGoIYCAYyoXZ0cCnZi2o+RCU54apDplLl0nKT4fXv658
 icxCgo90aUJ0s/MLjZi7eRbLlJ0QA+xecdx9saAOXSL1lv//lk8tUoyAWdthDbfCax
 wW13ECXVgRZyA==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210202133030.5760-4-alobakin@pm.me>
In-Reply-To: <20210202133030.5760-1-alobakin@pm.me>
References: <20210202133030.5760-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RESEND v3 net-next 3/5] net: introduce
 common dev_page_is_reusable()
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
Reply-To: Alexander Lobakin <alobakin@pm.me>
Cc: Randy Dunlap <rdunlap@infradead.org>, Alexander Lobakin <alobakin@pm.me>,
 linux-mm@kvack.org, Jakub Sitnicki <jakub@cloudflare.com>,
 Leon Romanovsky <leon@kernel.org>, linux-rdma@vger.kernel.org,
 Dexuan Cui <decui@microsoft.com>, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 John Hubbard <jhubbard@nvidia.com>, David Rientjes <rientjes@google.com>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A bunch of drivers test the page before reusing/recycling for two
common conditions:
 - if a page was allocated under memory pressure (pfmemalloc page);
 - if a page was allocated at a distant memory node (to exclude
   slowdowns).

Introduce a new common inline for doing this, with likely() already
folded inside to make driver code a bit simpler.

Suggested-by: David Rientjes <rientjes@google.com>
Suggested-by: Jakub Kicinski <kuba@kernel.org>
Cc: John Hubbard <jhubbard@nvidia.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: David Rientjes <rientjes@google.com>
---
 include/linux/skbuff.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index b027526da4f9..0e42c53b8ca9 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -2938,6 +2938,22 @@ static inline struct page *dev_alloc_page(void)
 	return dev_alloc_pages(0);
 }
 
+/**
+ * dev_page_is_reusable - check whether a page can be reused for network Rx
+ * @page: the page to test
+ *
+ * A page shouldn't be considered for reusing/recycling if it was allocated
+ * under memory pressure or at a distant memory node.
+ *
+ * Returns false if this page should be returned to page allocator, true
+ * otherwise.
+ */
+static inline bool dev_page_is_reusable(const struct page *page)
+{
+	return likely(page_to_nid(page) == numa_mem_id() &&
+		      !page_is_pfmemalloc(page));
+}
+
 /**
  *	skb_propagate_pfmemalloc - Propagate pfmemalloc if skb is allocated after RX page
  *	@page: The page that was allocated from skb_alloc_page
-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
