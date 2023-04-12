Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 927316DFEFC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 21:48:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EB0EF41DE5;
	Wed, 12 Apr 2023 19:48:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EB0EF41DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681328932;
	bh=zW4yTbeyp2Y9GtOY11yTxU9dpRoWjum8VWaAqVeqCPQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k1vOO6I8vX+fR7dLTa6FkxbePeTqKqrWnygLPCk2vf+vgiixBYAfNF50Cw45GFQdk
	 sv5EnKlymahpA/86Fq8Hu+spuPLmNFmxljxi6fEGJFHjgrIXpBTemfdf8WZHyoftFT
	 EafGQWfnfl1xTdBgLEprv+oTiLOn2RoZEdAuKmXRzLh99LegMG1EsIrxu5E9psA1hV
	 T1i8ZCDOO8qGSUFIfZvnHO5IACTs70me/b5j9nFpjDITy9W2PjmHEKVInaEm9Y5EYI
	 MIKGfYlDCX1p91CUbTglr9XOrGshVDQd51HEM39TMks0EGxAsjYBDO76qvm6HFA0UT
	 PeDP7xNLsGA/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QVCLVEBNlUkY; Wed, 12 Apr 2023 19:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 776D341E6E;
	Wed, 12 Apr 2023 19:48:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 776D341E6E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 849DE1C3D40
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B2F6605EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B2F6605EC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qBS4MCzjYlmT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 19:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7FC7A605B0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7FC7A605B0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 19:48:42 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-173-gt3IM4NpNXaLCyXGbVZZGw-1; Wed, 12 Apr 2023 15:48:37 -0400
X-MC-Unique: gt3IM4NpNXaLCyXGbVZZGw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 959503C025C1;
 Wed, 12 Apr 2023 19:48:36 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4D05CFD6E;
 Wed, 12 Apr 2023 19:48:36 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 61D45307372E8;
 Wed, 12 Apr 2023 21:48:35 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 21:48:35 +0200
Message-ID: <168132891533.340624.7313781245316405141.stgit@firesoul>
In-Reply-To: <168132888942.340624.2449617439220153267.stgit@firesoul>
References: <168132888942.340624.2449617439220153267.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681328921;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lfDGD9RcxJ2qdgcYebzeDAtUwxX7ZOftORqmzBm8cuY=;
 b=OWlGrlnO1kLICFPmKqvhQlgtTsO/2bKHNZROqlCzqCDzzFewem7Cpj2nUK6jBRmioA8CFt
 GxL80rZ+NruBIOYJdQmnP/zC/h0/WN7v6UG+BYoMX64ohyl4kIFc4IPZviRL4gzNGzJVXp
 CW5KMrOCX4koZI4fEh4ZuDfB9AaQGVU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OWlGrlnO
Subject: [Intel-wired-lan] [PATCH bpf V10 1/6] selftests/bpf:
 xdp_hw_metadata remove bpf_printk and add counters
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, linux-rdma@vger.kernel.org, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 Jesper Dangaard Brouer <brouer@redhat.com>, kuba@kernel.org, pabeni@redhat.com,
 martin.lau@kernel.org, larysa.zaremba@intel.com, leon@kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, tariqt@nvidia.com,
 yoong.siang.song@intel.com, saeedm@nvidia.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The tool xdp_hw_metadata can be used by driver developers
implementing XDP-hints metadata kfuncs.

Remove all bpf_printk calls, as the tool already transfers all the
XDP-hints related information via metadata area to AF_XDP
userspace process.

Add counters for providing remaining information about failure and
skipped packet events.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
Acked-by: Stanislav Fomichev <sdf@google.com>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   36 ++++++++++++--------
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |    4 ++
 2 files changed, 24 insertions(+), 16 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 4c55b4d79d3d..0687d11162f6 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -12,6 +12,10 @@ struct {
 	__type(value, __u32);
 } xsk SEC(".maps");
 
+__u64 pkts_skip = 0;
+__u64 pkts_fail = 0;
+__u64 pkts_redir = 0;
+
 extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
 					 __u64 *timestamp) __ksym;
 extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
@@ -26,7 +30,7 @@ int rx(struct xdp_md *ctx)
 	struct udphdr *udp = NULL;
 	struct iphdr *iph = NULL;
 	struct xdp_meta *meta;
-	int ret;
+	int err;
 
 	data = (void *)(long)ctx->data;
 	data_end = (void *)(long)ctx->data_end;
@@ -46,17 +50,20 @@ int rx(struct xdp_md *ctx)
 			udp = NULL;
 	}
 
-	if (!udp)
+	if (!udp) {
+		__sync_add_and_fetch(&pkts_skip, 1);
 		return XDP_PASS;
+	}
 
-	if (udp->dest != bpf_htons(9091))
+	/* Forwarding UDP:9091 to AF_XDP */
+	if (udp->dest != bpf_htons(9091)) {
+		__sync_add_and_fetch(&pkts_skip, 1);
 		return XDP_PASS;
+	}
 
-	bpf_printk("forwarding UDP:9091 to AF_XDP");
-
-	ret = bpf_xdp_adjust_meta(ctx, -(int)sizeof(struct xdp_meta));
-	if (ret != 0) {
-		bpf_printk("bpf_xdp_adjust_meta returned %d", ret);
+	err = bpf_xdp_adjust_meta(ctx, -(int)sizeof(struct xdp_meta));
+	if (err) {
+		__sync_add_and_fetch(&pkts_fail, 1);
 		return XDP_PASS;
 	}
 
@@ -65,20 +72,19 @@ int rx(struct xdp_md *ctx)
 	meta = data_meta;
 
 	if (meta + 1 > data) {
-		bpf_printk("bpf_xdp_adjust_meta doesn't appear to work");
+		__sync_add_and_fetch(&pkts_fail, 1);
 		return XDP_PASS;
 	}
 
-	if (!bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp))
-		bpf_printk("populated rx_timestamp with %llu", meta->rx_timestamp);
-	else
+	err = bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp);
+	if (err)
 		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
 
-	if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash))
-		bpf_printk("populated rx_hash with %u", meta->rx_hash);
-	else
+	err = bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash);
+	if (err)
 		meta->rx_hash = 0; /* Used by AF_XDP as not avail signal */
 
+	__sync_add_and_fetch(&pkts_redir, 1);
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
 }
 
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 1c8acb68b977..3b942ef7297b 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -212,7 +212,9 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd)
 	while (true) {
 		errno = 0;
 		ret = poll(fds, rxq + 1, 1000);
-		printf("poll: %d (%d)\n", ret, errno);
+		printf("poll: %d (%d) skip=%llu fail=%llu redir=%llu\n",
+		       ret, errno, bpf_obj->bss->pkts_skip,
+		       bpf_obj->bss->pkts_fail, bpf_obj->bss->pkts_redir);
 		if (ret < 0)
 			break;
 		if (ret == 0)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
