Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06A302828
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 17:47:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5945785FAC;
	Mon, 25 Jan 2021 16:47:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h2ch4lfteRt3; Mon, 25 Jan 2021 16:47:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C8B685E8D;
	Mon, 25 Jan 2021 16:47:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A35C71BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8B1DA20368
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fudhp0nLLtC9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 16:46:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40136.protonmail.ch (mail-40136.protonmail.ch
 [185.70.40.136])
 by silver.osuosl.org (Postfix) with ESMTPS id 830D120117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:46:55 +0000 (UTC)
Date: Mon, 25 Jan 2021 16:46:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=protonmail;
 t=1611593212; bh=O3BWBtVtHnlCsFaJds2EaRRj5UFBxIVItFjF3RQ5foo=;
 h=Date:To:From:Cc:Reply-To:Subject:From;
 b=fyb2kN/4x6ExKBRo9Irg/d1YeJZtuGXCH3KkYYxrwU6bfwqlp8xMWmyHoMUe9wKZ7
 FE4ZC5fnorwlL/gi5srUrW8gfzuAUandYJdMMJtbd60j7IN3szMPX9rMu49/9ZcFnx
 mggR925yYUco0rRp1UqPs6oBDI2aUk0GPLTSLnEIzSfFP1cdBPEwguNgJU25afaZoY
 5lx4EVfbt3/89Iq5QNz7cj/2zToRT9N8KHsxez2Sqd2z6gQsDdV4BKPWnmuayZVa6s
 voZckv5Kh2OQ1jTDMApFKg4MTPwxYrd2KAWmMNbjJKjcuTkrZ1xfkwA5Jay1YMuCQg
 rZ+LjQ+WWvz5Q==
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
From: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210125164612.243838-1-alobakin@pm.me>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Jan 2021 16:47:55 +0000
Subject: [Intel-wired-lan] [PATCH net-next 0/3] net: constify
 page_is_pfmemalloc() and its users
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

page_is_pfmemalloc() is used mostly by networking drivers. It doesn't
write anything to the struct page itself, so constify its argument and
a bunch of callers and wrappers around this function in drivers.
In Page Pool core code, it can be simply inlined instead.

Alexander Lobakin (3):
  mm: constify page_is_pfmemalloc() argument
  net: constify page_is_pfmemalloc() argument at call sites
  net: page_pool: simplify page recycling condition tests

 drivers/net/ethernet/hisilicon/hns3/hns3_enet.c   |  2 +-
 drivers/net/ethernet/intel/fm10k/fm10k_main.c     |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c       |  2 +-
 drivers/net/ethernet/intel/iavf/iavf_txrx.c       |  2 +-
 drivers/net/ethernet/intel/ice/ice_txrx.c         |  2 +-
 drivers/net/ethernet/intel/igb/igb_main.c         |  2 +-
 drivers/net/ethernet/intel/igc/igc_main.c         |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  2 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_rx.c   |  2 +-
 include/linux/mm.h                                |  2 +-
 include/linux/skbuff.h                            |  4 ++--
 net/core/page_pool.c                              | 14 ++++----------
 13 files changed, 17 insertions(+), 23 deletions(-)

-- 
2.30.0


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
