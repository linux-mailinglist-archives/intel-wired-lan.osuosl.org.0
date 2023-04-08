Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D206DBC9B
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Apr 2023 21:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71B8B41DF8;
	Sat,  8 Apr 2023 19:25:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71B8B41DF8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680981903;
	bh=3bHEQfvQCTkzK/VbPcTwp8clqDMbitjVdrOCp+DCUs8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JbuDnRh7HYvHbOPBRFyhm2z+VVc5RYpHHjvD6UZJvEeBbo0L3jnRjxonN+QZdqFDo
	 X3Gz8WDZ9KrComa3/WWGFpnwrRTJlnYpt2HPNYHIegnbzlccg6ja+3kCKOVC2MJH54
	 VMQEKl2CHnYO1dq3Pc3wKFDD2f9J9rHL+agK8lOB9KDu6bLKE+cRiVA67G8YzD1efh
	 ODZW4JujWLDKX8V480Kgjft1azH7hZUdRbp31zvR62WqRwf5loo6Xz8JTJ5aJvgtP1
	 leB9EOtkWCzAl8D4LYgszhAzFTq18p+Xc5O6E5gY2fiAfYVKqetx+Q5HZMqtZkmxeZ
	 ql69XMYiujZsA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19d2k1HGMGOe; Sat,  8 Apr 2023 19:25:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D437A41DAA;
	Sat,  8 Apr 2023 19:25:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D437A41DAA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C72CA1C2C89
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A003940516
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A003940516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TI_20EoK2Ri4 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 Apr 2023 19:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B734840160
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B734840160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 Apr 2023 19:24:53 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-WNc-nW5aNYCSe86ldUi1gQ-1; Sat, 08 Apr 2023 15:24:49 -0400
X-MC-Unique: WNc-nW5aNYCSe86ldUi1gQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
 [10.11.54.7])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5608D29AA2E9;
 Sat,  8 Apr 2023 19:24:48 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5CC4014171BE;
 Sat,  8 Apr 2023 19:24:47 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 73149307372E8;
 Sat,  8 Apr 2023 21:24:46 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Sat, 08 Apr 2023 21:24:46 +0200
Message-ID: <168098188642.96582.9605191658852260548.stgit@firesoul>
In-Reply-To: <168098183268.96582.7852359418481981062.stgit@firesoul>
References: <168098183268.96582.7852359418481981062.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680981892;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eO/r8MtggLglxkiJ3agqPFRas0YnxAM9LNBZVhZj1AA=;
 b=Bph0OZpxH7c3kTDsOFLa4KNDor4j/bO/Rbq2/CA09Wbm0CA9CRoHYhk/gtjA83UyOOp3sg
 iE/Y9vKiFEztruF3LLhnh0Q/DSUSLvF8EwCnR/5YTCR5pQXosewZ9v9NhRaYnf42lu7lPG
 +X4BTZbBjyqyCd8UeZmG1pHMM6T7eaI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Bph0OZpx
Subject: [Intel-wired-lan] [PATCH bpf V7 2/7] selftests/bpf: Add counters to
 xdp_hw_metadata
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

Add counters for skipped, failed and redirected packets.
The xdp_hw_metadata program only redirects UDP port 9091.
This helps users to quickly identify then packets are
skipped and identify failures of bpf_xdp_adjust_meta.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |   15 +++++++++++++--
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |    4 +++-
 2 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 980eb60d8e5b..d11aca50e54d 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -25,6 +25,10 @@ struct {
 	__type(value, __u32);
 } xsk SEC(".maps");
 
+volatile __u64 pkts_skip = 0;
+volatile __u64 pkts_fail = 0;
+volatile __u64 pkts_redir = 0;
+
 extern int bpf_xdp_metadata_rx_timestamp(const struct xdp_md *ctx,
 					 __u64 *timestamp) __ksym;
 extern int bpf_xdp_metadata_rx_hash(const struct xdp_md *ctx,
@@ -59,16 +63,21 @@ int rx(struct xdp_md *ctx)
 			udp = NULL;
 	}
 
-	if (!udp)
+	if (!udp) {
+		pkts_skip++;
 		return XDP_PASS;
+	}
 
 	/* Forwarding UDP:9091 to AF_XDP */
-	if (udp->dest != bpf_htons(9091))
+	if (udp->dest != bpf_htons(9091)) {
+		pkts_skip++;
 		return XDP_PASS;
+	}
 
 	ret = bpf_xdp_adjust_meta(ctx, -(int)sizeof(struct xdp_meta));
 	if (ret != 0) {
 		bpf_printk("bpf_xdp_adjust_meta returned %d", ret);
+		pkts_fail++;
 		return XDP_PASS;
 	}
 
@@ -78,6 +87,7 @@ int rx(struct xdp_md *ctx)
 
 	if (meta + 1 > data) {
 		bpf_printk("bpf_xdp_adjust_meta doesn't appear to work");
+		pkts_fail++;
 		return XDP_PASS;
 	}
 
@@ -91,6 +101,7 @@ int rx(struct xdp_md *ctx)
 	else
 		meta->rx_hash = 0; /* Used by AF_XDP as not avail signal */
 
+	pkts_redir++;
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
