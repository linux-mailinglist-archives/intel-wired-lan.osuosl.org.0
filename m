Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E04D4677D66
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:01:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 788EE60D60;
	Mon, 23 Jan 2023 14:01:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 788EE60D60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482481;
	bh=DH/8YL5ylReTjze+41iYNH/CHETVb4zWoWAmm2jqqfU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kkmGwXnr+kB+uT2s8Oh3jybg9+exPap4RywOZPiozX4pcNrgYfAq042t+DzDldXAN
	 hrcqSWZKCWE+LpE63LC9pLUFHn8ZeEdZt9J5SS8GxNY5dIDnw6Uf1TJRdflrgnt5x/
	 opqDPGLB+div+LLD/M2gIPLMaXyNKvVwAeR0GUy8R2HnJPmhOpJuRlS9qnKDBNwURd
	 HKbVFyE9G1MqQWHpVxCs46IVP55C4Yc9jgrMLOjlyLQJZWCB1xGB5Jb1Xt2Ve7wPxx
	 ntxl+nAYUaelS14dvejGgcOpbQlfd1+W+MVHtLBGy8Ju3nGuAtFm8OIG7ycsWca88q
	 7rYiblmJbSNWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SfSUljSd2Naj; Mon, 23 Jan 2023 14:01:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2B70960C2A;
	Mon, 23 Jan 2023 14:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2B70960C2A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9FFA1BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 95F6660C2A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95F6660C2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B00hVVmYEjod for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7EDEB60634
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7EDEB60634
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:01:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 32232B80DC5;
 Mon, 23 Jan 2023 14:01:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4777C4339B;
 Mon, 23 Jan 2023 14:01:08 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:17 +0200
Message-Id: <a5426033528ccef6e0e71fe06b55ae56c5596e85.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482470;
 bh=Enr+ysCnIMh927zW3mrTqlPKEzdJGBJd4x1iZp4YJSc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rsV8c58mr9rGCWGKAAMQvHth0adyby1LNb3/GfgMIT3VaFigTWtWRT5wfgx0N1KXN
 74NSAX8fnZPyxaYGrUvaZoVabIP62YLrbnDvReycdnkAJGgw9A4FE2YE75eqLWonbw
 A+MsPzauRqO5L+WZ7RKt6v+PluZjyRbj2I9oF/zxiS3cXIjVTBYqjdFnilXX0w/I47
 h+3vywBN4k+1zLpLQGLd4lbtwW2/oPM7+15aj0Rw4IozmjMsHRgYTiKp1PhMNoJQZO
 7EvHWbHBWw9GKjSyPwtugofOKllFuEFFbArjn4g4+5PS+hkZVmA+OA2u+QDqBnskV+
 TQcyXij7eh6qA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rsV8c58m
Subject: [Intel-wired-lan] [PATCH net-next 04/10] net/mlx5e: Fill IPsec
 state validation failure reason
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
Cc: Veaceslav Falico <vfalico@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Jonathan Corbet <corbet@lwn.net>,
 Jay Vosburgh <j.vosburgh@gmail.com>, oss-drivers@corigine.com,
 linux-doc@vger.kernel.org, Raju Rangoju <rajur@chelsio.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Ayush Sawal <ayush.sawal@chelsio.com>,
 Simon Horman <simon.horman@corigine.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, Saeed Mahameed <saeedm@nvidia.com>,
 Andy Gospodarek <andy@greyhouse.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

Rely on extack to return failure reason.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
Signed-off-by: Leon Romanovsky <leon@kernel.org>
---
 .../mellanox/mlx5/core/en_accel/ipsec.c       | 75 ++++++++-----------
 1 file changed, 32 insertions(+), 43 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index a889df77dd2d..4f8b0eae80a1 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -162,91 +162,87 @@ void mlx5e_ipsec_build_accel_xfrm_attrs(struct mlx5e_ipsec_sa_entry *sa_entry,
 	mlx5e_ipsec_init_limits(sa_entry, attrs);
 }
 
-static inline int mlx5e_xfrm_validate_state(struct xfrm_state *x)
+static int mlx5e_xfrm_validate_state(struct mlx5_core_dev *mdev,
+				     struct xfrm_state *x,
+				     struct netlink_ext_ack *extack)
 {
-	struct net_device *netdev = x->xso.real_dev;
-	struct mlx5e_priv *priv;
-
-	priv = netdev_priv(netdev);
-
 	if (x->props.aalgo != SADB_AALG_NONE) {
-		netdev_info(netdev, "Cannot offload authenticated xfrm states\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload authenticated xfrm states");
 		return -EINVAL;
 	}
 	if (x->props.ealgo != SADB_X_EALG_AES_GCM_ICV16) {
-		netdev_info(netdev, "Only AES-GCM-ICV16 xfrm state may be offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Only AES-GCM-ICV16 xfrm state may be offloaded");
 		return -EINVAL;
 	}
 	if (x->props.calgo != SADB_X_CALG_NONE) {
-		netdev_info(netdev, "Cannot offload compressed xfrm states\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload compressed xfrm states");
 		return -EINVAL;
 	}
 	if (x->props.flags & XFRM_STATE_ESN &&
-	    !(mlx5_ipsec_device_caps(priv->mdev) & MLX5_IPSEC_CAP_ESN)) {
-		netdev_info(netdev, "Cannot offload ESN xfrm states\n");
+	    !(mlx5_ipsec_device_caps(mdev) & MLX5_IPSEC_CAP_ESN)) {
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload ESN xfrm states");
 		return -EINVAL;
 	}
 	if (x->props.family != AF_INET &&
 	    x->props.family != AF_INET6) {
-		netdev_info(netdev, "Only IPv4/6 xfrm states may be offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Only IPv4/6 xfrm states may be offloaded");
 		return -EINVAL;
 	}
 	if (x->id.proto != IPPROTO_ESP) {
-		netdev_info(netdev, "Only ESP xfrm state may be offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Only ESP xfrm state may be offloaded");
 		return -EINVAL;
 	}
 	if (x->encap) {
-		netdev_info(netdev, "Encapsulated xfrm state may not be offloaded\n");
+		NL_SET_ERR_MSG_MOD(extack, "Encapsulated xfrm state may not be offloaded");
 		return -EINVAL;
 	}
 	if (!x->aead) {
-		netdev_info(netdev, "Cannot offload xfrm states without aead\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without aead");
 		return -EINVAL;
 	}
 	if (x->aead->alg_icv_len != 128) {
-		netdev_info(netdev, "Cannot offload xfrm states with AEAD ICV length other than 128bit\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with AEAD ICV length other than 128bit");
 		return -EINVAL;
 	}
 	if ((x->aead->alg_key_len != 128 + 32) &&
 	    (x->aead->alg_key_len != 256 + 32)) {
-		netdev_info(netdev, "Cannot offload xfrm states with AEAD key length other than 128/256 bit\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with AEAD key length other than 128/256 bit");
 		return -EINVAL;
 	}
 	if (x->tfcpad) {
-		netdev_info(netdev, "Cannot offload xfrm states with tfc padding\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with tfc padding");
 		return -EINVAL;
 	}
 	if (!x->geniv) {
-		netdev_info(netdev, "Cannot offload xfrm states without geniv\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states without geniv");
 		return -EINVAL;
 	}
 	if (strcmp(x->geniv, "seqiv")) {
-		netdev_info(netdev, "Cannot offload xfrm states with geniv other than seqiv\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload xfrm states with geniv other than seqiv");
 		return -EINVAL;
 	}
 	switch (x->xso.type) {
 	case XFRM_DEV_OFFLOAD_CRYPTO:
-		if (!(mlx5_ipsec_device_caps(priv->mdev) &
-		      MLX5_IPSEC_CAP_CRYPTO)) {
-			netdev_info(netdev, "Crypto offload is not supported\n");
+		if (!(mlx5_ipsec_device_caps(mdev) & MLX5_IPSEC_CAP_CRYPTO)) {
+			NL_SET_ERR_MSG_MOD(extack, "Crypto offload is not supported");
 			return -EINVAL;
 		}
 
 		if (x->props.mode != XFRM_MODE_TRANSPORT &&
 		    x->props.mode != XFRM_MODE_TUNNEL) {
-			netdev_info(netdev, "Only transport and tunnel xfrm states may be offloaded\n");
+			NL_SET_ERR_MSG_MOD(extack, "Only transport and tunnel xfrm states may be offloaded");
 			return -EINVAL;
 		}
 		break;
 	case XFRM_DEV_OFFLOAD_PACKET:
-		if (!(mlx5_ipsec_device_caps(priv->mdev) &
+		if (!(mlx5_ipsec_device_caps(mdev) &
 		      MLX5_IPSEC_CAP_PACKET_OFFLOAD)) {
-			netdev_info(netdev, "Packet offload is not supported\n");
+			NL_SET_ERR_MSG_MOD(extack, "Packet offload is not supported");
 			return -EINVAL;
 		}
 
 		if (x->props.mode != XFRM_MODE_TRANSPORT) {
-			netdev_info(netdev, "Only transport xfrm states may be offloaded in packet mode\n");
+			NL_SET_ERR_MSG_MOD(extack, "Only transport xfrm states may be offloaded in packet mode");
 			return -EINVAL;
 		}
 
@@ -254,35 +250,30 @@ static inline int mlx5e_xfrm_validate_state(struct xfrm_state *x)
 		    x->replay_esn->replay_window != 64 &&
 		    x->replay_esn->replay_window != 128 &&
 		    x->replay_esn->replay_window != 256) {
-			netdev_info(netdev,
-				    "Unsupported replay window size %u\n",
-				    x->replay_esn->replay_window);
+			NL_SET_ERR_MSG_MOD(extack, "Unsupported replay window size");
 			return -EINVAL;
 		}
 
 		if (!x->props.reqid) {
-			netdev_info(netdev, "Cannot offload without reqid\n");
+			NL_SET_ERR_MSG_MOD(extack, "Cannot offload without reqid");
 			return -EINVAL;
 		}
 
 		if (x->lft.hard_byte_limit != XFRM_INF ||
 		    x->lft.soft_byte_limit != XFRM_INF) {
-			netdev_info(netdev,
-				    "Device doesn't support limits in bytes\n");
+			NL_SET_ERR_MSG_MOD(extack, "Device doesn't support limits in bytes");
 			return -EINVAL;
 		}
 
 		if (x->lft.soft_packet_limit >= x->lft.hard_packet_limit &&
 		    x->lft.hard_packet_limit != XFRM_INF) {
 			/* XFRM stack doesn't prevent such configuration :(. */
-			netdev_info(netdev,
-				    "Hard packet limit must be greater than soft one\n");
+			NL_SET_ERR_MSG_MOD(extack, "Hard packet limit must be greater than soft one");
 			return -EINVAL;
 		}
 		break;
 	default:
-		netdev_info(netdev, "Unsupported xfrm offload type %d\n",
-			    x->xso.type);
+		NL_SET_ERR_MSG_MOD(extackx, "Unsupported xfrm offload type");
 		return -EINVAL;
 	}
 	return 0;
@@ -312,15 +303,13 @@ static int mlx5e_xfrm_add_state(struct xfrm_state *x,
 		return -EOPNOTSUPP;
 
 	ipsec = priv->ipsec;
-	err = mlx5e_xfrm_validate_state(x);
+	err = mlx5e_xfrm_validate_state(priv->mdev, x, extack);
 	if (err)
 		return err;
 
 	sa_entry = kzalloc(sizeof(*sa_entry), GFP_KERNEL);
-	if (!sa_entry) {
-		err = -ENOMEM;
-		goto out;
-	}
+	if (!sa_entry)
+		return -ENOMEM;
 
 	sa_entry->x = x;
 	sa_entry->ipsec = ipsec;
@@ -361,7 +350,7 @@ static int mlx5e_xfrm_add_state(struct xfrm_state *x,
 	mlx5_ipsec_free_sa_ctx(sa_entry);
 err_xfrm:
 	kfree(sa_entry);
-out:
+	NL_SET_ERR_MSG_MOD(extack, "Device failed to offload this policy");
 	return err;
 }
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
