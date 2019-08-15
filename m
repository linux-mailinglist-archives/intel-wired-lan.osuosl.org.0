Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 586A18E34F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 05:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D09186972;
	Thu, 15 Aug 2019 03:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AaljNfn2dg19; Thu, 15 Aug 2019 03:46:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 231C986901;
	Thu, 15 Aug 2019 03:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0051BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2A27C203F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nWsavshwBQbQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 9083920459
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 20:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,387,1559545200"; d="scan'208";a="352124051"
Received: from arch-p28.jf.intel.com ([10.166.187.31])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 20:46:23 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
Date: Wed, 14 Aug 2019 20:46:19 -0700
Message-Id: <1565840783-8269-2-git-send-email-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 1/5] xsk: Convert bool 'zc' field
 in struct xdp_umem to a u32 bitmap
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bool 'zc' field in struct xdp_uem is replaced with a u32 flags
field and a bit within flags is used to indicate zerocopy. This flags
field will be used in later patches for other bit fields.

Also, removed the bool 'zc' field from struct xdp_sock as it can be
accessed via flags in xs->umem.

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 include/net/xdp_sock.h | 12 ++++++++++--
 net/xdp/xdp_umem.c     |  6 +++---
 net/xdp/xsk.c          | 12 +++++++++---
 net/xdp/xsk_diag.c     |  3 ++-
 4 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/include/net/xdp_sock.h b/include/net/xdp_sock.h
index 69796d264f06..b6716dbdce1a 100644
--- a/include/net/xdp_sock.h
+++ b/include/net/xdp_sock.h
@@ -27,6 +27,9 @@ struct xdp_umem_fq_reuse {
 	u64 handles[];
 };
 
+/* Bits for the umem flags field. */
+#define XDP_UMEM_F_ZEROCOPY	(1 << 0)
+
 struct xdp_umem {
 	struct xsk_queue *fq;
 	struct xsk_queue *cq;
@@ -45,7 +48,7 @@ struct xdp_umem {
 	struct net_device *dev;
 	struct xdp_umem_fq_reuse *fq_reuse;
 	u16 queue_id;
-	bool zc;
+	u32 flags;
 	spinlock_t xsk_list_lock;
 	struct list_head xsk_list;
 };
@@ -58,7 +61,6 @@ struct xdp_sock {
 	struct xdp_umem *umem;
 	struct list_head flush_node;
 	u16 queue_id;
-	bool zc;
 	enum {
 		XSK_READY = 0,
 		XSK_BOUND,
@@ -95,6 +97,7 @@ struct xdp_umem_fq_reuse *xsk_reuseq_swap(struct xdp_umem *umem,
 					  struct xdp_umem_fq_reuse *newq);
 void xsk_reuseq_free(struct xdp_umem_fq_reuse *rq);
 struct xdp_umem *xdp_get_umem_from_qid(struct net_device *dev, u16 queue_id);
+bool xsk_umem_zerocopy(struct xdp_umem *umem);
 
 static inline char *xdp_umem_get_data(struct xdp_umem *umem, u64 addr)
 {
@@ -213,6 +216,11 @@ static inline struct xdp_umem *xdp_get_umem_from_qid(struct net_device *dev,
 	return NULL;
 }
 
+static inline bool xsk_umem_zerocopy(struct xdp_umem *umem)
+{
+	return false;
+}
+
 static inline char *xdp_umem_get_data(struct xdp_umem *umem, u64 addr)
 {
 	return NULL;
diff --git a/net/xdp/xdp_umem.c b/net/xdp/xdp_umem.c
index a0607969f8c0..411b3e3498c4 100644
--- a/net/xdp/xdp_umem.c
+++ b/net/xdp/xdp_umem.c
@@ -126,7 +126,7 @@ int xdp_umem_assign_dev(struct xdp_umem *umem, struct net_device *dev,
 	if (err)
 		goto err_unreg_umem;
 
-	umem->zc = true;
+	umem->flags |= XDP_UMEM_F_ZEROCOPY;
 	return 0;
 
 err_unreg_umem:
@@ -147,7 +147,7 @@ void xdp_umem_clear_dev(struct xdp_umem *umem)
 	if (!umem->dev)
 		return;
 
-	if (umem->zc) {
+	if (xsk_umem_zerocopy(umem)) {
 		bpf.command = XDP_SETUP_XSK_UMEM;
 		bpf.xsk.umem = NULL;
 		bpf.xsk.queue_id = umem->queue_id;
@@ -162,7 +162,7 @@ void xdp_umem_clear_dev(struct xdp_umem *umem)
 
 	dev_put(umem->dev);
 	umem->dev = NULL;
-	umem->zc = false;
+	umem->flags &= ~XDP_UMEM_F_ZEROCOPY;
 }
 
 static void xdp_umem_unmap_pages(struct xdp_umem *umem)
diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
index 59b57d708697..ca95676ef75d 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -295,6 +295,12 @@ static int xsk_generic_xmit(struct sock *sk, struct msghdr *m,
 	return err;
 }
 
+bool xsk_umem_zerocopy(struct xdp_umem *umem)
+{
+	return (umem && (umem->flags & XDP_UMEM_F_ZEROCOPY));
+}
+EXPORT_SYMBOL(xsk_umem_zerocopy);
+
 static int xsk_sendmsg(struct socket *sock, struct msghdr *m, size_t total_len)
 {
 	bool need_wait = !(m->msg_flags & MSG_DONTWAIT);
@@ -310,7 +316,8 @@ static int xsk_sendmsg(struct socket *sock, struct msghdr *m, size_t total_len)
 	if (need_wait)
 		return -EOPNOTSUPP;
 
-	return (xs->zc) ? xsk_zc_xmit(sk) : xsk_generic_xmit(sk, m, total_len);
+	return xsk_umem_zerocopy(xs->umem) ? xsk_zc_xmit(sk) :
+					     xsk_generic_xmit(sk, m, total_len);
 }
 
 static unsigned int xsk_poll(struct file *file, struct socket *sock,
@@ -503,7 +510,6 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 	}
 
 	xs->dev = dev;
-	xs->zc = xs->umem->zc;
 	xs->queue_id = qid;
 	xskq_set_umem(xs->rx, xs->umem->size, xs->umem->chunk_mask);
 	xskq_set_umem(xs->tx, xs->umem->size, xs->umem->chunk_mask);
@@ -683,7 +689,7 @@ static int xsk_getsockopt(struct socket *sock, int level, int optname,
 			return -EINVAL;
 
 		mutex_lock(&xs->mutex);
-		if (xs->zc)
+		if (xsk_umem_zerocopy(xs->umem))
 			opts.flags |= XDP_OPTIONS_ZEROCOPY;
 		mutex_unlock(&xs->mutex);
 
diff --git a/net/xdp/xsk_diag.c b/net/xdp/xsk_diag.c
index d5e06c8e0cbf..8a19b7e87cfb 100644
--- a/net/xdp/xsk_diag.c
+++ b/net/xdp/xsk_diag.c
@@ -10,6 +10,7 @@
 #include <net/xdp_sock.h>
 #include <linux/xdp_diag.h>
 #include <linux/sock_diag.h>
+#include <net/xdp_sock.h>
 
 #include "xsk_queue.h"
 #include "xsk.h"
@@ -61,7 +62,7 @@ static int xsk_diag_put_umem(const struct xdp_sock *xs, struct sk_buff *nlskb)
 	du.ifindex = umem->dev ? umem->dev->ifindex : 0;
 	du.queue_id = umem->queue_id;
 	du.flags = 0;
-	if (umem->zc)
+	if (xsk_umem_zerocopy(umem))
 		du.flags |= XDP_DU_F_ZEROCOPY;
 	du.refs = refcount_read(&umem->users);
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
