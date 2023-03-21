Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBAE66C3357
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:52:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44F8240BD2;
	Tue, 21 Mar 2023 13:52:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44F8240BD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679406766;
	bh=rmtKsNeIZPw35sSBR61KWOvUEpoq3/3hG0fz2zPVM64=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=gr9SSW6yBo9vipToZPHi/dHAwYGwPiYBBLeQBIQHI57bq198CMOcb7hFz813rjxUv
	 g072ceJww/28eKTn5B7EUCEaEk2G4AvV4+AcXDhnpv+PiBG7tm04P4fvVwtNs4YG+w
	 VNlqyMjt3vt1s+P6qMrxY0Y3g752QFA5YGgDL1JsnGdnOET9BchGH1nLcrEKFOMy/g
	 39M7Zg1e8QqlTIwM27ozJ+txKnjbk4MnamN4o1g92RyDaH3pT/bCVLOI+CU7+PLsZE
	 w8qrcSQJBfvaqMBzDBBhBsuWSa72ZgZRQE4qYQ982eM1lPjhe97AHvY4GXpEUhA+NJ
	 ZWU/fq7uKxmmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ebk-60psVHvb; Tue, 21 Mar 2023 13:52:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1DDB440BCB;
	Tue, 21 Mar 2023 13:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DDB440BCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2ADF1BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9C0CA610CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:52:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C0CA610CE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CqqBluhnGs7i for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:52:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A35B5610C3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A35B5610C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:52:38 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-178-N1pSd_bSOQaw3mdF8Y3H-g-1; Tue, 21 Mar 2023 09:52:33 -0400
X-MC-Unique: N1pSd_bSOQaw3mdF8Y3H-g-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AAAAA101A531;
 Tue, 21 Mar 2023 13:52:32 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4B7C185768;
 Tue, 21 Mar 2023 13:52:32 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4C5D330721A6C;
 Tue, 21 Mar 2023 14:52:31 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 21 Mar 2023 14:52:31 +0100
Message-ID: <167940675120.2718408.8176058626864184420.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679406757;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=NKGCgFqY7ArwF0AL3MK2xFVBlJMuZ/y6sH3A7OQOvkM=;
 b=O/L3EMoVAVsWx4QCTPcm5YWFC/JepK1ZjYmQKznSJn1knw+ayd9Mn3XJzQjB+L1O3mHRuA
 bOk2YChV8j9eaNSF3A7LaTpda/xCgnCf2wWdYLowPztQ3KU8ARVxbksS5ax1DFE9C3ug2E
 xndUsII7p77jRGklA4XZn3kvFaOJ+Kc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=O/L3EMoV
Subject: [Intel-wired-lan] [PATCH bpf V2] xdp: bpf_xdp_metadata use
 EOPNOTSUPP for no driver support
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When driver doesn't implement a bpf_xdp_metadata kfunc the fallback
implementation returns EOPNOTSUPP, which indicate device driver doesn't
implement this kfunc.

Currently many drivers also return EOPNOTSUPP when the hint isn't
available, which is ambiguous from an API point of view. Instead
change drivers to return ENODATA in these cases.

There can be natural cases why a driver doesn't provide any hardware
info for a specific hint, even on a frame to frame basis (e.g. PTP).
Lets keep these cases as separate return codes.

When describing the return values, adjust the function kernel-doc layout
to get proper rendering for the return values.

Fixes: ab46182d0dcb ("net/mlx4_en: Support RX XDP metadata")
Fixes: bc8d405b1ba9 ("net/mlx5e: Support RX XDP metadata")
Fixes: 306531f0249f ("veth: Support RX XDP metadata")
Fixes: 3d76a4d3d4e5 ("bpf: XDP metadata RX kfuncs")
Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 Documentation/networking/xdp-rx-metadata.rst     |    7 +++++--
 drivers/net/ethernet/mellanox/mlx4/en_rx.c       |    4 ++--
 drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c |    4 ++--
 drivers/net/veth.c                               |    4 ++--
 net/core/xdp.c                                   |   10 ++++++++--
 5 files changed, 19 insertions(+), 10 deletions(-)

diff --git a/Documentation/networking/xdp-rx-metadata.rst b/Documentation/networking/xdp-rx-metadata.rst
index aac63fc2d08b..25ce72af81c2 100644
--- a/Documentation/networking/xdp-rx-metadata.rst
+++ b/Documentation/networking/xdp-rx-metadata.rst
@@ -23,10 +23,13 @@ metadata is supported, this set will grow:
 An XDP program can use these kfuncs to read the metadata into stack
 variables for its own consumption. Or, to pass the metadata on to other
 consumers, an XDP program can store it into the metadata area carried
-ahead of the packet.
+ahead of the packet. Not all packets will necessary have the requested
+metadata available in which case the driver returns ``-ENODATA``.
 
 Not all kfuncs have to be implemented by the device driver; when not
-implemented, the default ones that return ``-EOPNOTSUPP`` will be used.
+implemented, the default ones that return ``-EOPNOTSUPP`` will be used
+to indicate the device driver have not implemented this kfunc.
+
 
 Within an XDP frame, the metadata layout (accessed via ``xdp_buff``) is
 as follows::
diff --git a/drivers/net/ethernet/mellanox/mlx4/en_rx.c b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
index 0869d4fff17b..4b5e459b6d49 100644
--- a/drivers/net/ethernet/mellanox/mlx4/en_rx.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_rx.c
@@ -674,7 +674,7 @@ int mlx4_en_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 	struct mlx4_en_xdp_buff *_ctx = (void *)ctx;
 
 	if (unlikely(_ctx->ring->hwtstamp_rx_filter != HWTSTAMP_FILTER_ALL))
-		return -EOPNOTSUPP;
+		return -ENODATA;
 
 	*timestamp = mlx4_en_get_hwtstamp(_ctx->mdev,
 					  mlx4_en_get_cqe_ts(_ctx->cqe));
@@ -686,7 +686,7 @@ int mlx4_en_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
 	struct mlx4_en_xdp_buff *_ctx = (void *)ctx;
 
 	if (unlikely(!(_ctx->dev->features & NETIF_F_RXHASH)))
-		return -EOPNOTSUPP;
+		return -ENODATA;
 
 	*hash = be32_to_cpu(_ctx->cqe->immed_rss_invalid);
 	return 0;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
index bcd6370de440..c5dae48b7932 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en/xdp.c
@@ -162,7 +162,7 @@ static int mlx5e_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 	const struct mlx5e_xdp_buff *_ctx = (void *)ctx;
 
 	if (unlikely(!mlx5e_rx_hw_stamp(_ctx->rq->tstamp)))
-		return -EOPNOTSUPP;
+		return -ENODATA;
 
 	*timestamp =  mlx5e_cqe_ts_to_ns(_ctx->rq->ptp_cyc2time,
 					 _ctx->rq->clock, get_cqe_ts(_ctx->cqe));
@@ -174,7 +174,7 @@ static int mlx5e_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
 	const struct mlx5e_xdp_buff *_ctx = (void *)ctx;
 
 	if (unlikely(!(_ctx->xdp.rxq->dev->features & NETIF_F_RXHASH)))
-		return -EOPNOTSUPP;
+		return -ENODATA;
 
 	*hash = be32_to_cpu(_ctx->cqe->rss_hash_result);
 	return 0;
diff --git a/drivers/net/veth.c b/drivers/net/veth.c
index 1bb54de7124d..046461ee42ea 100644
--- a/drivers/net/veth.c
+++ b/drivers/net/veth.c
@@ -1610,7 +1610,7 @@ static int veth_xdp_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 	struct veth_xdp_buff *_ctx = (void *)ctx;
 
 	if (!_ctx->skb)
-		return -EOPNOTSUPP;
+		return -ENODATA;
 
 	*timestamp = skb_hwtstamps(_ctx->skb)->hwtstamp;
 	return 0;
@@ -1621,7 +1621,7 @@ static int veth_xdp_rx_hash(const struct xdp_md *ctx, u32 *hash)
 	struct veth_xdp_buff *_ctx = (void *)ctx;
 
 	if (!_ctx->skb)
-		return -EOPNOTSUPP;
+		return -ENODATA;
 
 	*hash = skb_get_hash(_ctx->skb);
 	return 0;
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 8d3ad315f18d..7133017bcd74 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -705,7 +705,10 @@ __diag_ignore_all("-Wmissing-prototypes",
  * @ctx: XDP context pointer.
  * @timestamp: Return value pointer.
  *
- * Returns 0 on success or ``-errno`` on error.
+ * Return:
+ * * Returns 0 on success or ``-errno`` on error.
+ * * ``-EOPNOTSUPP`` : means device driver does not implement kfunc
+ * * ``-ENODATA``    : means no RX-timestamp available for this frame
  */
 __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx, u64 *timestamp)
 {
@@ -717,7 +720,10 @@ __bpf_kfunc int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx, u64 *tim
  * @ctx: XDP context pointer.
  * @hash: Return value pointer.
  *
- * Returns 0 on success or ``-errno`` on error.
+ * Return:
+ * * Returns 0 on success or ``-errno`` on error.
+ * * ``-EOPNOTSUPP`` : means device driver doesn't implement kfunc
+ * * ``-ENODATA``    : means no RX-hash available for this frame
  */
 __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash)
 {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
