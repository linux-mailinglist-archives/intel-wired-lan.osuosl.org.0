Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA82686449
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 11:32:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 78B1A418D6;
	Wed,  1 Feb 2023 10:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 78B1A418D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675247536;
	bh=BWkhUVqkbodLL9houEAevjwPt/7dSy6s8+yGgpb1WkM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mIhSyYQ9ERF6E1GYEiTp0Xe56l/F+FdLogfqEIXf77TxHbz6xL57xAT92IokLnquM
	 FpNWhK8/l6mSdD9lGLT6yQhyX/cp31dHfYUNjBB9VDKWLI1x/YObsMLA1kYQT9pG9j
	 O9y/tQCMAA1gBRvWMGnrrfckRTiCuQuxcUncEn1UvH/5vKhRyI4QEdhO40Nh6q7jRa
	 jhqvwUq0F3+x69crBWpYsXGoIN0nfXayrTGX5RkaqfM/MOvPLNlYrTYScNkx8ZyOo2
	 PdP+OlO9LJY7LeNt5jQIWsFxDTfawwn+EgdgPLhSRXEq44+vzSZNNSj3S/MTwWFy7A
	 T/5b5z/TMqjvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRnrqudtYtgv; Wed,  1 Feb 2023 10:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D893410A6;
	Wed,  1 Feb 2023 10:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D893410A6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 019A01BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:32:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC80681392
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:32:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC80681392
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gXL5uYbhCUfn for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 10:32:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37F4E8139E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 37F4E8139E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 10:32:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2E84E61739;
 Wed,  1 Feb 2023 10:25:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1866AC433EF;
 Wed,  1 Feb 2023 10:25:14 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed,  1 Feb 2023 11:24:19 +0100
Message-Id: <45a98ec67b4556a6a22dfd85df3eb8276beeeb74.1675245258.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1675245257.git.lorenzo@kernel.org>
References: <cover.1675245257.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675247114;
 bh=EUEjHYCFZLBlSjnOAZ24J2T1iHJ/3Lz1NQeBwSmXZYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SVuI+zUN+v/ek6atT1jY434aD2dCGtiIjY+g9Le3DZhK1eUvqLDLkHkbt1VZN2fdd
 7zUL77gnq7DUrn6Nk4og1Ex6zCaJ3cgr1y8YvDOmmb6bbBWsHaVSkkH5yOHK6BUOO2
 699hJV5Yr0qfhIMqe/FcESgRfY/UVXXFzf7+IhB/wARSkHHKlTlHflqJVi6rCEWkEp
 z/ZZKsy7EPKAVwyxsbP3agqy4Sl/VeJDEHedv0NSY6BbleiusKe+I0g0UJuvPM/L40
 ngaTjdBEqs1CyE3Bo4vekiEQotEhNw+Hh60Q+SU5xA+u8YWSAb7Cydsl7FXPLgOc34
 XsS5KqerglTcw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SVuI+zUN
Subject: [Intel-wired-lan] [PATCH v5 bpf-next 3/8] xsk: add usage of XDP
 features flags
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 gerhard@engleder-embedded.com, daniel@iogearbox.net, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, magnus.karlsson@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <alardam@gmail.com>

Change necessary condition check for XSK from ndo functions to
xdp features flags.

Signed-off-by: Marek Majtyka <alardam@gmail.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 net/xdp/xsk_buff_pool.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index ed6c71826d31..b2df1e0f8153 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -140,6 +140,10 @@ static void xp_disable_drv_zc(struct xsk_buff_pool *pool)
 	}
 }
 
+#define NETDEV_XDP_ACT_ZC	(NETDEV_XDP_ACT_BASIC |		\
+				 NETDEV_XDP_ACT_REDIRECT |	\
+				 NETDEV_XDP_ACT_XSK_ZEROCOPY)
+
 int xp_assign_dev(struct xsk_buff_pool *pool,
 		  struct net_device *netdev, u16 queue_id, u16 flags)
 {
@@ -178,8 +182,7 @@ int xp_assign_dev(struct xsk_buff_pool *pool,
 		/* For copy-mode, we are done. */
 		return 0;
 
-	if (!netdev->netdev_ops->ndo_bpf ||
-	    !netdev->netdev_ops->ndo_xsk_wakeup) {
+	if ((netdev->xdp_features & NETDEV_XDP_ACT_ZC) != NETDEV_XDP_ACT_ZC) {
 		err = -EOPNOTSUPP;
 		goto err_unreg_pool;
 	}
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
