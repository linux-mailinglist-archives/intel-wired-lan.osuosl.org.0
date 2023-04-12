Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B756DF5CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Apr 2023 14:43:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1B36A61554;
	Wed, 12 Apr 2023 12:43:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B36A61554
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681303381;
	bh=UIrZecSz8+wHz5J4V32u+SLxJfPElJZvC1ahAWElhko=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WhinGQBVZaRyJ8c1ZtQCjvSfQOKhpZAWrOJTHZ8sJPibeWc5UzXBzk8LA6xwe+4ef
	 SvgLWHjv6kxr0a3pVW3wI0Hewa/Ot2LarnezvdX8pmdRfCoEOJXioPRA8eAlgIf9tm
	 5QsyCVTJEb9z7wTc00fmbqHJbbRRWf8Hy2eM8qw8GMHfkfeFl/L2lQ1joLm14q7fHf
	 I1uMiJVgs1iW7HoHfYWvbuAjx/8oNoEw+gshdArT6kKKxMr8F1N34CAsdC9ZN+ncKM
	 luboPXs0YdWm7xtw52lkQu3qSl0V4C/H4sXlH3C+KFtvFEydP291UXOeg5p+Y5Iioq
	 qwaZMdgvx7mmQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O2KrUFc-AqeJ; Wed, 12 Apr 2023 12:43:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFEED6153B;
	Wed, 12 Apr 2023 12:42:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFEED6153B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0CAE1C3C66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:42:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 978D16154B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:42:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 978D16154B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ro4xZAtqTEGz for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Apr 2023 12:42:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD9461543
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFD9461543
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Apr 2023 12:42:53 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-247-Ebzb0_u_NReM0JjGLFWjcA-1; Wed, 12 Apr 2023 08:42:51 -0400
X-MC-Unique: Ebzb0_u_NReM0JjGLFWjcA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7DA9D1C0950D;
 Wed, 12 Apr 2023 12:42:48 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 36AE12166B26;
 Wed, 12 Apr 2023 12:42:48 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 4B22B307372E8;
 Wed, 12 Apr 2023 14:42:47 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Wed, 12 Apr 2023 14:42:47 +0200
Message-ID: <168130336725.150247.12193228778654006957.stgit@firesoul>
In-Reply-To: <168130333143.150247.11159481574477358816.stgit@firesoul>
References: <168130333143.150247.11159481574477358816.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681303372;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ypBr1coCAU1Y3T7umg6mwMc5XwLDI0aKlHGieL5OTyE=;
 b=F9XqwO/yJQkpwZQFZZ8U4V2gJA37/9eK7DOapSTFovmOwsfR8HsfjENCJXz4ZM4A8zGGmv
 vlsesoS8iYKzGTyBFmQFMOQKEl7/omf8KJBqzJbLoB95bbFVSvCYeztieCW7uAomwTKaH2
 4cM9b5YcZ8IxpRnZ98uL/R85u3mFQGM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=F9XqwO/y
Subject: [Intel-wired-lan] [PATCH bpf V8 2/7] selftests/bpf: Add counters to
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
index b0104763405a..a07ef7534013 100644
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
