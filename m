Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B052A6D0C41
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 19:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42F1D41E9A;
	Thu, 30 Mar 2023 17:08:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42F1D41E9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680196102;
	bh=kkTf5FidwqS0ZFJzCpL371B5OIiKRkgzon9BuSTKldI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PnkPHgo+6ninWWy+mEKhbMkOKxCG3lacDV10YO8j2aIq4jltJRcNz9GFWJz7tJAiG
	 6zWDnes7NKFOi9GFYdWaH8wZq1DJfmM4pnO6az37Dz7U9t14gQ2RRwHIAZ/UgYQivX
	 XsJFPbQ3590uKuY91MqZ87yiTou65LKeShuXF4NO1/dxloqKaDxM0O4jJqV0e3wZy8
	 FScZhCn/EYumNKE9cbYBLY615Mq6V2N0kmA3ZUb9T573JSht6Fx/m/WxIRo7ZkuvII
	 U0gaY3f8znaRhOOkJ1ZkcOqY9j6PEY8Sw1GBsPU1VV6O9yTFsi0lJzZbz919ruNEBT
	 X7UUzzcnRWdRA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qATXzvgn31Eq; Thu, 30 Mar 2023 17:08:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 29F4541E8D;
	Thu, 30 Mar 2023 17:08:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29F4541E8D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0765A1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:08:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D380941E8D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:08:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D380941E8D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OegJagMaBPPC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 17:08:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F25F741E8C
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F25F741E8C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 17:08:14 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-261-7dlY1MtQN3CqUPOVkfBPlA-1; Thu, 30 Mar 2023 13:08:09 -0400
X-MC-Unique: 7dlY1MtQN3CqUPOVkfBPlA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5895B3811F21;
 Thu, 30 Mar 2023 17:08:07 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.8])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EA01A14171C3;
 Thu, 30 Mar 2023 17:08:06 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 0CC0A30736C72;
 Thu, 30 Mar 2023 19:08:06 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>
Date: Thu, 30 Mar 2023 19:08:06 +0200
Message-ID: <168019608600.3557870.7120119859607204078.stgit@firesoul>
In-Reply-To: <168019602958.3557870.9960387532660882277.stgit@firesoul>
References: <168019602958.3557870.9960387532660882277.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680196094;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bSAIg+VQz7pDyr1tmWltn+wlC+zEEhL6e8qNwdj8hqQ=;
 b=Sa+a1K+AHmq6iYDheoFwtmYFXhC2//YRBDmvWK11MavqayKxmIAebusKxqccwa7esI/k24
 jArAGFN0NjwhFfH1TtQIuFpisqZZ18hIPhpvf1BR08YFL/6EHsJ1M/MNYEZlA3wQRy3foS
 /1Sg5ivqflLcPbDC/3Io6Wd9i0or2ec=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Sa+a1K+A
Subject: [Intel-wired-lan] [PATCH bpf RFC-V3 5/5] selftests/bpf: Adjust
 bpf_xdp_metadata_rx_hash for new arg
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, jesse.brandeburg@intel.com,
 kuba@kernel.org, pabeni@redhat.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, edumazet@google.com, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 .../selftests/bpf/prog_tests/xdp_metadata.c        |    2 ++
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   14 +++++++++-----
 tools/testing/selftests/bpf/progs/xdp_metadata.c   |    6 +++---
 tools/testing/selftests/bpf/progs/xdp_metadata2.c  |    7 ++++---
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |    2 +-
 tools/testing/selftests/bpf/xdp_metadata.h         |    1 +
 6 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
index aa4beae99f4f..8c5e98da9ae9 100644
--- a/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
+++ b/tools/testing/selftests/bpf/prog_tests/xdp_metadata.c
@@ -273,6 +273,8 @@ static int verify_xsk_metadata(struct xsk *xsk)
 	if (!ASSERT_NEQ(meta->rx_hash, 0, "rx_hash"))
 		return -1;
 
+	ASSERT_EQ(meta->rx_hash_type, 0, "rx_hash_type");
+
 	xsk_ring_cons__release(&xsk->rx, 1);
 	refill_rx(xsk, comp_addr);
 
diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 4c55b4d79d3d..7b3fc12e96d6 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -14,8 +14,8 @@ struct {
 
 extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
 					 __u64 *timestamp) __ksym;
-extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
-				    __u32 *hash) __ksym;
+extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
+				    enum xdp_rss_hash_type *rss_type) __ksym;
 
 SEC("xdp")
 int rx(struct xdp_md *ctx)
@@ -74,10 +74,14 @@ int rx(struct xdp_md *ctx)
 	else
 		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
 
-	if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash))
-		bpf_printk("populated rx_hash with %u", meta->rx_hash);
-	else
+	if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type)) {
+		bpf_printk("populated rx_hash:0x%X type:0x%X",
+			   meta->rx_hash, meta->rx_hash_type);
+		if (!(meta->rx_hash_type & XDP_RSS_L4))
+			bpf_printk("rx_hash low quality L3 hash type");
+	} else {
 		meta->rx_hash = 0; /* Used by AF_XDP as not avail signal */
+	}
 
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
 }
diff --git a/tools/testing/selftests/bpf/progs/xdp_metadata.c b/tools/testing/selftests/bpf/progs/xdp_metadata.c
index 77678b034389..d151d406a123 100644
--- a/tools/testing/selftests/bpf/progs/xdp_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_metadata.c
@@ -21,8 +21,8 @@ struct {
 
 extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
 					 __u64 *timestamp) __ksym;
-extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
-				    __u32 *hash) __ksym;
+extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
+				    enum xdp_rss_hash_type *rss_type) __ksym;
 
 SEC("xdp")
 int rx(struct xdp_md *ctx)
@@ -56,7 +56,7 @@ int rx(struct xdp_md *ctx)
 	if (timestamp == 0)
 		meta->rx_timestamp = 1;
 
-	bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash);
+	bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type);
 
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
 }
diff --git a/tools/testing/selftests/bpf/progs/xdp_metadata2.c b/tools/testing/selftests/bpf/progs/xdp_metadata2.c
index cf69d05451c3..85f88d9d7a78 100644
--- a/tools/testing/selftests/bpf/progs/xdp_metadata2.c
+++ b/tools/testing/selftests/bpf/progs/xdp_metadata2.c
@@ -5,17 +5,18 @@
 #include <bpf/bpf_helpers.h>
 #include <bpf/bpf_endian.h>
 
-extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
-				    __u32 *hash) __ksym;
+extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx, __u32 *hash,
+				    enum xdp_rss_hash_type *rss_type) __ksym;
 
 int called;
 
 SEC("freplace/rx")
 int freplace_rx(struct xdp_md *ctx)
 {
+	enum xdp_rss_hash_type type = 0;
 	u32 hash = 0;
 	/* Call _any_ metadata function to make sure we don't crash. */
-	bpf_xdp_metadata_rx_hash(ctx, &hash);
+	bpf_xdp_metadata_rx_hash(ctx, &hash, &type);
 	called++;
 	return XDP_PASS;
 }
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 1c8acb68b977..4ca29e0c9646 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -141,7 +141,7 @@ static void verify_xdp_metadata(void *data)
 	meta = data - sizeof(*meta);
 
 	printf("rx_timestamp: %llu\n", meta->rx_timestamp);
-	printf("rx_hash: %u\n", meta->rx_hash);
+	printf("rx_hash: 0x%X RSS type:0x%X\n", meta->rx_hash, meta->rx_hash_type);
 }
 
 static void verify_skb_metadata(int fd)
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index f6780fbb0a21..899da872fee1 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -12,4 +12,5 @@
 struct xdp_meta {
 	__u64 rx_timestamp;
 	__u32 rx_hash;
+	__u32 rx_hash_type;
 };


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
