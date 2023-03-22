Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3356C4FD9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 17:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C43A483F60;
	Wed, 22 Mar 2023 16:01:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C43A483F60
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679500898;
	bh=HKoidpqkjA+J1iXKd6CYjf5ElxQhLO3dJXOeHZ/h/f4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GPMCM5Il4XFSjbS6rV3a/hvxGdWoVbZGSFGZzUWQdpz0aQYEM8FG0MyvyTuMVjhwg
	 yQl/hD2OM2OqvR7ZA1kydd3FU08PNTY38moyPJBqEKmSF+Vw+Tc38aPSQH7bPCAMl3
	 Q+FTg/3CvF6/HCoScIlk+6GDw28Umn58TDe01Cbp7ewtCPsTI3aFlRZYJMEZa7FHCM
	 87Cq2GKVpLQWTb2lF9+yrG7QlI/NlWhop9e6bk9Ct6cmMy+cdSvLENASy/hb+SZahk
	 3bek48lqAVm1LthyDKiFgVMRk+XLEVBDfJQlLRPgPqi5AafEAlLCdfOuSJfEZ/GFcE
	 gbd9H4QTq3esQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThLjW1y03-X3; Wed, 22 Mar 2023 16:01:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D0CA8212E;
	Wed, 22 Mar 2023 16:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D0CA8212E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 991961BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 71688417D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:01:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 71688417D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zq4uj3A75jLD for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 16:01:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 503B1401F3
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 503B1401F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 16:01:30 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-345-dEAtnfOeOYindjRG4klVeQ-1; Wed, 22 Mar 2023 12:01:25 -0400
X-MC-Unique: dEAtnfOeOYindjRG4klVeQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AA230817046;
 Wed, 22 Mar 2023 16:01:23 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50687C15BA0;
 Wed, 22 Mar 2023 16:01:23 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 7BD6130736C72;
 Wed, 22 Mar 2023 17:01:22 +0100 (CET)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org
Date: Wed, 22 Mar 2023 17:01:22 +0100
Message-ID: <167950088246.2796265.17439644728294135774.stgit@firesoul>
In-Reply-To: <167950085059.2796265.16405349421776056766.stgit@firesoul>
References: <167950085059.2796265.16405349421776056766.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1679500887;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7XInFRBUHO3MAh9r7zJFmhOIJ9vpsIZWXbrw7tTwZk8=;
 b=WNbydTITzjz6na23ncqZcO+ZSMBO1go/s+50HjcFtLXN6tAtTI5lWTmgM6WwgLLBY2cc/o
 zoN1Rj1iwTr1jl6cEs6UzAPzL+8ag+oLGNTBKD/tDldOyDeGdcx8oYo8B55udY494D+gre
 2mHyKyCZ6Zn+WdshPIZVPeN8T00tXe4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=WNbydTIT
Subject: [Intel-wired-lan] [PATCH bpf-next V3 2/6] selftests/bpf:
 xdp_hw_metadata track more timestamps
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

To correlate the hardware RX timestamp with something, add tracking of
two software timestamps both clock source CLOCK_TAI (see description in
man clock_gettime(2)).

XDP metadata is extended with xdp_timestamp for capturing when XDP
received the packet. Populated with BPF helper bpf_ktime_get_tai_ns(). I
could not find a BPF helper for getting CLOCK_REALTIME, which would have
been preferred. In userspace when AF_XDP sees the packet another
software timestamp is recorded via clock_gettime() also clock source
CLOCK_TAI.

Example output shortly after loading igc driver:

  poll: 1 (0)
  xsk_ring_cons__peek: 1
  0x11fc958: rx_desc[7]->addr=10000000000f000 addr=f100 comp_addr=f000
  rx_hash: 0x00000000
  rx_timestamp:  1676297171760293047 (sec:1676297171.7603)
  XDP RX-time:   1676297208760355863 (sec:1676297208.7604) delta sec:37.0001
  AF_XDP time:   1676297208760416292 (sec:1676297208.7604) delta sec:0.0001 (60.429 usec)
  0x11fc958: complete idx=15 addr=f000

The first observation is that the 37 sec difference between RX HW vs XDP
timestamps, which indicate hardware is likely clock source
CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
with a 37 sec offset.

The 60 usec (microsec) difference between XDP vs AF_XDP userspace is the
userspace wakeup time. On this hardware it was caused by CPU idle sleep
states, which can be reduced by tuning /dev/cpu_dma_latency.

View current requested/allowed latency bound via:
  hexdump --format '"%d\n"' /dev/cpu_dma_latency

More explanation of the output and how this can be used to identify
clock drift for the HW clock can be seen here[1]:

[1] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
Acked-by: Stanislav Fomichev <sdf@google.com>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |    9 +++-
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |   46 ++++++++++++++++++--
 tools/testing/selftests/bpf/xdp_metadata.h         |    1 
 3 files changed, 48 insertions(+), 8 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index 4c55b4d79d3d..40c17adbf483 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -69,10 +69,13 @@ int rx(struct xdp_md *ctx)
 		return XDP_PASS;
 	}
 
-	if (!bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp))
-		bpf_printk("populated rx_timestamp with %llu", meta->rx_timestamp);
-	else
+	if (!bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp)) {
+		meta->xdp_timestamp = bpf_ktime_get_tai_ns();
+		bpf_printk("populated rx_timestamp with  %llu", meta->rx_timestamp);
+		bpf_printk("populated xdp_timestamp with %llu", meta->xdp_timestamp);
+	} else {
 		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
+	}
 
 	if (!bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash))
 		bpf_printk("populated rx_hash with %u", meta->rx_hash);
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 1c8acb68b977..400bfe19abfe 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -27,6 +27,7 @@
 #include <sys/mman.h>
 #include <net/if.h>
 #include <poll.h>
+#include <time.h>
 
 #include "xdp_metadata.h"
 
@@ -134,14 +135,47 @@ static void refill_rx(struct xsk *xsk, __u64 addr)
 	}
 }
 
-static void verify_xdp_metadata(void *data)
+#define NANOSEC_PER_SEC 1000000000 /* 10^9 */
+static __u64 gettime(clockid_t clock_id)
+{
+	struct timespec t;
+	int res;
+
+	/* See man clock_gettime(2) for type of clock_id's */
+	res = clock_gettime(clock_id, &t);
+
+	if (res < 0)
+		error(res, errno, "Error with clock_gettime()");
+
+	return (__u64) t.tv_sec * NANOSEC_PER_SEC + t.tv_nsec;
+}
+
+static void verify_xdp_metadata(void *data, clockid_t clock_id)
 {
 	struct xdp_meta *meta;
 
 	meta = data - sizeof(*meta);
 
-	printf("rx_timestamp: %llu\n", meta->rx_timestamp);
 	printf("rx_hash: %u\n", meta->rx_hash);
+	printf("rx_timestamp:  %llu (sec:%0.4f)\n", meta->rx_timestamp,
+	       (double)meta->rx_timestamp / NANOSEC_PER_SEC);
+	if (meta->rx_timestamp) {
+		__u64 usr_clock = gettime(clock_id);
+		__u64 xdp_clock = meta->xdp_timestamp;
+		__s64 delta_X = xdp_clock - meta->rx_timestamp;
+		__s64 delta_X2U = usr_clock - xdp_clock;
+
+		printf("XDP RX-time:   %llu (sec:%0.4f) delta sec:%0.4f (%0.3f usec)\n",
+		       xdp_clock, (double)xdp_clock / NANOSEC_PER_SEC,
+		       (double)delta_X / NANOSEC_PER_SEC,
+		       (double)delta_X / 1000);
+
+		printf("AF_XDP time:   %llu (sec:%0.4f) delta sec:%0.4f (%0.3f usec)\n",
+		       usr_clock, (double)usr_clock / NANOSEC_PER_SEC,
+		       (double)delta_X2U / NANOSEC_PER_SEC,
+		       (double)delta_X2U / 1000);
+	}
+
 }
 
 static void verify_skb_metadata(int fd)
@@ -189,7 +223,7 @@ static void verify_skb_metadata(int fd)
 	printf("skb hwtstamp is not found!\n");
 }
 
-static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd)
+static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t clock_id)
 {
 	const struct xdp_desc *rx_desc;
 	struct pollfd fds[rxq + 1];
@@ -237,7 +271,8 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd)
 			addr = xsk_umem__add_offset_to_addr(rx_desc->addr);
 			printf("%p: rx_desc[%u]->addr=%llx addr=%llx comp_addr=%llx\n",
 			       xsk, idx, rx_desc->addr, addr, comp_addr);
-			verify_xdp_metadata(xsk_umem__get_data(xsk->umem_area, addr));
+			verify_xdp_metadata(xsk_umem__get_data(xsk->umem_area, addr),
+					    clock_id);
 			xsk_ring_cons__release(&xsk->rx, 1);
 			refill_rx(xsk, comp_addr);
 		}
@@ -364,6 +399,7 @@ static void timestamping_enable(int fd, int val)
 
 int main(int argc, char *argv[])
 {
+	clockid_t clock_id = CLOCK_TAI;
 	int server_fd = -1;
 	int ret;
 	int i;
@@ -437,7 +473,7 @@ int main(int argc, char *argv[])
 		error(1, -ret, "bpf_xdp_attach");
 
 	signal(SIGINT, handle_signal);
-	ret = verify_metadata(rx_xsk, rxq, server_fd);
+	ret = verify_metadata(rx_xsk, rxq, server_fd, clock_id);
 	close(server_fd);
 	cleanup();
 	if (ret)
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index f6780fbb0a21..260345b2c6f1 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -11,5 +11,6 @@
 
 struct xdp_meta {
 	__u64 rx_timestamp;
+	__u64 xdp_timestamp;
 	__u32 rx_hash;
 };


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
