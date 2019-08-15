Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E20F98E348
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 05:46:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7554A203F5;
	Thu, 15 Aug 2019 03:46:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NY+5WFwTFeDs; Thu, 15 Aug 2019 03:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7E92D20483;
	Thu, 15 Aug 2019 03:46:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B37231BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B0EF6203F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HXkTvBbsjYQl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id AFDEC20460
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 03:46:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 20:46:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,387,1559545200"; d="scan'208";a="352124054"
Received: from arch-p28.jf.intel.com ([10.166.187.31])
 by orsmga005.jf.intel.com with ESMTP; 14 Aug 2019 20:46:23 -0700
From: Sridhar Samudrala <sridhar.samudrala@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, sridhar.samudrala@intel.com,
 intel-wired-lan@lists.osuosl.org, maciej.fijalkowski@intel.com,
 tom.herbert@intel.com
Date: Wed, 14 Aug 2019 20:46:20 -0700
Message-Id: <1565840783-8269-3-git-send-email-sridhar.samudrala@intel.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
Subject: [Intel-wired-lan] [PATCH bpf-next 2/5] xsk: Introduce XDP_SKIP_BPF
 bind option
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

This option enables an AF_XDP socket to specify XDP_SKIP_BPF flag
with the bind() call to skip calling the BPF program in the receive
path and pass the XDP buffer directly to the socket.

When a single AF_XDP socket is associated with a queue and a HW
filter is used to redirect the packets and the app is interested in
receiving all the packets on that queue, we don't need an additional 
BPF program to do further filtering or lookup/redirect to a socket.

Signed-off-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
---
 include/net/xdp_sock.h        |  9 +++++++++
 include/uapi/linux/if_xdp.h   |  1 +
 include/uapi/linux/xdp_diag.h |  1 +
 net/xdp/xdp_umem.c            |  5 ++++-
 net/xdp/xsk.c                 | 31 +++++++++++++++++++++++++++++--
 net/xdp/xsk_diag.c            |  2 ++
 6 files changed, 46 insertions(+), 3 deletions(-)

diff --git a/include/net/xdp_sock.h b/include/net/xdp_sock.h
index b6716dbdce1a..ad132a69db7c 100644
--- a/include/net/xdp_sock.h
+++ b/include/net/xdp_sock.h
@@ -29,6 +29,7 @@ struct xdp_umem_fq_reuse {
 
 /* Bits for the umem flags field. */
 #define XDP_UMEM_F_ZEROCOPY	(1 << 0)
+#define XDP_UMEM_F_SKIP_BPF	(1 << 1)
 
 struct xdp_umem {
 	struct xsk_queue *fq;
@@ -98,6 +99,9 @@ struct xdp_umem_fq_reuse *xsk_reuseq_swap(struct xdp_umem *umem,
 void xsk_reuseq_free(struct xdp_umem_fq_reuse *rq);
 struct xdp_umem *xdp_get_umem_from_qid(struct net_device *dev, u16 queue_id);
 bool xsk_umem_zerocopy(struct xdp_umem *umem);
+bool xsk_umem_skip_bpf(struct xdp_umem *umem);
+void xsk_umem_flush(struct xdp_umem *umem);
+int xsk_umem_rcv(struct xdp_umem *umem, struct xdp_buff *xdp);
 
 static inline char *xdp_umem_get_data(struct xdp_umem *umem, u64 addr)
 {
@@ -221,6 +225,11 @@ static inline bool xsk_umem_zerocopy(struct xdp_umem *umem)
 	return false;
 }
 
+static inline bool xsk_umem_skip_bpf(struct xdp_umem *umem)
+{
+	return false;
+}
+
 static inline char *xdp_umem_get_data(struct xdp_umem *umem, u64 addr)
 {
 	return NULL;
diff --git a/include/uapi/linux/if_xdp.h b/include/uapi/linux/if_xdp.h
index faaa5ca2a117..881447ebf3c9 100644
--- a/include/uapi/linux/if_xdp.h
+++ b/include/uapi/linux/if_xdp.h
@@ -16,6 +16,7 @@
 #define XDP_SHARED_UMEM	(1 << 0)
 #define XDP_COPY	(1 << 1) /* Force copy-mode */
 #define XDP_ZEROCOPY	(1 << 2) /* Force zero-copy mode */
+#define XDP_SKIP_BPF	(1 << 3) /* Skip running BPF program */
 
 struct sockaddr_xdp {
 	__u16 sxdp_family;
diff --git a/include/uapi/linux/xdp_diag.h b/include/uapi/linux/xdp_diag.h
index 78b2591a7782..6caf3d9c9abe 100644
--- a/include/uapi/linux/xdp_diag.h
+++ b/include/uapi/linux/xdp_diag.h
@@ -56,6 +56,7 @@ struct xdp_diag_ring {
 };
 
 #define XDP_DU_F_ZEROCOPY (1 << 0)
+#define XDP_DU_F_SKIP_BPF (2 << 0)
 
 struct xdp_diag_umem {
 	__u64	size;
diff --git a/net/xdp/xdp_umem.c b/net/xdp/xdp_umem.c
index 411b3e3498c4..cbc02509dc90 100644
--- a/net/xdp/xdp_umem.c
+++ b/net/xdp/xdp_umem.c
@@ -106,6 +106,9 @@ int xdp_umem_assign_dev(struct xdp_umem *umem, struct net_device *dev,
 	umem->dev = dev;
 	umem->queue_id = queue_id;
 
+	if (flags & XDP_SKIP_BPF)
+		umem->flags |= XDP_UMEM_F_SKIP_BPF;
+
 	dev_hold(dev);
 
 	if (force_copy)
@@ -162,7 +165,7 @@ void xdp_umem_clear_dev(struct xdp_umem *umem)
 
 	dev_put(umem->dev);
 	umem->dev = NULL;
-	umem->flags &= ~XDP_UMEM_F_ZEROCOPY;
+	umem->flags &= ~(XDP_UMEM_F_ZEROCOPY | XDP_UMEM_F_SKIP_BPF);
 }
 
 static void xdp_umem_unmap_pages(struct xdp_umem *umem)
diff --git a/net/xdp/xsk.c b/net/xdp/xsk.c
index ca95676ef75d..bcb6a77fae22 100644
--- a/net/xdp/xsk.c
+++ b/net/xdp/xsk.c
@@ -166,6 +166,27 @@ int xsk_generic_rcv(struct xdp_sock *xs, struct xdp_buff *xdp)
 	return err;
 }
 
+void xsk_umem_flush(struct xdp_umem *umem)
+{
+	struct xdp_sock *xs;
+
+	if (!list_empty(&umem->xsk_list)) {
+		xs = list_first_entry(&umem->xsk_list, struct xdp_sock, list);
+		xsk_flush(xs);
+	}
+}
+EXPORT_SYMBOL(xsk_umem_flush);
+
+int xsk_umem_rcv(struct xdp_umem *umem, struct xdp_buff *xdp)
+{
+	struct xdp_sock *xs;
+
+	xs = list_first_entry(&umem->xsk_list, struct xdp_sock, list);
+	xdp->handle += xdp->data - xdp->data_hard_start;
+	return xsk_rcv(xs, xdp);
+}
+EXPORT_SYMBOL(xsk_umem_rcv);
+
 void xsk_umem_complete_tx(struct xdp_umem *umem, u32 nb_entries)
 {
 	xskq_produce_flush_addr_n(umem->cq, nb_entries);
@@ -301,6 +322,12 @@ bool xsk_umem_zerocopy(struct xdp_umem *umem)
 }
 EXPORT_SYMBOL(xsk_umem_zerocopy);
 
+bool xsk_umem_skip_bpf(struct xdp_umem *umem)
+{
+	return (umem && (umem->flags & XDP_UMEM_F_SKIP_BPF));
+}
+EXPORT_SYMBOL(xsk_umem_skip_bpf);
+
 static int xsk_sendmsg(struct socket *sock, struct msghdr *m, size_t total_len)
 {
 	bool need_wait = !(m->msg_flags & MSG_DONTWAIT);
@@ -434,7 +461,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 		return -EINVAL;
 
 	flags = sxdp->sxdp_flags;
-	if (flags & ~(XDP_SHARED_UMEM | XDP_COPY | XDP_ZEROCOPY))
+	if (flags & ~(XDP_SHARED_UMEM | XDP_COPY | XDP_ZEROCOPY | XDP_SKIP_BPF))
 		return -EINVAL;
 
 	rtnl_lock();
@@ -461,7 +488,7 @@ static int xsk_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
 		struct xdp_sock *umem_xs;
 		struct socket *sock;
 
-		if ((flags & XDP_COPY) || (flags & XDP_ZEROCOPY)) {
+		if (flags & (XDP_COPY | XDP_ZEROCOPY | XDP_SKIP_BPF)) {
 			/* Cannot specify flags for shared sockets. */
 			err = -EINVAL;
 			goto out_unlock;
diff --git a/net/xdp/xsk_diag.c b/net/xdp/xsk_diag.c
index 8a19b7e87cfb..f6f4b7912a22 100644
--- a/net/xdp/xsk_diag.c
+++ b/net/xdp/xsk_diag.c
@@ -64,6 +64,8 @@ static int xsk_diag_put_umem(const struct xdp_sock *xs, struct sk_buff *nlskb)
 	du.flags = 0;
 	if (xsk_umem_zerocopy(umem))
 		du.flags |= XDP_DU_F_ZEROCOPY;
+	if (xsk_umem_skip_bpf(umem))
+		du.flags |= XDP_DU_F_SKIP_BPF;
 	du.refs = refcount_read(&umem->users);
 
 	err = nla_put(nlskb, XDP_DIAG_UMEM, sizeof(du), &du);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
