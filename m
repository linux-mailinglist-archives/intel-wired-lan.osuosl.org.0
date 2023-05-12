Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B132C700BBB
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:29:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BD4D428D7;
	Fri, 12 May 2023 15:29:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BD4D428D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683905385;
	bh=GkvJaMzEdXPNbRxUxVBV9q/yKjSKxHNZ+az3viJTGik=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VGDmZP6CUolNUU+b9gS0gam6s8Bki++mcaZ8nLKWwFX7NNqIrkH9AEVaDTJAMzLB1
	 hAt+WFS2uGdTSbtBnEQyNYs5cm8/7RXLXRrT261aNgW+fH23kRR8Ri30DuTTXQmUyh
	 NeHdx10t5xUCSngdQALqsyeJJq7HCHm3sAJUQPU0qO+9/ktthxt75TSELHRTkvO33l
	 /WnLEuRE7QyU019AwuWg6EZzALsbIORGZ2IfzXtgdM63iaUfGzCC9qq9eIUgaj7DdW
	 kTITplvezIhcTkQm3Ltw5dbAGDWwxHjUQFAX8yyvNugtt4gSyX13lPMgmVpYivU57z
	 i486z96cXVOrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QDvxDxNrHMu9; Fri, 12 May 2023 15:29:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86D9D40965;
	Fri, 12 May 2023 15:29:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86D9D40965
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 537431BF2CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 398896137C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 398896137C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A1-w0p4_wWZu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 15:29:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DB2E60B42
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DB2E60B42
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 15:29:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="437151137"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="437151137"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="946665835"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="946665835"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga006.fm.intel.com with ESMTP; 12 May 2023 08:29:06 -0700
Received: from lincoln.igk.intel.com (lincoln.igk.intel.com [10.102.21.235])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1E23635FB9;
 Fri, 12 May 2023 16:29:05 +0100 (IST)
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: bpf@vger.kernel.org
Date: Fri, 12 May 2023 17:26:07 +0200
Message-Id: <20230512152607.992209-16-larysa.zaremba@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230512152607.992209-1-larysa.zaremba@intel.com>
References: <20230512152607.992209-1-larysa.zaremba@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683905352; x=1715441352;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0H3Jo5u8syYtrs2oEf4GVK8DWDDlchIpBRUlgLTFGBk=;
 b=m09bC1WCNgIeKReTD16PU0FKtEW04w62zSoRydV/cxh9tcl6Zesdw6gP
 G5sjWuCP0pTVj0UJmoAiJF1XzR6n/gXR0tejB10VfJ2bfEWVrSYU8bkuD
 ZmYpYzUOLx7Kbjp+Fwn7iVxnREKjz03Z17LNt/2eIvfz6a3BCGyGaVQyY
 yYyN/raf8/diTsKbBZv5m52KYXCdWTfObof1pi+i4O69PbXk29JNDMM4G
 elVUEU7HIfe1aWHmfHl6owyv8yCNgrDIPig6Fny0dgIbsR9remyQGQ9SP
 3iV25OO39GoaPJN8tEBvbXl40TkQLK90hSjogCO8/wDKPBJ9bTSibgbCU
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m09bC1WC
Subject: [Intel-wired-lan] [PATCH RESEND bpf-next 15/15] selftests/bpf: Add
 flags and new hints to xdp_hw_metadata
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
