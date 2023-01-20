Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 813BE675AFA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 18:17:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B05EE612BA;
	Fri, 20 Jan 2023 17:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B05EE612BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674235056;
	bh=x0DtXzrkxgsERPOLFnP+Pfx0beiHrl70Q8xyjzuZzbA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DnR0kOY4ncL8CjKUd7dVFEaKFabTzYFMDHCpUCfx2Xynn7GSoDZz5dcHjj8l2ydiN
	 aHS+yMlgrbATd+b7EADqyA0ooxHEZSkAF09/oeQR57aZ+n0BF5TSxiNiv5H0hcO7MM
	 2GTT6fuplv/277MNflbSreROCLtRk++ExgZqjQfJpbAFVCimkcXXafM0fYUCbgZV2I
	 GChXbvkjEAL6cN2HY1Pw+rpb8xau8wE0ldm+ggoIRSlGe+aeWV9xVf37lPCv1jEXhr
	 Vo8DrrfYNfVnXQ+BWqXxGj2PSWANeoX9RJE2iIUjVbJs64VctuguxsP2+ScqjO+fdN
	 65sxOVtOJQG7g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dotkNgEBFfXk; Fri, 20 Jan 2023 17:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3B05612BB;
	Fri, 20 Jan 2023 17:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3B05612BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D2EA1BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 18A6F612B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18A6F612B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n-Ci_J37TePn for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 17:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 856AE612AF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 856AE612AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:27 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9B00461FD4;
 Fri, 20 Jan 2023 17:17:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1115C433D2;
 Fri, 20 Jan 2023 17:17:25 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Fri, 20 Jan 2023 18:16:52 +0100
Message-Id: <a8ec5fdb515463443f4984b40760370594094854.1674234430.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674235046;
 bh=8bcWrSdLkPBLDabPqoyHtUr2JYRbbglpSB6VTJ2pAFo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=p09ZafJaEpLsXZFWt1AOZwlMi4a7Fv/KkcRs4WzUQRA+Wx/C0FwOXJTkBhFUdvqIk
 fqE0GnynjQgXQJY67Ss5BKdO8fjU1HdbmmPphkJr/AQKxi1n4V9wiWKUVuwkDhPcJe
 6oc+7+ozrJEoyqF/aY6E4HiVCeJTE+l46Rp6omAqUfqUVCPoPGBsMqhqv1Rsr8vxJo
 R+r/C99U+ejsT5I2jHxM76J7iz0ANN/wvnrpoMGf3Fu1yr+AHgLcnolEY7/CMaMgVq
 Zzh/da5kKpOVaSqKhNoT/yBkawJMx43LEzZfrbIiymy6umDhjNhPvBGPixN8bRTPjA
 wpCIkJI2tWcMw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=p09ZafJa
Subject: [Intel-wired-lan] [PATCH bpf-next 3/7] xsk: add usage of XDP
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
 niklas.soderlund@corigine.com, andrii@kernel.org,
 intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
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
