Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2252E302829
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 17:48:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 22EFE21511;
	Mon, 25 Jan 2021 16:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tgOZECMEc0H9; Mon, 25 Jan 2021 16:47:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F6F8203BB;
	Mon, 25 Jan 2021 16:47:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C60B01BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:47:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C10AF870B5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:47:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CSYtuNgEgZKf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 16:47:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EBA818709A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:47:09 +0000 (UTC)
Date: Mon, 25 Jan 2021 16:46:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611593227; bh=VZmsQgsGD/2KxVsDk2CgN0UPiozU/OwIb092ldM9UwI=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=QDBwMIqEu/ITPMltyup2y+v8iLaO4QNWPB6K9HIAhdhe39c9a/Wn0TTBHho5ovptq
 RWf8zFxHjJHha5tTlwwn4J9qpQS3tZwfqjq/D1TTwvWZMQR8/8mCGuOGwIuRHtZbGH
 BmrcrWS03XzTmRVRlJki1jbhWYyV6im+kKGM4T8V32on+fRG9oZElnS8JclK6UvQzR
 03gspPI1DhAzE3n/nus/4HktPXehSZ7wsM1ALoyvn7/OvxYNdCVwG3NP01er+dJDcl
 qdzAIojEWdnwIi/WNFK/hGJBZrWJQVC0Zm8DbWpmOIhPC2yIUQUIi4LIzjiH8rWjqU
 6QwaXqYlzAQ/g==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210125164612.243838-2-alobakin@pm.me>
In-Reply-To: <20210125164612.243838-1-alobakin@pm.me>
References: <20210125164612.243838-1-alobakin@pm.me>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Jan 2021 16:47:55 +0000
Subject: [Intel-wired-lan] [PATCH net-next 1/3] mm: constify
 page_is_pfmemalloc() argument
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
Cc: Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexander Lobakin <alobakin@pm.me>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Aleksandr Nogikh <nogikh@google.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The function only tests for page->index, so its argument should be
const.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 include/linux/mm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index ecdf8a8cd6ae..078633d43af9 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -1584,7 +1584,7 @@ struct address_space *page_mapping_file(struct page *page);
  * ALLOC_NO_WATERMARKS and the low watermark was not
  * met implying that the system is under some pressure.
  */
-static inline bool page_is_pfmemalloc(struct page *page)
+static inline bool page_is_pfmemalloc(const struct page *page)
 {
 	/*
 	 * Page index cannot be this large so this must be
-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
