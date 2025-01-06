Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 207F1A02740
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 14:56:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B4680C0F;
	Mon,  6 Jan 2025 13:56:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BJNWZBMumXRm; Mon,  6 Jan 2025 13:56:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3AA580BDA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736171817;
	bh=8DG1m2MO4VbtmjqRQgAFewTSJOIUlZggw031ix+qRLg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MzD+QRE8UXWVmFuT/PuNlhzGbN+N/5FLniw4kYLArc/FLfRPp3RQ4cL+/SkhxSbZ8
	 +IKBtJOzoBy7KR9poWJA/o28QrldWJn6Zw6bQF1UhIveiUi4x3nBhgcXFdGkYd25Au
	 Sae3cyN/+CI232MUHafmrARAw1pY3+KERyrwtBxlg0R1xol08cZa4zKNKqwjlAGkcI
	 JDjAKk198VWsTGcA9rfZmEtmtDPbZYiBHRz7oz7wNe6CNRSZy+YVCkoarZUxQFcavF
	 1odk/k1Y92BKkBq8TnGS3ErCTQSf/7SZhrMLyZx+g5bzZ0KRccTabJT/m8F/CUnjkf
	 zPnIqTDTZySlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3AA580BDA;
	Mon,  6 Jan 2025 13:56:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EC1CFDB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D7219403C7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:56:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o_3VAU56lZpG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 13:56:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 975914032C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 975914032C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 975914032C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 13:56:53 +0000 (UTC)
X-CSE-ConnectionGUID: LLg63PTmSVyB0ZNRc7Fb/g==
X-CSE-MsgGUID: kt74aqC3RWWTda0Oomp7rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36214368"
X-IronPort-AV: E=Sophos;i="6.12,292,1728975600"; d="scan'208";a="36214368"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2025 05:56:53 -0800
X-CSE-ConnectionGUID: Pwm2JC3KQPCA4v3oc7WvIQ==
X-CSE-MsgGUID: Hg6VOARaR0Sq8Cl4XWiMEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="125728687"
Received: from unknown (HELO P12ILL20yoongsia.png.intel.com) ([10.88.227.38])
 by fmviesa002.fm.intel.com with ESMTP; 06 Jan 2025 05:56:42 -0800
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Willem de Bruijn <willemb@google.com>,
 Florian Bezdeka <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Bjorn Topel <bjorn@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, Joe Damato <jdamato@fastly.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Song Yoong Siang <yoong.siang.song@intel.com>,
 Amritha Nambiar <amritha.nambiar@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>, Martin KaFai Lau <martin.lau@linux.dev>,
 Song Liu <song@kernel.org>, Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, bpf@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, intel-wired-lan@lists.osuosl.org,
 xdp-hints@xdp-project.net
Date: Mon,  6 Jan 2025 21:56:38 +0800
Message-Id: <20250106135638.9719-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736171813; x=1767707813;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j5yMpN4jtRU0ARlnwODyqOYe3Fo7KApfyuihjMBXRfI=;
 b=QRN9hiD9LjfwHdqtL88SH9bc8iNGq9BCBI2FRA7qz4o9MpVWBm78KDPP
 K8w8xdRxMWTJjDEG1+X4bOspkszGkZHcmVokSXmvwzZDxTvYXDCijZf1u
 FVtw0dhz18Z/PMBI+MnEEQH0oJUiDz/RdnWc+38sN0b6XHzg03WN/zd1H
 Lml+hOkD2xsTehBRuJtwBer5q6lqstx/FpPneDEi39xGfFQtktphBZYj7
 k8inOR7z4zM4+CFMF/4QelgDkCgcPcuRy8tvnZ85LcSmO333NrmWPK1LD
 8Bjxx615C9kRxI/qzBIOHjEQHVB5uVxb6yp6yQDfjGC4qgsgFpDsbT8yq
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QRN9hiD9
Subject: [Intel-wired-lan] [PATCH bpf-next v4 2/4] selftests/bpf: Add Launch
 Time request to xdp_hw_metadata
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add Launch Time hw offload request to xdp_hw_metadata. User can configure
the delta of launch time to HW RX-time by using "-l" argument. The default
delta is 100,000,000 nanosecond.

Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
---
 tools/testing/selftests/bpf/xdp_hw_metadata.c | 30 +++++++++++++++++--
 1 file changed, 27 insertions(+), 3 deletions(-)

diff --git a/tools/testing/selftests/bpf/xdp_hw_metadata.c b/tools/testing/selftests/bpf/xdp_hw_metadata.c
index 6f7b15d6c6ed..795c1d14e02d 100644
--- a/tools/testing/selftests/bpf/xdp_hw_metadata.c
+++ b/tools/testing/selftests/bpf/xdp_hw_metadata.c
@@ -13,6 +13,7 @@
  * - UDP 9091 packets trigger TX reply
  * - TX HW timestamp is requested and reported back upon completion
  * - TX checksum is requested
+ * - TX launch time HW offload is requested for transmission
  */
 
 #include <test_progs.h>
@@ -64,6 +65,8 @@ int rxq;
 bool skip_tx;
 __u64 last_hw_rx_timestamp;
 __u64 last_xdp_rx_timestamp;
+__u64 last_launch_time;
+__u64 launch_time_delta_to_hw_rx_timestamp = 100000000; /* 0.1 second */
 
 void test__fail(void) { /* for network_helpers.c */ }
 
@@ -298,6 +301,8 @@ static bool complete_tx(struct xsk *xsk, clockid_t clock_id)
 	if (meta->completion.tx_timestamp) {
 		__u64 ref_tstamp = gettime(clock_id);
 
+		print_tstamp_delta("HW Launch-time", "HW TX-complete-time",
+				   last_launch_time, meta->completion.tx_timestamp);
 		print_tstamp_delta("HW TX-complete-time", "User TX-complete-time",
 				   meta->completion.tx_timestamp, ref_tstamp);
 		print_tstamp_delta("XDP RX-time", "User TX-complete-time",
@@ -395,6 +400,14 @@ static void ping_pong(struct xsk *xsk, void *rx_packet, clockid_t clock_id)
 	       xsk, ntohs(udph->check), ntohs(want_csum),
 	       meta->request.csum_start, meta->request.csum_offset);
 
+	/* Set the value of launch time */
+	meta->flags |= XDP_TXMD_FLAGS_LAUNCH_TIME;
+	meta->request.launch_time = last_hw_rx_timestamp +
+				    launch_time_delta_to_hw_rx_timestamp;
+	last_launch_time = meta->request.launch_time;
+	print_tstamp_delta("HW RX-time", "HW Launch-time", last_hw_rx_timestamp,
+			   meta->request.launch_time);
+
 	memcpy(data, rx_packet, len); /* don't share umem chunk for simplicity */
 	tx_desc->options |= XDP_TX_METADATA;
 	tx_desc->len = len;
@@ -402,10 +415,14 @@ static void ping_pong(struct xsk *xsk, void *rx_packet, clockid_t clock_id)
 	xsk_ring_prod__submit(&xsk->tx, 1);
 }
 
+#define SLEEP_PER_ITERATION_IN_US 10
+#define SLEEP_PER_ITERATION_IN_NS (SLEEP_PER_ITERATION_IN_US * 1000)
+#define MAX_ITERATION(x) (((x) / SLEEP_PER_ITERATION_IN_NS) + 500)
 static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t clock_id)
 {
 	const struct xdp_desc *rx_desc;
 	struct pollfd fds[rxq + 1];
+	int max_iterations;
 	__u64 comp_addr;
 	__u64 addr;
 	__u32 idx = 0;
@@ -418,6 +435,9 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t
 		fds[i].revents = 0;
 	}
 
+	/* Calculate max iterations to wait for transmit completion */
+	max_iterations = MAX_ITERATION(launch_time_delta_to_hw_rx_timestamp);
+
 	fds[rxq].fd = server_fd;
 	fds[rxq].events = POLLIN;
 	fds[rxq].revents = 0;
@@ -477,10 +497,10 @@ static int verify_metadata(struct xsk *rx_xsk, int rxq, int server_fd, clockid_t
 					if (ret)
 						printf("kick_tx ret=%d\n", ret);
 
-					for (int j = 0; j < 500; j++) {
+					for (int j = 0; j < max_iterations; j++) {
 						if (complete_tx(xsk, clock_id))
 							break;
-						usleep(10);
+						usleep(SLEEP_PER_ITERATION_IN_US);
 					}
 				}
 			}
@@ -608,6 +628,7 @@ static void print_usage(void)
 		"  -h    Display this help and exit\n\n"
 		"  -m    Enable multi-buffer XDP for larger MTU\n"
 		"  -r    Don't generate AF_XDP reply (rx metadata only)\n"
+		"  -l    Delta of launch time to HW RX-time in ns (default: 100,000,000ns)\n"
 		"Generate test packets on the other machine with:\n"
 		"  echo -n xdp | nc -u -q1 <dst_ip> 9091\n";
 
@@ -618,7 +639,7 @@ static void read_args(int argc, char *argv[])
 {
 	int opt;
 
-	while ((opt = getopt(argc, argv, "chmr")) != -1) {
+	while ((opt = getopt(argc, argv, "chmrl:")) != -1) {
 		switch (opt) {
 		case 'c':
 			bind_flags &= ~XDP_USE_NEED_WAKEUP;
@@ -634,6 +655,9 @@ static void read_args(int argc, char *argv[])
 		case 'r':
 			skip_tx = true;
 			break;
+		case 'l':
+			launch_time_delta_to_hw_rx_timestamp = atoll(optarg);
+			break;
 		case '?':
 			if (isprint(optopt))
 				fprintf(stderr, "Unknown option: -%c\n", optopt);
-- 
2.34.1

