Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 670B7675B01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Jan 2023 18:17:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7AD17612BD;
	Fri, 20 Jan 2023 17:17:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7AD17612BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674235072;
	bh=0CEa8xSjrWuRb7MO0IlCwkOLlERRP0+oOqy8Q9TAugY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xmqGuKcOKG+hCoGF1C919qaOakosHtS9sMUG9qRHy6rR2i5XTr4XKOj3GJ6xCh884
	 hb5/QNCAFoyJyx4orFHOwCLii5336kPEyG1D92rOK+8Ht0d3mGGB5GgUXDTa54rXZl
	 0PMJ2Y30nRl+Ob6ZnpuHipouMDt5pJLzaeEAww59fKFnfincm+khzeX5XdwEUaOFoC
	 EcRjlYETh4GVKXRi8G9BqEO5ZzuQyubK15OczgaH7j2CNhkuLqOsRPO219lNY7UhGq
	 srcFEjCBbs0L9N1JaBy88co1sryAh6s/SyYzX48BV0IFYqwI23kbzmkIu82xN6w8dl
	 jOY6RiFJS4UrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GmHFMbYo-mMt; Fri, 20 Jan 2023 17:17:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18E9D612BA;
	Fri, 20 Jan 2023 17:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 18E9D612BA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13BD61BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E264B82B97
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E264B82B97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1b0HnXLjvAkc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Jan 2023 17:17:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 232EB82B34
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 232EB82B34
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Jan 2023 17:17:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 70D97B82957;
 Fri, 20 Jan 2023 17:17:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83DCCC433EF;
 Fri, 20 Jan 2023 17:17:37 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Fri, 20 Jan 2023 18:16:55 +0100
Message-Id: <acc9460e6e29dfe02cf474735277e196b500d2ef.1674234430.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1674234430.git.lorenzo@kernel.org>
References: <cover.1674234430.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1674235058;
 bh=1PPvPjdSLfOTH0BaLvSqIqL+teSy8Thy2jA5XwVjrLY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ThmuIQxQtxOkImTeE0E/Wg//Trt4RvpiNhtgiWXpOQtLF5kgTAFy9Pj+w7l+nteV8
 an/ONA+AZhH4dahf3KDHigKU65GcgPudgsRrD7yLMn+8QUQEzuS3JOAM2CcR8jB3ug
 /4BM0XAip5kn62GBXxN6iWnH0h6z7j1bHM71m9vBs+DNn+YJzv04OLkT3Gv4uQN61V
 YkDvhHUBzoD1sQLg5xp/kZyy8FSP4lyo2Rg6lAdlCsRF/arnXjqjgJn4epHoOPrisF
 w9DoB54zhOUTdw2SpJl20jYgxpBxwr5qjeaNY47gwlsSLDGGW/3jQ7iBN7AiI+qJ7N
 Ef1j35QjVWnZg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ThmuIQxQ
Subject: [Intel-wired-lan] [PATCH bpf-next 6/7] bpf: devmap: check XDP
 features in bpf_map_update_elem and __xdp_enqueue
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

When we update devmap element, the net_device whose ifindex is specified
in map value must support ndo_xdp_xmit callback, which is indicated by
the presence of XDP_F_REDIRECT_TARGET feature. Let's check for
this feature and return an error if device cannot be used as a redirect
target.

Moreover check the device support xdp non-linear frame in __xdp_enqueue
and is_valid_dst routines. This patch allows to perfrom XDP_REDIRECT on
non-linear xdp buffers.

Co-developed-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 kernel/bpf/devmap.c | 25 +++++++++++++++++++++----
 net/core/filter.c   | 13 +++++--------
 2 files changed, 26 insertions(+), 12 deletions(-)

diff --git a/kernel/bpf/devmap.c b/kernel/bpf/devmap.c
index d01e4c55b376..69ceecc792df 100644
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
@@ -843,6 +853,7 @@ static struct bpf_dtab_netdev *__dev_map_alloc_node(struct net *net,
 {
 	struct bpf_prog *prog = NULL;
 	struct bpf_dtab_netdev *dev;
+	int ret = -EINVAL;
 
 	dev = bpf_map_kmalloc_node(&dtab->map, sizeof(*dev),
 				   GFP_NOWAIT | __GFP_NOWARN,
@@ -854,6 +865,12 @@ static struct bpf_dtab_netdev *__dev_map_alloc_node(struct net *net,
 	if (!dev->dev)
 		goto err_out;
 
+	/* Check if net_device can be used as a redirect target */
+	if (!(READ_ONCE(dev->dev->xdp_features) & NETDEV_XDP_ACT_NDO_XMIT)) {
+		ret = -EOPNOTSUPP;
+		goto err_put_dev;
+	}
+
 	if (val->bpf_prog.fd > 0) {
 		prog = bpf_prog_get_type_dev(val->bpf_prog.fd,
 					     BPF_PROG_TYPE_XDP, false);
@@ -882,7 +899,7 @@ static struct bpf_dtab_netdev *__dev_map_alloc_node(struct net *net,
 	dev_put(dev->dev);
 err_out:
 	kfree(dev);
-	return ERR_PTR(-EINVAL);
+	return ERR_PTR(ret);
 }
 
 static int __dev_map_update_elem(struct net *net, struct bpf_map *map,
diff --git a/net/core/filter.c b/net/core/filter.c
index b4547a2c02f4..c1e12e8502e9 100644
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
2.39.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
