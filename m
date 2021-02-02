Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5400E30BF60
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Feb 2021 14:31:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE7E98678E;
	Tue,  2 Feb 2021 13:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPzmtqyT3oWy; Tue,  2 Feb 2021 13:30:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9D13864A4;
	Tue,  2 Feb 2021 13:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D0F31BF311
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E247020015
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:30:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maEiTo23HN2Q for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Feb 2021 13:30:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail2.protonmail.ch (mail2.protonmail.ch [185.70.40.22])
 by silver.osuosl.org (Postfix) with ESMTPS id 3271B20009
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Feb 2021 13:30:52 +0000 (UTC)
Date: Tue, 02 Feb 2021 13:30:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1612272649; bh=ZfF+yk2N+NpRKErjKX/1hJfnJ9+R0QZ7qi8wGDkxhLc=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=JC6ZE9YeQdNvI/FWAl8VlGARKHDd6WNRQLAfnfL4TVLDkLkoYE9K8UqDc4M7jBs9N
 g4khZmUyNszCOHZYqaHjaU1RqnX9uCCZF0Y3556PymK+l2H37MIhyhkEFs7WCZtAvf
 /Hl5Sa4CK7Wbq+vm2zPcTsYQ/N14xJc0SU2u3qE0h50tEDFvF3J9/2nvuOz0JBKGz6
 xZAC2RaD1jhAkA2NyOJen4GjnhAl8X5d59limqowBlkzBLf50L8+Mf1dC1+8tMB+uu
 4uMest71b8Svz4XnAVl5nW2/qzGmvnntUkLJptBBRNzv+DKBcOK9Yi+qsDxeW8DiCK
 l/UcY02ewA5Bg==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210202133030.5760-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RESEND v3 net-next 0/5] net: consolidate
 page_is_pfmemalloc() usage
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

page_is_pfmemalloc() is used mostly by networking drivers to test
if a page can be considered for reusing/recycling.
It doesn't write anything to the struct page itself, so its sole
argument can be constified, as well as the first argument of
skb_propagate_pfmemalloc().
In Page Pool core code, it can be simply inlined instead.
Most of the callers from NIC drivers were just doppelgangers of
the same condition tests. Derive them into a new common function
do deduplicate the code.

Resend of v3 [2]:
 - it missed Patchwork and Netdev archives, probably due to server-side
   issues.

Since v2 [1]:
 - use more intuitive name for the new inline function since there's
   nothing "reserved" in remote pages (Jakub Kicinski, John Hubbard);
 - fold likely() inside the helper itself to make driver code a bit
   fancier (Jakub Kicinski);
 - split function introduction and using into two separate commits;
 - collect some more tags (Jesse Brandeburg, David Rientjes).

Since v1 [0]:
 - new: reduce code duplication by introducing a new common function
   to test if a page can be reused/recycled (David Rientjes);
 - collect autographs for Page Pool bits (Jesper Dangaard Brouer,
   Ilias Apalodimas).

[0] https://lore.kernel.org/netdev/20210125164612.243838-1-alobakin@pm.me
[1] https://lore.kernel.org/netdev/20210127201031.98544-1-alobakin@pm.me
[2] https://lore.kernel.org/lkml/20210131120844.7529-1-alobakin@pm.me

Alexander Lobakin (5):
  mm: constify page_is_pfmemalloc() argument
  skbuff: constify skb_propagate_pfmemalloc() "page" argument
  net: introduce common dev_page_is_reusable()
  net: use the new dev_page_is_reusable() instead of private versions
  net: page_pool: simplify page recycling condition tests

 .../net/ethernet/hisilicon/hns3/hns3_enet.c   | 17 ++++++----------
 drivers/net/ethernet/intel/fm10k/fm10k_main.c | 13 ++++--------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 15 +-------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 15 +-------------
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 13 ++----------
 drivers/net/ethernet/intel/igb/igb_main.c     |  9 ++-------
 drivers/net/ethernet/intel/igc/igc_main.c     |  9 ++-------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  9 ++-------
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  9 ++-------
 .../net/ethernet/mellanox/mlx5/core/en_rx.c   |  7 +------
 include/linux/mm.h                            |  2 +-
 include/linux/skbuff.h                        | 20 +++++++++++++++++--
 net/core/page_pool.c                          | 14 ++++---------
 13 files changed, 46 insertions(+), 106 deletions(-)

-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
