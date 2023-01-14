Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5198D66AC54
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jan 2023 16:55:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5167A41720;
	Sat, 14 Jan 2023 15:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5167A41720
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673711730;
	bh=Ht/Q908GSts4VrQTkG3w/FDZhZRH2kqJcLFISgkM40A=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=U4j0UfN4Nk12jaViC0kV7IFUsigApjYhAp3jQMs09U335L75GsnwP6IuwxFPM/aSV
	 k49QmlB1Y8x/rBxNaSRv2I34gM/bE+0xGPFRQ+GbH2k4Gk8YhLNqHpRK+t7zr1c3CD
	 kxd1fgU8pXn841rfl7XklD8g16K19tIcWEwQgrIeSkYCL+us72NZwpDMj0jJJf9J9t
	 lakwSHhIhoGm8wbZvJAod98i9HdGTCfvDqh2KVqwwufMOXh7C/EzXBlmfEuDolJbFw
	 ZqFEjIZ24iryXPsxCX810JqcYurMUF4GTsrrawriOwtTX4Lzoxa2fs6fMHahgD+XQC
	 aVFcFwdKNFCKQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iys6G55T072K; Sat, 14 Jan 2023 15:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D80AE415D0;
	Sat, 14 Jan 2023 15:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D80AE415D0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED8441BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C826081F0D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C826081F0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YCmgegMbRWBh for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jan 2023 15:55:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C372681EF6
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C372681EF6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jan 2023 15:55:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id F2BA3B80976;
 Sat, 14 Jan 2023 15:55:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17FE2C433D2;
 Sat, 14 Jan 2023 15:55:12 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Sat, 14 Jan 2023 16:54:36 +0100
Message-Id: <18571a03174b333413114ff9aeccfe9c102c504f.1673710867.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <cover.1673710866.git.lorenzo@kernel.org>
References: <cover.1673710866.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1673711712;
 bh=tTMkYCwIfSkQmHJDvNOYI3WNmgsYzlUepL/Re3S7G2g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lTBoe6qBbIbu35WVTynkrySj7iOYZw9b2rCgG7qWhb5QJCdqv+8fNU8bm1hM7Chvc
 Exv4kh0ToWYR7SqALagQNXszgmtiqUxpyr/maIUvuv+V13q9Euordf/1mBXYm6xE/G
 sv6zSAhn8ZA7QEN/vfx3brW4xgcQa0HPC7o5vzKimK9ikjSEPm33Aw3uRPoIMRfcQb
 1zlkSDeiNugbc71BPFJYUqf02bpJsnptNibDOOfRq4q8QZ/Ml/mVUnrd5rrDMXVLz1
 i1exmDeqRHtnHrKqAQWC5zy/17WqofG7M16/6HJYsttceLz9vDOD1QT8qXoZgnUPmN
 NtRJWfCkBLb3w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lTBoe6qB
Subject: [Intel-wired-lan] [RFC v2 bpf-next 6/7] bpf: devmap: check XDP
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
index d9befa6ba04e..b9a03f1b2012 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -4285,16 +4285,13 @@ int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
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
