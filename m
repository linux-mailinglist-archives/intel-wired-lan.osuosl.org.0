Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E025A309BEE
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 13:18:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D27A1203BD;
	Sun, 31 Jan 2021 12:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DSau9v1-AiYN; Sun, 31 Jan 2021 12:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3C853203B4;
	Sun, 31 Jan 2021 12:18:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EB2401BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:18:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E681085A73
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:18:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8BIPnbDFJZ9T for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Jan 2021 12:18:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0FFD85A60
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Jan 2021 12:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=waTZux8Cwve+CiQIqqN/EJ/wAxhO0fG6uw7wz8ZwZuI=; b=sQvJvvONMP4EtOYNfqop7Sr9Gz
 Ytmvzvl6YVL/4NTxtPPR2oqvqEX4heJrgDVSINS8Vh5cxSFkEV+ETmufdMLP/tp/F/FbLvUbuo9XY
 O5m9tTdkQZd95bRwrW0t4gxSgJhGoIInJx8cO8qc4FyN5gifdfvAwHKIAJ4Ptinlic5SoHcpCyyNX
 RSt6lRYS0GKR4KMTxSC4ZSXSPLfStJc2k9LTeiREU8VeAH+/P8Z3sYJOXSm6hbtcZlBxAnr5xUEFU
 tnLMwBIUvwX0PZNeQM1K846oPyMAg2A0AIg3BiUB6qtZLHx5t2idzfHtxk5qsavBYyFo6b/JnkFTE
 OnyV6hRg==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1l6BfW-00CQMl-AF; Sun, 31 Jan 2021 12:17:30 +0000
Date: Sun, 31 Jan 2021 12:17:30 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210131121730.GK308988@casper.infradead.org>
References: <20210131120844.7529-1-alobakin@pm.me>
 <20210131120844.7529-2-alobakin@pm.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210131120844.7529-2-alobakin@pm.me>
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 1/5] mm: constify
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
Cc: Randy Dunlap <rdunlap@infradead.org>, linux-mm@kvack.org,
 Jakub Sitnicki <jakub@cloudflare.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Dexuan Cui <decui@microsoft.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 John Hubbard <jhubbard@nvidia.com>, David Rientjes <rientjes@google.com>,
 Willem de Bruijn <willemb@google.com>, Salil Mehta <salil.mehta@huawei.com>,
 netdev@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 linux-kernel@vger.kernel.org, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Jan 31, 2021 at 12:11:30PM +0000, Alexander Lobakin wrote:
> The function only tests for page->index, so its argument should be
> const.
> 
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Acked-by: David Rientjes <rientjes@google.com>

Reviewed-by: Matthew Wilcox (Oracle) <willy@infradead.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
