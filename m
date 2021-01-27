Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0563066A8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jan 2021 22:47:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A92C873B9;
	Wed, 27 Jan 2021 21:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jSzIJk4SMmS8; Wed, 27 Jan 2021 21:47:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E79CB87309;
	Wed, 27 Jan 2021 21:47:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A3921BF96B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 21:47:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2504F86366
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 21:47:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iq4gSLy3qvLG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 21:47:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4AC658631C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 21:47:33 +0000 (UTC)
IronPort-SDR: 0qR45kh5+cRNZxgMFDLmarIxzQZetlj95cWALgNwPYz5dLVX76k34omS11L6fJTgXgR3lFcs02
 gv+vIZknr6Ig==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="244217694"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="244217694"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 13:47:29 -0800
IronPort-SDR: x8SX2Z/eZDC0uopz6q0GvPObDP9bsfjhVBCSv7w/mie7EoujaaoDFv19suwWd/v2MLVVLnlSIt
 K8UvsSEBqhkg==
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="573409951"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.212.44.59])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 13:47:28 -0800
Date: Wed, 27 Jan 2021 13:47:26 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Alexander Lobakin <alobakin@pm.me>
Message-ID: <20210127134726.00003605@intel.com>
In-Reply-To: <20210127201031.98544-4-alobakin@pm.me>
References: <20210127201031.98544-1-alobakin@pm.me>
 <20210127201031.98544-4-alobakin@pm.me>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
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
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
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

Alexander Lobakin wrote:

> A bunch of drivers test the page before reusing/recycling for two
> common conditions:
>  - if a page was allocated under memory pressure (pfmemalloc page);
>  - if a page was allocated at a distant memory node (to exclude
>    slowdowns).
> 
> Introduce and use a new common function for doing this and eliminate
> all functions-duplicates from drivers.
> 
> Suggested-by: David Rientjes <rientjes@google.com>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>
> ---
>  drivers/net/ethernet/hisilicon/hns3/hns3_enet.c   | 10 ++--------
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c     |  9 ++-------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c       | 15 +--------------
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c       | 15 +--------------
>  drivers/net/ethernet/intel/ice/ice_txrx.c         | 11 +----------
>  drivers/net/ethernet/intel/igb/igb_main.c         |  7 +------
>  drivers/net/ethernet/intel/igc/igc_main.c         |  7 +------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c     |  7 +------
>  drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  7 +------
>  drivers/net/ethernet/mellanox/mlx5/core/en_rx.c   |  7 +------
>  include/linux/skbuff.h                            | 15 +++++++++++++++
>  11 files changed, 27 insertions(+), 83 deletions(-)

For the patch, and esp. for the Intel drivers:
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
