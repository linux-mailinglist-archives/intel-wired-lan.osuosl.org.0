Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF45700B50
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:20:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66A6F42CA1;
	Fri, 12 May 2023 15:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66A6F42CA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904857;
	bh=QicjAHJkMw5mUL6oFQ4UXXiVGdFDo12TEp3MD7XfcTg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=58eGRdl//VMsrA2lX3WuX/5/LfxuJ9vAfFChq8KfboyHIL2utwIHmIY/7n0ZBzh5A
	 +Kjq/agAq282RKyD72MAVh986lT1d/ygQQsKsp3eH5O2Fr1HlfwfWr3V0rboLhkzmz
	 VvuKXDXYEyqFeZg0ZXoOEAapfNQzM8K/5EOeGW367lBtaDyQ6Fx2nj2/EIloa44wfr
	 6tlDWL4ZwT9tvV/KA7HpWtRj0lPH3VMi+RCWd7YlgALtoC91Pr8mM5NQuMzQM09SGp
	 QbsHEwuuO3iK1GRB4Lc8mYO3Qc1a264O0N2+KWlsSe1YZlJSrS6GX7fYMMEF8fOFjY
	 Tdsy9efXiYkGg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpIbafKkCRwa; Fri, 12 May 2023 15:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F138742C56;
	Fri, 12 May 2023 15:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F138742C56
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9D581BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CF3334173A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF3334173A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iVLz-eBRNJdO for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:20:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC0D74018B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC0D74018B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:20:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353061159"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353061159"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="812114328"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="812114328"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2023 08:20:33 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 81ACF35FB8;
 Fri, 12 May 2023 16:20:30 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:33 +0200
Message-Id: <20230512151639.992033-10-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904850; x=1715440850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S/i4FZlWSvJW010cQ5fIEi6AdM6FNT6Vg7Wn94JIdbs=;
 b=fuqRezwM9qPnwye10NpnbWYdv3YjiHrkVZrZ4IuOdAD2r+jh4aWINd9N
 90K9F+oBops2+wct3qQz+bCoybdGpqlWkMLQZWvLyII/G8UHBBJfMbxzy
 LDPEbRvaj0oQK+3QV/Z0etHxvPXdD5qkWP3QNFXjzhh7OwiPiY7YsTOet
 2hIcyu1I8s48qJvpallRuFePHnJpkSOapTna/V5APd3GVWa1GyC5xPgtb
 zdq9ft6ua7FhhalTUddI652hbX8LTUILC8rpPXjoPsrXp3yMEWXu7888c
 pqxMPqEaG6KqbJwcXckccea2Ej0d9usLnwZwd3iZhUCS5J2DtdYyLm4L7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fuqRezwM
Subject: [Intel-wired-lan] [PATCH 09/15] xdp: Add VLAN tag hint
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
Cc: Anatoly Burakov <anatoly.burakov@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Song Liu <song@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Stanislav Fomichev <sdf@google.com>, Maryam Tahhan <mtahhan@redhat.com>,
 xdp-hints@xdp-project.net, Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jesper Dangaard Brouer <brouer@redhat.com>,
 Yonghong Song <yhs@fb.com>, Larysa Zaremba <larysa.zaremba@intel.com>,
 KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jiri Olsa <jolsa@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Implement functionality that enables drivers to expose VLAN tag
to XDP code.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 Documentation/networking/xdp-rx-metadata.rst | 11 ++++++++-
 include/linux/netdevice.h                    |  2 ++
 include/net/xdp.h                            |  4 ++++
 kernel/bpf/offload.c                         |  4 ++++
 net/core/xdp.c                               | 24 ++++++++++++++++++++
 5 files changed, 44 insertions(+), 1 deletion(-)

diff --git a/Documentation/networking/xdp-rx-metadata.rst b/Documentation/networking/xdp-rx-metadata.rst
index 25ce72af81c2..73a78029c596 100644
--- a/Documentation/networking/xdp-rx-metadata.rst
+++ b/Documentation/networking/xdp-rx-metadata.rst
@@ -18,7 +18,16 @@ Currently, the following kfuncs are supported. In the future, as more
 metadata is supported, this set will grow:
 
 .. kernel-doc:: net/core/xdp.c
-   :identifiers: bpf_xdp_metadata_rx_timestamp bpf_xdp_metadata_rx_hash
+   :identifiers: bpf_xdp_metadata_rx_timestamp
+
+.. kernel-doc:: net/core/xdp.c
+   :identifiers: bpf_xdp_metadata_rx_hash
+
+.. kernel-doc:: net/core/xdp.c
+   :identifiers: bpf_xdp_metadata_rx_ctag
+
+.. kernel-doc:: net/core/xdp.c
+   :identifiers: bpf_xdp_metadata_rx_stag
 
 An XDP program can use these kfuncs to read the metadata into stack
 variables for its own consumption. Or, to pass the metadata on to other
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index 08fbd4622ccf..fdae37fe11f5 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1655,6 +1655,8 @@ struct xdp_metadata_ops {
 	int	(*xmo_rx_timestamp)(const struct xdp_md *ctx, u64 *timestamp);
 	int	(*xmo_rx_hash)(const struct xdp_md *ctx, u32 *hash,
 			       enum xdp_rss_hash_type *rss_type);
+	int	(*xmo_rx_ctag)(const struct xdp_md *ctx, u16 *vlan_tag);
+	int	(*xmo_rx_stag)(const struct xdp_md *ctx, u16 *vlan_tag);
 };
 
 /**
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 6381560efae2..2db7439fc60f 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -389,6 +389,10 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
 			   bpf_xdp_metadata_rx_timestamp) \
 	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_HASH, \
 			   bpf_xdp_metadata_rx_hash) \
+	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CTAG, \
+			   bpf_xdp_metadata_rx_ctag) \
+	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_STAG, \
+			   bpf_xdp_metadata_rx_stag) \
 
 enum {
 #define XDP_METADATA_KFUNC(name, _) name,
diff --git a/kernel/bpf/offload.c b/kernel/bpf/offload.c
index d9c9f45e3529..2c6b6e82cfac 100644
--- a/kernel/bpf/offload.c
+++ b/kernel/bpf/offload.c
@@ -848,6 +848,10 @@ void *bpf_dev_bound_resolve_kfunc(struct bpf_prog *prog, u32 func_id)
 		p = ops->xmo_rx_timestamp;
 	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_HASH))
 		p = ops->xmo_rx_hash;
+	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_CTAG))
+		p = ops->xmo_rx_ctag;
+	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_STAG))
+		p = ops->xmo_rx_stag;
 out:
 	up_read(&bpf_devs_lock);
 
diff --git a/net/core/xdp.c b/net/core/xdp.c
index 41e5ca8643ec..eff21501609f 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -738,6 +738,30 @@ __bpf_kfunc int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, u32 *hash,
 	return -EOPNOTSUPP;
 }
 
+/**
+ * bpf_xdp_metadata_rx_ctag - Read XDP packet inner vlan tag.
+ * @ctx: XDP context pointer.
+ * @vlan_tag: Return value pointer.
+ *
+ * Returns 0 on success or ``-errno`` on error.
+ */
+__bpf_kfunc int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx, u16 *vlan_tag)
+{
+	return -EOPNOTSUPP;
+}
+
+/**
+ * bpf_xdp_metadata_rx_stag - Read XDP packet outer vlan tag.
+ * @ctx: XDP context pointer.
+ * @vlan_tag: Return value pointer.
+ *
+ * Returns 0 on success or ``-errno`` on error.
+ */
+__bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag)
+{
+	return -EOPNOTSUPP;
+}
+
 __diag_pop();
 
 BTF_SET8_START(xdp_metadata_kfunc_ids)
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
