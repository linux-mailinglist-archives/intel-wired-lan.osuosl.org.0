Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 492E5677D5B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CD81681F54;
	Mon, 23 Jan 2023 14:01:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD81681F54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482461;
	bh=hBRd5688tUExYImx3sZlgq7ekbVpnABqcEb8QLS1dl0=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4am2J1g5MGl/Suw7+6ufcO7m8W2nNM02oIot8sGnWxsvQCucUrcYTYHy7dzb0DuzZ
	 9FfixkIWlVrrOuHyAGI3MeCANJTlJDdbO2QmmTvc745r+WEIh/IHvpT2x7nomjTWu/
	 nrNcaCYUcoVkldSsNGQG8FmopS53w8X/C9vQ+WFJFljFE+DI/YG83vRU89cK7XARMI
	 KVNxx/dR2scSoN+r4y0eNwfUmKvmUEfIuCH9jnf36HwCQ3wilkrTSeUvxJdUBcJHcH
	 hRGaTqvMoXHFFcyk5Lzy8QWuUlxnRBFxwk+q4ZMaLBFXke8uvYoPxlfC9smapXdiRW
	 0g+8QPy5Znunw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WgFMTI7_5StC; Mon, 23 Jan 2023 14:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BAB6281F30;
	Mon, 23 Jan 2023 14:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BAB6281F30
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82DB81BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5E4F1416DE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E4F1416DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1MAmu_IN6aWe for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86AF64163D
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86AF64163D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:54 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CD05560EFF;
 Mon, 23 Jan 2023 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E8F9C433EF;
 Mon, 23 Jan 2023 14:00:51 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:15 +0200
Message-Id: <c341b84148835f1d7fb5936362ca9ea9b209cbd7.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482453;
 bh=Q9AnxaaD3P0/tqqBZv4w/yHDVZnRUwNlC6ZUUv5/8HI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PsUINBpFSePP3Jv9r9g8vTze4w824xNJVXNw9bF8UbWOWleIa+nnZJWo4879Uhbrm
 yIU1Uz+246YGGrpQ/hsd8a2XTl4JpO0SFJb6IwGPL+D4nj+zQMw367AIWGijReNc9M
 JtnwAxoDmHeFat9iPM8ZNtxu6YPZoSFx1rJhpNlrwO+JiVs21sNbLqtWLb8yS8tkak
 IXzALAVJ5KL9RkTasrjWvELxHCxdjX1S3PxpusJOIzYWkD6ApXIxXzgjCyTeWQ15dC
 cWsbFmJlW8TvCr77OsbsSFRZ8IvQdJzjAQwd1onzeZAVDeJvbIaeiSRrc3BpZFCIwK
 VuJqsdX7aVB6g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=PsUINBpF
Subject: [Intel-wired-lan] [PATCH net-next 02/10] net/mlx5e: Fill IPsec
 policy validation failure reason
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
 .../mellanox/mlx5/core/en_accel/ipsec.c       | 22 ++++++++++---------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index 83e0f874484e..3236c3b43149 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -497,34 +497,33 @@ static void mlx5e_xfrm_update_curlft(struct xfrm_state *x)
 	mlx5e_ipsec_aso_update_curlft(sa_entry, &x->curlft.packets);
 }
 
-static int mlx5e_xfrm_validate_policy(struct xfrm_policy *x)
+static int mlx5e_xfrm_validate_policy(struct xfrm_policy *x,
+				      struct netlink_ext_ack *extack)
 {
-	struct net_device *netdev = x->xdo.real_dev;
-
 	if (x->type != XFRM_POLICY_TYPE_MAIN) {
-		netdev_info(netdev, "Cannot offload non-main policy types\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload non-main policy types");
 		return -EINVAL;
 	}
 
 	/* Please pay attention that we support only one template */
 	if (x->xfrm_nr > 1) {
-		netdev_info(netdev, "Cannot offload more than one template\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload more than one template");
 		return -EINVAL;
 	}
 
 	if (x->xdo.dir != XFRM_DEV_OFFLOAD_IN &&
 	    x->xdo.dir != XFRM_DEV_OFFLOAD_OUT) {
-		netdev_info(netdev, "Cannot offload forward policy\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload forward policy");
 		return -EINVAL;
 	}
 
 	if (!x->xfrm_vec[0].reqid) {
-		netdev_info(netdev, "Cannot offload policy without reqid\n");
+		NL_SET_ERR_MSG_MOD(extack, "Cannot offload policy without reqid");
 		return -EINVAL;
 	}
 
 	if (x->xdo.type != XFRM_DEV_OFFLOAD_PACKET) {
-		netdev_info(netdev, "Unsupported xfrm offload type\n");
+		NL_SET_ERR_MSG_MOD(extack, "Unsupported xfrm offload type");
 		return -EINVAL;
 	}
 
@@ -559,10 +558,12 @@ static int mlx5e_xfrm_add_policy(struct xfrm_policy *x,
 	int err;
 
 	priv = netdev_priv(netdev);
-	if (!priv->ipsec)
+	if (!priv->ipsec) {
+		NL_SET_ERR_MSG_MOD(extack, "Device doesn't support IPsec packet offload");
 		return -EOPNOTSUPP;
+	}
 
-	err = mlx5e_xfrm_validate_policy(x);
+	err = mlx5e_xfrm_validate_policy(x, extack);
 	if (err)
 		return err;
 
@@ -583,6 +584,7 @@ static int mlx5e_xfrm_add_policy(struct xfrm_policy *x,
 
 err_fs:
 	kfree(pol_entry);
+	NL_SET_ERR_MSG_MOD(extack, "Device failed to offload this policy");
 	return err;
 }
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
