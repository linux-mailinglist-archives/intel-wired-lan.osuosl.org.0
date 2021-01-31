Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE85309BE2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:12:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D35B8704F;
	Sun, 31 Jan 2021 12:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lbBYq6iSeNTz; Sun, 31 Jan 2021 12:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9C088701B;
	Sun, 31 Jan 2021 12:12:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2F211BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9280220131
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zKwIGFLLHHvp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:11:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 28E4120344
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:11:57 +0000 (UTC)
Date: Sun, 31 Jan 2021 12:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612095114; bh=k4GmHXZWhLsxhmf6TA7kT97uyu8L/XM/o770SPV6Jso=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=S3+SybR6yJJC/jYt2WFCuYCGx0BAiH67Qf9QkW448q1RFTW8j81mTYOxr6H+eqX3I
 7YclmedVVG6x+FabYgajZO55X7DXkUO1O5NJtYRr0cs/W6PvORnV0LlsFmlw+T05Co
 +RQsgjmPA/R39zKqeVxQZPLHCEHfFvy/xb8Seg62cM7wRIlC4EDhtbKB6lsqandzw3
 Yp15pWB3pg8d8+QKtK/OG8HpUJpSWwT0As6jgaglJiVU1Q/D03IW4scyF9UVtEzldJ
 +wo0vNGG42zUMbbcIs2KQn9YD+sBg5nM9bXTeCBhNoK/LSahXX3QVEfW9buQ+Sm0AL
 EJoeoXC9oc4aQ==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131120844.7529-4-alobakin@pm.me>
In-Reply-To: <20210131120844.7529-1-alobakin@pm.me>
References: <20210131120844.7529-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 3/5] net: introduce common
 dev_page_is_reusable()
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
