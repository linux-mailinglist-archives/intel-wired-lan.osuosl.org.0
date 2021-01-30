Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB8A309189
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 03:39:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 824898508E;
	Sat, 30 Jan 2021 02:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vg6nHG7wMmYu; Sat, 30 Jan 2021 02:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E561E85D8F;
	Sat, 30 Jan 2021 02:39:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1111BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 02:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 512F784CF4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 02:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4HI5_gL_i566 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 02:39:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 52634844AA
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 02:39:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id E6A9464E0E;
 Sat, 30 Jan 2021 02:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611974348;
 bh=Xa3aXdkH6VcjkQv2mRzeHTVU3FePrWxYumhPtvDn8zo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=CuA7saw/NDT+jltBVLbBOTtilmjJ0UnnOPSNhIp0vShR5tTLtelQ/Ci1Y9jrcJzjk
 3FDxe+ykvXfRDbwSZtUYnXtiMKt7H4HVivJJqrTYJLfVxJhJmmk9QLMSNTtOVqUTDb
 dZyybRVqcd4QDuNd46UIFCQs37Gnk5Wg+w4OCZp/BECSGKKr2Rsk1VOvwYaiqlQywb
 VzKklQrRbxLRmDiDCPqKf/0JADwvBNgIVZ5Q1Jh2qc26DZyViIudB0FLkI9srNwS0N
 JVXIyfhG944QWXOaymGasP3yjFfN1BYSqkbDq7WrhqUa8KGo01/23gOQAkgrkSry62
 RWTV4TxpCVpcg==
Date: Fri, 29 Jan 2021 18:39:07 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210129183907.2ae5ca3d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210127201031.98544-4-alobakin@pm.me>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-4-alobakin@pm.me>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 3/4] net: introduce common
 dev_page_is_reserved()
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
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Pablo Neira Ayuso <pablo@netfilter.org>, Marco Elver <elver@google.com>,
 David Rientjes <rientjes@google.com>, Willem de Bruijn <willemb@google.com>,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 27 Jan 2021 20:11:23 +0000 Alexander Lobakin wrote:
> + * dev_page_is_reserved - check whether a page can be reused for network Rx
> + * @page: the page to test
> + *
> + * A page shouldn't be considered for reusing/recycling if it was allocated
> + * under memory pressure or at a distant memory node.
> + *
> + * Returns true if this page should be returned to page allocator, false
> + * otherwise.
> + */
> +static inline bool dev_page_is_reserved(const struct page *page)

Am I the only one who feels like "reusable" is a better term than
"reserved".
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
