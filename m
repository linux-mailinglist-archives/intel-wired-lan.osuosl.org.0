Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1D9309BE0
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD31C8701B;
	Sun, 31 Jan 2021 12:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0LfELK07Q6i0; Sun, 31 Jan 2021 12:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBC1E8700C;
	Sun, 31 Jan 2021 12:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEC841BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:11:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C6A1E86891
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G-fIoroNJFLT for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail1.protonmail.ch (mail1.protonmail.ch [185.70.40.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBC37800BF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:11:41 +0000 (UTC)
Date: Sun, 31 Jan 2021 12:11:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612095099; bh=NakdAHBTDBfMpPGylkZuE67yNEL45d0nvbHsNhM+ASQ=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=EC3h/HnfRnJpL7UbKwpBKEQsyesSbfgBchPTeS1UKyDq1hfrbl1Z3b5UIYKpr0QqI
 noFjraCw7qbuRCiUjXyUboZ3u5V2zRYImLWAwwhhibCckgKnbjuS/9BR6k6bBaWGP7
 2GggaSxSwMER7W64BP+SdvK9/+unFUqffugu+twMuCQNx/MlOV5sz+cgWsgmJcP6Lt
 vhcd887UZDhuwRYJoGn+049jFLsD8WGAWhgfh4Ln3gLsaZj3c/zGmTkF70yMCRnycc
 LerZ7dOPIUUV6LjkPjI2Lea35hFzVtbqDcDgZrNuXlvimj05DgAkTyUSIXODzClNhN
 hERRDGEp9T71A==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131120844.7529-2-alobakin@pm.me>
In-Reply-To: <20210131120844.7529-1-alobakin@pm.me>
References: <20210131120844.7529-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v3 net-next 1/5] mm: constify
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

The function only tests for page->index, so its argument should be
const.

Signed-off-by: Alexander Lobakin <alobakin@pm.me>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Acked-by: David Rientjes <rientjes@google.com>
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
