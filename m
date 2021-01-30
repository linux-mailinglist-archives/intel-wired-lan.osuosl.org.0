Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACE33097CD
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Jan 2021 20:07:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65D1E85DC4;
	Sat, 30 Jan 2021 19:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pwLqnrHGt_RT; Sat, 30 Jan 2021 19:07:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE8AB85DCA;
	Sat, 30 Jan 2021 19:07:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A9E211BF46D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 19:07:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A4F4687232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 19:07:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUUg4bsOz0b8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 19:07:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2997887230
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 19:07:10 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9DB3064E11;
 Sat, 30 Jan 2021 19:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612033629;
 bh=Fzdh9rDGCBTjOe6wgkL8Ejbzqqmt3AuErhjUnt6GaB4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FXcv7/nFC2W4/QcK5la7BT3W/pfJcY5sCGsMxVhMJ5ofFjavYdoxnkh7WgdYLMg/P
 Bw+3YQis90jZ8Gr1RfBojb2mY8Ba/yuDF/oJklJcFuD2UCFB9pWc0KyyLWeG5HEB3D
 gftGmLwwhh4oqoQm0zQxYg7pzL0lb2Os0VNZrgDWpb+5ekH1lTfvAvtkBtnZrO+g91
 VMjzUCX5XsH1pAvau9oVXTt9C1UZuHW4cjHP53tcNK/FpouEYPYm04CmGMaV+ryo4A
 21gNW6N50sxVx68cJmnY7Klqw2Rq4XcrJOS7R7LlqtunuAI3ffT/n0d0Rh5C9LBJW/
 TLJlgdBjQUqfw==
Date: Sat, 30 Jan 2021 11:07:07 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210130110707.3122a360@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210130154149.8107-1-alobakin@pm.me>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-4-alobakin@pm.me>
 <20210129183907.2ae5ca3d@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20210130154149.8107-1-alobakin@pm.me>
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

On Sat, 30 Jan 2021 15:42:29 +0000 Alexander Lobakin wrote:
> > On Wed, 27 Jan 2021 20:11:23 +0000 Alexander Lobakin wrote:  
> > > + * dev_page_is_reserved - check whether a page can be reused for network Rx
> > > + * @page: the page to test
> > > + *
> > > + * A page shouldn't be considered for reusing/recycling if it was allocated
> > > + * under memory pressure or at a distant memory node.
> > > + *
> > > + * Returns true if this page should be returned to page allocator, false
> > > + * otherwise.
> > > + */
> > > +static inline bool dev_page_is_reserved(const struct page *page)  
> > 
> > Am I the only one who feels like "reusable" is a better term than
> > "reserved".  
> 
> I thought about it, but this will need to inverse the conditions in
> most of the drivers. I decided to keep it as it is.
> I can redo if "reusable" is preferred.

Naming is hard. As long as the condition is not a double negative it
reads fine to me, but that's probably personal preference.
The thing that doesn't sit well is the fact that there is nothing
"reserved" about a page from another NUMA node.. But again, if nobody
+1s this it's whatever...

That said can we move the likely()/unlikely() into the helper itself?
People on the internet may say otherwise but according to my tests 
using __builtin_expect() on a return value of a static inline helper
works just fine.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
