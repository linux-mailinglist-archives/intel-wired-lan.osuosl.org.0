Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0338067A7C4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 01:34:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8FE7E417C2;
	Wed, 25 Jan 2023 00:34:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8FE7E417C2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674606875;
	bh=BWkhUVqkbodLL9houEAevjwPt/7dSy6s8+yGgpb1WkM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=QAKs0uk3yqxuwySbJBzCJ+z/wZmUjBSBkovt3Tph5NMkUzCBFCSgX8kwPk2SD3r2y
	 Mh7yxFziXUoO8ST1mowrSe1wIAL74ExzRxN+OmoHPAGpZgYbzZaT7E0JIB/rcjQnoE
	 pqqJng0LUFYwdMFwe4Rsf7+3kZbeg5LOJODctkkXadNKtygTLCTdWTwIOU4zghmd9p
	 CqoK1v5Frw/heICx4QvO46Pyusso79YC3tXvc6lBZfBFBMaidLIx6vYmXQEBdZE8We
	 eaxBBcU3hiGU8lffpzRHijq+UV0rkl0rkohYkIKw9JS6SZnq7NzAHw03hmZChFSAMJ
	 AKa21dNgB2eAQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jk33o0rF0FYw; Wed, 25 Jan 2023 00:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2648E41717;
	Wed, 25 Jan 2023 00:34:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2648E41717
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B55361BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E57F4168A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E57F4168A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NyW0-b38DjSv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 00:34:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9686E417C2
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9686E417C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id CD791B81733;
 Wed, 25 Jan 2023 00:34:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04C9BC433D2;
 Wed, 25 Jan 2023 00:34:24 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed, 25 Jan 2023 01:33:23 +0100
Message-Id: <20c7b0767c2e3be8c33bfcfe1e0de9e6eb3a5e9a.1674606197.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674606193.git.lorenzo@kernel.org>
References: <cover.1674606193.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674606864;
 bh=EUEjHYCFZLBlSjnOAZ24J2T1iHJ/3Lz1NQeBwSmXZYY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GMwX62gt4ITzzk3rY5tg2EFzZ9G+Udi8BUSmZjK4rc8WDvHoHR0pbX5iu8VLOcAnE
 U43FA1NZejxjhU3cUa6uilIravyKEREZJRs1JsFMT/an3pP4yU2tO0OtKmRlpXPOdj
 04Wtq+HkthUXhulWEzC2FwIUtwMlAcmaJ38dY13gQA6e/uVQDXEtkPq+d8rIxYAQNy
 hid7k8TeT+0qh/aHSSamapypsyQqqLbg1TmrftVmpF9ifw9weW3Q57rqucPRm/DmSc
 S37nwXek2KQ85RudakRAfLPWQeeQWKk3zg2N+9qqSWZQUFbEjVwfQyZ9EfikcjETC/
 YxAxOyYMA9YbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GMwX62gt
Subject: [Intel-wired-lan] [PATCH v2 bpf-next 3/8] xsk: add usage of XDP
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
