Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F7867A7D2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 01:34:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22E86408C0;
	Wed, 25 Jan 2023 00:34:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22E86408C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674606894;
	bh=73Jhq70R7wAhH5drmFDeCGe0wcshBNZFmNJI468CZrI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Xkr3VyMlx10wGXpr5yQkV0T21NXhsujNn+PE0gY8ktxNAei716MzHLShs6C7kS6pf
	 ZNBhckWl2+cSWm/hYyopKHpxdb/mWdlqbukwAHc8rJDofmHlMslAVzeNkBZ2c8fLMI
	 C+8ekzQpUbWgapIUNl1SqptlXZBOTcwqgGMEijcth1Z1Pncp0TcWwt+A5MptpUhuSF
	 rbdurkXIgM9AfhiWlmOdovviy+JAucRWveKnOltWMe+N7RQqSwKDkMv0WOjsI5f64W
	 o6/g8lkdzDH0/Xhkl2paEtVHO0Cuuegrogpqd0/itCY807/ltov4rxTYj5tB1dlw1r
	 H+rOW7g10sfgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tpxnB4rM2DWB; Wed, 25 Jan 2023 00:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0287B40374;
	Wed, 25 Jan 2023 00:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0287B40374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C65D11BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9BF7381FA6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BF7381FA6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AD13NVA62sdo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 00:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D84D882024
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D84D882024
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 00:34:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 304AA61353;
 Wed, 25 Jan 2023 00:34:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0FD92C433D2;
 Wed, 25 Jan 2023 00:34:36 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Wed, 25 Jan 2023 01:33:26 +0100
Message-Id: <46f49d11939557aee7315bc23589cf261c19b494.1674606198.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674606193.git.lorenzo@kernel.org>
References: <cover.1674606193.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674606876;
 bh=xxZVhx3StcgNnFongN1nNXK6YLKdcHChYY3E1jGyTAc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=epYawzDE2xpezUbg9rjd2tkpWE3xGtgUzEdUTLHsSInZ/J6RAJbPf7/Kklfqt+GjR
 9IvCvgCT7cadqdBEtCtIfGBp3duJEtTYez52Wd1ioM+ltXYV36bijhCulv5uuKnqGV
 jONfdJZ/v3iawlN5dG7rKHSghndkWAY/frn+pXvSfLgYFUvgYpaif3pS/iL3NAu3kb
 PLl1DCGwZwWzezEYdv52KCdt0chHMYZD2OtiobFlzVV0LxMKtAyzrWshhqyjNp7odf
 BBAvwjJ7mtAW+mBovdKqGWbX/6jjEoXmdSvhzko2NyedcfuXLNo1znO+coVwGIdYka
 4/ti4w8BjGahg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=epYawzDE
Subject: [Intel-wired-lan] [PATCH v2 bpf-next 6/8] bpf: devmap: check XDP
 features in __xdp_enqueue routine
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

Check if the destination device implements ndo_xdp_xmit callback relying
on NETDEV_XDP_ACT_NDO_XMIT flags. Moreover, check if the destination device
supports XDP non-linear frame in __xdp_enqueue and is_valid_dst routines.
This patch allows to perform XDP_REDIRECT on non-linear XDP buffers.

Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 kernel/bpf/devmap.c | 16 +++++++++++++---
 net/core/filter.c   | 13 +++++--------
 2 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
index d01e4c55b376..2675fefc6cb6 100644
--- a/kernel/bpf/devmap.c
+++ b/kernel/bpf/devmap.c
@@ -474,7 +474,11 @@ static inline int __xdp_enqueue(struct net_device *dev, struct xdp_frame *xdpf,
 {
 	int err;
 
-	if (!dev->netdev_ops->ndo_xdp_xmit)
+	if (!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT))
+		return -EOPNOTSUPP;
+
+	if (unlikely(!(dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT_SG) &&
+		     xdp_frame_has_frags(xdpf)))
 		return -EOPNOTSUPP;
 
 	err = xdp_ok_fwd_dev(dev, xdp_get_frame_len(xdpf));
@@ -532,8 +536,14 @@ int dev_map_enqueue(struct bpf_dtab_netdev *dst, struct xdp_frame *xdpf,
 
 static bool is_valid_dst(struct bpf_dtab_netdev *obj, struct xdp_frame *xdpf)
 {
-	if (!obj ||
-	    !obj->dev->netdev_ops->ndo_xdp_xmit)
+	if (!obj)
+		return false;
+
+	if (!(obj->dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT))
+		return false;
+
+	if (unlikely(!(obj->dev->xdp_features & NETDEV_XDP_ACT_NDO_XMIT_SG) &&
+		     xdp_frame_has_frags(xdpf)))
 		return false;
 
 	if (xdp_ok_fwd_dev(obj->dev, xdp_get_frame_len(xdpf)))
diff --git a/net/core/filter.c b/net/core/filter.c
index ed08dbf10338..aeebe21a7eff 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -4314,16 +4314,13 @@ int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
 	struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
 	enum bpf_map_type map_type = ri->map_type;
 
-	/* XDP_REDIRECT is not fully supported yet for xdp frags since
-	 * not all XDP capable drivers can map non-linear xdp_frame in
-	 * ndo_xdp_xmit.
-	 */
-	if (unlikely(xdp_buff_has_frags(xdp) &&
-		     map_type != BPF_MAP_TYPE_CPUMAP))
-		return -EOPNOTSUPP;
+	if (map_type == BPF_MAP_TYPE_XSKMAP) {
+		/* XDP_REDIRECT is not supported AF_XDP yet. */
+		if (unlikely(xdp_buff_has_frags(xdp)))
+			return -EOPNOTSUPP;
 
-	if (map_type == BPF_MAP_TYPE_XSKMAP)
 		return __xdp_do_redirect_xsk(ri, dev, xdp, xdp_prog);
+	}
 
 	return __xdp_do_redirect_frame(ri, dev, xdp_convert_buff_to_frame(xdp),
 				       xdp_prog);
-- 
2.39.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
