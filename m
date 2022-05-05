Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BF751BCC7
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 May 2022 12:07:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C38B384031;
	Thu,  5 May 2022 10:07:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ooAqKUcCXSZk; Thu,  5 May 2022 10:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE12D813DC;
	Thu,  5 May 2022 10:07:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 857011BF2B7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 815F0408C5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IHsx-ftxUUb2 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 May 2022 10:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB08840293
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 May 2022 10:07:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CE08B618B0;
 Thu,  5 May 2022 10:07:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BABD5C385AA;
 Thu,  5 May 2022 10:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1651745221;
 bh=4FIpCY9Z01WPoEn/gyFFBr4Y7yZVetS0OrJ9FRv+qSI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k7mo4we4SqBaYjh3WCoo8c9/za3BMutBLK2iT3a21nkZJTo8QgwjWIBehv9xEqPM4
 UHpxdn3AEiDfHVaYejXFrvw3bitPgRvnoFVJz1nsCJolq0XhASXzHsGNs7yIPnXC4b
 roEfdU+jNgXxoQtdm57tmQiZLN6yvglv2rK88vZ0om9Mdv7eP63pTcVZ94NQ/+wUQU
 zkO2zf9Ub5uGExAVKJtUDbBfEE2u/OeD1Pvd5J0SLdtiQACBs40NaJfLbIMVADg40v
 8uPKUBn+p2TUUxJeiMons//qmV5Qo1ioTTXWfENJ3g5b4Yjp4sxj4LXqoyLbHOSoOg
 Op2KADFh46pew==
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Date: Thu,  5 May 2022 13:06:39 +0300
Message-Id: <099569952c609251ea4c156d6c6aed6031abafa7.1651743750.git.leonro@nvidia.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1651743750.git.leonro@nvidia.com>
References: <cover.1651743750.git.leonro@nvidia.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH ipsec-next 2/8] xfrm: delete not used
 number of external headers
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

num_exthdrs is set but never used, so delete it.

Reviewed-by: Raed Salem <raeds@nvidia.com>
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h     | 1 -
 net/xfrm/xfrm_device.c | 2 --
 2 files changed, 3 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index b41278abeeaa..4e097423116c 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -131,7 +131,6 @@ struct xfrm_state_offload {
 	netdevice_tracker	dev_tracker;
 	struct net_device	*real_dev;
 	unsigned long		offload_handle;
-	unsigned int		num_exthdrs;
 	u8			flags;
 };
 
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index 36aa01d92b65..dbd923e1d5f0 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -264,13 +264,11 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	xso->dev = dev;
 	netdev_tracker_alloc(dev, &xso->dev_tracker, GFP_ATOMIC);
 	xso->real_dev = dev;
-	xso->num_exthdrs = 1;
 	/* Don't forward bit that is not implemented */
 	xso->flags = xuo->flags & ~XFRM_OFFLOAD_IPV6;
 
 	err = dev->xfrmdev_ops->xdo_dev_state_add(x);
 	if (err) {
-		xso->num_exthdrs = 0;
 		xso->flags = 0;
 		xso->dev = NULL;
 		xso->real_dev = NULL;
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
