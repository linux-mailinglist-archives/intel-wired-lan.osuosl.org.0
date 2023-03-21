Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894696C332B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Mar 2023 14:47:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 156E040BDE;
	Tue, 21 Mar 2023 13:47:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 156E040BDE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679406455;
	bh=/nGeuEszq78O0Ji87gz6AwAhJQGBNfrI1zvhTCJo/Fk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VkCBLW6ZTSXB15eMQ5hNnBo2elGGizpZbh5H4nv0Yj2VvbyK48N3Uc9/pTez5P8G5
	 VqKTcBPnxf+RM+X7K1BVOOUatB9o97fLyhW3fkrmgpZv8473GX7K6uCtq1BnM4/Cjb
	 kxwh0SZkDMet13K3sYY7AUpaywRaM8MEmShqAzIK9zVkcLBujjVEnvoibZjVSjDVqb
	 5iauZGLsEwlN5lL9UDlH5s+OO/ERE9jCwsMEquyfOLu/Jg0zQbWKZGcU3cJ7Cxg3j+
	 9Z5AJi3qrupZLieThQbpvuvBvqecmupolOg9DywFjmVIF1h39Ziya0V3I+DEU8JA4T
	 5jTGwuT1iNauw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6nlbQGVMajcl; Tue, 21 Mar 2023 13:47:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF19E40BCD;
	Tue, 21 Mar 2023 13:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EF19E40BCD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 81D631BF327
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5D64B40BD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D64B40BD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XbYV6Fl1zgJm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 13:47:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9F07640BCB
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9F07640BCB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:47:28 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-19-Ki3F_Mj-MZixEcfecLybrQ-1; Tue, 21 Mar 2023 09:47:20 -0400
X-MC-Unique: Ki3F_Mj-MZixEcfecLybrQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
 [10.11.54.1])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C188385C06C;
 Tue, 21 Mar 2023 13:47:17 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 87DA540C20FA;
 Tue, 21 Mar 2023 13:47:17 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id B369930721A6C;
 Tue, 21 Mar 2023 14:47:16 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Tue, 21 Mar 2023 14:47:16 +0100
Message-ID: <167940643669.2718137.4624187727245854475.stgit@firesoul>
In-Reply-To: <167940634187.2718137.10209374282891218398.stgit@firesoul>
References: <167940634187.2718137.10209374282891218398.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679406447;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xk9luJqFYKnZQu1b5EgBEL83xZfiHrJUDu5Ocv07fK8=;
 b=YbszwMKA0o2sUuzKdIU3dh2W0HWqWys5F0f+DS7oWUMuLUiOpttBljMCSV8h45tIU/9ODc
 J2/qjmbXuU5yePphNR1ZJDNGtk/cB+f09dROCTazdBorvy+VFdZI/vkiJpLqIaYEfurnXG
 cqtSfr5/GhkthSpbM1A/FETAVp0veZY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YbszwMKA
Subject: [Intel-wired-lan] [PATCH bpf-next V2 3/6] selftests/bpf:
 xdp_hw_metadata RX hash return code info
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
 ast@kernel.org, jesse.brandeburg@intel.com, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When driver developers add XDP-hints kfuncs for RX hash it is
practical to print the return code in bpf_printk trace pipe log.

Print hash value as a hex value, both AF_XDP userspace and bpf_prog,
as this makes it easier to spot poor quality hashes.

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |    9 ++++++---
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |    5 ++++-
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 40c17adbf483..ce07010e4d48 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -77,10 +77,13 @@ int rx(struct xdp_md *ctx)
 		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
 	}
 
-	if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash))
-		bpf_printk("populated rx_hash with %u", meta->rx_hash);
-	else
+	ret = bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash);
+	if (ret >= 0) {
+		bpf_printk("populated rx_hash with 0x%08X", meta->rx_hash);
+	} else {
+		bpf_printk("rx_hash not-avail errno:%d", ret);
 		meta->rx_hash = 0; /* Used by AF_XDP as not avail signal */
+	}
 
 	return bpf_redirect_map(&xsk, ctx->rx_queue_index, XDP_PASS);
 }
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 400bfe19abfe..f3ec07ccdc95 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -3,6 +3,9 @@
 /* Reference program for verifying XDP metadata on real HW. Functional test
  * only, doesn't test the performance.
  *
+ * BPF-prog bpf_printk info outout can be access via
+ * /sys/kernel/debug/tracing/trace_pipe
+ *
  * RX:
  * - UDP 9091 packets are diverted into AF_XDP
  * - Metadata verified:
@@ -156,7 +159,7 @@ static void verify_xdp_metadata(void *data, clockid_t clock_id)
 
 	meta = data - sizeof(*meta);
 
-	printf("rx_hash: %u\n", meta->rx_hash);
+	printf("rx_hash: 0x%08X\n", meta->rx_hash);
 	printf("rx_timestamp:  %llu (sec:%0.4f)\n", meta->rx_timestamp,
 	       (double)meta->rx_timestamp / NANOSEC_PER_SEC);
 	if (meta->rx_timestamp) {


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
