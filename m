Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7F9700BB4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 454DB42CC7;
	Fri, 12 May 2023 15:29:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 454DB42CC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905371;
	bh=kPZFldjJYMXZcfzadW85FlmIyYn9H460bT0uzKXumds=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hh0enCVMHeOXi2yxZdufbqXjRHhQ7os0NLMpacTQpgaa6TQlcy1iee7knVCkPfMYC
	 sHCHyUBRG8Unt30/aZQVsRd4VNpyIHfFAdl0qdMgzmdRSdFFaMFKv4oy6SD6xPezsC
	 xDPE09yTx2OWkOnb5Z0GCOxixprOG2aeQd9wvLs4GcswVKOLSmuJayiueMndcSsSvy
	 y28PMre0m+VkG+FNJ3hjika2uLKF8xwa/Oq9PfQ6Z+/LGufwrz1Gxbe0pGglacxZWM
	 Fd3LhDffUBLw5OfRgvqrRUdS0Eww5bnvOMw0NoBrsKOwczT3qSfOI2eWr+sKd3PVw8
	 I/bYW+n9xutEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y3F3-jajo6p1; Fri, 12 May 2023 15:29:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08ED542045;
	Fri, 12 May 2023 15:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08ED542045
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74A7E1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CE376137C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CE376137C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qecWc0JlOu5b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:29:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 905B160B42
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 905B160B42
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="349653437"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="349653437"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:29:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="1030124584"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="1030124584"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga005.fm.intel.com with ESMTP; 12 May 2023 08:28:57 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 0596335FB8;
 Fri, 12 May 2023 16:28:55 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:26:03 +0200
Message-Id: <20230512152607.992209-12-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905342; x=1715441342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HYcETTLQrd7Q2kE/D+/Vk/4DhcDrCT+MKt7UQ1PXhqI=;
 b=OxkvsPoH0MHK0LdZA9JIjW1Gh1XPOGGQmQOc87iVD53YO7sr7hIb6lFH
 6ogkYDIzgxfsDr3/rfTPLBrnlIUNKwL6NznTxcO/CGniHScXbmYrRTfpk
 pi+38dYFP8kkmBw4kK51zUE6W8HSV9Bqyjqgqk1ISVbIrHvwAJ0wJEMD5
 kXy/E9qOZ86dtjhzktBQiO/Al+Ta9KQt3VY8DDZWabXbow4O58CQMyU7d
 qStxdWiZqGnKjKwXSvWFOIHt0lK4ukk7WfMwC3enZPU/pn3xbFswvZPSy
 90umyjlC/GHBITqzGdN5N6pDpZrdu0ZrWfeQ3NVHBMfDnGeT+FDPWwM60
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OxkvsPoH
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 11/15] xdp: Add checksum
 level hint
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

Implement functionality that enables drivers to expose to XDP code,
whether checksums was checked and on what level.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 Documentation/networking/xdp-rx-metadata.rst |  3 +++
 include/linux/netdevice.h                    |  1 +
 include/net/xdp.h                            |  2 ++
 kernel/bpf/offload.c                         |  2 ++
 net/core/xdp.c                               | 12 ++++++++++++
 5 files changed, 20 insertions(+)

diff --git a/Documentation/networking/xdp-rx-metadata.rst b/Documentation/networking/xdp-rx-metadata.rst
index 73a78029c596..f74f0e283097 100644
--- a/Documentation/networking/xdp-rx-metadata.rst
+++ b/Documentation/networking/xdp-rx-metadata.rst
@@ -29,6 +29,9 @@ metadata is supported, this set will grow:
 .. kernel-doc:: net/core/xdp.c
    :identifiers: bpf_xdp_metadata_rx_stag
 
+.. kernel-doc:: net/core/xdp.c
+   :identifiers: bpf_xdp_metadata_rx_csum_lvl
+
 An XDP program can use these kfuncs to read the metadata into stack
 variables for its own consumption. Or, to pass the metadata on to other
 consumers, an XDP program can store it into the metadata area carried
diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index fdae37fe11f5..ddade3a15366 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -1657,6 +1657,7 @@ struct xdp_metadata_ops {
 			       enum xdp_rss_hash_type *rss_type);
 	int	(*xmo_rx_ctag)(const struct xdp_md *ctx, u16 *vlan_tag);
 	int	(*xmo_rx_stag)(const struct xdp_md *ctx, u16 *vlan_tag);
+	int	(*xmo_rx_csum_lvl)(const struct xdp_md *ctx, u8 *csum_level);
 };
 
 /**
diff --git a/include/net/xdp.h b/include/net/xdp.h
index 2db7439fc60f..0fbd25616241 100644
--- a/include/net/xdp.h
+++ b/include/net/xdp.h
@@ -393,6 +393,8 @@ void xdp_attachment_setup(struct xdp_attachment_info *info,
 			   bpf_xdp_metadata_rx_ctag) \
 	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_STAG, \
 			   bpf_xdp_metadata_rx_stag) \
+	XDP_METADATA_KFUNC(XDP_METADATA_KFUNC_RX_CSUM_LVL, \
+			   bpf_xdp_metadata_rx_csum_lvl) \
 
 enum {
 #define XDP_METADATA_KFUNC(name, _) name,
diff --git a/kernel/bpf/offload.c b/kernel/bpf/offload.c
index 2c6b6e82cfac..8bd54fb4ac63 100644
--- a/kernel/bpf/offload.c
+++ b/kernel/bpf/offload.c
@@ -852,6 +852,8 @@ void *bpf_dev_bound_resolve_kfunc(struct bpf_prog *prog, u32 func_id)
 		p = ops->xmo_rx_ctag;
 	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_STAG))
 		p = ops->xmo_rx_stag;
+	else if (func_id == bpf_xdp_metadata_kfunc_id(XDP_METADATA_KFUNC_RX_CSUM_LVL))
+		p = ops->xmo_rx_csum_lvl;
 out:
 	up_read(&bpf_devs_lock);
 
diff --git a/net/core/xdp.c b/net/core/xdp.c
index eff21501609f..7dd45fd62983 100644
--- a/net/core/xdp.c
+++ b/net/core/xdp.c
@@ -762,6 +762,18 @@ __bpf_kfunc int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx, u16 *vlan_tag
 	return -EOPNOTSUPP;
 }
 
+/**
+ * bpf_xdp_metadata_rx_csum_lvl - Get depth at which HW has checked the checksum.
+ * @ctx: XDP context pointer.
+ * @csum_level: Return value pointer.
+ *
+ * Returns 0 on success (HW has checked the checksum) or ``-errno`` on error.
+ */
+__bpf_kfunc int bpf_xdp_metadata_rx_csum_lvl(const struct xdp_md *ctx, u8 *csum_level)
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
