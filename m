Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E60679760
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 13:15:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 625D581F72;
	Tue, 24 Jan 2023 12:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 625D581F72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674562525;
	bh=yFT/qM9GnFy+J0f4NbuSCu2frlN8x+O7dj9C8gR+ktU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Eaf/5L9ri8rL1L6veTcQA0JlVbHKz8joRricnjunBlXwM6227kdfP6J/28QRJQ+N/
	 r6pYtnM20KaKro/mQk8kpib+YFD5cM75OienA0gOOajLR0RlYHQ5+51h5PagZlNfGh
	 cj/Z6HhgkiIIVdsCQ+uGV4CvkS5Lgi+o7PscydPWyR4K3bY2woD5yPUXuHTfhUQZT1
	 BtoiMnOXvWBUMJl5DcGAd7lN7yOE3uNuI01yiNl2XGvCZXW5I16Z1Zr8HvvtyiLJ69
	 2gPW1Q7NE2YLvC4T/VktaAofGQeVY08Y+BM+iAOeEHjtEny8tzIg1YRnYibIoGxMhI
	 yr5SX+F5jUfsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xj02LJouBsUI; Tue, 24 Jan 2023 12:15:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 41F7A81AD1;
	Tue, 24 Jan 2023 12:15:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41F7A81AD1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6083D1BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 38DCA60F4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 38DCA60F4E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6quB8KdZHk7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Jan 2023 12:15:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6CF2460C16
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6CF2460C16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Jan 2023 12:15:18 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7DC8461050;
 Tue, 24 Jan 2023 12:15:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23CD1C433D2;
 Tue, 24 Jan 2023 12:15:16 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Tue, 24 Jan 2023 13:54:57 +0200
Message-Id: <c182cae29914fa19ce970859e74234d3de506853.1674560845.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674560845.git.leon@kernel.org>
References: <cover.1674560845.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674562516;
 bh=nu8LHZBHCAAwtW0NjfNUFj/1eHMKtPNHBYNbgs0+ay8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UWVIFBasZlxVHqWWzmtm1+13TAMOEDRc2cbKi21bVFA7HoXdoyDvoAcPLKRY1kJCQ
 98usGl78r9We18R6iIS+yrBUNXUOKzQjXTQwYg1Zk0y2blnYSz7lnmh7XshwiMElrf
 ubFWKRX9KfDGoOXeMCRw9e63ChY0gH4NTLs++We84CX7J/ymeuS8I2ozX3wVZTlUfz
 qNykFZ5YjtZeMZgYO7lzJtW20insnQpBtpH6OXmVwe2zkmLfXFJdx0hC3vRfITQuxV
 Tc7SSVIpB9YzlltXIOr1imY/m35LuR+bAU7Z57SBLulDE/oECKsf2AijiGDmX5j/tZ
 CXpds/6bFtUMA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=UWVIFBas
Subject: [Intel-wired-lan] [PATCH net-next v1 01/10] xfrm: extend add policy
 callback to set failure reason
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

Almost all validation logic is in the drivers, but they are
missing reliable way to convey failure reason to userspace
applications.

Let's use extack to return this information to users.

Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 Documentation/networking/xfrm_device.rst                 | 2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c | 3 ++-
 include/linux/netdevice.h                                | 2 +-
 net/xfrm/xfrm_device.c                                   | 3 +--
 4 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/networking/xfrm_device.rst b/Documentation/networking/xfrm_device.rst
index c43ace79e320..b9c53e626982 100644
--- a/Documentation/networking/xfrm_device.rst
+++ b/Documentation/networking/xfrm_device.rst
@@ -73,7 +73,7 @@ Callbacks to implement
 
         /* Solely packet offload callbacks */
 	void    (*xdo_dev_state_update_curlft) (struct xfrm_state *x);
-	int	(*xdo_dev_policy_add) (struct xfrm_policy *x);
+	int	(*xdo_dev_policy_add) (struct xfrm_policy *x, struct netlink_ext_ack *extack);
 	void	(*xdo_dev_policy_delete) (struct xfrm_policy *x);
 	void	(*xdo_dev_policy_free) (struct xfrm_policy *x);
   };
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
index bb9023957f74..83e0f874484e 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_accel/ipsec.c
@@ -550,7 +550,8 @@ mlx5e_ipsec_build_accel_pol_attrs(struct mlx5e_ipsec_pol_entry *pol_entry,
 	attrs->reqid = x->xfrm_vec[0].reqid;
 }
 
-static int mlx5e_xfrm_add_policy(struct xfrm_policy *x)
+static int mlx5e_xfrm_add_policy(struct xfrm_policy *x,
+				 struct netlink_ext_ack *extack)
 {
 	struct net_device *netdev = x->xdo.real_dev;
 	struct mlx5e_ipsec_pol_entry *pol_entry;
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index aad12a179e54..7c43b9fb9aae 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1042,7 +1042,7 @@ struct xfrmdev_ops {
 				       struct xfrm_state *x);
 	void	(*xdo_dev_state_advance_esn) (struct xfrm_state *x);
 	void	(*xdo_dev_state_update_curlft) (struct xfrm_state *x);
-	int	(*xdo_dev_policy_add) (struct xfrm_policy *x);
+	int	(*xdo_dev_policy_add) (struct xfrm_policy *x, struct netlink_ext_ack *extack);
 	void	(*xdo_dev_policy_delete) (struct xfrm_policy *x);
 	void	(*xdo_dev_policy_free) (struct xfrm_policy *x);
 };
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 4aff76c6f12e..2cec637a4a9c 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -383,14 +383,13 @@ int xfrm_dev_policy_add(struct net *net, struct xfrm_policy *xp,
 		return -EINVAL;
 	}
 
-	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp);
+	err = dev->xfrmdev_ops->xdo_dev_policy_add(xp, extack);
 	if (err) {
 		xdo->dev = NULL;
 		xdo->real_dev = NULL;
 		xdo->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
 		xdo->dir = 0;
 		netdev_put(dev, &xdo->dev_tracker);
-		NL_SET_ERR_MSG(extack, "Device failed to offload this policy");
 		return err;
 	}
 
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
