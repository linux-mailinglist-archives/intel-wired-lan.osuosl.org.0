Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5F451BCCC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8B99460AA0;
	Thu,  5 May 2022 10:07:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cMF6IIS5eYt2; Thu,  5 May 2022 10:07:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D53160FF1;
	Thu,  5 May 2022 10:07:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF2781BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CFD160FEF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5c0kklD3XOJb for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E7A2660FE9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:17 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3CCE7618A3;
 Thu,  5 May 2022 10:07:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C8CEC385A4;
 Thu,  5 May 2022 10:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745236;
 bh=yH0duYjC6i5BVPwRe67fyQrYY2GTxtYC+kYEVhMVlmE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ngSGJ7YmTyAkl6xK5D9spDCwVofsSaZAsQGUry3dJ5iuYIknhflr1q/1acWaqUqG2
 ZKFYdg0GGcSfKqlf0jtyCYwZtcGI7qLKol476Omu0DRRRvLb9n1EZqzI7HBVJQrwTR
 sPw1DE31A5F6BrpnTa46MFIEDnyhF51Jkz8R31eDPYIh0xgPlkeIwc8XKuPFeTT9az
 X8n5xBAD/YIlBZxE9+JCgh7S5K6IE0JChEHodWXNAD5it3w8Hr5I/hJqWvSWk06JDg
 mSFqyA9decBuRGawB9SIXPoYXfPFvBlU/K4lD3n7Sewoe85VVopiGUcCMBp09mjSHK
 WXOt4FOBOhN5w==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:41 +0300
Message-Id: <79ebb257828b880c4ad9bf81734053ba0f14e3e0.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 4/8] xfrm: store and rely on
 direction to construct offload flags
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 intel-wired-lan@lists.osuosl.org, Raed Salem <raeds@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Leon Romanovsky <leonro@nvidia.com>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

XFRM state doesn't need anything from flags except to understand
direction, so store it separately. For future patches, such change
will allow us to reuse xfrm_dev_offload for policy offload too, which
has three possible directions instead of two.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h     | 6 ++++++
 net/xfrm/xfrm_device.c | 8 +++++++-
 net/xfrm/xfrm_user.c   | 3 ++-
 3 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index bb20278d689c..45422f7be0c5 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -126,12 +126,18 @@ struct xfrm_state_walk {
 	struct xfrm_address_filter *filter;
 };
 
+enum {
+	XFRM_DEV_OFFLOAD_IN = 1,
+	XFRM_DEV_OFFLOAD_OUT,
+};
+
 struct xfrm_dev_offload {
 	struct net_device	*dev;
 	netdevice_tracker	dev_tracker;
 	struct net_device	*real_dev;
 	unsigned long		offload_handle;
 	u8			flags;
+	u8			dir : 2;
 };
 
 struct xfrm_mode {
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 6e4d3cb2e24d..c818afca9137 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -117,7 +117,7 @@ struct sk_buff *validate_xmit_xfrm(struct sk_buff *skb, netdev_features_t featur
 
 	sp = skb_sec_path(skb);
 	x = sp->xvec[sp->len - 1];
-	if (xo->flags & XFRM_GRO || x->xso.flags & XFRM_OFFLOAD_INBOUND)
+	if (xo->flags & XFRM_GRO || x->xso.dir == XFRM_DEV_OFFLOAD_IN)
 		return skb;
 
 	/* This skb was already validated on the upper/virtual dev */
@@ -267,10 +267,16 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	/* Don't forward bit that is not implemented */
 	xso->flags = xuo->flags & ~XFRM_OFFLOAD_IPV6;
 
+	if (xuo->flags & XFRM_OFFLOAD_INBOUND)
+		xso->dir = XFRM_DEV_OFFLOAD_IN;
+	else
+		xso->dir = XFRM_DEV_OFFLOAD_OUT;
+
 	err = dev->xfrmdev_ops->xdo_dev_state_add(x);
 	if (err) {
 		xso->flags = 0;
 		xso->dev = NULL;
+		xso->dir = 0;
 		xso->real_dev = NULL;
 		dev_put_track(dev, &xso->dev_tracker);
 
diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
index 7217c57a76e9..6a58fec6a1fb 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -852,7 +852,8 @@ static int copy_user_offload(struct xfrm_dev_offload *xso, struct sk_buff *skb)
 	xuo = nla_data(attr);
 	memset(xuo, 0, sizeof(*xuo));
 	xuo->ifindex = xso->dev->ifindex;
-	xuo->flags = xso->flags;
+	if (xso->dir == XFRM_DEV_OFFLOAD_IN)
+		xuo->flags = XFRM_OFFLOAD_INBOUND;
 
 	return 0;
 }
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
