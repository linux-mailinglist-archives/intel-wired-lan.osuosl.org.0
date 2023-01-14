Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6E166AC4F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 16:55:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8ED6960D67;
	Sat, 14 Jan 2023 15:55:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8ED6960D67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673711717;
	bh=x0DtXzrkxgsERPOLFnP+Pfx0beiHrl70Q8xyjzuZzbA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=YmChVG1XCMFMgZoKh5DqVIKABLWkzSjwAlJhK31JqJ/h1RPsdNtzE5z6gZx30b6DX
	 U1pDraSKA/Ejj6BwbeXrsXk8qcb57p7r/s3y73GgYK34lxCnDnhELakBFLilAqebtM
	 R6L0lw2gt4jjowVR2pMs8gTWrJosmrReTCeTK3g1cVfLVXBzLQ5bLqTt17w1i+SVDI
	 +s9Fjh6Qo1nYSzc0ktajvJ+76Mfd5j84Ik78Jzk4d5Y8trm2jP+VKT72OqNOO/0QRV
	 2huR6UBsTDiv4m6UOOwyflfIEZuBhr0YI6LnX3mcmUWrhuv8tvGgpCNgpx3xiwJg0O
	 90lUzumaNfsIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NeRWGr4GSHXH; Sat, 14 Jan 2023 15:55:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A6F060AB7;
	Sat, 14 Jan 2023 15:55:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A6F060AB7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 598EC1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4290240576
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4290240576
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M4NxY8YgCC0q for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 15:55:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C20340105
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C20340105
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:04 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id BEA93B8095C;
 Sat, 14 Jan 2023 15:55:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C21E0C433D2;
 Sat, 14 Jan 2023 15:55:00 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 14 Jan 2023 16:54:33 +0100
Message-Id: <36956338853442e6d546687678a93470a164ff17.1673710867.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1673710866.git.lorenzo@kernel.org>
References: <cover.1673710866.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673711701;
 bh=8bcWrSdLkPBLDabPqoyHtUr2JYRbbglpSB6VTJ2pAFo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aTVVQJdL88/PrLXgpptFkPZL/QS6rkeh4uvkbfxkmT+D/lABzyfJh9F0HJLKjQjiQ
 uzThsYPEWEPqICD1ucLX4Dp5RdGZGgBfrZNS82SY3s8HIBKfMDCzI0iecKklriYOtU
 60bypyR8ydj9mYxUP47vx3y79qR1LStpukQvm+CgR5b5tI3tgyoKfw3C+v+H2X2FAd
 dXG7aCNj4SmA/Q92jEs0azMVf+lm+tRUnqyMA0jtuJ6/M3l0oOguzYy/7PuenHFoQw
 /XhXFPXas/Dew395G9E9GdTTOC0n/lFFMHLsueJkdLp6GArZGR2jlJMifonouoBYVq
 yeqjST+PZM4DQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aTVVQJdL
Subject: [Intel-wired-lan] [RFC v2 bpf-next 3/7] xsk: add usage of XDP
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
 netdev@vger.kernel.org, toke@redhat.com, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
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
 net/xdp/xsk_buff_pool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index ed6c71826d31..2e6fa082142a 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -178,8 +178,7 @@ int xp_assign_dev(struct xsk_buff_pool *pool,
 		/* For copy-mode, we are done. */
 		return 0;
 
-	if (!netdev->netdev_ops->ndo_bpf ||
-	    !netdev->netdev_ops->ndo_xsk_wakeup) {
+	if ((netdev->xdp_features & NETDEV_XDP_ACT_ZC) != NETDEV_XDP_ACT_ZC) {
 		err = -EOPNOTSUPP;
 		goto err_unreg_pool;
 	}
-- 
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
