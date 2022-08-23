Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E9259E47E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 15:32:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7CA360E24;
	Tue, 23 Aug 2022 13:32:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B7CA360E24
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661261547;
	bh=cGPuxp8rEFDANz89bNtgXwtwjFeb/nT2m8Xh92pRDSQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xamT2tqOKmoifidhsQyUpBZlRfEZ3MRG9AKKcFjiYVgHTpOHym6CQ0WlNWZfbZcfK
	 UJgmHOxY+o9nlwQUZJyN820o0IfukS7k/kmmhsV2lyzZ1Gz9Mtv+ERNUYQynVAJIt4
	 xQPq83Azy4UCmH03ksTaoPuhO6gkd0z3GEy35YJffmBHvrGpTaxzZfcF9bBb527NkV
	 QSvAINZ0BNGQR3U1L39PReKPU+nLq6D07WesYrfmEfSY4h+cGeEV5XIcvW3jXDXwmz
	 wIlFBmWnqdvQiMaS1Sp/OOLpvw7zBq1SUUbE+aKZ4PLqpKrZUf7ds6phRBLyMBa32A
	 rj3f/PD1Bm34A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vbwoNnZJ5k1b; Tue, 23 Aug 2022 13:32:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 898EF60BC5;
	Tue, 23 Aug 2022 13:32:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 898EF60BC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 615811BF384
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 13:32:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3B729405DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 13:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B729405DF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJOgvWrfXNu4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 13:32:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA67F405D1
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BA67F405D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 13:32:19 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id C8B1FCE1BCF;
 Tue, 23 Aug 2022 13:32:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC0AFC433D6;
 Tue, 23 Aug 2022 13:32:13 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 23 Aug 2022 16:31:59 +0300
Message-Id: <0e3b5ac73d11f255c73cf9bb35f2e5cf4433ec5d.1661260787.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <cover.1661260787.git.leonro@nvidia.com>
References: <cover.1661260787.git.leonro@nvidia.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1661261534;
 bh=PZL91AXffzFMtihnRFLeRE15m2nJ0tedTboZ/kLRP9w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B/N0/KvZUHOg3KQM0pMd4MhMEaIrDfCBtbR4fQGH8Lb0uEmyttR7LeeBJwsYiur3D
 k9KLEzpp7pjOmvVHniUYt0hz/mEnLYe0cZQBsWBau6Gj449raMe17QxtIBVbGRVU6l
 QM3B1aBtRyWNH+heJfDwXBwnfdU/QBOOcYtBYh/YSvj1593+8VssgW48323FRsAukB
 50AmwEyHwRsxZx9kx0fshdh61qE3VIqVb/ToxUgBuoi13dvc255MiCoyGXpwPMvrJD
 ul82tzy+9HispReuS1HTMNgMtrDK2FiMdOh/Hpc8UByLk1xbC75FtKli8GdcHF6CP6
 FsSHuiskjdvMg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=B/N0/KvZ
Subject: [Intel-wired-lan] [PATCH xfrm-next v3 2/6] xfrm: allow state full
 offload mode
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Rohit Maheshwari <rohitm@chelsio.com>, netdev@vger.kernel.org,
 Raed Salem <raeds@nvidia.com>, Vinay Kumar Yadav <vinay.yadav@chelsio.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Allow users to configure xfrm states with full offload mode.
The full mode must be requested both for policy and state, and
such requires us to do not implement fallback.

We explicitly return an error if requested full mode can't
be configured.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 .../inline_crypto/ch_ipsec/chcr_ipsec.c       |  4 ++++
 .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    |  5 ++++
 drivers/net/ethernet/intel/ixgbevf/ipsec.c    |  5 ++++
 .../mellanox/mlx5/core/en_accel/ipsec.c       |  4 ++++
 drivers/net/netdevsim/ipsec.c                 |  5 ++++
 net/xfrm/xfrm_device.c                        | 24 +++++++++++++++----
 6 files changed, 42 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c b/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
index 585590520076..ca21794281d6 100644
--- a/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
+++ b/drivers/net/ethernet/chelsio/inline_crypto/ch_ipsec/chcr_ipsec.c
@@ -283,6 +283,10 @@ static int ch_ipsec_xfrm_add_state(struct xfrm_state *x)
 		pr_debug("Cannot offload xfrm states with geniv other than seqiv\n");
 		return -EINVAL;
 	}
+	if (x->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
+		pr_debug("Unsupported xfrm offload\n");
+		return -EINVAL;
+	}
 
 	sa_entry = kzalloc(sizeof(*sa_entry), GFP_KERNEL);
 	if (!sa_entry) {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
index 774de63dd93a..53a969e34883 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
@@ -585,6 +585,11 @@ static int ixgbe_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
+	if (xs->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
+		netdev_err(dev, "Unsupported ipsec offload type\n");
+		return -EINVAL;
+	}
+
 	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		struct rx_sa rsa;
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index 9984ebc62d78..c1cf540d162a 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -280,6 +280,11 @@ static int ixgbevf_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
+	if (xs->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
+		netdev_err(dev, "Unsupported ipsec offload type\n");
+		return -EINVAL;
+	}
+
 	if (xs->xso.dir == XFRM_DEV_OFFLOAD_IN) {
 		struct rx_sa rsa;
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index 2a8fd7020622..c182b640b80d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -256,6 +256,10 @@ static inline int mlx5e_xfrm_validate_state(struct xfrm_state *x)
 		netdev_info(netdev, "Cannot offload xfrm states with geniv other than seqiv\n");
 		return -EINVAL;
 	}
+	if (x->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
+		netdev_info(netdev, "Unsupported xfrm offload type\n");
+		return -EINVAL;
+	}
 	return 0;
 }
 
diff --git a/drivers/net/netdevsim/ipsec.c b/drivers/net/netdevsim/ipsec.c
index 386336a38f34..b93baf5c8bee 100644
--- a/drivers/net/netdevsim/ipsec.c
+++ b/drivers/net/netdevsim/ipsec.c
@@ -149,6 +149,11 @@ static int nsim_ipsec_add_sa(struct xfrm_state *xs)
 		return -EINVAL;
 	}
 
+	if (xs->xso.type != XFRM_DEV_OFFLOAD_CRYPTO) {
+		netdev_err(dev, "Unsupported ipsec offload type\n");
+		return -EINVAL;
+	}
+
 	/* find the first unused index */
 	ret = nsim_ipsec_find_empty_idx(ipsec);
 	if (ret < 0) {
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 6d1124eb1ec8..5b04e5cdca64 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -215,6 +215,7 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	struct xfrm_dev_offload *xso = &x->xso;
 	xfrm_address_t *saddr;
 	xfrm_address_t *daddr;
+	bool is_full_offload;
 
 	if (!x->type_offload)
 		return -EINVAL;
@@ -223,9 +224,11 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	if (x->encap || x->tfcpad)
 		return -EINVAL;
 
-	if (xuo->flags & ~(XFRM_OFFLOAD_IPV6 | XFRM_OFFLOAD_INBOUND))
+	if (xuo->flags &
+	    ~(XFRM_OFFLOAD_IPV6 | XFRM_OFFLOAD_INBOUND | XFRM_OFFLOAD_FULL))
 		return -EINVAL;
 
+	is_full_offload = xuo->flags & XFRM_OFFLOAD_FULL;
 	dev = dev_get_by_index(net, xuo->ifindex);
 	if (!dev) {
 		if (!(xuo->flags & XFRM_OFFLOAD_INBOUND)) {
@@ -240,7 +243,7 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 					x->props.family,
 					xfrm_smark_get(0, x));
 		if (IS_ERR(dst))
-			return 0;
+			return (is_full_offload) ? -EINVAL : 0;
 
 		dev = dst->dev;
 
@@ -251,7 +254,7 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	if (!dev->xfrmdev_ops || !dev->xfrmdev_ops->xdo_dev_state_add) {
 		xso->dev = NULL;
 		dev_put(dev);
-		return 0;
+		return (is_full_offload) ? -EINVAL : 0;
 	}
 
 	if (x->props.flags & XFRM_STATE_ESN &&
@@ -270,7 +273,10 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	else
 		xso->dir = XFRM_DEV_OFFLOAD_OUT;
 
-	xso->type = XFRM_DEV_OFFLOAD_CRYPTO;
+	if (is_full_offload)
+		xso->type = XFRM_DEV_OFFLOAD_FULL;
+	else
+		xso->type = XFRM_DEV_OFFLOAD_CRYPTO;
 
 	err = dev->xfrmdev_ops->xdo_dev_state_add(x);
 	if (err) {
@@ -280,7 +286,15 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 		netdev_put(dev, &xso->dev_tracker);
 		xso->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
 
-		if (err != -EOPNOTSUPP)
+		/* User explicitly requested full offload mode and configured
+		 * policy in addition to the XFRM state. So be civil to users,
+		 * and return an error instead of taking fallback path.
+		 *
+		 * This WARN_ON() can be seen as a documentation for driver
+		 * authors to do not return -EOPNOTSUPP in full offload mode.
+		 */
+		WARN_ON(err == -EOPNOTSUPP && is_full_offload);
+		if (err != -EOPNOTSUPP || is_full_offload)
 			return err;
 	}
 
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
