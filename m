Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DAAA298A2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Feb 2025 19:20:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0A2842658;
	Wed,  5 Feb 2025 18:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id INaLDUQsuMlF; Wed,  5 Feb 2025 18:20:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B02C42656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738779647;
	bh=yrc7tGiB1AeDhcZmLniAWztOWz3zeDb5L2X668CZlJA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tNKuSxN62kHGT8xNZxXmL00Ls7a4CfYOtFNJTSk4XAwthn1JhaJ7Kg36od0oJE5xM
	 +x6HaXoj4ja/+cjROtEyjT8rJGrxLVGThEE2aL2OThFekUQRdtbnvTYSSKFb+RTIr/
	 /XuWTA33CtbU0tkyN1ZRtRHRfAgKOajrG7JHTPHyTKIFY1LP1LRWXoqBhE+oODQxdu
	 0q4jtf3hYJNG1isSFMxOXqE4kQAk1OdhPtZbglTTSOZApp4oc8CjY/lIVnAFgcl0Ai
	 G0LlBthienug9JonTPO0zE7xumhqBqLHjhL9a/ZBJv8Q2l0l0bkG07G5ef5W2L4DAp
	 t8egBsmcUbQaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B02C42656;
	Wed,  5 Feb 2025 18:20:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C460CD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BCD860623
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-fg8BMZ3QCk for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 18:20:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5222D605D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5222D605D2
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5222D605D2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 18:20:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9CDA45C6DD0;
 Wed,  5 Feb 2025 18:20:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E33AC4CED1;
 Wed,  5 Feb 2025 18:20:42 +0000 (UTC)
From: Leon Romanovsky <leon@kernel.org>
To: Steffen Klassert <steffen.klassert@secunet.com>
Cc: Leon Romanovsky <leonro@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Ayush Sawal <ayush.sawal@chelsio.com>,
 Bharat Bhushan <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
Date: Wed,  5 Feb 2025 20:20:20 +0200
Message-ID: <e536ca28cd1686dfbb613de7ccfc01fbe5a734e4.1738778580.git.leon@kernel.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <cover.1738778580.git.leon@kernel.org>
References: <cover.1738778580.git.leon@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1738779643;
 bh=+WzVacljqHxj5GBlQNM3bFZCFWBWaUCVOUNxhX10Fg8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ld9JbwwK/vcqJUGUReuMAgzHgwpJ13/ZE82uf/9a1y2Y/UL8cyaMRTS2hsHHF8bqD
 ABtlq8JwsyVjx2EqrcLErmAt29hA/CfOn63ZFEJdDsVslQVSEud8yb9QXkV+vWHNKy
 ytyk8NQ5QrkNdq/3siAYlUvTeK5y8W1f1MU2XC0Z4Y9/2xySyuOimQCjjqav9s1ULN
 fL2AFK0eM3nEtxLwHn/7sQ7L46NtaPYyIipD3NHp+0OdIuA/RC7/1/LfaZtbZ1fY7L
 +nn374ByaDDzoviPuhnJ2TIJEqvHCru/HZY41lnH6r9U7cvY8w+G7B07rH7hkGHvjb
 Y7HuKCL2a8Yqw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ld9JbwwK
Subject: [Intel-wired-lan] [PATCH ipsec-next 1/5] xfrm: delay initialization
 of offload path till its actually requested
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Leon Romanovsky <leonro@nvidia.com>

XFRM offload path is probed even if offload isn't needed at all. Let's
make sure that x->type_offload pointer stays NULL for such path to
reduce ambiguity.

Fixes: 9d389d7f84bb ("xfrm: Add a xfrm type offload.")
Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
---
 include/net/xfrm.h     | 12 +++++++++++-
 net/xfrm/xfrm_device.c | 14 +++++++++-----
 net/xfrm/xfrm_state.c  | 22 +++++++++-------------
 net/xfrm/xfrm_user.c   |  2 +-
 4 files changed, 30 insertions(+), 20 deletions(-)

diff --git a/include/net/xfrm.h b/include/net/xfrm.h
index ed4b83696c77..28355a5be5b9 100644
--- a/include/net/xfrm.h
+++ b/include/net/xfrm.h
@@ -464,6 +464,16 @@ struct xfrm_type_offload {
 
 int xfrm_register_type_offload(const struct xfrm_type_offload *type, unsigned short family);
 void xfrm_unregister_type_offload(const struct xfrm_type_offload *type, unsigned short family);
+const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
+						      unsigned short family);
+static inline void xfrm_put_type_offload(const struct xfrm_type_offload *type)
+{
+	if (!type)
+		return;
+
+	module_put(type->owner);
+}
+
 
 /**
  * struct xfrm_mode_cbs - XFRM mode callbacks
@@ -1760,7 +1770,7 @@ void xfrm_spd_getinfo(struct net *net, struct xfrmk_spdinfo *si);
 u32 xfrm_replay_seqhi(struct xfrm_state *x, __be32 net_seq);
 int xfrm_init_replay(struct xfrm_state *x, struct netlink_ext_ack *extack);
 u32 xfrm_state_mtu(struct xfrm_state *x, int mtu);
-int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
+int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
 		      struct netlink_ext_ack *extack);
 int xfrm_init_state(struct xfrm_state *x);
 int xfrm_input(struct sk_buff *skb, int nexthdr, __be32 spi, int encap_type);
diff --git a/net/xfrm/xfrm_device.c b/net/xfrm/xfrm_device.c
index d1fa94e52cea..e01a7f5a4c75 100644
--- a/net/xfrm/xfrm_device.c
+++ b/net/xfrm/xfrm_device.c
@@ -244,11 +244,6 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 	xfrm_address_t *daddr;
 	bool is_packet_offload;
 
-	if (!x->type_offload) {
-		NL_SET_ERR_MSG(extack, "Type doesn't support offload");
-		return -EINVAL;
-	}
-
 	if (xuo->flags &
 	    ~(XFRM_OFFLOAD_IPV6 | XFRM_OFFLOAD_INBOUND | XFRM_OFFLOAD_PACKET)) {
 		NL_SET_ERR_MSG(extack, "Unrecognized flags in offload request");
@@ -310,6 +305,13 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 		return -EINVAL;
 	}
 
+	x->type_offload = xfrm_get_type_offload(x->id.proto, x->props.family);
+	if (!x->type_offload) {
+		NL_SET_ERR_MSG(extack, "Type doesn't support offload");
+		dev_put(dev);
+		return -EINVAL;
+	}
+
 	xso->dev = dev;
 	netdev_tracker_alloc(dev, &xso->dev_tracker, GFP_ATOMIC);
 	xso->real_dev = dev;
@@ -332,6 +334,8 @@ int xfrm_dev_state_add(struct net *net, struct xfrm_state *x,
 		netdev_put(dev, &xso->dev_tracker);
 		xso->type = XFRM_DEV_OFFLOAD_UNSPECIFIED;
 
+		xfrm_put_type_offload(x->type_offload);
+		x->type_offload = NULL;
 		/* User explicitly requested packet offload mode and configured
 		 * policy in addition to the XFRM state. So be civil to users,
 		 * and return an error instead of taking fallback path.
diff --git a/net/xfrm/xfrm_state.c b/net/xfrm/xfrm_state.c
index ad2202fa82f3..568fe8df7741 100644
--- a/net/xfrm/xfrm_state.c
+++ b/net/xfrm/xfrm_state.c
@@ -424,11 +424,12 @@ void xfrm_unregister_type_offload(const struct xfrm_type_offload *type,
 }
 EXPORT_SYMBOL(xfrm_unregister_type_offload);
 
-static const struct xfrm_type_offload *
-xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
+const struct xfrm_type_offload *xfrm_get_type_offload(u8 proto,
+						      unsigned short family)
 {
 	const struct xfrm_type_offload *type = NULL;
 	struct xfrm_state_afinfo *afinfo;
+	bool try_load = true;
 
 retry:
 	afinfo = xfrm_state_get_afinfo(family);
@@ -456,11 +457,7 @@ xfrm_get_type_offload(u8 proto, unsigned short family, bool try_load)
 
 	return type;
 }
-
-static void xfrm_put_type_offload(const struct xfrm_type_offload *type)
-{
-	module_put(type->owner);
-}
+EXPORT_SYMBOL(xfrm_get_type_offload);
 
 static const struct xfrm_mode xfrm4_mode_map[XFRM_MODE_MAX] = {
 	[XFRM_MODE_BEET] = {
@@ -609,8 +606,6 @@ static void ___xfrm_state_destroy(struct xfrm_state *x)
 	kfree(x->coaddr);
 	kfree(x->replay_esn);
 	kfree(x->preplay_esn);
-	if (x->type_offload)
-		xfrm_put_type_offload(x->type_offload);
 	if (x->type) {
 		x->type->destructor(x);
 		xfrm_put_type(x->type);
@@ -784,6 +779,9 @@ void xfrm_dev_state_free(struct xfrm_state *x)
 	struct xfrm_dev_offload *xso = &x->xso;
 	struct net_device *dev = READ_ONCE(xso->dev);
 
+	xfrm_put_type_offload(x->type_offload);
+	x->type_offload = NULL;
+
 	if (dev && dev->xfrmdev_ops) {
 		spin_lock_bh(&xfrm_state_dev_gc_lock);
 		if (!hlist_unhashed(&x->dev_gclist))
@@ -3122,7 +3120,7 @@ u32 xfrm_state_mtu(struct xfrm_state *x, int mtu)
 }
 EXPORT_SYMBOL_GPL(xfrm_state_mtu);
 
-int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
+int __xfrm_init_state(struct xfrm_state *x, bool init_replay,
 		      struct netlink_ext_ack *extack)
 {
 	const struct xfrm_mode *inner_mode;
@@ -3178,8 +3176,6 @@ int __xfrm_init_state(struct xfrm_state *x, bool init_replay, bool offload,
 		goto error;
 	}
 
-	x->type_offload = xfrm_get_type_offload(x->id.proto, family, offload);
-
 	err = x->type->init_state(x, extack);
 	if (err)
 		goto error;
@@ -3229,7 +3225,7 @@ int xfrm_init_state(struct xfrm_state *x)
 {
 	int err;
 
-	err = __xfrm_init_state(x, true, false, NULL);
+	err = __xfrm_init_state(x, true, NULL);
 	if (!err)
 		x->km.state = XFRM_STATE_VALID;
 
diff --git a/net/xfrm/xfrm_user.c b/net/xfrm/xfrm_user.c
index 08c6d6f0179f..82a768500999 100644
--- a/net/xfrm/xfrm_user.c
+++ b/net/xfrm/xfrm_user.c
@@ -907,7 +907,7 @@ static struct xfrm_state *xfrm_state_construct(struct net *net,
 			goto error;
 	}
 
-	err = __xfrm_init_state(x, false, attrs[XFRMA_OFFLOAD_DEV], extack);
+	err = __xfrm_init_state(x, false, extack);
 	if (err)
 		goto error;
 
-- 
2.48.1

