Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E253F650EE9
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 16:43:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8899A40526;
	Mon, 19 Dec 2022 15:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8899A40526
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671464579;
	bh=5dojYhqBhto4VBVp/qdNNuYqmSkIYCOpUSw5vWgW/3E=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9QxdKzgdpWKKZcYZF6IRkmya294y0I15ubjN394wGwEHD6o/zxichP1WvXi4KmZvP
	 nE11dppssEJ+rWROlJM2wYEi4bjHKblXsk2e/S91uP0jutQKkQ4bAQsJN2VDsuyZcd
	 5S3SzTLN+rbviNAFER5mnvnlRZEl+KokmGwAhoLkuqJfjyiM6xYHLDKYanXq0hYIr1
	 hgoC2a0zzpq2SFjrxQ2LL31ZrAdwIMORSqbuy1VVmanmirpZwPuBgjFxWMJ1O7g7hn
	 xdM7qQ0PxoWfN6/CJFagmf/YC4QKaX0Ob1sLRujgO3OSv4s5+DuH9jAPjy+X7nNOCj
	 EZbKyLNqN232Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hIGODnjA1VTx; Mon, 19 Dec 2022 15:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FE14400BF;
	Mon, 19 Dec 2022 15:42:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FE14400BF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 99F411BF317
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81DAD401D2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81DAD401D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gO-73WKQf7uU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 15:42:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B4BF400BF
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B4BF400BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 15:42:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 8FDB261025;
 Mon, 19 Dec 2022 15:42:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7428AC433D2;
 Mon, 19 Dec 2022 15:42:46 +0000 (UTC)
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: bpf@vger.kernel.org
Date: Mon, 19 Dec 2022 16:41:36 +0100
Message-Id: <9e15c15f2ee134f628fc286e123ec85e40617b35.1671462951.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <cover.1671462950.git.lorenzo@kernel.org>
References: <cover.1671462950.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1671464567;
 bh=y6oFJlBwi66+CEvrDKGUOKWKRpfOH8XKz8B1jxaGaqY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lmmZLsTdqfy3in8F57kJGpkgb6fKCWhl1Gm5TJd/UWO75WV1nESrT7kYmfy4ifIjz
 JNAVcKolh4Nf/xSRyNtpwWRh4umfkRZYP17Edy0ryOfs5jMN9n8gLyTQZ5tJQThaab
 6AankrXmqLI7pj9Duee4FUwkB8bIR5FaNIY4uV7jkVjpLi7iPuRW2hbJi/7yp7yam4
 Ra/SKbduTekM6OkBRUo/+We5r0dbNemFce34BvyyUC36Lpd3hX2O+biQvWm116wHVD
 okKrQOgFHSl287KylITnq6BdevK2j7l1hAUeppzuBiDnUST8bdY+G0MXfTjIIu2GPs
 +NoaU0i0D4zPw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lmmZLsTd
Subject: [Intel-wired-lan] [RFC bpf-next 7/8] bpf: devmap: check XDP
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
index d01e4c55b376..16199eb5c7a6 100644
--- a/kernel/bpf/devmap.c
+++ b/kernel/bpf/devmap.c
@@ -474,7 +474,11 @@ static inline int __xdp_enqueue(struct net_device *dev, struct xdp_frame *xdpf,
 {
 	int err;
 
-	if (!dev->netdev_ops->ndo_xdp_xmit)
+	if (!(dev->xdp_features & XDP_F_REDIRECT_TARGET))
+		return -EOPNOTSUPP;
+
+	if (unlikely(!(dev->xdp_features & XDP_F_FRAG_TARGET) &&
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
+	if (!(obj->dev->xdp_features & XDP_F_REDIRECT_TARGET))
+		return false;
+
+	if (unlikely(!(obj->dev->xdp_features & XDP_F_FRAG_TARGET) &&
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
+	if (!(READ_ONCE(dev->dev->xdp_features) & XDP_F_REDIRECT_TARGET)) {
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
index 929358677183..c2bd1935b55a 100644
--- a/net/core/filter.c
+++ b/net/core/filter.c
@@ -4282,16 +4282,13 @@ int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
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
2.38.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
