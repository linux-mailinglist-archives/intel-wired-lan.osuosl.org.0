Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9346B6E4C26
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 16:57:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 116F841723;
	Mon, 17 Apr 2023 14:57:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 116F841723
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681743463;
	bh=rb3c1Pbt49MtLECnkgmX3MutNNWP3O7US4u1sd77Xfc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nFPD8IxnwLrhmLwGngMh184PuBBvyjmadbroYhGp7az9Y9gav0HV9I9vP70xiG94t
	 9KlPrcLFavRiJj1okmAuImf9mPECXqN1NapLsiPikvY1uWvLAte+eDTryByhDIC2kl
	 gTW6UN1UgVlOl3yjXIm4PGf9BUj/vz64OJaM2FYidigtBfTjnJdJRmV8sg4PAwgcAT
	 WbFFKxW8MreH/3DttjzCnzFbDhco5DqRMUFlVP+AS9PuC7h3k1XMAe7eghihM7Rs3C
	 oEXlpCee515G+4R/31JKb2WTrzJXtvZ6E1En2HTr26AbLoSAV9/SBMKPQ9syoUgnlb
	 qxypo5Cr5yRsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PChDnzA-e0XP; Mon, 17 Apr 2023 14:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5566041EAB;
	Mon, 17 Apr 2023 14:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5566041EAB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA0E91BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 14:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C004C40407
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 14:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C004C40407
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ru-98smByYZu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 14:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A22A340144
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A22A340144
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 14:57:34 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-661-_omtjYTBOTGuu4Gqfn1bnQ-1; Mon, 17 Apr 2023 10:57:30 -0400
X-MC-Unique: _omtjYTBOTGuu4Gqfn1bnQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
 [10.11.54.9])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7176D3C10684;
 Mon, 17 Apr 2023 14:57:29 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0C176492B0C;
 Mon, 17 Apr 2023 14:57:29 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 2B890307372E8;
 Mon, 17 Apr 2023 16:57:28 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Mon, 17 Apr 2023 16:57:28 +0200
Message-ID: <168174344813.593471.4026230439937368990.stgit@firesoul>
In-Reply-To: <168174338054.593471.8312147519616671551.stgit@firesoul>
References: <168174338054.593471.8312147519616671551.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1681743453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mAJnVVeyLvLXvr+AXe+hVyXnTMzPScflKpveeVo/qEc=;
 b=dtezmQuS/IzGK06cS/UTG9l2rcpEMXgw7ekW+7S4NbtEF3HMxtwVvy5feKsS9agmYO0R22
 s6poRdOzWpxIzO69srwEyDwT+rcAkjX3dmhv1EwhF3KA1HKZSIHmwCHyPLy8H1xsMB8jYX
 EWDfsBeA0YefnQSmAcrTzHoEl04hjcg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=dtezmQuS
Subject: [Intel-wired-lan] [PATCH bpf-next V1 5/5] selftests/bpf:
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
 edumazet@google.com, yoong.siang.song@intel.com,
 Jesper Dangaard Brouer <brouer@redhat.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, hawk@kernel.org
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

  poll: 1 (0) skip=1 fail=0 redir=2
  xsk_ring_cons__peek: 1
  0x12557a8: rx_desc[1]->addr=100000000009000 addr=9100 comp_addr=9000
  rx_hash: 0x82A96531 with RSS type:0x1
  rx_timestamp:  1681740540304898909 (sec:1681740540.3049)
  XDP RX-time:   1681740577304958316 (sec:1681740577.3050) delta sec:37.0001 (37000059.407 usec)
  AF_XDP time:   1681740577305051315 (sec:1681740577.3051) delta sec:0.0001 (92.999 usec)
  0x12557a8: complete idx=9 addr=9000

The first observation is that the 37 sec difference between RX HW vs XDP
timestamps, which indicate hardware is likely clock source
CLOCK_REALTIME, because (as of this writing) CLOCK_TAI is initialised
with a 37 sec offset.

The 93 usec (microsec) difference between XDP vs AF_XDP userspace is the
userspace wakeup time. On this hardware it was caused by CPU idle sleep
states, which can be reduced by tuning /dev/cpu_dma_latency.

View current requested/allowed latency bound via:
  hexdump --format '"%d\n"' /dev/cpu_dma_latency

More explanation of the output and how this can be used to identify
clock drift for the HW clock can be seen here[1]:

[1] https://github.com/xdp-project/xdp-project/blob/master/areas/hints/xdp_hints_kfuncs02_driver_igc.org

Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
 .../testing/selftests/bpf/progs/xdp_hw_metadata.c  |    4 +-
 tools/testing/selftests/bpf/xdp_hw_metadata.c      |   47 ++++++++++++++++++--
 tools/testing/selftests/bpf/xdp_metadata.h         |    1 
 3 files changed, 46 insertions(+), 6 deletions(-)

diff --git a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
index e1c787815e44..b2dfd7066c6e 100644
--- a/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/progs/xdp_hw_metadata.c
@@ -77,7 +77,9 @@ int rx(struct xdp_md *ctx)
 	}
 
 	err = bpf_xdp_metadata_rx_timestamp(ctx, &meta->rx_timestamp);
-	if (err)
+	if (!err)
+		meta->xdp_timestamp = bpf_ktime_get_tai_ns();
+	else
 		meta->rx_timestamp = 0; /* Used by AF_XDP as not avail signal */
 
 	err = bpf_xdp_metadata_rx_hash(ctx, &meta->rx_hash, &meta->rx_hash_type);
diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 987cf0db5ebc..613321eb84c1 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -27,6 +27,7 @@
 #include <sys/mman.h>
 #include <net/if.h>
 #include <poll.h>
+#include <time.h>
 
 #include "xdp_metadata.h"
 
@@ -134,18 +135,52 @@ static void refill_rx(struct xsk *xsk, __u64 addr)
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
 	if (meta->rx_hash_err < 0)
 		printf("No rx_hash err=%d\n", meta->rx_hash_err);
 	else
 		printf("rx_hash: 0x%X with RSS type:0x%X\n",
 		       meta->rx_hash, meta->rx_hash_type);
+
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
@@ -193,7 +228,7 @@ static void verify_skb_metadata(int fd)
 	printf("skb hwtstamp is not found!\n");
 }
 
-static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd)
+static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t clock_id)
 {
 	const struct xdp_desc *rx_desc;
 	struct pollfd fds[rxq + 1];
@@ -243,7 +278,8 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd)
 			addr = xsk_umem__add_offset_to_addr(rx_desc->addr);
 			printf("%p: rx_desc[%u]->addr=%llx addr=%llx comp_addr=%llx\n",
 			       xsk, idx, rx_desc->addr, addr, comp_addr);
-			verify_xdp_metadata(xsk_umem__get_data(xsk->umem_area, addr));
+			verify_xdp_metadata(xsk_umem__get_data(xsk->umem_area, addr),
+					    clock_id);
 			xsk_ring_cons__release(&xsk->rx, 1);
 			refill_rx(xsk, comp_addr);
 		}
@@ -370,6 +406,7 @@ static void timestamping_enable(int fd, int val)
 
 int main(int argc, char *argv[])
 {
+	clockid_t clock_id = CLOCK_TAI;
 	int server_fd = -1;
 	int ret;
 	int i;
@@ -443,7 +480,7 @@ int main(int argc, char *argv[])
 		error(1, -ret, "bpf_xdp_attach");
 
 	signal(SIGINT, handle_signal);
-	ret = verify_metadata(rx_xsk, rxq, server_fd);
+	ret = verify_metadata(rx_xsk, rxq, server_fd, clock_id);
 	close(server_fd);
 	cleanup();
 	if (ret)
diff --git a/tools/testing/selftests/bpf/xdp_metadata.h b/tools/testing/selftests/bpf/xdp_metadata.h
index 0c4624dc6f2f..938a729bd307 100644
--- a/tools/testing/selftests/bpf/xdp_metadata.h
+++ b/tools/testing/selftests/bpf/xdp_metadata.h
@@ -11,6 +11,7 @@
 
 struct xdp_meta {
 	__u64 rx_timestamp;
+	__u64 xdp_timestamp;
 	__u32 rx_hash;
 	union {
 		__u32 rx_hash_type;


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
