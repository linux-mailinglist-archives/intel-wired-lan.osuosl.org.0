Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DBB51BCCD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0D7E384019;
	Thu,  5 May 2022 10:07:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id diN5Xagm5yes; Thu,  5 May 2022 10:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6399781325;
	Thu,  5 May 2022 10:07:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4B42E1BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 38BE640BF5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8cucn2Ljkg55 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9DF61400D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:23 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A6149B82C15;
 Thu,  5 May 2022 10:07:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E73E8C385A8;
 Thu,  5 May 2022 10:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745240;
 bh=KgMZhpYNtqq1/zCqQuoZ4G4J9OVfi6Dr20foBMl3KyA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hCQw93sTBCQEm1myGaAfMkeXrFOYxQ+fbLaIbkFnCp0RRj68UotfxECUL0ELD8muQ
 7LCXjXgLV5g/EN1hL4Ay2edh2AIpFNtbaDXALsarqto3MPXCyq6jAasCkvaZqx3A4b
 TbmUcrOnP2wzg18iHydCZmAoeRrvzxrlIF+cE8UDqu7oTeuDs/B6RvJLAfdND540vQ
 E06M9HyATNPKQ9F4bHs9w6FOUrbssj3+XEgYH+O9eE+UyzLkapddLwMHn3JuB6pmTE
 SzzlzH3UQBVsDUdFJEKz8ePUW8ey+SnjtPoNUewj1TB9Zr13lLBnYibC4EbhQHnudi
 BzF+McfFmaPUw==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:45 +0300
Message-Id: <b0c39ee6e266ee021b810259fd73f5701fa929d1.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 8/8] xfrm: drop not needed
 flags variable in XFRM offload struct
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

After drivers were converted to rely on direction, the flags is not
used anymore and can be removed.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h     | 1 -
 net/xfrm/xfrm_device.c | 3 ---
 2 files changed, 4 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index 45422f7be0c5..736c349de8bf 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -136,7 +136,6 @@ struct xfrm_dev_offload {
 	netdevice_tracker	dev_tracker;
 	struct net_device	*real_dev;
 	unsigned long		offload_handle;
-	u8			flags;
 	u8			dir : 2;
 };
 
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index c818afca9137..35c7e89b2e7d 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -264,8 +264,6 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	xso->dev = dev;
 	netdev_tracker_alloc(dev, &xso->dev_tracker, GFP_ATOMIC);
 	xso->real_dev = dev;
-	/* Don't forward bit that is not implemented */
-	xso->flags = xuo->flags & ~XFRM_OFFLOAD_IPV6;
 
 	if (xuo->flags & XFRM_OFFLOAD_INBOUND)
 		xso->dir = XFRM_DEV_OFFLOAD_IN;
@@ -274,7 +272,6 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 
 	err = dev->xfrmdev_ops->xdo_dev_state_add(x);
 	if (err) {
-		xso->flags = 0;
 		xso->dev = NULL;
 		xso->dir = 0;
 		xso->real_dev = NULL;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
