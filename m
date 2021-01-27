Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F5E3064CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 21:11:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B4CAB2107A;
	Wed, 27 Jan 2021 20:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XWWJqC86X-NX; Wed, 27 Jan 2021 20:11:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D99F22E94;
	Wed, 27 Jan 2021 20:11:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93DDB1BF4DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C0B9226F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A+PS-jRlmw7W for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 20:11:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by silver.osuosl.org (Postfix) with ESMTPS id 31D382107A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 20:11:00 +0000 (UTC)
Date: Wed, 27 Jan 2021 20:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611778257; bh=VdLcOnTLbHfFNHFlN/XjYPHtoWTcOg+AoFdHQrfr7jE=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=Xk5AAUW2hzwHMulLeDd1o8jFMxpHFcNn5Lvyslpc98CPdmGW4hNZNh3OaAbwjkSWF
 oRIUWJF6XzV3pvfkbhNTHAgvLjD1kCMdekHFzEH3aT3J99QoFSDjRqhaxPk0zkda4E
 t6ZOnF3hrDrAuzwJf3UsUBN+qukP/a/neSV503kp2b969Qcxk+IxK556S/wA6rijux
 fPvxxFUbr0ObBC1OXrkGd3Xpr4RzPPRCNiBQ0Gpc3V0F6+CioAvlmc8HKKlahZTVif
 Lf2ETDXjkBX+TWCVy0ex1AB8YM/aUks2vTia/rjzIUxIRVi1U+zeOL7SuD+exMYml9
 xhEDv9ixZi3hA==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210127201031.98544-1-alobakin@pm.me>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 net-next 0/4] net: consolidate
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
 David Rientjes <rientjes@google.com>, Willem de Bruijn <willemb@google.com>,
 Salil Mehta <salil.mehta@huawei.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
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

Since v1 [0]:
 - new: reduce code duplication by introducing a new common function
   to test if a page can be reused/recycled (David Rientjes);
 - collect autographs for Page Pool bits (Jesper Dangaard Brouer,
   Ilias Apalodimas).

[0] https://lore.kernel.org/netdev/20210125164612.243838-1-alobakin@pm.me

Alexander Lobakin (4):
  mm: constify page_is_pfmemalloc() argument
  skbuff: constify skb_propagate_pfmemalloc() "page" argument
  net: introduce common dev_page_is_reserved()
  net: page_pool: simplify page recycling condition tests

 .../net/ethernet/hisilicon/hns3/hns3_enet.c   | 10 ++--------
 drivers/net/ethernet/intel/fm10k/fm10k_main.c |  9 ++-------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 15 +--------------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 15 +--------------
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 11 +----------
 drivers/net/ethernet/intel/igb/igb_main.c     |  7 +------
 drivers/net/ethernet/intel/igc/igc_main.c     |  7 +------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  7 +------
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |  7 +------
 .../net/ethernet/mellanox/mlx5/core/en_rx.c   |  7 +------
 include/linux/mm.h                            |  2 +-
 include/linux/skbuff.h                        | 19 +++++++++++++++++--
 net/core/page_pool.c                          | 14 ++++----------
 13 files changed, 34 insertions(+), 96 deletions(-)

-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
