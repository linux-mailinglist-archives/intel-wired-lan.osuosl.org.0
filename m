Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6872F73280
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2019 17:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0712F85308;
	Wed, 24 Jul 2019 15:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7PV4mBpWO-E; Wed, 24 Jul 2019 15:11:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6357785348;
	Wed, 24 Jul 2019 15:11:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 872511BF357
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 840348683C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Foarp2hekwjd for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2019 13:26:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E06D984977
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2019 13:26:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 06:26:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; d="scan'208";a="369295171"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.140])
 by fmsmga006.fm.intel.com with ESMTP; 24 Jul 2019 06:26:31 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com,
 saeedm@mellanox.com, maximmi@mellanox.com, stephen@networkplumber.org
Date: Wed, 24 Jul 2019 05:10:39 +0000
Message-Id: <20190724051043.14348-8-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190724051043.14348-1-kevin.laatz@intel.com>
References: <20190716030637.5634-1-kevin.laatz@intel.com>
 <20190724051043.14348-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Wed, 24 Jul 2019 15:10:50 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v3 07/11] libbpf: add flags to
 umem config
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
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Kevin Laatz <kevin.laatz@intel.com>
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
v2:
  - Removed the headroom check from this patch. It has moved to the
    previous patch.
---
 tools/include/uapi/linux/if_xdp.h | 4 ++++
 tools/lib/bpf/xsk.c               | 3 +++
 tools/lib/bpf/xsk.h               | 2 ++
 3 files changed, 9 insertions(+)

diff --git a/tools/include/uapi/linux/if_xdp.h b/tools/include/uapi/linux/if_xdp.h
index faaa5ca2a117..594bcebb189c 100644
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
@@ -53,6 +56,7 @@ struct xdp_umem_reg {
 	__u64 len; /* Length of packet data area */
 	__u32 chunk_size;
 	__u32 headroom;
+	__u32 flags;
 };
 
 struct xdp_statistics {
diff --git a/tools/lib/bpf/xsk.c b/tools/lib/bpf/xsk.c
index 5007b5d4fd2c..5e7e4d420ee0 100644
--- a/tools/lib/bpf/xsk.c
+++ b/tools/lib/bpf/xsk.c
@@ -116,6 +116,7 @@ static void xsk_set_umem_config(struct xsk_umem_config *cfg,
 		cfg->comp_size = XSK_RING_CONS__DEFAULT_NUM_DESCS;
 		cfg->frame_size = XSK_UMEM__DEFAULT_FRAME_SIZE;
 		cfg->frame_headroom = XSK_UMEM__DEFAULT_FRAME_HEADROOM;
+		cfg->flags = XSK_UMEM__DEFAULT_FLAGS;
 		return;
 	}
 
@@ -123,6 +124,7 @@ static void xsk_set_umem_config(struct xsk_umem_config *cfg,
 	cfg->comp_size = usr_cfg->comp_size;
 	cfg->frame_size = usr_cfg->frame_size;
 	cfg->frame_headroom = usr_cfg->frame_headroom;
+	cfg->flags = usr_cfg->flags;
 }
 
 static int xsk_set_xdp_socket_config(struct xsk_socket_config *cfg,
@@ -182,6 +184,7 @@ int xsk_umem__create(struct xsk_umem **umem_ptr, void *umem_area, __u64 size,
 	mr.len = size;
 	mr.chunk_size = umem->config.frame_size;
 	mr.headroom = umem->config.frame_headroom;
+	mr.flags = umem->config.flags;
 
 	err = setsockopt(umem->fd, SOL_XDP, XDP_UMEM_REG, &mr, sizeof(mr));
 	if (err) {
diff --git a/tools/lib/bpf/xsk.h b/tools/lib/bpf/xsk.h
index 833a6e60d065..44a03d8c34b9 100644
--- a/tools/lib/bpf/xsk.h
+++ b/tools/lib/bpf/xsk.h
@@ -170,12 +170,14 @@ LIBBPF_API int xsk_socket__fd(const struct xsk_socket *xsk);
 #define XSK_UMEM__DEFAULT_FRAME_SHIFT    12 /* 4096 bytes */
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
