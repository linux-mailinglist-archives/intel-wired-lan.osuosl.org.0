Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D21062730
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2019 19:32:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C72D18663C;
	Mon,  8 Jul 2019 17:32:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ec0fgegA7aKt; Mon,  8 Jul 2019 17:32:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E35D865CF;
	Mon,  8 Jul 2019 17:32:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F44C1BF969
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 12:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BFA686DA8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 12:43:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fnZ8OL5TBw1x for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jul 2019 12:43:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C62D8863D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jul 2019 12:43:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 05:43:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="315855035"
Received: from mkarlsso-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.32.218])
 by orsmga004.jf.intel.com with ESMTP; 04 Jul 2019 05:43:15 -0700
From: Magnus Karlsson <magnus.karlsson@intel.com>
To: magnus.karlsson@intel.com, bjorn.topel@intel.com, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, brouer@redhat.com
Date: Thu,  4 Jul 2019 14:42:13 +0200
Message-Id: <1562244134-19069-6-git-send-email-magnus.karlsson@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562244134-19069-1-git-send-email-magnus.karlsson@intel.com>
References: <1562244134-19069-1-git-send-email-magnus.karlsson@intel.com>
X-Mailman-Approved-At: Mon, 08 Jul 2019 17:32:25 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 5/6] libbpf: add support for
 need_wakeup flag in AF_XDP part
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
Cc: axboe@kernel.dk, maximmi@mellanox.com, kevin.laatz@intel.com,
 jakub.kicinski@netronome.com, maciejromanfijalkowski@gmail.com,
 bruce.richardson@intel.com, ciara.loftus@intel.com,
 ilias.apalodimas@linaro.org, xiaolong.ye@intel.com,
 intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 maciej.fijalkowski@intel.com, bpf@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This commit adds support for the new need_wakeup flag in AF_XDP. The
xsk_socket__create function is updated to handle this and a new
function is introduced called xsk_ring_prod__needs_wakeup(). This
function can be used by the application to check if Rx and/or Tx
processing needs to be explicitly woken up.

Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
---
 tools/include/uapi/linux/if_xdp.h | 13 +++++++++++++
 tools/lib/bpf/xsk.c               |  4 ++++
 tools/lib/bpf/xsk.h               |  6 ++++++
 3 files changed, 23 insertions(+)

diff --git a/tools/include/uapi/linux/if_xdp.h b/tools/include/uapi/linux/if_xdp.h
index faaa5ca..62b80d5 100644
--- a/tools/include/uapi/linux/if_xdp.h
+++ b/tools/include/uapi/linux/if_xdp.h
@@ -16,6 +16,15 @@
 #define XDP_SHARED_UMEM	(1 << 0)
 #define XDP_COPY	(1 << 1) /* Force copy-mode */
 #define XDP_ZEROCOPY	(1 << 2) /* Force zero-copy mode */
+/* If this option is set, the driver might go sleep and in that case
+ * the XDP_RING_NEED_WAKEUP flag in the fill and/or Tx rings will be
+ * set. If it is set, the application need to explicitly wake up the
+ * driver with a poll() (Rx and Tx) or sendto() (Tx only). If you are
+ * running the driver and the application on the same core, you should
+ * use this option so that the kernel will yield to the user space
+ * application.
+ */
+#define XDP_USE_NEED_WAKEUP (1 << 3)
 
 struct sockaddr_xdp {
 	__u16 sxdp_family;
@@ -25,10 +34,14 @@ struct sockaddr_xdp {
 	__u32 sxdp_shared_umem_fd;
 };
 
+/* XDP_RING flags */
+#define XDP_RING_NEED_WAKEUP (1 << 0)
+
 struct xdp_ring_offset {
 	__u64 producer;
 	__u64 consumer;
 	__u64 desc;
+	__u64 flags;
 };
 
 struct xdp_mmap_offsets {
diff --git a/tools/lib/bpf/xsk.c b/tools/lib/bpf/xsk.c
index b337402..5665b4d 100644
--- a/tools/lib/bpf/xsk.c
+++ b/tools/lib/bpf/xsk.c
@@ -224,6 +224,7 @@ int xsk_umem__create(struct xsk_umem **umem_ptr, void *umem_area, __u64 size,
 	fill->size = umem->config.fill_size;
 	fill->producer = map + off.fr.producer;
 	fill->consumer = map + off.fr.consumer;
+	fill->flags = map + off.fr.flags;
 	fill->ring = map + off.fr.desc;
 	fill->cached_cons = umem->config.fill_size;
 
@@ -241,6 +242,7 @@ int xsk_umem__create(struct xsk_umem **umem_ptr, void *umem_area, __u64 size,
 	comp->size = umem->config.comp_size;
 	comp->producer = map + off.cr.producer;
 	comp->consumer = map + off.cr.consumer;
+	comp->flags = map + off.cr.flags;
 	comp->ring = map + off.cr.desc;
 
 	*umem_ptr = umem;
@@ -564,6 +566,7 @@ int xsk_socket__create(struct xsk_socket **xsk_ptr, const char *ifname,
 		rx->size = xsk->config.rx_size;
 		rx->producer = rx_map + off.rx.producer;
 		rx->consumer = rx_map + off.rx.consumer;
+		rx->flags = rx_map + off.rx.flags;
 		rx->ring = rx_map + off.rx.desc;
 	}
 	xsk->rx = rx;
@@ -583,6 +586,7 @@ int xsk_socket__create(struct xsk_socket **xsk_ptr, const char *ifname,
 		tx->size = xsk->config.tx_size;
 		tx->producer = tx_map + off.tx.producer;
 		tx->consumer = tx_map + off.tx.consumer;
+		tx->flags = tx_map + off.tx.flags;
 		tx->ring = tx_map + off.tx.desc;
 		tx->cached_cons = xsk->config.tx_size;
 	}
diff --git a/tools/lib/bpf/xsk.h b/tools/lib/bpf/xsk.h
index 833a6e6..aa1d612 100644
--- a/tools/lib/bpf/xsk.h
+++ b/tools/lib/bpf/xsk.h
@@ -32,6 +32,7 @@ struct name { \
 	__u32 *producer; \
 	__u32 *consumer; \
 	void *ring; \
+	__u32 *flags; \
 }
 
 DEFINE_XSK_RING(xsk_ring_prod);
@@ -76,6 +77,11 @@ xsk_ring_cons__rx_desc(const struct xsk_ring_cons *rx, __u32 idx)
 	return &descs[idx & rx->mask];
 }
 
+static inline int xsk_ring_prod__needs_wakeup(const struct xsk_ring_prod *r)
+{
+	return *r->flags & XDP_RING_NEED_WAKEUP;
+}
+
 static inline __u32 xsk_prod_nb_free(struct xsk_ring_prod *r, __u32 nb)
 {
 	__u32 free_entries = r->cached_cons - r->cached_prod;
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
