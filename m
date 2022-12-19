Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C5E650EDD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 16:42:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 20E13814B8;
	Mon, 19 Dec 2022 15:42:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 20E13814B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671464567;
	bh=B3GpxLDk3NnRY53A2SGX+e3JZkBrVi5MaYt6FKncaHo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OEEdcNpNfSbZJTWV/0zC3QZ5t/eqlbmS+KINRtSYD46iQX5x+Fsp3WqthQADwXf8N
	 wzyMOzfSLW2Pgm5hbknHXuYSM6MFj+ivmhz0TtnFgxoIrwnpm/nOtSPEfx1Jb6ufcx
	 uHz3ZEeMpLC10plrwx3AKxVSv8f/3EvwI/5CTX6x6pY2Dzx44L6xvHmaBwLlLzWYT/
	 EfxD0gH5Qh4i8W+iA4DhNuM1knCUsGJbg9aELgkkAbRQh9EV4Sfv2DEHWI4nabdsHu
	 srHkLmyCS14KoIEqSecG/Zry0q0Wx+pHE/buDeebHaqZw9gW0ifwNsfQUeziBumdyy
	 OyRrU5piU3Ccg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NJ1ACqoHInyE; Mon, 19 Dec 2022 15:42:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E5A38146A;
	Mon, 19 Dec 2022 15:42:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E5A38146A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 735811BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4E8378146A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E8378146A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dxxCkba5s4lv for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 15:42:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90AA581466
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90AA581466
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F2033B80EA9;
 Mon, 19 Dec 2022 15:42:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 244DDC43392;
 Mon, 19 Dec 2022 15:42:35 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Mon, 19 Dec 2022 16:41:33 +0100
Message-Id: <d06e3f2fe2c83c3731be5df731345cac36944887.1671462951.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1671462950.git.lorenzo@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671464555;
 bh=AFHGA4/VUtLtWks3taPMr6hCqmlIuVlvJjAohqShmBc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kv95OSOUNhxRPvuXoUI8nLwdmB4hfbglAEdpHGx2N2itWrIz1p2QrRi6yVFE5nJTz
 SJt5DNlrhMoPvPdzdbm9Z4zARUxcVOZmDMR4U2RY5io9H0ARlUbcp7YVo6HLHSVlXQ
 /U7Z1/qvuDogfjLzxLzNEIoHh4t/KpJqk7m4R99mwA8wWdsE8MiDKto5M6CykOobx1
 /5mbOqLmbwz2OElf55twBEhtMOb0qQPJFXd850tqPRugmf9M1bw5CwV9qDxP/X/RC1
 2oNFRLOpvBrSCC0VTdLD6558JMcLQUahqm+XDdKOG3/cPO4/5rfzj3ndHC9rjuL2XB
 r4LY71/02A8SA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=kv95OSOU
Subject: [Intel-wired-lan] [RFC bpf-next 4/8] xsk: add usage of XDP features
 flags
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
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
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
 net/xdp/xsk_buff_pool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index ed6c71826d31..7afd12dd69cc 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -178,8 +178,7 @@ int xp_assign_dev(struct xsk_buff_pool *pool,
 		/* For copy-mode, we are done. */
 		return 0;
 
-	if (!netdev->netdev_ops->ndo_bpf ||
-	    !netdev->netdev_ops->ndo_xsk_wakeup) {
+	if ((netdev->xdp_features & XDP_F_FULL_ZC) != XDP_F_FULL_ZC) {
 		err = -EOPNOTSUPP;
 		goto err_unreg_pool;
 	}
-- 
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
