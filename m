Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0F567CB78
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Jan 2023 13:59:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CAA0A40993;
	Thu, 26 Jan 2023 12:59:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CAA0A40993
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674737961;
	bh=BWkhUVqkbodLL9houEAevjwPt/7dSy6s8+yGgpb1WkM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y66+mCDB62HQclTeujG7h4M7wSYElzR57YfNoszclLBUg8JZsVcPvFdpm7oxKilqX
	 Lt95fHuQiuYQcRqPS0uMHp2u3wAWlecr9NbKluwZJmaMNumBxHLYJPszmz17ODlE8v
	 wMOzagiy3oRXSKtCJ7JbjCcHGXdSXVr0MObCJ23ZMGNaLQc54V8mtfLKIej+Uf8ath
	 CWANF/2LuSiGvy47HfX9bCs16vM8FQhkMCy8y0LLC/5/DYWBxJ3+pX+gb+GYmwkIzr
	 7Au8edKdc45la30q+3Wp7628ZBxdcbTwv/nmSF3I0uhzQuhtInwfUGuJN9/FSztgeA
	 wIA+IL35qEpSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GP9h5cPF_rGw; Thu, 26 Jan 2023 12:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1B24401D8;
	Thu, 26 Jan 2023 12:59:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1B24401D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1D4CA1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:59:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4DFF41732
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:59:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E4DFF41732
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n09ppzECFDrY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Jan 2023 12:59:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAA91416C3
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BAA91416C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Jan 2023 12:59:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1FF83617CA;
 Thu, 26 Jan 2023 12:59:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 065E1C433EF;
 Thu, 26 Jan 2023 12:59:09 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Thu, 26 Jan 2023 13:58:28 +0100
Message-Id: <d2120df39e71c79494bb17678d2d97062862bf23.1674737592.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674737592.git.lorenzo@kernel.org>
References: <cover.1674737592.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674737949;
 bh=EUEjHYCFZLBlSjnOAZ24J2T1iHJ/3Lz1NQeBwSmXZYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZGQ3+gpA1SvN2zJhgmvjnZjERnDyIa345Z4+zcxme0Efwz4DOWCQGi+Ju2andqkXO
 0Npy8yoGirG0paxz5Wu3qNyrNyNqyoGL/f6GwwWglI26z0ZA3tOGMlxv/lcvMVrvC6
 fzvLqZtowTmpOqL+IO36pH0a5bKmjNBurnedSCmj0m328S4p86XpBt+zQhji3w0eYc
 TZpBRuo027D8h8k8kCt9FP3okSQ4lzcqSA4Y6wbeOh69CFTKUPYuviRb36hx4md7XP
 u3OIpgNVQxeAYwlw25I98y1G6qtHO5/EtQiwiagKE1/AgTVnSSHihMd/cSjAxwGZqn
 L3CiT1JleSGow==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ZGQ3+gpA
Subject: [Intel-wired-lan] [PATCH v3 bpf-next 3/8] xsk: add usage of XDP
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
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
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
