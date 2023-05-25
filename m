Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F33AE710CB2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 May 2023 14:59:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F83E61699;
	Thu, 25 May 2023 12:59:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F83E61699
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685019553;
	bh=pVfRJF0m9G2dZV1TS1ZDlwQwcoXHjJcJC2m2ZZwCYgg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Hn0KERELVl+cMQK1LQacoCMzyysor1a+6nTZ4brCs/JlqdbEoB67seVmWceOQ1QxB
	 Wf80P8ozDxP1vyBwKmkn3WvjiMG0nEWqfJD0dydfNznteHWL2EFYoJERN9qWkIP84E
	 YSDl/p9GR8gg+yeExsAYESG2NyWBf2z1rLDCr1wPj3VpMxg06wduC08NaCzy47wXwk
	 MzCqIxTk28u+Ay2sJK2s3i7Q2p/35qtoMPuSmdKw2MwN/KhKsPgWEDefvbP1gPiO1g
	 mBVyTK+0LninQB0SFXVSYcif0CgAaHNBiLJNG4Jo2639GKxS7DSytWp0a3h6pZJhsX
	 3Qj6iLyZ+Klug==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ImqjsbgHwhHF; Thu, 25 May 2023 12:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 460FF60BA8;
	Thu, 25 May 2023 12:59:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 460FF60BA8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 83F261BF27A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5ABCE41F2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:59:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5ABCE41F2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ACkFniLIr0bH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 May 2023 12:58:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43D4641B4E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 43D4641B4E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 May 2023 12:58:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="351384408"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="351384408"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2023 05:58:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="817075146"
X-IronPort-AV: E=Sophos;i="6.00,191,1681196400"; d="scan'208";a="817075146"
Received: from newjersey.igk.intel.com ([10.102.20.203])
 by fmsmga002.fm.intel.com with ESMTP; 25 May 2023 05:58:51 -0700
From: Alexander Lobakin <aleksander.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Thu, 25 May 2023 14:57:40 +0200
Message-Id: <20230525125746.553874-7-aleksander.lobakin@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230525125746.553874-1-aleksander.lobakin@intel.com>
References: <20230525125746.553874-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685019539; x=1716555539;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gKDvjdihs8R6U5hgO6lRBeB6lfzAxXYdxQ6Etd0WGqc=;
 b=N7Ha0INW43p5AGlKOt60/HMxrtO2dG4Tj45WoMvXzSTW+nu/zmxBOX/0
 Ii+AVOcRDxqUXUuL8rQAbrVgldKqimNWniq5YXd51OtrwFv7OqVTD7t/H
 9PwCAk8Lxe/oEE5Oa+PkKFt2mC13CM2d/Mcc7oH/8Kic6S41f3wkYcitg
 FKj8w1OSzqcUXMlSRE1FcWbBUg02tfErieVD+lB8lZdu5Vbw7FyDiQLa9
 JTMC1M/zWUTIC+KVXDPnW5wluddMJUm7dgkdQEzjbQSO+EWWziR/R1fLt
 pRJ7WLJaBNLyGao3G0tP5hj0R/yX92GDmUbiCBJL8L2ivbj0h3OlJLrGl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N7Ha0INW
Subject: [Intel-wired-lan] [PATCH net-next v2 06/12] net: skbuff: don't
 include <net/page_pool.h> into <linux/skbuff.h>
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Larysa Zaremba <larysa.zaremba@intel.com>, netdev@vger.kernel.org,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Christoph Hellwig <hch@lst.de>, Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, touching <net/page_pool.h> triggers a rebuild of more than
a half of the kernel. That's because it's included in <linux/skbuff.h>.

In 6a5bcd84e886 ("page_pool: Allow drivers to hint on SKB recycling"),
Matteo included it to be able to call a couple functions defined there.
Then, in 57f05bc2ab24 ("page_pool: keep pp info as long as page pool
owns the page") one of the calls was removed, so only one left.
It's call to page_pool_return_skb_page() in napi_frag_unref(). The
function is external and doesn't have any dependencies. Having include
of very niche page_pool.h only for that looks like an overkill.
Instead, move the declaration of that function to skbuff.h itself, with
a small comment that it's a special guest and should not be touched.
Now, after a few include fixes in the drivers, touching page_pool.h
only triggers rebuilding of the drivers using it and a couple core
networking files.

Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
---
 drivers/net/ethernet/engleder/tsnep_main.c          | 1 +
 drivers/net/ethernet/freescale/fec_main.c           | 1 +
 drivers/net/ethernet/mellanox/mlx5/core/en/params.c | 1 +
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c    | 1 +
 drivers/net/wireless/mediatek/mt76/mt76.h           | 1 +
 include/linux/skbuff.h                              | 4 +++-
 include/net/page_pool.h                             | 2 --
 7 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/engleder/tsnep_main.c b/drivers/net/ethernet/engleder/tsnep_main.c
index 84751bb303a6..6222aaa5157f 100644
--- a/drivers/net/ethernet/engleder/tsnep_main.c
+++ b/drivers/net/ethernet/engleder/tsnep_main.c
@@ -28,6 +28,7 @@
 #include <linux/iopoll.h>
 #include <linux/bpf.h>
 #include <linux/bpf_trace.h>
+#include <net/page_pool.h>
 #include <net/xdp_sock_drv.h>
 
 #define TSNEP_RX_OFFSET (max(NET_SKB_PAD, XDP_PACKET_HEADROOM) + NET_IP_ALIGN)
diff --git a/drivers/net/ethernet/freescale/fec_main.c b/drivers/net/ethernet/freescale/fec_main.c
index 3ecf20ee5851..6ef162f8ed33 100644
--- a/drivers/net/ethernet/freescale/fec_main.c
+++ b/drivers/net/ethernet/freescale/fec_main.c
@@ -38,6 +38,7 @@
 #include <linux/in.h>
 #include <linux/ip.h>
 #include <net/ip.h>
+#include <net/page_pool.h>
 #include <net/selftests.h>
 #include <net/tso.h>
 #include <linux/tcp.h>
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/params.c b/drivers/net/ethernet/mellanox/mlx5/core/en/params.c
index 9c94807097cb..3235a3a4ed08 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/params.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/params.c
@@ -6,6 +6,7 @@
 #include "en/port.h"
 #include "en_accel/en_accel.h"
 #include "en_accel/ipsec.h"
+#include <net/page_pool.h>
 #include <net/xdp_sock_drv.h>
 
 static u8 mlx5e_mpwrq_min_page_shift(struct mlx5_core_dev *mdev)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index f0e6095809fa..1bd91bc09eb8 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -35,6 +35,7 @@
 #include "en/xdp.h"
 #include "en/params.h"
 #include <linux/bitfield.h>
+#include <net/page_pool.h>
 
 int mlx5e_xdp_max_mtu(struct mlx5e_params *params, struct mlx5e_xsk_param *xsk)
 {
diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index 6b07b8fafec2..95c16f11d156 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -15,6 +15,7 @@
 #include <linux/average.h>
 #include <linux/soc/mediatek/mtk_wed.h>
 #include <net/mac80211.h>
+#include <net/page_pool.h>
 #include "util.h"
 #include "testmode.h"
 
diff --git a/include/linux/skbuff.h b/include/linux/skbuff.h
index 8cff3d817131..163d3b2d00cb 100644
--- a/include/linux/skbuff.h
+++ b/include/linux/skbuff.h
@@ -32,7 +32,6 @@
 #include <linux/if_packet.h>
 #include <linux/llist.h>
 #include <net/flow.h>
-#include <net/page_pool.h>
 #if IS_ENABLED(CONFIG_NF_CONNTRACK)
 #include <linux/netfilter/nf_conntrack_common.h>
 #endif
@@ -3412,6 +3411,9 @@ static inline void skb_frag_ref(struct sk_buff *skb, int f)
 	__skb_frag_ref(&skb_shinfo(skb)->frags[f]);
 }
 
+/* Internal from net/core/page_pool.c, do not use in drivers directly */
+bool page_pool_return_skb_page(struct page *page, bool napi_safe);
+
 static inline void
 napi_frag_unref(skb_frag_t *frag, bool recycle, bool napi_safe)
 {
diff --git a/include/net/page_pool.h b/include/net/page_pool.h
index c8ec2f34722b..821c75bba125 100644
--- a/include/net/page_pool.h
+++ b/include/net/page_pool.h
@@ -240,8 +240,6 @@ inline enum dma_data_direction page_pool_get_dma_dir(struct page_pool *pool)
 	return pool->p.dma_dir;
 }
 
-bool page_pool_return_skb_page(struct page *page, bool napi_safe);
-
 struct page_pool *page_pool_create(const struct page_pool_params *params);
 
 struct xdp_mem_info;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
