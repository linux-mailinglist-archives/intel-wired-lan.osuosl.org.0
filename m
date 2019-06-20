Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FEF4DD7D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1356C86073;
	Thu, 20 Jun 2019 22:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LLPNJZp0z4mq; Thu, 20 Jun 2019 22:52:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 264018612B;
	Thu, 20 Jun 2019 22:52:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A29121BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D4C920770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pv3aPYeHboB8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:54:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id D624B20389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:54:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183135162"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 09:53:59 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 08:39:20 +0000
Message-Id: <20190620083924.1996-8-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 07/11] libbpf: add flags to umem config
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This patch adds a 'flags' field to the umem_config and umem_reg structs.
This will allow for more options to be added for configuring umems.

The first use for the flags field is to add a flag for unaligned chunks
mode. These flags can either be user-provided or filled with a default.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
Signed-off-by: Ciara Loftus <ciara.loftus@intel.com>
---
 tools/include/uapi/linux/if_xdp.h | 4 ++++
 tools/lib/bpf/xsk.c               | 7 +++++++
 tools/lib/bpf/xsk.h               | 2 ++
 3 files changed, 13 insertions(+)

diff --git a/tools/include/uapi/linux/if_xdp.h b/tools/include/uapi/linux/if_xdp.h
index caed8b1614ff..8548f2110a77 100644
--- a/tools/include/uapi/linux/if_xdp.h
+++ b/tools/include/uapi/linux/if_xdp.h
@@ -17,6 +17,9 @@
 #define XDP_COPY	(1 << 1) /* Force copy-mode */
 #define XDP_ZEROCOPY	(1 << 2) /* Force zero-copy mode */
 
+/* Flags for xsk_umem_config flags */
+#define XDP_UMEM_UNALIGNED_CHUNKS (1 << 0)
+
 struct sockaddr_xdp {
 	__u16 sxdp_family;
 	__u16 sxdp_flags;
@@ -52,6 +55,7 @@ struct xdp_umem_reg {
 	__u64 len; /* Length of packet data area */
 	__u32 chunk_size;
 	__u32 headroom;
+	__u32 flags;
 };
 
 struct xdp_statistics {
diff --git a/tools/lib/bpf/xsk.c b/tools/lib/bpf/xsk.c
index 7ef6293b4fd7..df4207d4ff4a 100644
--- a/tools/lib/bpf/xsk.c
+++ b/tools/lib/bpf/xsk.c
@@ -115,6 +115,7 @@ static void xsk_set_umem_config(struct xsk_umem_config *cfg,
 		cfg->comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
 		cfg->frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
 		cfg->frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM;
+		cfg->flags = XSK_UMEM__DEFAULT_FLAGS;
 		return;
 	}
 
@@ -122,6 +123,7 @@ static void xsk_set_umem_config(struct xsk_umem_config *cfg,
 	cfg->comp_size = usr_cfg->comp_size;
 	cfg->frame_size = usr_cfg->frame_size;
 	cfg->frame_headroom = usr_cfg->frame_headroom;
+	cfg->flags = usr_cfg->flags;
 }
 
 static int xsk_set_xdp_socket_config(struct xsk_socket_config *cfg,
@@ -181,6 +183,11 @@ int xsk_umem__create(struct xsk_umem **umem_ptr, void *umem_area, __u64 size,
 	mr.len = size;
 	mr.chunk_size = umem->config.frame_size;
 	mr.headroom = umem->config.frame_headroom;
+	mr.flags = umem->config.flags;
+
+	/* Headroom must be 0 for unaligned chunks */
+	if ((mr.flags & XDP_UMEM_UNALIGNED_CHUNKS) && mr.headroom != 0)
+		return -EINVAL;
 
 	err = setsockopt(umem->fd, SOL_XDP, XDP_UMEM_REG, &mr, sizeof(mr));
 	if (err) {
diff --git a/tools/lib/bpf/xsk.h b/tools/lib/bpf/xsk.h
index 82ea71a0f3ec..8d393873b70f 100644
--- a/tools/lib/bpf/xsk.h
+++ b/tools/lib/bpf/xsk.h
@@ -170,12 +170,14 @@ LIBBPF_API int xsk_socket__fd(const struct xsk_socket *xsk);
 #define XSK_UMEM__DEFAULT_FRAME_SHIFT    11 /* 2048 bytes */
 #define XSK_UMEM__DEFAULT_FRAME_SIZE     (1 << XSK_UMEM__DEFAULT_FRAME_SHIFT)
 #define XSK_UMEM__DEFAULT_FRAME_HEADROOM 0
+#define XSK_UMEM__DEFAULT_FLAGS 0
 
 struct xsk_umem_config {
 	__u32 fill_size;
 	__u32 comp_size;
 	__u32 frame_size;
 	__u32 frame_headroom;
+	__u32 flags;
 };
 
 /* Flags for the libbpf_flags field. */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
