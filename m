Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA88679761
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:15:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49AF582151;
	Tue, 24 Jan 2023 12:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49AF582151
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562529;
	bh=V6KkoG2AnuaUbGpqmYYTN/M875SxhZ0ab+mA49iLudU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bTOOZ1/2DWU/smalfj9xG9PoT+inac1dNI+/t2IFt+UX7HSiQgj3trSivDXLT4E2I
	 yZMM8q2wnXgkUjrt3P1FUMEDlLBqZBgBHFgIS8b43HqR7mOYHpVY/8cmqGvKdBAh4D
	 dU87qSBZS4ED34T5Gq6SBGL7ACY1ethmMtVPIvtTobCbYR+aAb3S/xcl7kPENEqdt1
	 6rHUxYhZcwpFnjeVuoSgqKaHygNlOpyk7+6k8q/mHEPplZyI/aSd8O9znvnU9B2VBb
	 /7OV9VMxxhZm+iWTEcgJy14FZyVkDKPzAlvcClfJibL7l932VMbj/fxvyw995X6ZrU
	 V+E0Ul+zs5BOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0m5WgswtoIV; Tue, 24 Jan 2023 12:15:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F5D981AD1;
	Tue, 24 Jan 2023 12:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4F5D981AD1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 019181BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD7F84051F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD7F84051F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fboQpAMstcln for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A15140157
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A15140157
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:22 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 890AE61152;
 Tue, 24 Jan 2023 12:15:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F218C433D2;
 Tue, 24 Jan 2023 12:15:20 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:54:58 +0200
Message-Id: <827fc088e41d891a651ea7c0c10c0343ffe8177d.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674562521;
 bh=d0TP8CzjY3P9mUlZWC+vtoSEaggJpOjFfgdxsGSGWBc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TMKXaontAlLIceLepXNK4HHP3gk3+4OXAM4jJ+RzKhwHzHQE+o9iBhL62JRVoFyVM
 p8Nxov+BeojR7/LAg72V7NX1ni/kA6Vo/4RglMCOogS8ySASOmH6P3/4mTtirdlG0/
 bBzJIe7IFL+C6CroKvW6gDR7jhpYMtDMuIMe75x5P2gVh9VN5wicuUhkJ7DbXOwL+c
 r5n4DYyHK/Kd2xfIJwMbj34Nfnw9DhuqQjrK5ig1QVjmGpCZgC8t/Yz9EgKrmBYq+6
 qd7fh1250VdlFdZbWEj4ozEFW/8Jibz3PNjKiKOTDqFNYVntQHBUBNMDVMX4KUQGMl
 KnR/nlu993igw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TMKXaont
Subject: [Intel-wired-lan] [PATCH net-next v1 02/10] net/mlx5e: Fill IPsec
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
