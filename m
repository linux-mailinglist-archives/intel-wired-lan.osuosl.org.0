Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D435A700B60
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:22:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66C7A42CAF;
	Fri, 12 May 2023 15:22:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66C7A42CAF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683904928;
	bh=GkvJaMzEdXPNbRxUxVBV9q/yKjSKxHNZ+az3viJTGik=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tR5igfg76St+7aHuWvWBCk3ZECP4gR0vRiDe4KdaCMnMdK8QjgF2HAbAMM8CSAzxi
	 +bVTDUFS5rZtvn6n3DBGGxkoFLnE8OTkcMnQxVgfhMlkoQssYV4kKs/FCe4QAYX0MS
	 sig80dbig7rxqRQEdq+cIc9hzic6Vj1qoOfjBVJxMke2yL8Dsk/BAQ4s8LUsOlj+RI
	 /3nKUpEfo5HjFFVVS1NRcy8lS3DImygoGoJCmbfBRLwk7Zs4uBbkO9pSo3CK8JUNbU
	 atBLUBrLHHR9w4WzsBiXdwRhcZEMywqHOcrVCwFR620LTwHKImxK5cluOCN7p7HP6n
	 yoxpRKrQ8hzEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ro3njBYXbVSX; Fri, 12 May 2023 15:22:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E98EC42C53;
	Fri, 12 May 2023 15:22:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E98EC42C53
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B694B1BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8ED4042C8D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:21:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8ED4042C8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y8kWSE4BMaZG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:21:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F0C4542CA2
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0C4542CA2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:21:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353061299"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353061299"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="812114649"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="812114649"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga002.fm.intel.com with ESMTP; 12 May 2023 08:20:53 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 898B636351;
 Fri, 12 May 2023 16:20:50 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:16:39 +0200
Message-Id: <20230512151639.992033-16-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512151639.992033-1-larysa.zaremba@intel.com>
References: <20230512151639.992033-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683904887; x=1715440887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0H3Jo5u8syYtrs2oEf4GVK8DWDDlchIpBRUlgLTFGBk=;
 b=AdWz6m+LoIM/iEUWaIQvBd05k7yrTX1F59Lpphk+9ZW4yM4eR2mx5s3C
 RneHVAgEMF1AXwa58/+WjCdNFfSeQtRABDVDIpzmb91AESqSOzoWX9wti
 Io+Ix3hF6p8w0Jnpqm+US3ouGfm5a+59G1tYmOsGqLjTKU2OpMM3tfxg2
 KwFEwjFXKWoLGwB4gqH0X95Z+A/Uhja1pGnan2v1i7YdXprtEUP88fQSI
 5nVoreDNRd6UTcyfQx29Dm4wtVk3/hKfLeeG4azBfVJCYtu4zcogGHKU8
 pfookuQVOZ3Bb3BPkURkO8tu0WA2ZAttTl4cyG6PXErktnUrA4rWaQIcC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AdWz6m+L
Subject: [Intel-wired-lan] [PATCH 15/15] selftests/bpf: Add flags and new
 hints to xdp_hw_metadata
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

Add hints added in the previous patches (VLAN tags and checksum level)
to the xdp_hw_metadata program.

Also, to make metadata layout more straightforward, add flags field
to pass information about validity of every separate hint separately.

Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 .../selftests/bpf/progs/xdp_hw_metadata.c     | 40 ++++++++++++++++---
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 29 +++++++++++---
 tools/testing/selftests/bpf/xdp_metadata.h    | 28 ++++++++++++-
 3 files changed, 85 insertions(+), 12 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index f95f82a8b449..97bad79ce4ca 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -20,6 +20,12 @@ extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
 					 __u64 *timestamp) __ksym;
 extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
 				    enum xdp_rss_hash_type *rss_type) __ksym;
+extern int bpf_xdp_metadata_rx_ctag(const struct xdp_md *ctx,
+				    __u16 *vlan_tag) __ksym;
+extern int bpf_xdp_metadata_rx_stag(const struct xdp_md *ctx,
+				    __u16 *vlan_tag) __ksym;
+extern int bpf_xdp_metadata_rx_csum_lvl(const struct xdp_md *ctx,
+					__u8 *csum_level) __ksym;
 
 SEC("xdp")
 int rx(struct xdp_md *ctx)
@@ -83,15 +89,39 @@ int rx(struct xdp_md *ctx)
 		return XDP_PASS;
 	}
 
+	meta->hint_valid = 0;
+
 	err = bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp);
-	if (!err)
+	if (err) {
+		meta->rx_timestamp_err = err;
+	} else {
+		meta->hint_valid |= XDP_META_FIELD_TS;
 		meta->xdp_timestamp = bpf_ktime_get_tai_ns();
-	else
-		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
+	}
 
 	err = bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type);
-	if (err < 0)
-		meta->rx_hash_err = err; /* Used by AF_XDP as no hash signal */
+	if (err)
+		meta->rx_hash_err = err;
+	else
+		meta->hint_valid |= XDP_META_FIELD_RSS;
+
+	err = bpf_xdp_metadata_rx_ctag(ctx, &meta->rx_ctag);
+	if (err)
+		meta->rx_ctag_err = err;
+	else
+		meta->hint_valid |= XDP_META_FIELD_CTAG;
+
+	err = bpf_xdp_metadata_rx_stag(ctx, &meta->rx_stag);
+	if (err)
+		meta->rx_stag_err = err;
+	else
+		meta->hint_valid |= XDP_META_FIELD_STAG;
+
+	err = bpf_xdp_metadata_rx_csum_lvl(ctx, &meta->rx_csum_lvl);
+	if (err)
+		meta->rx_csum_err = err;
+	else
+		meta->hint_valid |= XDP_META_FIELD_CSUM_LVL;
 
 	__sync_add_and_fetch(&pkts_redir, 1);
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 613321eb84c1..efcabe68f64b 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -156,15 +156,16 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
 
 	meta = data - sizeof(*meta);
 
-	if (meta->rx_hash_err < 0)
-		printf("No rx_hash err=%d\n", meta->rx_hash_err);
-	else
+	if (meta->hint_valid & XDP_META_FIELD_RSS)
 		printf("rx_hash: 0x%X with RSS type:0x%X\n",
 		       meta->rx_hash, meta->rx_hash_type);
+	else
+		printf("No rx_hash, err=%d\n", meta->rx_hash_err);
+
+	if (meta->hint_valid & XDP_META_FIELD_TS) {
+		printf("rx_timestamp:  %llu (sec:%0.4f)\n", meta->rx_timestamp,
+		       (double)meta->rx_timestamp / NANOSEC_PER_SEC);
 
-	printf("rx_timestamp:  %llu (sec:%0.4f)\n", meta->rx_timestamp,
-	       (double)meta->rx_timestamp / NANOSEC_PER_SEC);
-	if (meta->rx_timestamp) {
 		__u64 usr_clock = gettime(clock_id);
 		__u64 xdp_clock = meta->xdp_timestamp;
 		__s64 delta_X = xdp_clock - meta->rx_timestamp;
@@ -179,8 +180,24 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
 		       usr_clock, (double)usr_clock / NANOSEC_PER_SEC,
 		       (double)delta_X2U / NANOSEC_PER_SEC,
 		       (double)delta_X2U / 1000);
+	} else {
+		printf("No rx_timestamp, err=%d\n", meta->rx_timestamp_err);
 	}
 
+	if (meta->hint_valid & XDP_META_FIELD_CTAG)
+		printf("rx_ctag: %u\n", meta->rx_ctag);
+	else
+		printf("No rx_ctag, err=%d\n", meta->rx_ctag_err);
+
+	if (meta->hint_valid & XDP_META_FIELD_STAG)
+		printf("rx_stag: %u\n", meta->rx_stag);
+	else
+		printf("No rx_stag, err=%d\n", meta->rx_stag_err);
+
+	if (meta->hint_valid & XDP_META_FIELD_CSUM_LVL)
+		printf("Checksum was checked at level %u\n", meta->rx_csum_lvl);
+	else
+		printf("Checksum was not checked, err=%d\n", meta->rx_csum_err);
 }
 
 static void verify_skb_metadata(int fd)
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index 6664893c2c77..7c0267a8918a 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -17,12 +17,38 @@
 #define ETH_P_8021AD 0x88A8
 #endif
 
+#define BIT(nr)			(1 << (nr))
+
+enum xdp_meta_field {
+	XDP_META_FIELD_TS	= BIT(0),
+	XDP_META_FIELD_RSS	= BIT(1),
+	XDP_META_FIELD_CTAG	= BIT(2),
+	XDP_META_FIELD_STAG	= BIT(3),
+	XDP_META_FIELD_CSUM_LVL	= BIT(4),
+};
+
 struct xdp_meta {
-	__u64 rx_timestamp;
+	union {
+		__u64 rx_timestamp;
+		__s32 rx_timestamp_err;
+	};
 	__u64 xdp_timestamp;
 	__u32 rx_hash;
 	union {
 		__u32 rx_hash_type;
 		__s32 rx_hash_err;
 	};
+	union {
+		__u16 rx_ctag;
+		__s32 rx_ctag_err;
+	};
+	union {
+		__u16 rx_stag;
+		__s32 rx_stag_err;
+	};
+	union {
+		__u8 rx_csum_lvl;
+		__s32 rx_csum_err;
+	};
+	enum xdp_meta_field hint_valid;
 };
-- 
2.35.3

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
