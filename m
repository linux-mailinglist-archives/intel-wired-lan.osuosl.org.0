Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093B5677D58
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Jan 2023 15:00:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D28C405DB;
	Mon, 23 Jan 2023 14:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D28C405DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674482452;
	bh=KeXyYEmsHZM3pp3f2zxQAYXO4zxlAPazd2097rIpJZs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tQGjO7GZsX7B8eVIVoyyi3a5NbDzbfl2IzD5ahoE22jwcoi9HCf81ENe1e8X9+wPu
	 uUWCkX8hzy0uHs3bDWTFmqqcnrCbUYq2FFkRo29ECxV/WuMMaxgFJ3H6rFVjY4lSwT
	 SIWxbpH32w8A7iONIPuwjfN+OMBj92IumTnNiDrphLzJO1lti82H6zpMn0oVkOIAm6
	 6QMpDVy1lCdRXkVgWzfLii7dZcWBuUWboNBGm6AByNnmNeWSN2sKGU1voIe75HSTSv
	 9d4YSbiT267dYkp53eOd3/UoIQEhCJv06FOicScvbkBS+135Khej9PZTOu9Eg4itv9
	 YOpPmU0v0gIhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z3Wsi64VSbgi; Mon, 23 Jan 2023 14:00:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 12BDB4037E;
	Mon, 23 Jan 2023 14:00:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12BDB4037E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 574DB1BF359
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 406D94037E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 406D94037E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L7gQ5S1iTaQU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Jan 2023 14:00:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E6F54035D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E6F54035D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Jan 2023 14:00:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4335E60F1A;
 Mon, 23 Jan 2023 14:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49662C433D2;
 Mon, 23 Jan 2023 14:00:42 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Date: Mon, 23 Jan 2023 16:00:14 +0200
Message-Id: <6048dba5bf83d5ad772b37e351bf0f8ebc7d6a7b.1674481435.git.leon@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674481435.git.leon@kernel.org>
References: <cover.1674481435.git.leon@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674482444;
 bh=Gd9vMcslDI1r9tIWzoeJTAmt/tu1HZbdEQXbvY1ExiA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pXSGYqLtAgS2aCLNJ2E/BIKvmhz8JJSFNE2+bgeHqO28pzhuJXjad0gAtrxYbbkt4
 LVR/xFFjwlZwBnBVjDF4ZRujx/FZvKRkgKuB2BB52kLoi4KvOzYp3whR0kiv9jQoXS
 Qb10EmTQCo+mIFVdX3Jtl/zDlmijUo67JtB9nXm9VDYfKJYaocsn520FG0q19r2Lcv
 kcWq+m4WDTls18Jp110PVK8qBvB9lnQ/567kJy+oZFuJRw/NyxBkrQMZ8wsK7CTf0j
 kt6wKEyP+oG0pZcC8W38cBBqNBoo4ZZndENBv+HOFxcUdU/iZeyoyx28CBi/YZO8HN
 afISmjwnZD+Mg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pXSGYqLt
Subject: [Intel-wired-lan] [PATCH net-next 01/10] xfrm: extend add policy
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
Signed-off-by: Leon Romanovsky <leon@kernel.org>
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
