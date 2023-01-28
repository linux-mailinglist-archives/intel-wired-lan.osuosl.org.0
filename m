Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DDD67F872
	for <lists+intel-wired-lan@lfdr.de>; Sat, 28 Jan 2023 15:07:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0F0681ED3;
	Sat, 28 Jan 2023 14:07:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0F0681ED3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674914840;
	bh=2J1TBdaE8cnYzTOr2SkZCojiYXqHE1fI6d0sr8dXQAw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5pqd6PWlxFA1oNLprirXk8vB5uf6P9ntF9mQszF3lMwPLdkGz0094wj199A6Y09bv
	 YYA2d2Hjr0LiWT8+egGTPnInkj5V0QrxNEiZIKy7M+17Bu0K0F+jAaAB02vHaAzZCa
	 WYAo2S4Sp1ooMn98p4u3XzaLQdpATPwlad5kNlzoaQd8I3EvT9MS1yf0gotjAbWyEC
	 lRfMMytQqQsdGEGb3u6DskN1ZsMlZx388K6WBaCWhbfuXx7tPo/i8wOKfvwKRI1uUl
	 ua61w+evWQutXTmXPX2RGrWQQAhqDR+SAECyYxazA01SFY14HUm60MAy2DjPULPu2O
	 Npt2c9Z6RjNiA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BGeb3ACbScx5; Sat, 28 Jan 2023 14:07:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC417819F3;
	Sat, 28 Jan 2023 14:07:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC417819F3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 439F11BF232
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2A15E817A8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A15E817A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cIPs2Zuce5E2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 Jan 2023 14:07:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EA98C81987
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EA98C81987
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 Jan 2023 14:07:06 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 55B5D60C0F;
 Sat, 28 Jan 2023 14:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1336DC433A1;
 Sat, 28 Jan 2023 14:07:05 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 28 Jan 2023 15:06:17 +0100
Message-Id: <3522acea209755731bf2e37a3b0c480cf986e8d0.1674913191.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1674913191.git.lorenzo@kernel.org>
References: <cover.1674913191.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674914825;
 bh=mlM4euBAC72Td7MlAW4fDqvedDlj+T6SR1fmx+/YXlo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=l0gg4eOoKqPSjuPwyHlayah14Aesw8Dv4fv+Dx8L3kcGfpGe9ifp/EHoIt7P2Gxzt
 hjXFxPc7O2kIL9ZYsb7di0gqb2FnSg/yuUo9mDskNX2lCXE/VuFAFWnsDuLntPAtVE
 UckyubzkDt74/aR/Ye/NWXca0M0iRuPiyrVdMjCKbU4wXww42OUpJxNMJfjvgxYJqn
 h/Tt2YBPri67Il2lyVTOWg5rP8WGpB6dcAmfnnCnPg09kC0B2LY5ArXSxSaEHtIcSZ
 7G/q5dDoyjVjkno91FCXm/ZwfyzWsQh7JH4IwwycBOVPdE+i4YDQAzyFEZhGZOcmXR
 ICNPMd1QHLvKg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=l0gg4eOo
Subject: [Intel-wired-lan] [PATCH v4 bpf-next 6/8] bpf: devmap: check XDP
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
 edumazet@google.com, anthony.l.nguyen@intel.com, sdf@google.com,
 daniel@iogearbox.net, andrii@kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, kuba@kernel.org, pabeni@redhat.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, martin.lau@linux.dev, ecree.xilinx@gmail.com,
 alardam@gmail.com, gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Check if the destination device implements ndo_xdp_xmit callback relying
on NETDEV_XDP_ACT_NDO_XMIT flags. Moreover, check if the destination device
supports XDP non-linear frame in __xdp_enqueue and is_valid_dst routines.
This patch allows to perform XDP_REDIRECT on non-linear XDP buffers.

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>
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
index 6da78b3d381e..d18f57ef7352 100644
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
